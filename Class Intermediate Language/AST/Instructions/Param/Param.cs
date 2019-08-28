using Class_Intermediate_Language.Utils;
using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Instructions.Param
{
    public class Param : CIL_Instruction
    {
        public readonly Variable YVariable;
        public readonly int YInt;
        public readonly bool YBool;
        public readonly int @Case;

        public Param(Variable y)
            => (YVariable, Case) = (y, 0);
        public Param(int y)
            => (YInt, Case) = (y, 1);
        public Param(bool y) : this(y ? (int)BoolToInt.True : (int)BoolToInt.False)
            => Case = 2;
    }
}