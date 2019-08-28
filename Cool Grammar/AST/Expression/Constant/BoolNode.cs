using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.Constant
{
    public class BoolNode : ConstantNode
    {
        public bool Value => bool.Parse(Text);
        public BoolNode() : base() { }
        public BoolNode(IToken token) : base(token) { }
    }
}
