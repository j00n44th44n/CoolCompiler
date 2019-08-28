using System.Collections.Generic;
using Class_Intermediate_Language.AST;
using Class_Intermediate_Language.AST.Functions;
using Class_Intermediate_Language.Interfaces;
using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.CodeGenerator
{
    public class CIL_CodeGenerator : ICIL_CodeGenerator
    {
        private static int _name;
        private static int _label;
        private readonly List<CIL_Instruction> _instructions;
        private readonly List<CIL_LocalVariable> _localVariables;
        private readonly List<CIL_Argument> _arguments;

        public CIL_CodeGenerator() =>
            (_arguments, _localVariables, _instructions) =
                (new List<CIL_Argument>(), new List<CIL_LocalVariable>(), new List<CIL_Instruction>());

        public IEnumerable<CIL_Argument> Arguments => _arguments;
        public IEnumerable<CIL_Instruction> Instructions => _instructions;
        public IEnumerable<CIL_LocalVariable> LocalVariable => _localVariables;

        public Variable DefineVariable() => new Variable($"var_{_name++}");
        public string DefineLabel() => $"label_{_label++}";
        public void AddInstruction(CIL_Instruction instruction)
            => _instructions.Add(instruction);
        public void AddLocalVariable(CIL_LocalVariable localVariable)
            => _localVariables.Add(localVariable);
        public void AddArgument(CIL_Argument argument)
            => _arguments.Add(argument);
    }
}