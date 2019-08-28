using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Instructions.String
{
    public class Load : CIL_Instruction
    {
        public readonly Variable Variable;
        public readonly DataHolder Data;

        public Load(Variable variable, DataHolder data)
            => (Variable, Data) = (variable, data);
    }
}