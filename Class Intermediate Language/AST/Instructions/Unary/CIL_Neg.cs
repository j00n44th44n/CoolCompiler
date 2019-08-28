using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Instructions.Unary
{
    public class CilNeg : CIL_Instruction
    {
        public readonly Variable X;
        public readonly Holder Y;

        public CilNeg(Variable x, Holder y)
            => (X, Y) = (x, y);
    }
}