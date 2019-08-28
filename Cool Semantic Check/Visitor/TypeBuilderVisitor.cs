using System.Collections.Generic;
using System.Linq;
using CoolCheckSemantic.Scopes;
using CoolCheckSemantic.Visitor.Interfaces;
using CoolGrammar.AST;
using CoolGrammar.AST.Feature;
using CoolGrammar.AST.Util;
using CoolGrammar.Grammar;
using CoolGrammar.Interfaces;

namespace CoolCheckSemantic.Visitor
{
    public class TypeBuilderVisitor : ISemanticVisitor<ProgramNode>,
                                      ISemanticVisitor<ClassNode>,
                                      ISemanticVisitor<FeatureListNode>,
                                      ISemanticVisitor<LocalOrFieldInit>,
                                      ISemanticVisitor<MethodNode>

    {
        public void CheckSemantic(ProgramNode node, IScope scope = null)
        {
            #region BFS CheckSemantic

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

            foreach (var classNode in classesList)
            {
                CheckSemantic(classNode);

                if (classNode.TypeClass != "Main") continue;
                if (!TypeTable.IsDefinedType("Main", out var mainType))
                {
                    Logger.LogError(node.Line, node.CharPositionInLine,
                        $"The class 'Main' could not be found. Every program must have a class 'Main'");
                    return;
                }
                if (!mainType.IsDefinedMethod("main", out _))
                    Logger.LogError(classNode.Line, classNode.CharPositionInLine,
                        $"The method 'main' must be defined in class '{mainType}'");
            }
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
            foreach (var feature in node.Features)
            {
                switch (feature)
                {
                    case LocalOrFieldInit localOrFieldInit:
                        CheckSemantic(localOrFieldInit, scope);
                        break;

                    case MethodNode methodNode:
                        var cls = scope as IType;
                        CheckSemantic(methodNode, scope);

                        if (methodNode.FuncName != "main")
                            continue;

                        if (cls.Name != "Main" ||
                            !cls.IsDefinedMethod(methodNode.FuncName, out var method))
                            continue;

                        if (method.Arguments.Count() > 0)
                            Logger.LogError(methodNode.Line, methodNode.CharPositionInLine,
                                $"The '{cls}' class must have a method '{method.Name}' that no takes no formal parameters");
                        break;
                }
            }
        }

        public void CheckSemantic(MethodNode node, IScope scope = null)
        {
            if (((IType)scope).IsDefinedMethod(node.FuncName, out var method))
            {
                var argumentNodes = node.ArgumentsList?.Arguments.ToArray() ?? new ArgumentNode[] { };

                if (method.ReturnType.Name != node.ReturnType || method.Arguments.Length != argumentNodes.Length)
                {
                    Logger.LogError(node.Line, node.CharPositionInLine,
                        $"'{scope}.{node.FuncName}': No suitable method found to override");
                    return;
                }

                if (node.ArgumentsList != null && method.Arguments
                        .Where((attribute, i)
                            => attribute.Type.Name == argumentNodes[i].TypeArgument)
                        .Count() != argumentNodes.Length)
                {
                    Logger.LogError(node.Line, node.CharPositionInLine,
                        $"'{scope}.{node.FuncName}':No suitable method found to override");
                    return;
                }
            }

            if (!TypeTable.IsDefinedType(node.ReturnType, out var returnType))
            {
                Logger.LogError(node.Line, node.CharPositionInLine,
                    $"The type '{node.ReturnType}' could not be found");
                return;
            }

            var cls = (IType)scope;
            if (node.ArgumentsList != null)
            {
                var argumentsList = node.ArgumentsList.Arguments;
                var (result, args) = CanDefineMethod(argumentsList);
                if (result is false)
                    return;


                (bool, IEnumerable<ISymbol>) CanDefineMethod(IEnumerable<ArgumentNode> arguments)
                {
                    var list = new List<string>();
                    var enumerable = new List<ISymbol>();
                    foreach (var argument in arguments)
                    {
                        if (!TypeTable.IsDefinedType(argument.TypeArgument, out var type))
                        {
                            Logger.LogError(argument.Line, argument.CharPositionInLine,
                                $"The type '{argument.TypeArgument}' could not be found");
                            return (false, null);
                        }
                        if (argument.Name is "self")
                        {
                            Logger.LogError(argument.Line, argument.CharPositionInLine,
                                $"It is illegal to have attributes named self");
                            return (false, null);
                        }
                        if (list.Contains(argument.Name))
                        {
                            Logger.LogError(argument.Line, argument.CharPositionInLine,
                                $"Duplicate parameter '{argument.Name}' on '{node.FuncName}'");
                            return (false, null);
                        }

                        list.Add(argument.Name);
                        argument.Symbol = new Symbol(argument.Name, type);
                        enumerable.Add(argument.Symbol);
                    }

                    return (true, enumerable);
                }

                if (!cls.DefineMethod(node.FuncName, returnType, args))
                {
                    Logger.LogError(node.Line, node.CharPositionInLine,
                        $"Type {cls} alredy defines a member called '{node.FuncName}'");
                }
            }
            else
            {
                if (!cls.DefineMethod(node.FuncName, returnType))
                    Logger.LogError(node.Line, node.CharPositionInLine,
                        $"Type {cls} alredy defines a member called '{node.FuncName}'");
            }
        }

        public void CheckSemantic(LocalOrFieldInit node, IScope scope = null)
        {
            if (node.Name == "self")
            {
                Logger.LogError(node.Line, node.CharPositionInLine,
                    $"It is illegal to have attributes named self");
                return;
            }

            if (!TypeTable.IsDefinedType(node.TypeObj, out var type))
            {
                Logger.LogError(node.Line, node.CharPositionInLine,
                    $"The type '{node.TypeObj}' could not be found");
                return;
            }

            var cls = scope as IType;
            if (cls.IsDefinedSymbol(node.Name, out var symbol) &&
                node.TypeObj != symbol.Type.Name)
            {
                Logger.LogError(node.Line, node.CharPositionInLine,
                    $"The type '{cls}' already contains a definition for '{node.Name}'");
                return;
            }

            node.Symbol = new Symbol(node.Name, type, true);
            if (!cls.DefineSymbol(node.Symbol))
                Logger.LogError(node.Line, node.CharPositionInLine,
                    $"The type '{cls}' already contains a definition for '{node.Name}'");
        }
    }
}