using Antlr.Runtime;
using CoolGrammar.AST.Expression.Instruction;
using CoolGrammar.AST.Util;

namespace CoolGrammar.AST.Feature
{
    public class MethodNode : FeatureNode
    {
        public MethodNode() : base() { }

        public MethodNode(IToken token) : base(token) { }

        public string FuncName => Children[0].Text;
        public string ReturnType => Children[1].Text;

        private ArgumentsListNode _argumentsList;
        public ArgumentsListNode ArgumentsList => _argumentsList ??
                                                  (_argumentsList = ChildCount == 4 ? (ArgumentsListNode)Children[2] : null);

        private ExpressionNode _body;
        public ExpressionNode Body => _body ??
                                      (_body = ChildCount == 4 ? (ExpressionNode)Children[3] : (ExpressionNode)Children[2]);

    }
}