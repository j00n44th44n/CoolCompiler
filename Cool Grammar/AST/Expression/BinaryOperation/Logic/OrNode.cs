using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.BinaryOperation.Logic
{
    public class OrNode : LogicOperationNode
    {
        public OrNode() : base() { }
        public OrNode(IToken token) : base(token) { }
    }
}