using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Functions
{
    public class CIL_Return : CIL_Instruction
    {
        public readonly Variable Variable = null;
        public CIL_Return() : this(null) { }
        public CIL_Return(Variable variable) => Variable = variable;
    }
}