using Antlr.Runtime;
using CoolGrammar.Interfaces;

namespace CoolGrammar.AST.Expression.Instruction.FlowControl
{
    public class CaseOptionNode : InstructionNode
    {
        public string ObjId => Children[0].Text;
        public string TypeId => Children[1].Text;

        private ExpressionNode _expression;
        public ExpressionNode Expression => _expression ??
                                            (_expression = (ExpressionNode)Children[2]);

        public ISymbol Symbol { get; set; }
        public CaseOptionNode() : base() { }
        public CaseOptionNode(IToken token) : base(token) { }
    }
}