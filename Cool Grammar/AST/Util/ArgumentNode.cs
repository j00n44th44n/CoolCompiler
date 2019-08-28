using Antlr.Runtime;
using CoolGrammar.Interfaces;

namespace CoolGrammar.AST.Util
{
    public class ArgumentNode : UtilNode
    {
        public ArgumentNode() : base() { }

        public ArgumentNode(IToken token) : base(token) { }

        public string Name => Children[0].Text;
        public string TypeArgument => Children[1].Text;
        public ISymbol Symbol { get; set; }

    }
}
