using Antlr.Runtime;
using CoolGrammar.AST.Util;

namespace CoolGrammar.AST.Expression.Instruction
{
    public class LetNode : InstructionNode
    {
        private LetExpresNode _letExprs;
        public LetExpresNode LetExprs => _letExprs ??
                                        (_letExprs = (LetExpresNode) Children[0]);

        private ExpressionNode _expression;
        public ExpressionNode Expression => _expression ?? 
                                            (_expression = (ExpressionNode)Children[1]);

        public LetNode() : base() { }
        public LetNode(IToken token) : base(token) { }
    }
}