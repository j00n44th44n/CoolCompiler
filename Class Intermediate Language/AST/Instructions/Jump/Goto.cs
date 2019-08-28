namespace Class_Intermediate_Language.AST.Instructions
{
    public class Goto : CIL_Instruction
    {
        public readonly string Label;

        public Goto(string label) 
            => Label = label;
    }
}
