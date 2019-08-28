using System.Collections.Generic;
using System.Linq;
using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.Instruction
{
    public class BlockNode : InstructionNode
    {
        private IEnumerable<ExpressionNode> _expression;
        public IEnumerable<ExpressionNode> Expression => _expression ??
                                                         (_expression = Children.
                                                             Select(expression => (ExpressionNode)expression));
        public BlockNode() : base() { }
        public BlockNode(IToken token) : base(token) { }
    }
}