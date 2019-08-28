using System;
using System.Collections.Generic;
using System.Linq;
using Class_Intermediate_Language.AST.Functions;
using Class_Intermediate_Language.AST.Instructions;
using Class_Intermediate_Language.AST.Instructions.Arithmetic;
using Class_Intermediate_Language.AST.Instructions.Assign;
using Class_Intermediate_Language.AST.Instructions.Attributes;
using Class_Intermediate_Language.AST.Instructions.Comparer;
using Class_Intermediate_Language.AST.Instructions.Memory;
using Class_Intermediate_Language.AST.Instructions.Param;
using Class_Intermediate_Language.AST.Instructions.String;
using Class_Intermediate_Language.AST.Instructions.Unary;
using Class_Intermediate_Language.AST.Type;
using Class_Intermediate_Language.Interfaces;
using Class_Intermediate_Language.Utils;
using CoolCheckSemantic.Scopes;
using CoolGrammar.AST;
using CoolGrammar.AST.Expression.BinaryOperation.Arithmetic;
using CoolGrammar.AST.Expression.BinaryOperation.Comparison;
using CoolGrammar.AST.Expression.BinaryOperation.Logic;
using CoolGrammar.AST.Expression.Constant;
using CoolGrammar.AST.Expression.Identifier;
using CoolGrammar.AST.Expression.Instruction;
using CoolGrammar.AST.Expression.Instruction.FlowControl;
using CoolGrammar.AST.Expression.Instruction.Invoke;
using CoolGrammar.AST.Expression.Instruction.UnaryOperation;
using CoolGrammar.AST.Feature;
using CoolGrammar.AST.Util;
using CoolGrammar.CodeGeneration;
using Attribute = Class_Intermediate_Language.Utils.Attribute;


