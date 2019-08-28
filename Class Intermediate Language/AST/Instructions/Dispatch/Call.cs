using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Instructions
{
    public class Call : CIL_Instruction
    {
        public readonly Variable Variable;

        public readonly string Function;

        public Call(Variable x, string function)
            => (Variable, Function) = (x, function);
    }
}