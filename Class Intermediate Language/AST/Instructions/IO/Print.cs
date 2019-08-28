using System;
using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Instructions.IO
{
    public abstract class Print : CIL_Instruction
    {
        public Variable Variable { get; }
        protected Print(Variable variable) => Variable = variable;
    }

    public class Print_String : Print
    {
        public Print_String(Variable variable) : base(variable) { }
    }

    public class Print_Int : Print
    {
        public Print_Int(Variable variable) : base(variable) { }
    }
}