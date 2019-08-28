using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.Instruction.Invoke
{
    public abstract class InvokeExprNode : InstructionNode
    {
        protected InvokeExprNode() : base() { }
        protected InvokeExprNode(IToken token) : base(token) { }
    }
}