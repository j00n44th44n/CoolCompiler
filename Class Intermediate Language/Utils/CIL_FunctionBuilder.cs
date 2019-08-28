using System.Linq;
using Class_Intermediate_Language.AST.Exceptions;
using Class_Intermediate_Language.AST.Functions;
using Class_Intermediate_Language.AST.Instructions;
using Class_Intermediate_Language.AST.Instructions.Assign;
using Class_Intermediate_Language.AST.Instructions.Attributes;
using Class_Intermediate_Language.AST.Instructions.Comparer;
using Class_Intermediate_Language.AST.Instructions.IO;
using Class_Intermediate_Language.AST.Instructions.Memory;
using Class_Intermediate_Language.AST.Instructions.String;

namespace Class_Intermediate_Language.Utils
{
    public static class CIL_FunctionBuilder
    {
        #region Object

        private static CIL_Function _object_abort;
        public static CIL_Function Object_abort
        {
            get
            {
                return _object_abort ??
                       (_object_abort = ObjectAbort());

                CIL_Function ObjectAbort()
                {
                    var function = CIL_Factory.DefineFunction(Constant.Object_abort);

                    var self = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(self));
                    function.CodeGenerator.AddArgument(new CIL_Argument(self));

                    function.CodeGenerator.AddInstruction(new CIL_Exception(CoolExceptionType.AbortException));

                    return function;
                }
            }

        }

