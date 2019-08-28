namespace CoolGrammar.Interfaces
{
    public interface IMethod : IScope
    {
        string Name { get; }
        IType ReturnType { get; }
        ISymbol[] Arguments { get; }
    }
}