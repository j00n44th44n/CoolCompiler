using CoolGrammar.CodeGeneration;
using CoolGrammar.Interfaces;

namespace CoolCheckSemantic.Scopes
{
    public class Symbol : ISymbol
    {
        public Symbol(string name, IType type, bool isAttribute = false)
        {
            Name = name;
            Type = type;
            IsAttribute = isAttribute;
        }

        public string Name { get; }
        public IType Type { get; }
        public Holder Holder { get; set; }

        public bool IsAttribute { get; }

        public override string ToString()
            => $"{(IsAttribute ? "Attribute" : "Variable")} {Type}: {Name}";
    }
}
