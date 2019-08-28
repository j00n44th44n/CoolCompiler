using Antlr.Runtime;
using CoolGrammar.AST.Expression.Instruction;

namespace CoolGrammar.AST.Expression.BinaryOperation
{
    public abstract class BinaryOperationNode : ExpressionNode
    {
        private ExpressionNode _opNode1;
        public ExpressionNode OpNode1 => _opNode1 ?? 
                                         (_opNode1 = (ExpressionNode)Children[0]);

        private ExpressionNode _opNode2;
        public ExpressionNode OpNode2 => _opNode2 ??
                                        (_opNode2 = (ExpressionNode)Children[1]);

        protected BinaryOperationNode() { }

        protected BinaryOperationNode(IToken token) : base(token) { }
    }
}