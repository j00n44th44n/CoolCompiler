using Antlr.Runtime;
using CoolGrammar.Interfaces;

namespace CoolGrammar.AST.Expression.Identifier
{
    public class SelfNode : IdentifierNode
    {
        public SelfNode() : base() { }
        public SelfNode(IToken token) : base(token) { }
    }
}