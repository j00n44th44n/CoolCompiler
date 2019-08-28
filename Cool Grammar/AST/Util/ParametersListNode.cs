using System.Collections.Generic;
using System.Linq;
using Antlr.Runtime;
using CoolGrammar.AST.Expression;
using CoolGrammar.AST.Expression.Instruction;

namespace CoolGrammar.AST.Util
{
    public class ParametersListNode : UtilNode
    {
        private IEnumerable<ExpressionNode> _expressions;
        public IEnumerable<ExpressionNode> Expressions => _expressions ?? 
                                                          (_expressions = Children.Select(x => (ExpressionNode)x));
        public ParametersListNode() : base() { }
        public ParametersListNode(IToken token) : base(token) { }

    }
}
