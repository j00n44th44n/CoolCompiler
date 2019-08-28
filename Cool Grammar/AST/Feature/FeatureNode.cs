using Antlr.Runtime;
using CoolGrammar.AST.Expression;
using CoolGrammar.AST.Expression.Instruction;

namespace CoolGrammar.AST.Feature
{
    public abstract class FeatureNode : ExpressionNode
    {
        public FeatureNode() { }

        public FeatureNode(IToken token) : base(token) { }
    }
}
