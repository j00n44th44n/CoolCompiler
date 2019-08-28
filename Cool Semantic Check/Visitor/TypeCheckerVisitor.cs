using System;
using CoolCheckSemantic.Scopes;
using CoolCheckSemantic.Visitor.Interfaces;
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
using CoolGrammar.Grammar;
using CoolGrammar.Interfaces;


namespace CoolCheckSemantic.Visitor
{
    public class TypeCheckerVisitor :
    #region ISemanticVisitor<T>
        ISemanticVisitor<ProgramNode>,
        ISemanticVisitor<ClassNode>,
        ISemanticVisitor<FeatureListNode>,
        ISemanticVisitor<LocalOrFieldInit>,
        ISemanticVisitor<MethodNode>,
        ISemanticVisitor<ExpressionNode>,
        ISemanticVisitor<LetNode>,
        ISemanticVisitor<LetExpresNode>,
        ISemanticVisitor<BoolNode>,
        ISemanticVisitor<IntegerNode>,
        ISemanticVisitor<StringNode>,
        ISemanticVisitor<IfNode>,
        ISemanticVisitor<ComparisonOperationNode>,
        ISemanticVisitor<ArithmeticOperationNode>,
        ISemanticVisitor<LogicOperationNode>,
        ISemanticVisitor<NotNode>,
        ISemanticVisitor<NegNode>,
        ISemanticVisitor<ObjIdNode>,
        ISemanticVisitor<SelfNode>,
        ISemanticVisitor<BlockNode>,
        ISemanticVisitor<InvokeNode>,
        ISemanticVisitor<DotObjectInvoke>,
        ISemanticVisitor<DotTypeInvoke>,
        ISemanticVisitor<NewTypeNode>,
        ISemanticVisitor<WhileNode>,
        ISemanticVisitor<DoWhileNode>,
        ISemanticVisitor<AssignNode>,
        ISemanticVisitor<IsVoidNode>,
        ISemanticVisitor<CaseNode>,
        ISemanticVisitor<CaseOptionNode>

