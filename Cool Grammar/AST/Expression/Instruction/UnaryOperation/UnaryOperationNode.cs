using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.Instruction.UnaryOperation
{
    public abstract class UnaryOperationNode : ExpressionNode
    {
        private ExpressionNode _expression;
        public ExpressionNode Expression => _expression ??
                                            (_expression = (ExpressionNode)Children[0]);
        public UnaryOperationNode() { }
        public UnaryOperationNode(IToken token) : base(token) { }
    }
}