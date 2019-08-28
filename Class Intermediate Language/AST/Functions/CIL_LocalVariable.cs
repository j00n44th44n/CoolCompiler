using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Functions
{
    public class CIL_LocalVariable : CIL_Node
    {
        public CIL_LocalVariable(Variable variable) => Variable = variable;
        public Variable Variable { get; }
    }
}