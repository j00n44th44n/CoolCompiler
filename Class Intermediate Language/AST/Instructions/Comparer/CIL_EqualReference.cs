using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Instructions.Comparer
{
    public class CilEqualReference : CilComparerExpression
    {
        public readonly Variable X;
        public readonly Holder Y;
        public readonly Holder ZHolder;

        public CilEqualReference(Variable x, Holder y, Holder z)
            => (X, Y, ZHolder) = (x, y, z); 
    }
}