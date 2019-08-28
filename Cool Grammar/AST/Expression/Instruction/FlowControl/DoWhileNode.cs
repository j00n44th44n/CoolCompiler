using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.Instruction.FlowControl
{
    public class DoWhileNode : LoopNode
    {
        public override ExpressionNode Body => _body ??
                                      (_body = (ExpressionNode)Children[0]);

        public override ExpressionNode Condition => _condition ??
                                           (_condition = (ExpressionNode)Children[1]);
        public DoWhileNode() { }
        public DoWhileNode(IToken token) : base(token) { }
    }
}