using System.Linq;
using Class_Intermediate_Language.Utils;
using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Instructions.Memory
{
    public class Allocate : CIL_Instruction
    {
        public Variable X { get; }
        public int Size { get; }
        public int Type { get; }

        public Allocate(Variable x, string type)
        {
            X = x;
            var cil_type = CIL_Factory.Types.First(y => y.Name == type);
            Size = cil_type.Size * 4;
            Type = cil_type.Id;
        }
    }
}