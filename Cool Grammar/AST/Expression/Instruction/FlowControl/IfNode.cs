using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.Instruction.FlowControl
{
    public class IfNode : FlowControlNode
    {
        private ExpressionNode _condition;
        public ExpressionNode Condition => _condition ??
                                           (_condition = (ExpressionNode)Children[0]);

        private ExpressionNode _thenExpression;
        public ExpressionNode ThenExpression => _thenExpression ??
                                                (_thenExpression = (ExpressionNode)Children[1]);

        private ExpressionNode _elseExpression;
        public ExpressionNode ElseExpression => _elseExpression ?? 
                                                (_elseExpression = Children.Count == 3 ? 
                                                    (ExpressionNode)Children[2] : null);

        public IfNode() : base() { }
        public IfNode(IToken token) : base(token) { }
    }
}