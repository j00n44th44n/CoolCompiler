namespace Class_Intermediate_Language.AST.Instructions
{
    public class Label : CIL_Instruction
    {
        public readonly string Tag;

        public Label(string label) 
            => Tag = label;
    }
}