namespace Class_Intermediate_Language.Visitor
{
    public class CodeGeneratorVisitor :
    #region ICodeGenerator
        ICodeGeneratorVisitor<ProgramNode>,
        ICodeGeneratorVisitor<ClassNode>,
        ICodeGeneratorVisitor<LocalOrFieldInit>,
        ICodeGeneratorVisitor<MethodNode>,
        ICodeGeneratorVisitor<ArgumentsListNode>,
        ICodeGeneratorVisitor<ExpressionNode>,
        ICodeGeneratorVisitor<StringNode>,
        ICodeGeneratorVisitor<IntegerNode>,
        ICodeGeneratorVisitor<BoolNode>,
        ICodeGeneratorVisitor<ArithmeticOperationNode>,
        ICodeGeneratorVisitor<ComparisonOperationNode>,
        ICodeGeneratorVisitor<LogicOperationNode>,
        ICodeGeneratorVisitor<AndNode>,
        ICodeGeneratorVisitor<OrNode>,
        ICodeGeneratorVisitor<NotNode>,
        ICodeGeneratorVisitor<NegNode>,
        ICodeGeneratorVisitor<IsVoidNode>,
        ICodeGeneratorVisitor<NewTypeNode>,
        ICodeGeneratorVisitor<InvokeNode>,
        ICodeGeneratorVisitor<DotInvokeNode>,
        ICodeGeneratorVisitor<ParametersListNode>,
        ICodeGeneratorVisitor<WhileNode>,
        ICodeGeneratorVisitor<DoWhileNode>,
        ICodeGeneratorVisitor<IfNode>,
        ICodeGeneratorVisitor<CaseNode>,
        ICodeGeneratorVisitor<AssignNode>,
        ICodeGeneratorVisitor<ObjIdNode>,
        ICodeGeneratorVisitor<SelfNode>,
        ICodeGeneratorVisitor<BlockNode>,
        ICodeGeneratorVisitor<LetNode>,
        ICodeGeneratorVisitor<LetExpresNode>
    #endregion
    {
        public void GenerateCode(ProgramNode node, ICIL_CodeGenerator codeGenerator = null)
        {
            foreach (var cls in new[] { BuiltIn.Object, BuiltIn.IO, BuiltIn.String, BuiltIn.Bool, BuiltIn.Int })
            {
                TypeTable.IsDefinedType($"{cls}", out var type);

                #region .TYPES

                CIL_Type cilType;
                IEnumerable<CIL_FunctionDeclaration> funtions;
                IEnumerable<CIL_Attribute> attributes;

                //var instance = type.Self.Holder ??
                //               (type.Self.Holder = codeGenerator.DefineVariable());

                //codeGenerator.AddLocalVariable(
                //    new CIL_LocalVariable((Variable)type.Self.Holder));

                switch (cls)
                {
                    case BuiltIn.Object:
                        funtions = ((CoolType)type).GetMethods
                            .Select(function => new CIL_FunctionDeclaration($"{function.ParentScope}_{function.Name}"));
                        cilType = CIL_Factory.DefineType($"{cls}", funtion : funtions);
                        break;

                    case BuiltIn.IO:
                        funtions = ((CoolType)type).GetMethods
                            .Select(function => new CIL_FunctionDeclaration($"{function.ParentScope}_{function.Name}"));
                        cilType = CIL_Factory.DefineType($"{cls}", $"{BuiltIn.Object}", funtion: funtions);
                        break;

                    case BuiltIn.String:
                        attributes = new[] { new CIL_Attribute($"{Attribute.String_value}") };

                        funtions = ((CoolType)type).GetMethods
                            .Select(function => new CIL_FunctionDeclaration($"{function.ParentScope}_{function.Name}"));
                        cilType = CIL_Factory.DefineType($"{cls}", $"{BuiltIn.Object}", attributes, funtions);
                        break;

                    case BuiltIn.Int:
                    case BuiltIn.Bool:
                        attributes = new[] { new CIL_Attribute($"{cls}_value") };
                        cilType = CIL_Factory.DefineType($"{cls}", $"{BuiltIn.Object}", attributes);
                        break;

                    default:
                        throw new ArgumentOutOfRangeException();
                }

                CIL_Factory.AddType(cilType);

                #endregion
            }

            #region BFS GenerateCode

            var queue = new Queue<string>();
            queue.Enqueue("Object");
            queue.Enqueue("IO");
            var classesList = new List<ClassNode>();

            while (queue.Count != 0)
            {
                classesList.AddRange(node.ClassesList
                    .Where(classNode =>
                {
                    var boolean = classNode.TypeParent == queue.Peek();
                    if (boolean)
                        queue.Enqueue(classNode.TypeClass);
                    return boolean;
                }));
                queue.Dequeue();
            }

            #endregion

            foreach (var cls in classesList)
            {
                TypeTable.IsDefinedType(cls.TypeClass, out var type);

                #region .Types

                var attributes = ((CoolType)type).GetAttributes
                    .Select(attr => new CIL_Attribute($"{cls.TypeClass}_{attr.Name}"));

                var funtions = ((CoolType)type).GetMethods
                    .Select(funtion => new CIL_FunctionDeclaration($"{funtion.ParentScope}_{funtion.Name}"));

                var cilType = CIL_Factory.DefineType(cls.TypeClass, cls.TypeParent, attributes, funtions);

                CIL_Factory.AddType(cilType);

                #endregion
            }

            foreach (var cls in classesList)
                GenerateCode(cls);

            #region .CODE

            #region Object

            CIL_Factory.AddFunction(CIL_FunctionBuilder.Object_copy);
            CIL_Factory.AddFunction(CIL_FunctionBuilder.Object_type_name);
            CIL_Factory.AddFunction(CIL_FunctionBuilder.Object_abort);

            #endregion

            #region IO

            CIL_Factory.AddFunction(CIL_FunctionBuilder.IO_out_string);
            CIL_Factory.AddFunction(CIL_FunctionBuilder.IO_out_int);
            CIL_Factory.AddFunction(CIL_FunctionBuilder.IO_in_string);
            CIL_Factory.AddFunction(CIL_FunctionBuilder.IO_in_int);

            #endregion

            #region String

            CIL_Factory.AddFunction(CIL_FunctionBuilder.String_concat);
            CIL_Factory.AddFunction(CIL_FunctionBuilder.String_length);
            CIL_Factory.AddFunction(CIL_FunctionBuilder.String_substring);

            #endregion

            #region Exceptions

            CIL_Factory.AddFunction(CIL_FunctionBuilder.ExecutionOfACaseStatementWithoutAMatchingBranchException);
            CIL_Factory.AddFunction(CIL_FunctionBuilder.CaseOnVoidException);
            CIL_Factory.AddFunction(CIL_FunctionBuilder.ArgumentOutOfRangeException);
            CIL_Factory.AddFunction(CIL_FunctionBuilder.DispatchOnVoidException);
            CIL_Factory.AddFunction(CIL_FunctionBuilder.DivideByZeroException);
            CIL_Factory.AddFunction(CIL_FunctionBuilder.NegativeLengthException);
            CIL_Factory.AddFunction(CIL_FunctionBuilder.SubstringOutOfRangeException);

            #endregion

            #endregion

        }

        public void GenerateCode(ClassNode node, ICIL_CodeGenerator codeGenerator = null)
        {
            TypeTable.IsDefinedType(node.TypeClass, out var type);

            //Define init_function 
            var initFunction = CIL_Factory.DefineFunction($"{node.TypeClass}_Init");

            // Define Variable ('instance')
            var instance = type.Self.Holder ??
                           (type.Self.Holder = initFunction.CodeGenerator.DefineVariable());

            if (node.TypeClass == "Main")
            {
                // Add Local Variable
                initFunction.CodeGenerator.AddLocalVariable(
                    new CIL_LocalVariable((Variable)instance));

                // Allocate Main
                initFunction.CodeGenerator.AddInstruction(
                   new Allocate((Variable)instance, node.TypeClass));
            }
            else
            {
                // Define argument
                //var argument = initFunction.CodeGenerator.DefineVariable();

                //add Local Variable
                initFunction.CodeGenerator.AddLocalVariable(
                     new CIL_LocalVariable((Variable)instance));

                initFunction.CodeGenerator.AddArgument(
                    new CIL_Argument((Variable)instance));
            }

            if (node.TypeParent != $"{BuiltIn.Object}" &&
                node.TypeParent != $"{BuiltIn.IO}")

            {
                // Set Param to invoke the Parent Init_function
                initFunction.CodeGenerator.AddInstruction(
                    new Param((Variable)instance));

                //Define the variable to hold the result call of the Parent's init_fuction of TypeClass
                var rVcall = initFunction.CodeGenerator.DefineVariable();

                // add Local Variable
                initFunction.CodeGenerator.AddLocalVariable(
                    new CIL_LocalVariable(rVcall));

                //Call the Parent's init_function 
                initFunction.CodeGenerator.AddInstruction(
                    new Call(rVcall, $"{node.TypeParent}_Init"));
            }

            foreach (var feature in node.FeatureList.Features)
            {
                switch (feature)
                {
                    case LocalOrFieldInit localOrFieldInit:

                        GenerateCode(localOrFieldInit, initFunction.CodeGenerator);

                        initFunction.CodeGenerator.AddInstruction(
                            new SetAttr((Variable)instance, $"{node.TypeClass}_{localOrFieldInit.Name}",
                                localOrFieldInit.Symbol.Holder));

                        break;

                    case MethodNode methodNode:

                        var function = CIL_Factory.DefineFunction($"{node.TypeClass}_{methodNode.FuncName}");

                        function.CodeGenerator
                            .AddLocalVariable(new CIL_LocalVariable((Variable)instance));

                        function.CodeGenerator.AddArgument(
                             new CIL_Argument((Variable)instance));

                        GenerateCode(methodNode, function.CodeGenerator);
                        CIL_Factory.AddFunction(function);

                        break;
                }
            }

            if (node.TypeClass == "Main")
            {
                var result = initFunction.CodeGenerator.DefineVariable();

                // add Local Variable
                initFunction.CodeGenerator.AddLocalVariable(
                     new CIL_LocalVariable(result));

                // set Param to invoke the main function
                initFunction.CodeGenerator.AddInstruction(
                    new Param((Variable)instance));

                //Control is transferred to Main_main
                initFunction.CodeGenerator.AddInstruction(
                    new Call(result, $"{node.TypeClass}_main"));
            }

            //Add the return instruction's
            initFunction.CodeGenerator.AddInstruction(
                new CIL_Return());

            //Add InitFunction with the initialized code
            CIL_Factory.AddFunction(initFunction);
        }

        public void GenerateCode(MethodNode node, ICIL_CodeGenerator codeGenerator)
        {

            if (node.ArgumentsList != null)
                GenerateCode(node.ArgumentsList, codeGenerator);

            GenerateCode(node.Body, codeGenerator);

            codeGenerator.AddInstruction(
                new CIL_Return((Variable)node.Body.Holder));
        }

        public void GenerateCode(ArgumentsListNode node, ICIL_CodeGenerator codeGenerator)
        {
            foreach (var argument in node.Arguments)
            {
                argument.Symbol.Holder = codeGenerator.DefineVariable();

                // add Local Variable
                codeGenerator.AddLocalVariable(
                    new CIL_LocalVariable((Variable)argument.Symbol.Holder));

                codeGenerator.AddArgument(
                    new CIL_Argument((Variable)argument.Symbol.Holder));
            }
        }

        public void GenerateCode(LocalOrFieldInit node, ICIL_CodeGenerator codeGenerator)
        {
            node.Symbol.Holder = codeGenerator.DefineVariable();

            // add Local Variable
            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable((Variable)node.Symbol.Holder));

            if (node.Initialization == null)
            {

                switch (node.TypeObj)
                {
                    #region Int, Bool

                    case "Int":
                    case "Bool":

                        codeGenerator.AddInstruction(
                            new Allocate((Variable)node.Symbol.Holder, node.TypeObj));

                        var byDefault = codeGenerator.DefineVariable();

                        // add Local Variable
                        codeGenerator.AddLocalVariable(
                            new CIL_LocalVariable(byDefault));

                        codeGenerator.AddInstruction(
                            new Assign(byDefault, 0));

                        codeGenerator.AddInstruction(
                            new SetAttr((Variable)node.Symbol.Holder,
                                $"{node.TypeObj}_value",
                                byDefault));

                        break;

                    #endregion

                    #region String

                    case "String":

                        var empty = CIL_Factory.Data.Single(data =>
                            data.Name == "empty");

                        var str = codeGenerator.DefineVariable();

                        // add Local Variable
                        codeGenerator.AddLocalVariable(
                            new CIL_LocalVariable(str));

                        codeGenerator.AddInstruction(
                            new Load(str, empty));

                        codeGenerator.AddInstruction(
                            new Allocate((Variable)node.Symbol.Holder, node.TypeObj));

                        codeGenerator.AddInstruction(
                            new SetAttr((Variable)node.Symbol.Holder,
                                $"{node.TypeObj}_addrStr",
                                str));
                        break;

                    #endregion

                    #region Others

                    default:

                        codeGenerator.AddInstruction(
                            new Assign((Variable)node.Symbol.Holder, -1));

                        break;

                        #endregion
                }
            }
            else
            {
                GenerateCode(node.Initialization, codeGenerator);

                codeGenerator.AddInstruction(
                    new Assign((Variable)node.Symbol.Holder, node.Initialization.Holder));
            }
        }

