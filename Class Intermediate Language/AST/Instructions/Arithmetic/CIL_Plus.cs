using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Instructions.Arithmetic
{
    public class CilPlus : CIL_Instruction
    {
        public readonly Variable X;
        public readonly Holder Y;
        public readonly Holder Z;

        public CilPlus(Variable x, Holder y, Holder z)
            => (X, Y, Z) = (x, y, z);
    }
}