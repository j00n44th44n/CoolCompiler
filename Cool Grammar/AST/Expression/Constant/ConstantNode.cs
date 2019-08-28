using Antlr.Runtime;
using CoolGrammar.AST.Expression.Instruction;

namespace CoolGrammar.AST.Expression.Constant
{
    public abstract class ConstantNode : ExpressionNode
    {
        public ConstantNode() { }

        public ConstantNode(IToken token) : base(token) { }
    }
}