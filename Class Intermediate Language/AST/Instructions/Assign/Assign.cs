using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Instructions.Assign
{
    public class Assign : CIL_Instruction
    {
        public readonly Variable Variable;
        public readonly Holder Holder;
        public readonly int ValueInt;
        public readonly bool ValueBool;
        public readonly int @Case;

        public Assign(Variable variable, Holder holder)
            => (Variable, Holder, Case) = (variable, holder, 0);

        public Assign(Variable variable, int value)
            => (Variable, ValueInt, Case) = (variable, value, 1);

        public Assign(Variable variable, bool value)
            => (Variable, ValueBool, Case) = (variable, value, 2);
    }
}