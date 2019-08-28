using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.BinaryOperation.Arithmetic
{
    public abstract class ArithmeticOperationNode : BinaryOperationNode
    {
        public ArithmeticOperationNode() { }

        public ArithmeticOperationNode(IToken token) : base(token) { }
    }
}