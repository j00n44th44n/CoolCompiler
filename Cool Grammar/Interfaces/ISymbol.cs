using CoolGrammar.CodeGeneration;

namespace CoolGrammar.Interfaces
{
    public interface ISymbol
    {
        string Name { get; }
        bool IsAttribute { get; }

        IType Type { get; }
        Holder Holder { get; set; }
    }
}