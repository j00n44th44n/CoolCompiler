using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.BinaryOperation.Comparison
{
    public class EqualNode : ComparisonOperationNode
    {
        public EqualNode() : base() { }
        public EqualNode(IToken token) : base(token) { }
    }
}