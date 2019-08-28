using System.Collections.Generic;
using System.Linq;
using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.Instruction.FlowControl
{
    public class CaseNode : FlowControlNode
    {
        private ExpressionNode _expression;
        public ExpressionNode Expression => _expression ??
                                            (_expression = (ExpressionNode)Children[0]);

        private IEnumerable<CaseOptionNode> _caseOptionNodes;
        public IEnumerable<CaseOptionNode> CaseOptionNodes => _caseOptionNodes ??
                                                              (_caseOptionNodes = Children.Skip(1).
                                                                  Select(caseOptions => (CaseOptionNode)caseOptions));

        public CaseNode() : base() { }
        public CaseNode(IToken token) : base(token) { }
    }
}