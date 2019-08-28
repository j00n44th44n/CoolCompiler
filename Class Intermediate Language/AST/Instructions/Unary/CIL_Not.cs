using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Instructions.Unary
{
    public class CilNot : CIL_Instruction
    {
        public readonly Variable X;
        public readonly Holder Y;

        public CilNot(Variable x, Holder y)
            => (X, Y) = (x, y);
    }
}