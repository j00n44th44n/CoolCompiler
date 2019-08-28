using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Instructions.Memory
{
    public class TypeOf : CIL_Instruction
    {
        public readonly Variable Dest;
        public readonly Variable Source;

        public TypeOf(Variable dest, Variable source)
            => (Dest, Source) = (dest, source);
    }
}