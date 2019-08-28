using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Instructions.Memory
{
    public class GetIndex : CIL_Instruction
    {
        public readonly Variable X;
        public readonly string Array;
        public readonly Holder Index;

        public GetIndex(Variable x, string array, Holder index)
            => (X, Array, Index) = (x, array, index);
    }
}