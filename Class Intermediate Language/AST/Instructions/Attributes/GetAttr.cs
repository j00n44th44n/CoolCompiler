using System.Linq;
using Class_Intermediate_Language.Utils;
using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Instructions.Attributes
{
    public class GetAttr : CIL_Instruction
    {
        public Variable Variable { get; }
        public Holder Instance { get; }
        public int NumberAttr { get; }

        public GetAttr(Variable variable, Holder instance, string attributeName)
        => (Variable,
            Instance,
            NumberAttr)

        =  (variable,
            instance,
            (CIL_Factory.Types.Single(
                t => t.Name == attributeName.Split('_')[0]))
                    .GetAttributeOffSet(attributeName));
    }
}