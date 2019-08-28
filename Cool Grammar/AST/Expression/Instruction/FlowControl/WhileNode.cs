using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.Instruction.FlowControl
{
    public class WhileNode : LoopNode
    {
        public override ExpressionNode Condition => _condition ??
                                          (_condition = (ExpressionNode)Children[0]);

        public override ExpressionNode Body => _body ??
                                              (_body = (ExpressionNode)Children[1]);

        public WhileNode() : base() { }
        public WhileNode(IToken token) : base(token) { }
    }
}