    #endregion
    {
        public void CheckSemantic(ProgramNode node, IScope scope = null)
        {
            foreach (var classNode in node.ClassesList)
                CheckSemantic(classNode);
        }

        public void CheckSemantic(ClassNode node, IScope scope = null)
        {
            if (!TypeTable.IsDefinedType(node.TypeClass, out var cls))
            {
                Logger.LogError(node.Line, node.CharPositionInLine,
                    $"The type '{node.TypeClass}' could not be found");
                return;
            }
            CheckSemantic(node.FeatureList, cls);
        }

        public void CheckSemantic(FeatureListNode node, IScope scope = null)
        {
            if (node.Features == null) return;
            foreach (var featureNode in node.Features)
            {
                switch (featureNode)
                {
                    case LocalOrFieldInit localOrFieldInit:
                        CheckSemantic(localOrFieldInit, scope);
                        break;
                    case MethodNode method:
                        CheckSemantic(method, scope);
                        break;
                }
            }
        }

        #region Features
        public void CheckSemantic(LocalOrFieldInit node, IScope scope = null)
        {
            if (!scope.IsDefinedSymbol(node.Name, out var symbol))
            {
                Logger.LogError(node.Line, node.CharPositionInLine,
                    $"The type '{scope}' does contain a definition for '{node.Name}'");
                return;
            }
            if (node.Initialization == null)
            {
                node.ComputedType = symbol.Type;
                return;
            }

            CheckSemantic(node.Initialization, scope);

            if ((CoolType)node.Initialization.ComputedType <= (CoolType)symbol.Type)
                node.ComputedType = node.Initialization.ComputedType;
            else
                Logger.LogError(node.Initialization.Line, node.Initialization.CharPositionInLine,
                    $"Cannot implicitly convert type '{node.Initialization.ComputedType}' to '{symbol.Type}'");


        }

        public void CheckSemantic(MethodNode node, IScope scope = null)
        {
            if (!((IType)scope).IsDefinedMethod(node.FuncName, out var method))
                Logger.LogError(node.Line, node.CharPositionInLine,
                    $"The type '{scope}' does contain a definition for '{node.FuncName}'");

            CheckSemantic(node.Body, method);

            if ((CoolType)node.Body.ComputedType <= (CoolType)method.ReturnType)
                node.ComputedType = node.Body.ComputedType;
            else
                Logger.LogError(node.Body.Line, node.Body.CharPositionInLine,
                    $"Cannot implicitly convert type '{node.Body.ComputedType}' to '{method.ReturnType}'");
        }
        #endregion

        public void CheckSemantic(ExpressionNode node, IScope scope = null)
        {
            switch (node)
            {
                case ComparisonOperationNode comparisonOperationNode:
                    CheckSemantic(comparisonOperationNode, scope);
                    node.ComputedType = comparisonOperationNode.ComputedType;
                    break;

                case ArithmeticOperationNode arithmeticOperationNode:
                    CheckSemantic(arithmeticOperationNode, scope);
                    node.ComputedType = arithmeticOperationNode.ComputedType;
                    break;

                case LogicOperationNode logicOperationNode:
                    CheckSemantic(logicOperationNode, scope);
                    node.ComputedType = logicOperationNode.ComputedType;
                    break;

                case AssignNode assignNode:
                    CheckSemantic(assignNode, scope);
                    node.ComputedType = assignNode.ComputedType;
                    break;

                case LetNode letNode:
                    var letScope = scope.CreateChildScope();
                    CheckSemantic(letNode, letScope);
                    node.ComputedType = letNode.ComputedType;
                    break;

                case IsVoidNode isVoidNode:
                    CheckSemantic(isVoidNode, scope);
                    node.ComputedType = isVoidNode.ComputedType;
                    break;

                case NegNode negNode:
                    CheckSemantic(negNode, scope);
                    node.ComputedType = negNode.ComputedType;
                    break;

                case NotNode notNode:
                    CheckSemantic(notNode, scope);
                    node.ComputedType = notNode.ComputedType;
                    break;

                case IfNode ifNode:
                    CheckSemantic(ifNode, scope);
                    node.ComputedType = ifNode.ComputedType;
                    break;

                case BlockNode blockNode:
                    CheckSemantic(blockNode, scope);
                    node.ComputedType = blockNode.ComputedType;
                    break;

                case WhileNode whileNode:
                    CheckSemantic(whileNode, scope);
                    node.ComputedType = whileNode.ComputedType;
                    break;

                case DoWhileNode doWhileNode:
                    CheckSemantic(doWhileNode, scope);
                    node.ComputedType = doWhileNode.ComputedType;
                    break;

                case DotObjectInvoke dotObjectInvoke:
                    CheckSemantic(dotObjectInvoke, scope);
                    node.ComputedType = dotObjectInvoke.ComputedType;
                    break;

                case DotTypeInvoke dotTypeInvoke:
                    CheckSemantic(dotTypeInvoke, scope);
                    node.ComputedType = dotTypeInvoke.ComputedType;
                    break;

                case InvokeNode invokeNode:
                    CheckSemantic(invokeNode, scope);
                    node.ComputedType = invokeNode.ComputedType;
                    break;

                case NewTypeNode newTypeNode:
                    CheckSemantic(newTypeNode, scope);
                    node.ComputedType = newTypeNode.ComputedType;
                    break;

                case ObjIdNode objId:
                    CheckSemantic(objId, scope);
                    node.ComputedType = objId.ComputedType;
                    break;

                case SelfNode selfNode:
                    CheckSemantic(selfNode, scope);
                    node.ComputedType = selfNode.ComputedType;
                    break;

                case CaseNode caseNode:
                    var caseScope = scope.CreateChildScope();
                    CheckSemantic(caseNode, caseScope);
                    node.ComputedType = caseNode.ComputedType;
                    break;

                #region Constants

                case StringNode stringNode:
                    CheckSemantic(stringNode, scope);
                    node.ComputedType = stringNode.ComputedType;
                    break;

                case BoolNode boolNode:
                    CheckSemantic(boolNode, scope);
                    node.ComputedType = boolNode.ComputedType;
                    break;

                case IntegerNode integerNode:
                    CheckSemantic(integerNode, scope);
                    node.ComputedType = integerNode.ComputedType;
                    break;

                #endregion

                default:
                    throw new ArgumentOutOfRangeException(nameof(node));
            }
        }


        #region Constants
        public void CheckSemantic(BoolNode node, IScope scope = null)
        {
            if (TypeTable.IsDefinedType("Bool", out var type))
                node.ComputedType = type;
        }

        public void CheckSemantic(IntegerNode node, IScope scope = null)
        {
            if (TypeTable.IsDefinedType("Int", out var type))
                node.ComputedType = type;
        }

        public void CheckSemantic(StringNode node, IScope scope = null)
        {
            if (node.Text.Length > 1024)
                Logger.LogError(node.Line, node.CharPositionInLine,
                    $"capacity was less than 1024 characters");
            else if (TypeTable.IsDefinedType("String", out var type))
                node.ComputedType = type;
        }
        #endregion

        #region  Binary Operations

        #region Logic
        public void CheckSemantic(LogicOperationNode node, IScope scope = null)
        {
            CheckSemantic(node.OpNode1, scope);
            CheckSemantic(node.OpNode2, scope);

            if (node.OpNode1.ComputedType.Name != "Bool" ||
                node.OpNode2.ComputedType.Name != "Bool")
            {
                Logger.LogError(node.Line, node.CharPositionInLine,
                    $"Operator '{node.Text}' cannot be applied to operands of type '{node.OpNode1.ComputedType}' and {node.OpNode2.ComputedType}");
                return;
            }
            TypeTable.IsDefinedType("Bool", out var booleanType);
            node.ComputedType = booleanType;
        }
        #endregion

        #region Comparison

        public void CheckSemantic(ComparisonOperationNode node, IScope scope = null)
        {
            CheckSemantic(node.OpNode1, scope);
            CheckSemantic(node.OpNode2, scope);

            switch (node)
            {
                case EqualNode _:

                    if (node.OpNode1.ComputedType != node.OpNode2.ComputedType)
                    {
                        Logger.LogError(node.Line, node.CharPositionInLine,
                            $"Operator '{node.Text}' cannot be applied to operands of type '{node.OpNode1.ComputedType}' and {node.OpNode2.ComputedType}");
                        return;
                    }

                    break;

                default:

                    if (node.OpNode1.ComputedType.Name != "Int" || node.OpNode2.ComputedType.Name != "Int")
                    {
                        Logger.LogError(node.Line, node.CharPositionInLine,
                            $"Operator '{node.Text}' cannot be applied to operands of type '{node.OpNode1.ComputedType}' and {node.OpNode2.ComputedType}");
                        return;
                    }
                    break;
            }

            switch (node.OpNode1.ComputedType.Name)
            {
                case "Int":
                case "Bool":
                case "String":
                    node.IsValueComparison = true;
                    break;

                default:
                    node.IsValueComparison = false;
                    break;
            }

            TypeTable.IsDefinedType("Bool", out var booleanType);
            node.ComputedType = booleanType;
        }
        #endregion

        #region Arithmetic
        public void CheckSemantic(ArithmeticOperationNode node, IScope scope = null)
        {
            CheckSemantic(node.OpNode1, scope);
            CheckSemantic(node.OpNode2, scope);

            TypeTable.IsDefinedType("Int", out var intergerType);
            if (node.OpNode1.ComputedType != intergerType || node.OpNode2.ComputedType != intergerType)
            {
                Logger.LogError(node.Line, node.CharPositionInLine,
                    $"Cannot implicitly convert type '{node.OpNode1.ComputedType}' to '{node.OpNode2.ComputedType}'");
                return;
            }
            node.ComputedType = intergerType;
        }

        #endregion

        #endregion

        public void CheckSemantic(IfNode node, IScope scope = null)
        {
            CheckSemantic(node.Condition, scope);

            if (node.Condition.ComputedType.Name != "Bool")
                Logger.LogError(node.Line, node.CharPositionInLine,
                    $"Cannot implicitly convert type '{node.Condition.ComputedType}' to 'Bool'");

            CheckSemantic(node.ThenExpression, scope);
            if (node.ElseExpression == null)
                node.ComputedType = node.ThenExpression.ComputedType;
            else
            {
                CheckSemantic(node.ElseExpression, scope);
                node.ComputedType = CoolType.Lca((CoolType)node.ThenExpression.ComputedType,
                                                 (CoolType)node.ElseExpression.ComputedType);
            }
        }

        public void CheckSemantic(ObjIdNode node, IScope scope = null)
        {
            #region Ready to use for the Code Generation 

            var ownerType = scope;
            while (!(ownerType is IType))
                ownerType = ownerType?.ParentScope;
            node.OwnerType = (IType)ownerType;

            #endregion


            if (!scope.IsDefinedSymbol(node.Text, out var symbol))
            {
                Logger.LogError(node.Line, node.CharPositionInLine,
                    $"The name '{node.Text}' does not exist in the {scope}'s context");
                return;
            }

            node.Symbol = symbol;
            node.ComputedType = node.Symbol.Type;
        }

        public void CheckSemantic(AssignNode node, IScope scope = null)
        {
            if (node.ObjId.Text == "self")
            {
                Logger.LogError(node.Line, node.CharPositionInLine,
                    $"Cannot assign to 'self' because it is read-only");
                return;
            }
            CheckSemantic(node.ObjId, scope);
            CheckSemantic(node.Expression, scope);

            if ((CoolType)node.Expression.ComputedType <= (CoolType)node.ObjId.ComputedType)
            {
                node.ComputedType = node.Expression.ComputedType;
                return;
            }

            Logger.LogError(node.Line, node.CharPositionInLine,
                $"Cannot implicity convert type '{node.ObjId.ComputedType}' to '{node.Expression.ComputedType}'");

        }

        public void CheckSemantic(SelfNode node, IScope scope = null)
        {
            while (!(scope is IType))
                scope = scope?.ParentScope;

            node.Symbol = ((IType)scope).Self;
            node.ComputedType = node.Symbol.Type;
        }

        public void CheckSemantic(BlockNode node, IScope scope = null)
        {
            foreach (var expression in node.Expression)
            {
                CheckSemantic(expression, scope);
                node.ComputedType = expression.ComputedType;
            }
        }

        public void CheckSemantic(InvokeNode node, IScope scope = null)
        {
            var copyScope = scope;

            while (!(copyScope is IType))
                copyScope = copyScope?.ParentScope;
            var type = (IType)copyScope;

            #region Ready to use for Code Generation 

            node.OwnerType = type;

            #endregion

            if (!type.IsDefinedMethod(node.FuncName, out var method))
            {
                Logger.LogError(node.Line, node.CharPositionInLine,
                    $"The name '{node.FuncName}' does not exist in the {type}'s context");
                return;
            }
            node.Method = method;

            //chek arguments
            if (node.Parameters != null)
            {
                if (node.Parameters.Children.Count == method.Arguments.Length)
                {
                    var i = 0;
                    foreach (var parameter in node.Parameters.Expressions)
                    {
                        CheckSemantic(parameter, scope);

                        if (!((CoolType)method.Arguments[i].Type <= (CoolType)parameter.ComputedType))
                            Logger.LogError(parameter.Line, parameter.CharPositionInLine,
                                $"Argument '{i}': cannot convert from '{parameter.ComputedType}' to {method.Arguments[i].Type}");
                        i++;
                    }
                }
                else
                    Logger.LogError(node.Line, node.CharPositionInLine,
                        $"No overload for method '{method.Name}' takes '{node.Parameters.Children.Count}' arguments");
            }
            else if (method.Arguments.Length > 0)
                Logger.LogError(node.Line, node.CharPositionInLine,
                    $"No overload for method '{method.Name}' takes '0' arguments");

            node.ComputedType = method.ReturnType;
        }

        public void CheckSemantic(DotObjectInvoke node, IScope scope = null)
        {
            CheckSemantic(node.Expression, scope);

            var type = node.Expression.ComputedType;

            if (type == null) return;

            if (!type.IsDefinedMethod(node.InvokeNode.FuncName, out var method))
            {
                Logger.LogError(node.Line, node.CharPositionInLine,
                    $"The name '{node.InvokeNode.FuncName}' does not exist in the {type}'s context");
                return;
            }
            node.InvokeNode.Method = method;

            //chek arguments
            if (node.InvokeNode.Parameters != null)
            {
                if (node.InvokeNode.Parameters.Children.Count == method.Arguments.Length)
                {
                    var i = 0;
                    foreach (var parameter in node.InvokeNode.Parameters.Expressions)
                    {
                        CheckSemantic(parameter, scope);

                        if (!((CoolType)method.Arguments[i].Type <= (CoolType)parameter.ComputedType))
                            Logger.LogError(parameter.Line, parameter.CharPositionInLine,
                                $"Argument '{i}': cannot convert from '{parameter.ComputedType}' to {method.Arguments[i].Type}");
                        i++;
                    }
                }
                else
                    Logger.LogError(node.Line, node.CharPositionInLine,
                        $"No overload for method '{method.Name}' takes '{node.InvokeNode.Children.Count}' arguments");
            }
            else if (method.Arguments.Length > 0)
                Logger.LogError(node.Line, node.CharPositionInLine,
                    $"No overload for method '{method.Name}' takes '0' arguments");

            node.ComputedType = method.ReturnType;
        }

        public void CheckSemantic(DotTypeInvoke node, IScope scope = null)
        {
            CheckSemantic(node.Expression, scope);

            if (node.Expression.ComputedType == null) return;

            if (!TypeTable.IsDefinedType(node.AtSign, out var type))
            {
                Logger.LogError(node.Line, node.CharPositionInLine,
                    $"The type '{node.Type}' could not be found");
                return;
            }

            if ((CoolType)node.Expression.ComputedType <= (CoolType)type)
            {
                if (!type.IsDefinedMethod(node.InvokeNode.FuncName, out var method))
                {
                    Logger.LogError(node.Line, node.CharPositionInLine,
                        $"The name '{node.InvokeNode.FuncName}' does not exist in the {type}'s context");
                    return;
                }

                node.InvokeNode.Method = method;

                //check arguments
                if (node.InvokeNode.Parameters != null)
                {
                    if (node.InvokeNode.Parameters.Children.Count == method.Arguments.Length)
                    {
                        var i = 0;
                        foreach (var parameter in node.InvokeNode.Parameters.Expressions)
                        {
                            CheckSemantic(parameter, scope);

                            if (!((CoolType)method.Arguments[i].Type <= (CoolType)parameter.ComputedType))
                                Logger.LogError(parameter.Line, parameter.CharPositionInLine,
                                    $"Argument '{i}': cannot convert from '{parameter.ComputedType}' to {method.Arguments[i].Type}");
                            i++;
                        }
                    }
                    else
                        Logger.LogError(node.Line, node.CharPositionInLine,
                            $"No overload for method '{method.Name}' takes '{node.InvokeNode.Children.Count}' arguments");
                }
                else if (method.Arguments.Length > 0)
                    Logger.LogError(node.Line, node.CharPositionInLine,
                        $"No overload for method '{method.Name}' takes '0' arguments");

                node.ComputedType = method.ReturnType;
            }

            else
                Logger.LogError(node.Line, node.CharPositionInLine,
                    $"Cannot implicitly convert type '{node.Expression.ComputedType}' to '{type}'");


        }

        public void CheckSemantic(NewTypeNode node, IScope scope = null)
        {
            if (!TypeTable.IsDefinedType(node.TypeName, out var type))
            {
                Logger.LogError(node.Line, node.CharPositionInLine,
                    $"The type '{node.TypeName}' could not be found");
                return;
            }
            node.ComputedType = type;
        }

        public void CheckSemantic(WhileNode node, IScope scope = null)
        {
            CheckSemantic(node.Condition, scope);
            CheckSemantic(node.Body, scope);
            if (node.Condition.ComputedType.Name != "Bool")
            {
                Logger.LogError(node.Condition.Line, node.Condition.CharPositionInLine,
                    $"Cannot implicity convert type '{node.Condition.ComputedType}'to 'Bool'");
                return;
            }
            TypeTable.IsDefinedType("Object", out var objType);
            node.ComputedType = objType;
        }

        public void CheckSemantic(DoWhileNode node, IScope scope = null)
        {
            CheckSemantic(node.Body, scope);
            CheckSemantic(node.Condition, scope);
            if (node.Condition.ComputedType.Name != "Bool")
            {
                Logger.LogError(node.Condition.Line, node.Condition.CharPositionInLine,
                    $"Cannot implicity convert type '{node.Condition.ComputedType}'to 'Bool'");
                return;
            }
            TypeTable.IsDefinedType("Object", out var objType);
            node.ComputedType = objType;
        }

        public void CheckSemantic(IsVoidNode node, IScope scope = null)
        {
            CheckSemantic(node.Expression, scope);
            TypeTable.IsDefinedType("Bool", out var booleanType);
            node.ComputedType = booleanType;
        }

        public void CheckSemantic(NotNode node, IScope scope = null)
        {
            CheckSemantic(node.Expression, scope);

            if (node.Expression.ComputedType.Name != "Bool")
            {
                Logger.LogError(node.Expression.Line, node.Expression.CharPositionInLine,
                      $"Cannot implicity convert type '{node.Expression.ComputedType}' to 'Bool'");
                return;
            }
            node.ComputedType = node.Expression.ComputedType;

        }

        public void CheckSemantic(NegNode node, IScope scope = null)
        {
            CheckSemantic(node.Expression, scope);
            if (node.Expression.ComputedType.Name != "Int")
            {
                Logger.LogError(node.Line, node.CharPositionInLine,
                    $"Cannot implicity convert type '{node.Expression.ComputedType}'to 'Int'");
                return;
            }
            node.ComputedType = node.Expression.ComputedType;

        }

        public void CheckSemantic(LetNode node, IScope scope = null)
        {
            CheckSemantic(node.LetExprs, scope);
            CheckSemantic(node.Expression, scope);
            node.ComputedType = node.Expression.ComputedType;
        }

        public void CheckSemantic(LetExpresNode node, IScope scope = null)
        {
            foreach (var fieldInit in node.LocalOrFieldInits)
            {
                if (!TypeTable.IsDefinedType(fieldInit.TypeObj, out var type))
                {
                    Logger.LogError(fieldInit.Line, fieldInit.CharPositionInLine,
                          $"The type '{fieldInit.TypeObj}' could not be found");
                    continue;
                }
                scope?.DefineSymbol(fieldInit.Symbol = new Symbol(fieldInit.Name, type));

                if (fieldInit.Initialization == null)
                {
                    fieldInit.ComputedType = fieldInit.Symbol.Type;
                    continue;
                }

                CheckSemantic(fieldInit.Initialization, scope);

                if ((CoolType)fieldInit.Initialization.ComputedType <= (CoolType)type)
                    fieldInit.ComputedType = fieldInit.Initialization.ComputedType;

                else
                    Logger.LogError(fieldInit.Line, node.CharPositionInLine,
                        $"Cannot implicity convert type '{fieldInit.ComputedType}' to '{type}'");
            }
        }

        public void CheckSemantic(CaseNode node, IScope scope = null)
        {
            CheckSemantic(node.Expression, scope);

            IType type = null;
            foreach (var caseOptionNode in node.CaseOptionNodes)
            {
                CheckSemantic(caseOptionNode, scope);

                type = type is null ?
                    caseOptionNode.ComputedType :
                    CoolType.Lca((CoolType)type, (CoolType)caseOptionNode.ComputedType);
            }
            node.ComputedType = type;
        }

        public void CheckSemantic(CaseOptionNode node, IScope scope = null)
        {
            if (!TypeTable.IsDefinedType(node.TypeId, out var type))
            {
                Logger.LogError(node.Line, node.CharPositionInLine,
                    $"The type '{node.TypeId}' could not be found");
                return;
            }

            if (node.ObjId == "self")
            {
                Logger.LogError(node.Line, node.CharPositionInLine,
                    $"It is illegal to have attributes named self");
                return;
            }

            node.Symbol = new Symbol(node.ObjId, type);
            scope.DefineSymbol(node.Symbol);

            CheckSemantic(node.Expression, scope);
            node.ComputedType = node.Expression.ComputedType;

        }
    }
}