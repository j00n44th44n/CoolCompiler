using Antlr.Runtime;
using Antlr.Runtime.Tree;
using CoolGrammar.AST.Expression.Identifier;

namespace CoolGrammar.AST.Expression.Instruction.Invoke
{
    public abstract class DotInvokeNode : InvokeExprNode
    {
        private ExpressionNode _expression;
        public ExpressionNode Expression => _expression ??
                                            (_expression = (ExpressionNode)Children[0]);

        public abstract InvokeNode InvokeNode { get; }

        protected DotInvokeNode() : base() { }
        protected DotInvokeNode(IToken token) : base(token) { }
    }
}