using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.Instruction.Invoke
{
    public class DotObjectInvoke : DotInvokeNode
    {
        private InvokeNode _invokeNode;
        public override InvokeNode InvokeNode => _invokeNode ??
                                        (_invokeNode = (InvokeNode) Children[1]);

        public DotObjectInvoke() : base()
        {
        }

        public DotObjectInvoke(IToken token) : base(token)
        {
        }
    }
}