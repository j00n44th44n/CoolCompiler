using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.BinaryOperation.Arithmetic
{
    public class DivisionNode : ArithmeticOperationNode
    {
        public DivisionNode() : base() { }
        public DivisionNode(IToken token) : base(token) { }
    }
}