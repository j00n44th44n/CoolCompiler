using System.Collections.Generic;

namespace Class_Intermediate_Language.Utils
{
    public enum CoolExceptionType
    {
        ArgumentOutOfRangeException,
        DivideByZeroException,
        NegativeLengthException,
        SubstringOutOfRangeException,
        ExecutionOfACaseStatementWithoutAMatchingBranchException,
        DispatchOnVoidException,
        CaseOnVoidException,
        AbortException
    }

    public enum Attribute
    {
        Int_value,
        Bool_value,
        String_value
    }

    public enum BuiltIn
    {
        Object,
        IO,
        String,
        Int,
        Bool
    }

    public enum SystemServices
    {
        PrintInt = 1,
        PrintString = 4,
        ReadInt = 5,
        ReadString = 8,
        AllocateMemory = 9,
        Terminate = 10
    }

    public enum BoolToInt
    {
        False = 0,
        True = 1
    }
}



