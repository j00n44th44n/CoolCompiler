using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.BinaryOperation.Arithmetic
{
    public class SubstractionNode : ArithmeticOperationNode
    {
        public SubstractionNode() : base() { }

        public SubstractionNode(IToken token) : base(token) { }
        
    }
}
