using System.Collections.Generic;
using System.Linq;
using CoolGrammar.Interfaces;

namespace CoolCheckSemantic.Scopes
{
    public class Method : IMethod
    {
        private readonly Dictionary<string, ISymbol> _arguments;
        public string Name { get; }
        public IType ReturnType { get; }
        public ISymbol[] Arguments => _arguments.Values.ToArray();
        public IScope ParentScope { get; internal set; }

        public Method(string name, IType type)
        {
            Name = name;
            ReturnType = type;
            _arguments = new Dictionary<string, ISymbol>();
        }

        public bool DefineSymbol(ISymbol symbol)
        {
            if (_arguments.ContainsKey(symbol.Name)) return false;
            _arguments.Add(symbol.Name, symbol);
            return true;
        }

        public bool IsDefinedSymbol(string name, out ISymbol symbol)
            => _arguments.TryGetValue(name, out symbol) || ParentScope.IsDefinedSymbol(name, out symbol);

        public IScope CreateChildScope()
            => new Scope(this);

        public override string ToString()
            => $"{Name}";
    }
}