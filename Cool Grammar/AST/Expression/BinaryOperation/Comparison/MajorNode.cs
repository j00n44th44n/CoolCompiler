using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.BinaryOperation.Comparison
{
    public class MajorNode : ComparisonOperationNode
    {
        public MajorNode() : base() { }
        public MajorNode(IToken token) : base(token) { }
    }
}