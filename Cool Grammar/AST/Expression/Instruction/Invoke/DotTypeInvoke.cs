using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.Instruction.Invoke
{
    public class DotTypeInvoke : DotInvokeNode
    {
        public string AtSign => Children[1].Text;

        private InvokeNode _invokeNode;
        public override InvokeNode InvokeNode => _invokeNode ??
                                        (_invokeNode = (InvokeNode) Children[2]);

        public DotTypeInvoke() : base()
        {
        }

        public DotTypeInvoke(IToken token) : base(token)
        {
        }
    }
}