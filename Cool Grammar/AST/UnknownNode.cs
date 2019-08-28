using Antlr.Runtime;

namespace CoolGrammar.AST
{
    public class UnknownNode : CoolNode
    {
        public UnknownNode() : base() { }

        public UnknownNode(IToken payload) : base(payload) { }
    }
}