using Antlr.Runtime;
using CoolGrammar.AST.Util;
using CoolGrammar.Interfaces;

namespace CoolGrammar.AST.Expression.Instruction.Invoke
{
    public class InvokeNode : InvokeExprNode
    {
        public string FuncName => Children[0].Text;

        private ParametersListNode _parameters;
        public ParametersListNode Parameters => _parameters ??
                                                (_parameters = (Children.Count == 2) ? 
                                                    (ParametersListNode)Children[1] : null);

        public IMethod Method { get; set; }
        public IType OwnerType { get; set; }

        public InvokeNode() : base() { }
        public InvokeNode(IToken token) : base(token) { }
    }
}