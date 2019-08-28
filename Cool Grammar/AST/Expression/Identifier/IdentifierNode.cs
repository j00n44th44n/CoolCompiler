using Antlr.Runtime;
using CoolGrammar.AST.Expression.Instruction;
using CoolGrammar.Interfaces;

namespace CoolGrammar.AST.Expression.Identifier
{
    public abstract class IdentifierNode : ExpressionNode
    {
        protected IdentifierNode() : base() { }

        protected IdentifierNode(IToken token) : base(token) { }

        public IType OwnerType { get; set; }
        public ISymbol Symbol { get; set; }
    }
}