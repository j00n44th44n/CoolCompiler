using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.BinaryOperation.Comparison
{
    public class MinorEqualNode : ComparisonOperationNode
    {
        public MinorEqualNode() : base() { }
        public MinorEqualNode(IToken token) : base(token) { }
    }
}