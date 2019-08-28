using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.BinaryOperation.Arithmetic
{
    public class AdditionNode : ArithmeticOperationNode
    {
        public AdditionNode() : base() { }

        public AdditionNode(IToken token) : base(token) { }
    }
}
