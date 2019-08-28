using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.BinaryOperation.Logic
{
    public class AndNode : LogicOperationNode
    {
        public AndNode() : base() { }
        public AndNode(IToken token) : base(token) { }
    }
}