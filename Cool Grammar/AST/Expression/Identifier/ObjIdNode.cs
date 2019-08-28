using Antlr.Runtime;
using CoolGrammar.Interfaces;

namespace CoolGrammar.AST.Expression.Identifier
{
    public class ObjIdNode : IdentifierNode
    {

        public ObjIdNode() : base() { }

        public ObjIdNode(IToken token) : base(token) { }
    }
}