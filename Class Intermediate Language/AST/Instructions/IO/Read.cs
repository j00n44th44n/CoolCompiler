using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Instructions.IO
{
    public abstract class Read : CIL_Instruction
    {
        public Variable Variable { get; }

        protected Read(Variable variable) => Variable = variable;
    }

    public class Read_Int : Read
    {
        public Read_Int(Variable variable) : base(variable) { }
    }

    public class Read_String : Read
    {
        public Read_String(Variable variable) : base(variable) { }
    }
}