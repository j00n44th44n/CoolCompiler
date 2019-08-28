using Antlr.Runtime;

namespace CoolGrammar.AST.Expression.Instruction
{
    public class NewTypeNode : InstructionNode
    {
        public string TypeName => Children[0].Text;

        public NewTypeNode() : base() { }
        public NewTypeNode(IToken token) : base(token) { }
    }
}