        private static CIL_Function _object_copy;
        public static CIL_Function Object_copy
        {
            get
            {
                return _object_copy ??
                       (_object_copy = ObjectCopy());

                CIL_Function ObjectCopy()
                {
                    var function = CIL_Factory.DefineFunction(Constant.Object_copy);
                    var self = function.CodeGenerator.DefineVariable();

                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(self));
                    function.CodeGenerator.AddArgument(new CIL_Argument(self));

                    var copy = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(copy));

                    function.CodeGenerator.AddInstruction(new Assign(copy, self));

                    function.CodeGenerator.AddInstruction(new CIL_Return(copy));

                    return function;
                }
            }
        }

        private static CIL_Function _object_type_name;
        public static CIL_Function Object_type_name
        {
            get
            {
                return _object_type_name ??
                       (_object_type_name = ObjectTypeName());

                CIL_Function ObjectTypeName()
                {
                    var function = CIL_Factory.DefineFunction(Constant.Object_type_name);

                    var self = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(self));
                    function.CodeGenerator.AddArgument(new CIL_Argument(self));

                    var typeId = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(typeId));
                    function.CodeGenerator.AddInstruction(new TypeOf(typeId, self));

                    var end = function.CodeGenerator.DefineLabel();

                    var boolean = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(boolean));

                    var strType = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(strType));

                    foreach (var type in CIL_Factory.Types)
                    {
                        var nextLabel = function.CodeGenerator.DefineLabel();

                        function.CodeGenerator.AddInstruction(
                            new CilEqualValue(boolean, typeId, type.Id));
                        function.CodeGenerator.AddInstruction(
                            new ConditionalJump(boolean, false, nextLabel));

                        var data = CIL_Factory.Data.Single(t => t.Name == $"{type.Name}");
                        function.CodeGenerator.AddInstruction(
                            new Load(strType, data));

                        function.CodeGenerator.AddInstruction(new Goto(end));
                        function.CodeGenerator.AddInstruction(new Label(nextLabel));
                    }

                    function.CodeGenerator.AddInstruction(new Label(end));

                    var str = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(str));
                    function.CodeGenerator.AddInstruction(new Allocate(str, $"{BuiltIn.String}"));
                    function.CodeGenerator.AddInstruction(new SetAttr(str, $"{Attribute.String_value}", strType));

                    function.CodeGenerator.AddInstruction(new CIL_Return(str));
                    return function;
                }
            }
        }

        #endregion

        #region IO

        private static CIL_Function _ioOutString;
        private static CIL_Function _ioOutInt;
        private static CIL_Function _ioInInt;
        private static CIL_Function _ioInString;

        public static CIL_Function IO_out_string
        {
            get
            {
                return _ioOutString ??
                       (_ioOutString = OutString());

                CIL_Function OutString()
                {
                    var function = CIL_Factory.DefineFunction(Constant.IO_out_string);

                    var self = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(self));
                    function.CodeGenerator.AddArgument(new CIL_Argument(self));

                    var str = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(str));
                    function.CodeGenerator.AddArgument(new CIL_Argument(str));

                    function.CodeGenerator.AddInstruction(new Print_String(str));
                    function.CodeGenerator.AddInstruction(new CIL_Return(self));

                    return function;
                }
            }
        }

        public static CIL_Function IO_out_int
        {
            get
            {
                return _ioOutInt ??
                       (_ioOutInt = OutInt());

                CIL_Function OutInt()
                {
                    var function = CIL_Factory.DefineFunction(Constant.IO_out_int);

                    var self = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(self));
                    function.CodeGenerator.AddArgument(new CIL_Argument(self));

                    var integer = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(integer));
                    function.CodeGenerator.AddArgument(new CIL_Argument(integer));

                    function.CodeGenerator.AddInstruction(new Print_Int(integer));
                    function.CodeGenerator.AddInstruction(new CIL_Return(self));

                    return function;
                }
            }


        }

        public static CIL_Function IO_in_int
        {
            get
            {
                return _ioInInt ??
                       (_ioInInt = InInt());

                CIL_Function InInt()
                {
                    var function = CIL_Factory.DefineFunction(Constant.IO_in_int);

                    var self = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(self));
                    function.CodeGenerator.AddArgument(new CIL_Argument(self));

                    var value = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(value));
                    function.CodeGenerator.AddInstruction(new Read_Int(value));

                    var integer = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(integer));
                    function.CodeGenerator.AddInstruction(new Allocate(integer, $"{BuiltIn.Int}"));

                    function.CodeGenerator.AddInstruction(new SetAttr(integer, $"{Attribute.Int_value}", value));

                    function.CodeGenerator.AddInstruction(new CIL_Return(integer));

                    return function;
                }
            }
        }

        public static CIL_Function IO_in_string
        {
            get
            {
                return _ioInString ??
                       (_ioInString = InString());

                CIL_Function InString()
                {
                    var function = CIL_Factory.DefineFunction(Constant.IO_in_string);

                    var self = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(self));
                    function.CodeGenerator.AddArgument(new CIL_Argument(self));

                    var str = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(str));
                    function.CodeGenerator.AddInstruction(new Read_String(str));

                    var objStr = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(objStr));
                    function.CodeGenerator.AddInstruction(new Allocate(objStr, $"{BuiltIn.String}"));

                    function.CodeGenerator.AddInstruction(new SetAttr(objStr, $"{Attribute.String_value}", str));

                    function.CodeGenerator.AddInstruction(new CIL_Return(objStr));

                    return function;

                }
            }
        }

        #endregion

        #region String

        private static CIL_Function _string_length;
        public static CIL_Function String_length
        {
            get
            {
                return _string_length ??
                       (_string_length = StringLength());

                CIL_Function StringLength()
                {
                    var function = CIL_Factory.DefineFunction(Constant.StrLength);

                    var self = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(self));
                    function.CodeGenerator.AddArgument(new CIL_Argument(self));

                    var str = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(str));
                    function.CodeGenerator.AddInstruction(new GetAttr(str, self, $"{Attribute.String_value}"));

                    var length = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(length));
                    function.CodeGenerator.AddInstruction(new Length(length, str));

                    var integer = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(integer));
                    function.CodeGenerator.AddInstruction(new Allocate(integer, $"{BuiltIn.Int}"));
                    function.CodeGenerator.AddInstruction(new SetAttr(integer, $"{Attribute.Int_value}", length));

                    function.CodeGenerator.AddInstruction(new CIL_Return(integer));

                    return function;
                }
            }
        }

        private static CIL_Function _string_concat;
        public static CIL_Function String_concat
        {
            get
            {
                return _string_concat ??
                       (_string_concat = StringConcat());

                CIL_Function StringConcat()
                {
                    var function = CIL_Factory.DefineFunction(Constant.StrConcat);

                    var self = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(self));
                    function.CodeGenerator.AddArgument(new CIL_Argument(self));

                    var strObj = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(strObj));
                    function.CodeGenerator.AddArgument(new CIL_Argument(strObj));

                    var str1 = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(str1));
                    function.CodeGenerator.AddInstruction(new GetAttr(str1, self, $"{Attribute.String_value}"));

                    var str2 = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(str2));
                    function.CodeGenerator.AddInstruction(new GetAttr(str2, strObj, $"{Attribute.String_value}"));

                    var strConcat = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddInstruction(new Concat(strConcat, str1, str2));

                    var str = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(str));
                    function.CodeGenerator.AddInstruction(new Allocate(str, $"{BuiltIn.String}"));
                    function.CodeGenerator.AddInstruction(new SetAttr(str, $"{Attribute.String_value}", strConcat));

                    function.CodeGenerator.AddInstruction(new CIL_Return(str));

                    return function;
                }
            }
        }

        private static CIL_Function _string_substring;
        public static CIL_Function String_substring
        {
            get
            {
                return _string_substring ??
                       (_string_substring = StringSubstring());

                CIL_Function StringSubstring()
                {
                    var function = CIL_Factory.DefineFunction(Constant.StrSubstr);

                    var self = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(self));
                    function.CodeGenerator.AddArgument(new CIL_Argument(self));

                    var index = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(index));
                    function.CodeGenerator.AddArgument(new CIL_Argument(index));

                    var count = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(count));
                    function.CodeGenerator.AddArgument(new CIL_Argument(count));

                    var str = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(str));
                    function.CodeGenerator.AddInstruction(new GetAttr(str, self, $"{Attribute.String_value}"));

                    var indexValue = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(indexValue));
                    function.CodeGenerator.AddInstruction(new GetAttr(indexValue, index, $"{Attribute.Int_value}"));

                    var countValue = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(countValue));
                    function.CodeGenerator.AddInstruction(new GetAttr(countValue, count, $"{Attribute.Int_value}"));

                    var subStr = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(subStr));
                    function.CodeGenerator.AddInstruction(new Substring(subStr, str, indexValue, countValue));

                    var substring = function.CodeGenerator.DefineVariable();
                    function.CodeGenerator.AddLocalVariable(new CIL_LocalVariable(substring));
                    function.CodeGenerator.AddInstruction(new Allocate(substring, $"{BuiltIn.String}"));
                    function.CodeGenerator.AddInstruction(new SetAttr(substring, $"{Attribute.String_value}", subStr));

                    function.CodeGenerator.AddInstruction(new CIL_Return(substring));

                    return function;
                }
            }
        }

        #endregion

        #region Exceptions

        private static CIL_Function _caseOnVoidException;
        public static CIL_Function CaseOnVoidException => _caseOnVoidException ??
                                                          (_caseOnVoidException =
                                                              BuilderException(CoolExceptionType.CaseOnVoidException));

        private static CIL_Function _executionOfACaseStatementWithoutAMatchingBranchException;

        public static CIL_Function ExecutionOfACaseStatementWithoutAMatchingBranchException =>
            _executionOfACaseStatementWithoutAMatchingBranchException ??
            (_executionOfACaseStatementWithoutAMatchingBranchException =
                BuilderException(CoolExceptionType.ExecutionOfACaseStatementWithoutAMatchingBranchException));

        private static CIL_Function _dispatchOnVoidException;

        public static CIL_Function DispatchOnVoidException => _dispatchOnVoidException ??
                                                              (_dispatchOnVoidException =
                                                                  BuilderException(CoolExceptionType.DispatchOnVoidException));

        private static CIL_Function _argumentOutOfRangeException;

        public static CIL_Function ArgumentOutOfRangeException => _argumentOutOfRangeException ??
                                                                  (_argumentOutOfRangeException =
                                                                      BuilderException(CoolExceptionType.ArgumentOutOfRangeException));

        private static CIL_Function _divideByZeroException;

        public static CIL_Function DivideByZeroException => _divideByZeroException ??
                                                            (_divideByZeroException =
                                                                BuilderException(CoolExceptionType.DivideByZeroException));

        private static CIL_Function _negativeLengthException;

        public static CIL_Function NegativeLengthException => _negativeLengthException ??
                                                              (_negativeLengthException =
                                                                  BuilderException(CoolExceptionType.NegativeLengthException));

        private static CIL_Function _substringOutOfRangeException;

        public static CIL_Function SubstringOutOfRangeException => _substringOutOfRangeException ??
                                                                   (_substringOutOfRangeException =
                                                                       BuilderException(CoolExceptionType.SubstringOutOfRangeException));

        private static CIL_Function BuilderException(CoolExceptionType exception)
        {
            var function = CIL_Factory.DefineFunction($"{exception}");
            function.CodeGenerator.AddInstruction(
                new CIL_Exception(exception));
            return function;
        }

        #endregion
    }
}