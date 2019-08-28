using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.BinaryOperation.Logic
{
    public abstract class LogicOperationNode : BinaryOperationNode
    {
        public LogicOperationNode() { }
        public LogicOperationNode(IToken token) : base(token) { }
    }
}