using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.BinaryOperation.Comparison
{
    public class MinorNode:ComparisonOperationNode
    {
        public MinorNode() : base() { }
        public MinorNode(IToken token) : base(token) { }
    }
}