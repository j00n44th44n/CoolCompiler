using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.BinaryOperation.Comparison
{
    public class MajorEqualNode : ComparisonOperationNode
    {
        public MajorEqualNode() : base() { }
        public MajorEqualNode(IToken token) : base(token) { }
    }
}