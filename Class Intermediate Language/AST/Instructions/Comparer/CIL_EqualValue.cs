using System.Linq;
using Class_Intermediate_Language.Utils;
using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Instructions.Comparer
{
    public class CilEqualValue : CilComparerExpression
    {
        public readonly Variable X;
        public readonly Holder Y;
        public readonly Holder ZHolder;
        public readonly int ZInt;
        public readonly int @Case;

        public CilEqualValue(Variable x, Holder y, Holder z)
            => (X, Y, ZHolder, Case) = (x, y, z, 0);

        public CilEqualValue(Variable x, Holder y, int z)
            => (X, Y, ZInt, Case) = (x, y, z, 1);

        public CilEqualValue(Variable x, Holder y, string typeName)
            => (X, Y, ZInt, Case) = (x, y, CIL_Factory.Types.First(a => a.Name == typeName).Id, 2);
    }
}