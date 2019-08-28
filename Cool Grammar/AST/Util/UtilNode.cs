using Antlr.Runtime;
using CoolGrammar.AST.Expression;
using CoolGrammar.AST.Expression.Instruction;

namespace CoolGrammar.AST.Util
{
    public abstract class UtilNode : ExpressionNode
    {
        protected UtilNode() : base() { }

        protected UtilNode(IToken token) : base(token) { }
    }
}
