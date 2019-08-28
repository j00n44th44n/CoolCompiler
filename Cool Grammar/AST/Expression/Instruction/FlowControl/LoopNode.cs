using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.Instruction.FlowControl
{
    public abstract class LoopNode : FlowControlNode
    {
        protected ExpressionNode _body;
        public abstract ExpressionNode Body { get; }

        protected ExpressionNode _condition;
        public abstract ExpressionNode Condition { get; }

        public LoopNode() { }
        public LoopNode(IToken token) : base(token) { }
    }
}