using Antlr.Runtime;
using CoolGrammar.AST.Expression;
using CoolGrammar.AST.Expression.Instruction;
using CoolGrammar.Interfaces;

namespace CoolGrammar.AST.Feature
{
    public class LocalOrFieldInit : FeatureNode
    {
        public LocalOrFieldInit() { }

        public LocalOrFieldInit(IToken token) : base(token) { }

        public string Name => Children[0].Text;
        public string TypeObj => Children[1].Text;

        private ExpressionNode _initialization;
        public ExpressionNode Initialization => _initialization ?? 
                                                (_initialization = Children.Count == 3 ? (ExpressionNode) Children[2] : null);

        public ISymbol Symbol { get; set; }
    }
}