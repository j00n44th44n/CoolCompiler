using System.Collections.Generic;

namespace Class_Intermediate_Language.Utils
{
    public static class Constant
    {
        public const string InheritanceTree = "Inheritance_Tree";
        public const string ErrorPrintProcedure = "PrintError";
        public const string Main_Init = "Main_Init";
        public const string Object_type_name = "Object_type_name";
        public const string Object_copy = "Object_copy";
        public const string Object_abort = "Object_abort";
        public const string StrLength = "String_length";
        public const string StrCopy = "String_copy";
        public const string StrConcat = "String_concat";
        public const string StrSubstr = "String_substr";
        public const string IO_out_string = "IO_out_string";
        public const string IO_out_int = "IO_out_int";
        public const string IO_in_string = "IO_in_string";
        public const string IO_in_int = "IO_in_int";
        public const string StrConcatPlus = StrConcat + "Plus";

        public static IEnumerable<CoolExceptionType> GetCoolExceptionType()
        {
            yield return CoolExceptionType.AbortException;
            yield return CoolExceptionType.ArgumentOutOfRangeException;
            yield return CoolExceptionType.CaseOnVoidException;
            yield return CoolExceptionType.DispatchOnVoidException;
            yield return CoolExceptionType.DivideByZeroException;
            yield return CoolExceptionType.ExecutionOfACaseStatementWithoutAMatchingBranchException;
            yield return CoolExceptionType.NegativeLengthException;
            yield return CoolExceptionType.SubstringOutOfRangeException;
        }

        public static readonly (string Name, int BufferSize) Prompt = ("_prompt", 1026);

        public static (string NameProcedure, string NameVariable, string Msg)
            Variables(CoolExceptionType exceptionType)
        {

            switch (exceptionType)
            {
                case CoolExceptionType.ArgumentOutOfRangeException:
                    return ($"{CoolExceptionType.ArgumentOutOfRangeException}",
                            "_argOutOfRangeException",
                            "Exception: Argument out of range");
                case CoolExceptionType.DivideByZeroException:
                    return ($"{CoolExceptionType.DivideByZeroException}",
                            "_divideByZeroException",
                            "Exception: Divide by zero");
                case CoolExceptionType.NegativeLengthException:
                    return ($"{CoolExceptionType.NegativeLengthException}",
                            "_negativeLengthException",
                            "Exception: Negative lenght");
                case CoolExceptionType.SubstringOutOfRangeException:
                    return ($"{CoolExceptionType.SubstringOutOfRangeException}",
                            "_substringOutOfRangeException",
                            "Exception: Substring out of range");
                case CoolExceptionType.ExecutionOfACaseStatementWithoutAMatchingBranchException:
                    return ($"{CoolExceptionType.ExecutionOfACaseStatementWithoutAMatchingBranchException}",
                            "_executionOfACaseStatementWithoutAMatchingBranchException",
                            "Exception: Execution of a case statement without a matching branch");
                case CoolExceptionType.DispatchOnVoidException:
                    return ($"{CoolExceptionType.DispatchOnVoidException}",
                            "_dispatchOnVoidException",
                            "Exception: Dispatch on void");
                case CoolExceptionType.CaseOnVoidException:
                    return ($"{CoolExceptionType.CaseOnVoidException}",
                            "_caseOnVoidException",
                            "Exception: Case on void");
                case CoolExceptionType.AbortException:
                    return ($"{CoolExceptionType.AbortException}",
                            "_abortException",
                            "Exception: Abort");
                default:
                    return ("", "", "");
            }
        }
    }
}