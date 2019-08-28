using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.Constant
{
    public class IntegerNode : ConstantNode
    {
        public int Value => int.Parse(Text);
        public IntegerNode() : base() { }
        public IntegerNode(IToken token) : base(token) { }
    }
}