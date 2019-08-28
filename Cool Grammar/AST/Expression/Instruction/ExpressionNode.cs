using Antlr.Runtime;
using CoolGrammar.CodeGeneration;
using CoolGrammar.Interfaces;

namespace CoolGrammar.AST.Expression.Instruction
{
    public  class ExpressionNode : CoolNode
    {
        public IType ComputedType { get; set; }

        public Holder Holder { get; set; }

        protected ExpressionNode() : base() { }
        protected ExpressionNode(IToken token) : base(token) { }
    }
}
