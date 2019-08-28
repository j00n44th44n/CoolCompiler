using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.BinaryOperation.Comparison
{
    public abstract class ComparisonOperationNode : BinaryOperationNode
    {
        public bool IsValueComparison { get; set; }

        public ComparisonOperationNode() { }
        public ComparisonOperationNode(IToken token) : base(token) { }
    }
}
