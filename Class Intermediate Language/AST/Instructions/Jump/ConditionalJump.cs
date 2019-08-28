using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Instructions
{
    public class ConditionalJump : CIL_Instruction
    {
        public readonly Variable Variable;
        public readonly bool Condition;
        public readonly string Label;

        public ConditionalJump(Variable variable, bool condition, string label)
            => (Variable, Condition, Label) = (variable, condition, label);
    }
}