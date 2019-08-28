using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.BinaryOperation.Arithmetic
{
    public class MultiplicationNode : ArithmeticOperationNode
    {
        public MultiplicationNode() : base() { }

        public MultiplicationNode(IToken token) : base(token) { }
    }
}