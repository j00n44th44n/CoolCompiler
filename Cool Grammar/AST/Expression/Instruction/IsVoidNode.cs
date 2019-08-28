using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.Instruction
{
    public class IsVoidNode : InstructionNode
    {
        private ExpressionNode _expression;
        public ExpressionNode Expression => _expression ??
                                            (_expression = (ExpressionNode)Children[0]);
        public IsVoidNode() : base() { }
        public IsVoidNode(IToken token) : base(token) { }
    }
}