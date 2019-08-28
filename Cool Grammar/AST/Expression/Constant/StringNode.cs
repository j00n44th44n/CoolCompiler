using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.Constant
{
    public class StringNode : ConstantNode
    {
        public StringNode() : base() { }
        public StringNode(IToken token) : base( token) { }
    }
}