﻿using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Instructions.Comparer
{
    public class CilMajor : CilComparerExpression
    {
        public readonly Variable X;
        public readonly Holder Y;
        public readonly Holder Z;

        public CilMajor(Variable x, Holder y, Holder z)
            => (X, Y, Z) = (x, y, z);
    }
}