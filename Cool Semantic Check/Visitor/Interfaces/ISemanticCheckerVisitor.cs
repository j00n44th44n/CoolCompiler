using CoolGrammar.Interfaces;

namespace CoolCheckSemantic.Visitor.Interfaces
{
    public interface ISemanticVisitor<in TNode>
    {
        void CheckSemantic(TNode node, IScope scope = null);
    }
}

