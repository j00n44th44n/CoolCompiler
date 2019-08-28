using System.Linq;
using Class_Intermediate_Language.Utils;
using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Instructions.Attributes
{
    public class SetAttr : CIL_Instruction
    {
        public Variable Instance { get; }
        public int NumberAttr { get; }
        public Holder Value { get; }

        public SetAttr(Variable instance, string attributeName, Holder value)
            => (Instance,
                NumberAttr,
                Value)

            =  (instance,
               (CIL_Factory.Types.Single(
                   t => t.Name == attributeName.Split('_')[0]))
                        .GetAttributeOffSet(attributeName),
                value);
    }
}