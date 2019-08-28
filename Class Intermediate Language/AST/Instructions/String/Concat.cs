using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Instructions.String
{
    public class Concat : CIL_Instruction
    {
        public Variable Z { get; }
        public Holder X { get; }
        public Holder Y { get; }

        public Concat(Variable z, Holder x, Holder y)
            => (Z, X, Y) = (z, x, y);
    }
}