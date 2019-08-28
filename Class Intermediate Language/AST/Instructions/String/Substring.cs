using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Instructions.String
{
    public class Substring : CIL_Instruction
    {
        public Variable SubStr { get; set; }
        public Holder Str { get; set; }
        public Holder IndexValue { get; set; }
        public Holder CountValue { get; set; }

        public Substring(Variable subStr, Holder str, Holder indexValue, Holder countValue)
            => (SubStr, Str, IndexValue, CountValue) = (subStr, str, indexValue, countValue);
    }
}