using Antlr.Runtime;
using CoolGrammar.AST.Expression.Identifier;

namespace CoolGrammar.AST.Expression.Instruction
{
    public class AssignNode : InstructionNode
    {
        private ObjIdNode _objId;
        public ObjIdNode ObjId => _objId ??
                                  (_objId = (ObjIdNode) Children[0]);

        private ExpressionNode _expression;
        public ExpressionNode Expression => _expression ??
                                            (_expression = (ExpressionNode) Children[1]);

        public AssignNode() : base() { }
        public AssignNode(IToken token) : base(token) { }
    }
}