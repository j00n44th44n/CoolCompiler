using CoolCheckSemantic.Scopes;
using CoolCheckSemantic.Visitor.Interfaces;
using CoolGrammar.AST;
using CoolGrammar.Grammar;
using CoolGrammar.Interfaces;


namespace CoolCheckSemantic.Visitor
{
    public class TypeCollectorVisitor : ISemanticVisitor<ProgramNode>,
                                        ISemanticVisitor<ClassNode>
    {

        public void CheckSemantic(ProgramNode node, IScope scope = null)
        {
            foreach (var cls in node.ClassesList)
                this.CheckSemantic(cls);

            foreach (var cls in node.ClassesList)
            {
                if (!TypeTable.IsDefinedType(cls.TypeClass, out var currentType))
                {
                    Logger.LogError(cls.Line, cls.CharPositionInLine,
                        $"The type '{cls.TypeClass}' could not be found");
                    return;
                }
                if (!TypeTable.IsDefinedType(cls.TypeParent, out var parentType))
                    Logger.LogError(cls.Line, cls.CharPositionInLine,
                        $"The type '{cls.TypeParent}' could not be found");
                else
                {
                    ((CoolType)currentType).Parent = parentType;
                    if (parentType.IsSealed)
                        Logger.LogError(cls.Line, cls.CharPositionInLine,
                            $"The type '{currentType}' cannot inherits from sealed class '{parentType}'");

                    if ((CoolType)currentType <= (CoolType)parentType &&
                        (CoolType)currentType >= (CoolType)parentType)
                        Logger.LogError(cls.Line, cls.CharPositionInLine,
                            $"Circular base class dependency involving '{currentType}' and '{parentType}'");
                }
            }

        }
        public void CheckSemantic(ClassNode node, IScope scope = null)
        {
            if (TypeTable.IsDefinedType(node.TypeClass, out _))
            {
                Logger.LogError(node.Line, node.CharPositionInLine,
                      $"Duplicate definition '{node.TypeClass}'");
                return;
            }
            TypeTable.AddType(new CoolType(node.TypeClass));
        }
    }
}