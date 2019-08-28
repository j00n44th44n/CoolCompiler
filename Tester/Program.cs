using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using Antlr.Runtime;
using Class_Intermediate_Language.Utils;
using Class_Intermediate_Language.Visitor;
using CoolCheckSemantic.Visitor;
using CoolGrammar;
using CoolGrammar.AdaptorANTLR;
using CoolGrammar.AST;
using CoolGrammar.Grammar;
using MIPS_Generator;

namespace Tester
{

    class Program
    {
        static void Main(string[] args)
        {
            /* Note Comentar estas 2 lineas para ejecutarlo por consola */
            args = new string[1];
            args[0] = $"{Environment.CurrentDirectory}/examples/cases.cool";

            foreach (var arg in args)
            {
                #region Check file exist + update path

                string current = arg;
                if (!File.Exists(arg))
                {
                    current = Environment.CurrentDirectory + "/examples/" + arg;
                    if (!File.Exists(current))
                    {
                        Console.WriteLine("No such file or directory. Please enter a valid .cool file");
                        break;
                    }
                }

                #endregion

                #region Parser-Lexer

                var input = new ANTLRFileStream(current);
                var lexer = new CoolGrammarLexer(input);
                var tokens = new CommonTokenStream(lexer);
                var parser = new CoolGrammarParser(tokens) { TreeAdaptor = new TreeAdaptor() };
                var programNode = (ProgramNode)parser.program().Tree;

                if (Logger.HasError)
                {
                    Logger.Report();
                    return;
                }

                #endregion

                #region Semantic

                var typeCollectorVisitor = new TypeCollectorVisitor();
                typeCollectorVisitor.CheckSemantic(programNode);
                if (Logger.HasError)
                {
                    Logger.Report();
                    return;
                }

                var typeBuilderVisitor = new TypeBuilderVisitor();
                typeBuilderVisitor.CheckSemantic(programNode);
                if (Logger.HasError)
                {
                    Logger.Report();
                    return;
                }

                var typeCheckerVisitor = new TypeCheckerVisitor();
                typeCheckerVisitor.CheckSemantic(programNode);
                if (Logger.HasError)
                {
                    Logger.Report();
                    return;
                }

                #endregion

                #region Code Generation

                var codeGeneratorVisitor = new CodeGeneratorVisitor();
                codeGeneratorVisitor.GenerateCode(programNode);

                var mipsGenerator = new MIPS_GeneratorVisitor();
                mipsGenerator.GenerateCode(CIL_Factory.Program);

                string mipsCode = $"{Path.GetFileNameWithoutExtension(arg)}.s";
                string path = arg.Replace(Path.GetFileName(arg), "");
                writeOutput(mipsGenerator.MipsInstructions, path+mipsCode);

                #endregion

                #region qtSpim

                using (Process openQtSpim = new Process())
                {
                    openQtSpim.StartInfo.UseShellExecute = false;
                    openQtSpim.StartInfo.FileName = "/Applications/QtSpim.app/Contents/MacOS/QtSpim";
                    openQtSpim.StartInfo.Arguments = mipsCode;
                    openQtSpim.Start();
                }

                #endregion
            }
        }

        private static void writeOutput(IEnumerable<string> mipsInstructions, string complete_path)
        {
            using (var sw = new StreamWriter(complete_path))
                foreach (var instruction in mipsInstructions)
                    sw.Write(instruction);
        }

    }
}