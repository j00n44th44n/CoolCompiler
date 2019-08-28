using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.Instruction.UnaryOperation
{
    public class NotNode : UnaryOperationNode
    {
        public NotNode() : base() { }
        public NotNode(IToken token) : base(token) { }
    }
}