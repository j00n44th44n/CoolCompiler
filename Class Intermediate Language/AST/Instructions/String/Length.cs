using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Instructions.String
{
    public class Length : CIL_Instruction
    {
        public Variable Variable { get; }
        public Holder Holder { get; }

        public Length(Variable variable, Holder holder)
            => (Variable, Holder) = (variable, holder);
    }
}