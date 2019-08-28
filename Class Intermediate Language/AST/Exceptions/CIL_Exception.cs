using Class_Intermediate_Language.Utils;

namespace Class_Intermediate_Language.AST.Exceptions
{
    public class CIL_Exception : CIL_Instruction
    {
        public readonly CoolExceptionType Type;

        public CIL_Exception(CoolExceptionType type) => Type = type;

    }
}
