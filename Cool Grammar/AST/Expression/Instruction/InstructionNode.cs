using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.Instruction
{
    public abstract class InstructionNode : ExpressionNode
    {
        protected InstructionNode() : base() { }

        protected InstructionNode(IToken token) : base(token) { }
    }
}