namespace CoolGrammar.Interfaces
{
    public interface IScope
    {
        IScope ParentScope { get; }
        IScope CreateChildScope();
        bool IsDefinedSymbol(string name, out ISymbol symbol);
        bool DefineSymbol(ISymbol symbol);
    }
}