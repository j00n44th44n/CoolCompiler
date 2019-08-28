using Antlr.Runtime;
using Antlr.Runtime.Tree;

namespace CoolGrammar.AST
{
    public abstract class CoolNode : CommonTree
    {
        protected CoolNode() : base() { }

        protected CoolNode(IToken token) : base(token) { }
    }
}
