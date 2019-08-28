using System.Linq;
using Class_Intermediate_Language.Utils;
using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Instructions
{
    public class VCall : CIL_Instruction
    {
        public readonly Variable Variable;
        public readonly string Type;
        public readonly string Function;

        public VCall(Variable variable, string type, string function)
            => (Variable, Type, Function) = (variable, type, function);
    }
}