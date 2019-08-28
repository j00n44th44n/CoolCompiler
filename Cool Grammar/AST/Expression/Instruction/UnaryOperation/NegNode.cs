using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.Instruction.UnaryOperation
{
    public class NegNode : UnaryOperationNode
    {
        public NegNode() : base() { }
        public NegNode(IToken token) : base(token) { }
    }
}