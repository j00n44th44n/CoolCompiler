using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Functions
{
    public class CIL_Argument : CIL_Node
    {
        public readonly Variable Variable;
        public CIL_Argument(Variable variable) => Variable = variable;
    }
}