        public void GenerateCode(AssignNode node, ICIL_CodeGenerator codeGenerator)
        {
            //GenerateCode(node.ObjId, codeGenerator);
            GenerateCode(node.Expression, codeGenerator);

            if (node.ObjId.Symbol.IsAttribute)
            {
                // Y.b = X  (Set_Attr)
                var instance = node.ObjId.OwnerType.Self.Holder;

                codeGenerator.AddInstruction(
                  new SetAttr((Variable)instance,
                      $"{node.ObjId.OwnerType.Name}_{node.ObjId.Text}",
                      node.Expression.Holder));
            }
            else

                // Y = X   (assign)
                codeGenerator.AddInstruction(
                    new Assign((Variable)node.ObjId.Symbol.Holder, node.Expression.Holder));

            node.Holder = codeGenerator.DefineVariable();
            codeGenerator.AddLocalVariable(new CIL_LocalVariable((Variable)node.Holder));
            codeGenerator.AddInstruction(
                new Assign((Variable)node.Holder, node.Expression.Holder));
        }

        public void GenerateCode(ObjIdNode node, ICIL_CodeGenerator codeGenerator)
        {
            node.Holder = codeGenerator.DefineVariable();

            // add Local Variable
            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable((Variable)node.Holder));

            if (node.Symbol.IsAttribute)
            {
                // X = symb.attr_name (Get_Attr)
                var instance = node.OwnerType.Self.Holder;

                codeGenerator.AddInstruction(
                   new GetAttr((Variable)node.Holder,
                       instance,
                       $"{node.OwnerType}_{node.Symbol.Name}"));
            }
            else
                // X = symb (assign)
                codeGenerator.AddInstruction(
                    new Assign((Variable)node.Holder, node.Symbol.Holder));
        }

        public void GenerateCode(SelfNode node, ICIL_CodeGenerator codeGenerator)
        {
            node.Holder = codeGenerator.DefineVariable();

            // add Local Variable
            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable((Variable)node.Holder));

            codeGenerator.AddInstruction(
                new Assign((Variable)node.Holder, node.Symbol.Holder));
        }

        public void GenerateCode(ExpressionNode node, ICIL_CodeGenerator codeGenerator)
        {
            switch (node)
            {
                case ArithmeticOperationNode arithmeticOperationNode:
                    GenerateCode(arithmeticOperationNode, codeGenerator);
                    break;
                case ComparisonOperationNode comparisonOperationNode:
                    GenerateCode(comparisonOperationNode, codeGenerator);
                    break;
                case LogicOperationNode logicOperationNode:
                    GenerateCode(logicOperationNode, codeGenerator);
                    break;
                case BoolNode boolNode:
                    GenerateCode(boolNode, codeGenerator);
                    break;
                case IntegerNode integerNode:
                    GenerateCode(integerNode, codeGenerator);
                    break;
                case StringNode stringNode:
                    GenerateCode(stringNode, codeGenerator);
                    break;
                case ObjIdNode objIdNode:
                    GenerateCode(objIdNode, codeGenerator);
                    break;
                case SelfNode selfNode:
                    GenerateCode(selfNode, codeGenerator);
                    break;
                case AssignNode assignNode:
                    GenerateCode(assignNode, codeGenerator);
                    break;
                case BlockNode blockNode:
                    GenerateCode(blockNode, codeGenerator);
                    break;
                case CaseNode caseNode:
                    GenerateCode(caseNode, codeGenerator);
                    break;
                case DoWhileNode doWhileNode:
                    GenerateCode(doWhileNode, codeGenerator);
                    break;
                case IfNode ifNode:
                    GenerateCode(ifNode, codeGenerator);
                    break;
                case WhileNode whileNode:
                    GenerateCode(whileNode, codeGenerator);
                    break;
                case LetNode letNode:
                    GenerateCode(letNode, codeGenerator);
                    break;
                case InvokeNode invokeNode:
                    GenerateCode(invokeNode, codeGenerator);
                    break;
                case DotInvokeNode dotInvokeNode:
                    GenerateCode(dotInvokeNode, codeGenerator);
                    break;
                case IsVoidNode isVoidNode:
                    GenerateCode(isVoidNode, codeGenerator);
                    break;
                case NewTypeNode newTypeNode:
                    GenerateCode(newTypeNode, codeGenerator);
                    break;
                case NegNode negNode:
                    GenerateCode(negNode, codeGenerator);
                    break;
                case NotNode notNode:
                    GenerateCode(notNode, codeGenerator);
                    break;
            }
        }

        public void GenerateCode(StringNode node, ICIL_CodeGenerator codeGenerator)
        {
            #region .DATA

            var data = CIL_Factory.DefineData(node.Text);
            CIL_Factory.AddData(data);

            #endregion

            #region .CODE

            var str = codeGenerator.DefineVariable();

            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable(str));

            codeGenerator.AddInstruction(new Load(str, data));

            //strObj
            node.Holder = codeGenerator.DefineVariable();

            codeGenerator.AddInstruction(
                new Allocate((Variable)node.Holder, $"{BuiltIn.String}"));

            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable((Variable)node.Holder));


            codeGenerator.AddInstruction(
                new SetAttr((Variable)node.Holder,
                    $"{Attribute.String_value}",
                    str));
            #endregion
        }

        public void GenerateCode(BoolNode node, ICIL_CodeGenerator codeGenerator)
        {
            #region .CODE

            var value = codeGenerator.DefineVariable();

            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable(value));

            codeGenerator.AddInstruction(
                new Assign(value, node.Value));

            //boolObj
            node.Holder = codeGenerator.DefineVariable();

            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable((Variable)node.Holder));

            codeGenerator.AddInstruction(
                new Allocate((Variable)node.Holder, $"{BuiltIn.Bool}"));

            codeGenerator.AddInstruction(
                new SetAttr((Variable)node.Holder,
                    $"{Attribute.Bool_value}",
                    value));

            #endregion
        }

        public void GenerateCode(IntegerNode node, ICIL_CodeGenerator codeGenerator)
        {
            #region .CODE

            var value = codeGenerator.DefineVariable();

            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable(value));

            codeGenerator.AddInstruction(
                new Assign(value, node.Value));

            //IntObj
            node.Holder = codeGenerator.DefineVariable();

            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable((Variable)node.Holder));

            codeGenerator.AddInstruction(
                new Allocate((Variable)node.Holder, $"{BuiltIn.Int}"));

            codeGenerator.AddInstruction(
                new SetAttr((Variable)node.Holder,
                    "Int_value",
                    value));

            #endregion
        }

        public void GenerateCode(ArithmeticOperationNode node, ICIL_CodeGenerator codeGenerator)
        {
            node.Holder = codeGenerator.DefineVariable();

            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable((Variable)node.Holder));

            GenerateCode(node.OpNode1, codeGenerator);
            GenerateCode(node.OpNode2, codeGenerator);

            switch (node)
            {
                case AdditionNode additionNode:
                    codeGenerator.AddInstruction(
                        new CilPlus((Variable)additionNode.Holder, node.OpNode1.Holder, node.OpNode2.Holder));
                    break;

                case DivisionNode divisionNode:

                    codeGenerator.AddInstruction(
                        new CilDiv((Variable)divisionNode.Holder, node.OpNode1.Holder, node.OpNode2.Holder));
                    break;

                case MultiplicationNode multiplicationNode:
                    codeGenerator.AddInstruction(
                        new CilMult((Variable)multiplicationNode.Holder, node.OpNode1.Holder, node.OpNode2.Holder));
                    break;

                case SubstractionNode substractionNode:
                    codeGenerator.AddInstruction(
                        new CilMinus((Variable)substractionNode.Holder, node.OpNode1.Holder, node.OpNode2.Holder));

                    break;
            }
        }

        public void GenerateCode(ComparisonOperationNode node, ICIL_CodeGenerator codeGenerator)
        {
            node.Holder = codeGenerator.DefineVariable();

            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable((Variable)node.Holder));

            GenerateCode(node.OpNode1, codeGenerator);
            GenerateCode(node.OpNode2, codeGenerator);


            switch (node)
            {
                // value comparison
                case MajorEqualNode majorEqual:
                    codeGenerator.AddInstruction(
                        new CilMajorEqual((Variable)majorEqual.Holder, node.OpNode1.Holder, node.OpNode2.Holder));
                    break;

                case MajorNode major:
                    codeGenerator.AddInstruction(
                        new CilMajor((Variable)major.Holder, node.OpNode1.Holder, node.OpNode2.Holder));
                    break;

                case MinorEqualNode minorEqual:
                    codeGenerator.AddInstruction(
                        new CilMinorEqual((Variable)minorEqual.Holder, node.OpNode1.Holder, node.OpNode2.Holder));
                    break;

                case MinorNode minor:
                    codeGenerator.AddInstruction(
                        new CilMinor((Variable)minor.Holder, node.OpNode1.Holder, node.OpNode2.Holder));
                    break;

                // both
                case EqualNode equal:

                    if (equal.IsValueComparison)
                        codeGenerator.AddInstruction(
                            new CilEqualValue((Variable)equal.Holder, node.OpNode1.Holder, node.OpNode2.Holder));
                    else
                        codeGenerator.AddInstruction(
                            new CilEqualReference((Variable)equal.Holder, node.OpNode1.Holder, node.OpNode2.Holder));
                    break;
            }
        }

        public void GenerateCode(LogicOperationNode node, ICIL_CodeGenerator codeGenerator)
        {
            switch (node)
            {
                case AndNode andNode:
                    GenerateCode(andNode, codeGenerator);
                    break;
                case OrNode orNode:
                    GenerateCode(orNode, codeGenerator);
                    break;
            }
        }

        public void GenerateCode(AndNode node, ICIL_CodeGenerator codeGenerator)
        {
            node.Holder = codeGenerator.DefineVariable();

            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable((Variable)node.Holder));

            GenerateCode(node.OpNode1, codeGenerator);

            codeGenerator.AddInstruction(
                new Assign((Variable)node.Holder, node.OpNode1.Holder));

            var label = codeGenerator.DefineLabel();

            codeGenerator.AddInstruction(
                new ConditionalJump((Variable)node.Holder, false, label));

            GenerateCode(node.OpNode2, codeGenerator);

            codeGenerator.AddInstruction(
               new Assign((Variable)node.Holder, node.OpNode2.Holder));

            codeGenerator.AddInstruction(
                new Label(label));
        }

        public void GenerateCode(OrNode node, ICIL_CodeGenerator codeGenerator)
        {
            node.Holder = codeGenerator.DefineVariable();

            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable((Variable)node.Holder));

            GenerateCode(node.OpNode1, codeGenerator);

            codeGenerator.AddInstruction(
                new Assign((Variable)node.Holder, node.OpNode1.Holder));

            var label = codeGenerator.DefineLabel();

            codeGenerator.AddInstruction(
                new ConditionalJump((Variable)node.Holder, true, label));

            GenerateCode(node.OpNode2, codeGenerator);

            codeGenerator.AddInstruction(
                new Assign((Variable)node.Holder, node.OpNode2.Holder));

            codeGenerator.AddInstruction(
                new Label(label));

        }

        public void GenerateCode(NotNode node, ICIL_CodeGenerator codeGenerator)
        {
            node.Holder = codeGenerator.DefineVariable();

            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable((Variable)node.Holder));

            codeGenerator.AddInstruction(
                new Assign((Variable)node.Holder, false));

            GenerateCode(node.Expression, codeGenerator);

            var end = codeGenerator.DefineLabel();

            codeGenerator.AddInstruction(
                new ConditionalJump((Variable)node.Expression.Holder, true, end));

            codeGenerator.AddInstruction(
                new Assign((Variable)node.Holder, true));

            codeGenerator.AddInstruction(
                new Label(end));

        }

        public void GenerateCode(NegNode node, ICIL_CodeGenerator codeGenerator)
        {
            node.Holder = codeGenerator.DefineVariable();

            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable((Variable)node.Holder));

            GenerateCode(node.Expression, codeGenerator);

            codeGenerator.AddInstruction(
                new CilNeg((Variable)node.Holder, node.Expression.Holder));
        }

        public void GenerateCode(IsVoidNode node, ICIL_CodeGenerator codeGenerator)
        {
            //eval (expr)
            //rholder= true
            //if expr is -1 goto END
            //rholder=false
            //END

            node.Holder = codeGenerator.DefineVariable();
            codeGenerator.AddLocalVariable(new CIL_LocalVariable((Variable)node.Holder));
            codeGenerator.AddInstruction(
                new Allocate((Variable)node.Holder, $"{BuiltIn.Bool}"));

            GenerateCode(node.Expression, codeGenerator);

            var boolean = codeGenerator.DefineVariable();
            codeGenerator.AddLocalVariable(new CIL_LocalVariable(boolean));
            codeGenerator.AddInstruction(new Assign(boolean, true));

            codeGenerator.AddInstruction(
                new SetAttr((Variable)node.Holder, $"{Attribute.Bool_value}", boolean));

            var typeExpr = codeGenerator.DefineVariable();
            codeGenerator.AddLocalVariable(new CIL_LocalVariable(typeExpr));
            codeGenerator.AddInstruction(
                new TypeOf(typeExpr, (Variable)node.Expression.Holder));

            var condition = codeGenerator.DefineVariable();
            codeGenerator.AddLocalVariable(new CIL_LocalVariable(condition));

            codeGenerator.AddInstruction(
                new CilEqualValue(condition, typeExpr, -1));

            var end = codeGenerator.DefineLabel();

            codeGenerator.AddInstruction(
                new ConditionalJump(condition, true, end));

            codeGenerator.AddInstruction(
                new Assign(boolean, false));

            codeGenerator.AddInstruction(
                new SetAttr((Variable)node.Holder, $"{Attribute.Bool_value}", boolean));

            codeGenerator.AddInstruction(
                new Label(end));

        }

        public void GenerateCode(NewTypeNode node, ICIL_CodeGenerator codeGenerator)
        {
            node.Holder = codeGenerator.DefineVariable();

            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable((Variable)node.Holder));

            codeGenerator.AddInstruction(
                new Allocate((Variable)node.Holder, node.TypeName));

            if (node.TypeName == $"{BuiltIn.Object}" ||
                node.TypeName == $"{BuiltIn.IO}")
                return;

            codeGenerator.AddInstruction(
                new Param((Variable)node.Holder));

            var rVCall = codeGenerator.DefineVariable();

            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable(rVCall));

            codeGenerator.AddInstruction(
                new Call(rVCall, $"{node.TypeName}_Init"));

        }

        public void GenerateCode(DotInvokeNode node, ICIL_CodeGenerator codeGenerator)
        {
            node.Holder = codeGenerator.DefineVariable();

            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable((Variable)node.Holder));

            GenerateCode(node.Expression, codeGenerator);

            var typeObj = codeGenerator.DefineVariable();

            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable(typeObj));

            codeGenerator.AddInstruction(
                new TypeOf(typeObj, (Variable)node.Expression.Holder));


            #region throwException

            var boolean = codeGenerator.DefineVariable();

            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable(boolean));

            codeGenerator.AddInstruction(
                new CilEqualValue(boolean, typeObj, -1));

            codeGenerator.AddInstruction(
                new ConditionalJump(boolean, true, $"{CoolExceptionType.DispatchOnVoidException}"));

            #endregion

            if (node.InvokeNode.Parameters != null)
                GenerateCode(node.InvokeNode.Parameters, codeGenerator);

            codeGenerator.AddInstruction(
                new Param((Variable)node.Expression.Holder));
            
            switch (node)
            {
                case DotObjectInvoke _:

                    var end = codeGenerator.DefineLabel();

                    foreach (var type in CIL_Factory.Types)
                    {
                        var label = codeGenerator.DefineLabel();
                        var cond = codeGenerator.DefineVariable();
                        codeGenerator.AddLocalVariable(new CIL_LocalVariable(cond));
                        codeGenerator.AddInstruction(new CilEqualValue(cond, typeObj, type.Id));
                        codeGenerator.AddInstruction(new ConditionalJump(cond, false, label));

                        try
                        {
                            var functionName = type.GetFunctionOffSet(node.InvokeNode.FuncName);
                            codeGenerator.AddInstruction(
                                new Call((Variable)node.Holder, functionName));
                            codeGenerator.AddInstruction(new Goto(end));
                        }
                        catch
                        {
                            // ignored
                        }
                        codeGenerator.AddInstruction(new Label(label));
                    }

                    codeGenerator.AddInstruction(new Label(end));

                    break;

                case DotTypeInvoke typeDotInvoke:
                    codeGenerator.AddInstruction(
                        new VCall((Variable)node.Holder, typeDotInvoke.AtSign, $"{typeDotInvoke.AtSign}_{node.InvokeNode.FuncName}"));

                    break;
            }
        }

        public void GenerateCode(InvokeNode node, ICIL_CodeGenerator codeGenerator)
        {
            node.Holder = codeGenerator.DefineVariable();
            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable((Variable)node.Holder));

            #region GenerateCode SelfNode

            var self = codeGenerator.DefineVariable();
            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable(self));

            var instance = node.OwnerType.Self.Holder;

            codeGenerator.AddInstruction(
                new Assign(self, instance));

            #endregion

            if (node.Parameters != null)
                GenerateCode(node.Parameters, codeGenerator);

            codeGenerator.AddInstruction(
                new Param(self));

            codeGenerator.AddInstruction(
                new Call((Variable)node.Holder, $"{node.Method.ParentScope}_{node.FuncName}"));
        }

        public void GenerateCode(ParametersListNode node, ICIL_CodeGenerator codeGenerator)
        {
            foreach (var expression in node.Expressions)
                GenerateCode(expression, codeGenerator);

            foreach (var expression in node.Expressions.Reverse())
                codeGenerator.AddInstruction(
                    new Param((Variable)expression.Holder));
        }

        public void GenerateCode(WhileNode node, ICIL_CodeGenerator codeGenerator)
        {
            //Loop:
            //  GenCode <ExprCond>
            //  if ExprCond = false Goto END
            //  GenCode <Body>
            //  Goto Loop
            //END
            //  holder = -1

            var loop = codeGenerator.DefineLabel();
            codeGenerator.AddInstruction(new Label(loop));

            GenerateCode(node.Condition, codeGenerator);
            var end = codeGenerator.DefineLabel();
            codeGenerator.AddInstruction(
                new ConditionalJump((Variable)node.Condition.Holder,
                    false, end));

            GenerateCode(node.Body, codeGenerator);
            codeGenerator.AddInstruction(new Goto(loop));
            codeGenerator.AddInstruction(new Label(end));

            node.Holder = codeGenerator.DefineVariable();
            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable((Variable)node.Holder));

            codeGenerator.AddInstruction(
                new Assign((Variable)node.Holder, -1));
        }

        public void GenerateCode(DoWhileNode node, ICIL_CodeGenerator codeGenerator)
        {
            //Loop:
            //  GenCode <Body>
            //  GenCode <ExprCond>
            //  if ExprCond = true Goto Loop
            //  holder = -1

            var loop = codeGenerator.DefineLabel();
            codeGenerator.AddInstruction(new Label(loop));

            GenerateCode(node.Body, codeGenerator);
            GenerateCode(node.Condition, codeGenerator);

            codeGenerator.AddInstruction(
                new ConditionalJump((Variable)node.Body.Holder, true, loop));

            node.Holder = codeGenerator.DefineVariable();

            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable((Variable)node.Holder));

            codeGenerator.AddInstruction(
                new Assign((Variable)node.Holder, -1));

        }

        public void GenerateCode(IfNode node, ICIL_CodeGenerator codeGenerator)
        {
            node.Holder = codeGenerator.DefineVariable();

            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable((Variable)node.Holder));

            GenerateCode(node.Condition, codeGenerator);

            var trueBranch = codeGenerator.DefineLabel();

            codeGenerator.AddInstruction(
                new ConditionalJump((Variable)node.Condition.Holder,
                    true, trueBranch));

            var end = codeGenerator.DefineLabel();

            if (node.ElseExpression != null)
            {
                GenerateCode(node.ElseExpression, codeGenerator);

                codeGenerator.AddInstruction(
                    new Assign((Variable)node.Holder, node.ElseExpression.Holder));

                codeGenerator.AddInstruction(
                    new Goto(end));
            }

            codeGenerator.AddInstruction(
                new Label(trueBranch));

            GenerateCode(node.ThenExpression, codeGenerator);

            codeGenerator.AddInstruction(
                new Assign((Variable)node.Holder, node.ThenExpression.Holder));

            codeGenerator.AddInstruction(
                new Label(end));

        }

        public void GenerateCode(CaseNode node, ICIL_CodeGenerator codeGenerator)
        {
            node.Holder = codeGenerator.DefineVariable();
            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable((Variable)node.Holder));

            //genCode (expr0)
            GenerateCode(node.Expression, codeGenerator);

            var type = codeGenerator.DefineVariable();

            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable(type));

            //type = TypeOF expr0.Holder
            codeGenerator.AddInstruction(
                new TypeOf(type, (Variable)node.Expression.Holder));

            var boolean = codeGenerator.DefineVariable();

            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable(boolean));

            // boolean = type == -1 (is null)
            codeGenerator.AddInstruction(
                new CilEqualValue(boolean, type, -1));

            // If boolean is true throw exception
            codeGenerator.AddInstruction(
                new ConditionalJump(boolean, true, $"{CoolExceptionType.DispatchOnVoidException}"));

            #region 'Code BranchSelector'

            var loop = codeGenerator.DefineLabel();

            // Loop:
            codeGenerator.AddInstruction(
                new Label(loop));

            var end = codeGenerator.DefineLabel();

            foreach (var caseOption in node.CaseOptionNodes)
            {
                // boolean = x == type_k
                codeGenerator.AddInstruction(
                    new CilEqualValue(boolean, type, caseOption.TypeId));

                //Define next_label
                var nextBranch = codeGenerator.DefineLabel();

                //if !boolean Goto label
                codeGenerator.AddInstruction(
                    new ConditionalJump(boolean, false, nextBranch));

                //Define Variable id_k
                caseOption.Symbol.Holder = codeGenerator.DefineVariable();

                codeGenerator.AddLocalVariable(
                    new CIL_LocalVariable((Variable)caseOption.Symbol.Holder));

                // id_k <- expr0
                codeGenerator.AddInstruction(
                    new Assign((Variable)caseOption.Symbol.Holder, node.Expression.Holder));

                // genCode (expr_k)
                GenerateCode(caseOption.Expression, codeGenerator);

                // set value at return
                codeGenerator.AddInstruction(
                    new Assign((Variable)node.Holder, caseOption.Expression.Holder));

                // Goto END
                codeGenerator.AddInstruction(
                    new Goto(end));

                // Next branch :
                codeGenerator.AddInstruction(
                    new Label(nextBranch));
            }

            // Set Parent
            // type = Inherance_Tree[type] ó
            // type = GetIndex Inherance_Tree type
            codeGenerator.AddInstruction(
                new GetIndex(type, Constant.InheritanceTree, type));

            // boolean = type == -1
            codeGenerator.AddInstruction(
                new CilEqualValue(boolean, type, -1));

            // if boolean is true throw exception
            codeGenerator.AddInstruction(
                new ConditionalJump(boolean, true, $"{CoolExceptionType.ExecutionOfACaseStatementWithoutAMatchingBranchException}"));

            //Goto loop
            codeGenerator.AddInstruction(
                new Goto(loop));

            // Label END
            codeGenerator.AddInstruction(
                new Label(end));

            #endregion

        }

        public void GenerateCode(BlockNode node, ICIL_CodeGenerator codeGenerator)
        {
            node.Holder = codeGenerator.DefineVariable();
            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable((Variable)node.Holder));

            foreach (var expression in node.Expression)
                GenerateCode(expression, codeGenerator);

            var last = node.Expression.Last();

            codeGenerator.AddInstruction(
                new Assign((Variable)node.Holder, last.Holder));
        }

        public void GenerateCode(LetNode node, ICIL_CodeGenerator codeGenerator)
        {
            node.Holder = codeGenerator.DefineVariable();
            codeGenerator.AddLocalVariable(
                new CIL_LocalVariable((Variable)node.Holder));

            GenerateCode(node.LetExprs, codeGenerator);
            GenerateCode(node.Expression, codeGenerator);

            codeGenerator.AddInstruction(
                new Assign((Variable)node.Holder, node.Expression.Holder));
        }

        public void GenerateCode(LetExpresNode node, ICIL_CodeGenerator codeGenerator)
        {
            foreach (var field in node.LocalOrFieldInits)
                GenerateCode(field, codeGenerator);
        }
    }
}