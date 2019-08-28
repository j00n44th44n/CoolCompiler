using System.Collections.Generic;
using CoolGrammar.Interfaces;

namespace CoolCheckSemantic.Scopes
{
    public class Scope : IScope
    {
        private readonly Dictionary<string, ISymbol> _symbolsTable;

        public Scope(IScope parentScope)
        {
            ParentScope = parentScope;
            _symbolsTable = new Dictionary<string, ISymbol>();
        }

        public IScope ParentScope { get; }
        public IScope CreateChildScope()
            => new Scope(this);

        public bool IsDefinedSymbol(string name, out ISymbol symbol)
            => _symbolsTable.TryGetValue(name, out symbol) || ParentScope.IsDefinedSymbol(name, out symbol);

        public bool DefineSymbol(ISymbol symbol)
        {
            _symbolsTable[symbol.Name] = symbol;
            return true;
        }

        public override string ToString()
            => $" ";
    }
}