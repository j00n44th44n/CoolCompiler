﻿using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Instructions.Comparer
{
    public class CilMajorEqual : CilComparerExpression
    {
        public readonly Variable X;
        public readonly Holder Y;
        public readonly Holder Z;

        public CilMajorEqual(Variable x, Holder y, Holder z)
            => (X, Y, Z) = (x, y, z);
    }
}