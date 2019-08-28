using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.Instruction.FlowControl
{
    public abstract class FlowControlNode : InstructionNode
    {
        public FlowControlNode() { }

        public FlowControlNode(IToken token) : base(token) { }
    }
}