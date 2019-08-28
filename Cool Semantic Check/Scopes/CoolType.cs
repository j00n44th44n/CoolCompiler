using System;
using System.Collections.Generic;
using System.Linq;
using CoolGrammar.Interfaces;

namespace CoolCheckSemantic.Scopes
{
    public class CoolType : IType
    {
        private readonly Dictionary<string, ISymbol> _symbols;
        private readonly Dictionary<string, IMethod> _methods;
        private IEnumerable<ISymbol> _attrs;
        private IEnumerable<IMethod> _funcs;

        public CoolType(string typeName, bool isSealed = false)
        {
            Name = typeName;
            IsSealed = isSealed;
            _symbols = new Dictionary<string, ISymbol>();
            _methods = new Dictionary<string, IMethod>();
            Self = new Symbol("self", this);
        }

        public string Name { get; }
        public bool IsSealed { get; }
        public IType Parent { get; internal set; }
        public ISymbol Self { get; }
        public IScope ParentScope => null;
        public IScope CreateChildScope()
        {
            throw new NotImplementedException();
        }

        public bool DefineSymbol(ISymbol symbol)
        {
            if (_symbols.ContainsKey(symbol.Name)) return false;
            _symbols[symbol.Name] = symbol;
            return true;
        }

        public bool DefineMethod(string name, IType returnType,
                               IEnumerable<ISymbol> arguments = null)
        {
            if (_methods.ContainsKey(name)) return false;
            var method = new Method(name, returnType) { ParentScope = this };
            if (arguments != null)
                foreach (var argument in arguments)
                    if (!method.DefineSymbol(argument))
                        return false;
            _methods[name] = method;
            return true;
        }

        public bool IsVariance(IType type)
            => Name == type.Name ? true : Parent != null && Parent.IsVariance(type);

        public bool IsDefinedSymbol(string name, out ISymbol symbol)
            => Parent != null && Parent.IsDefinedSymbol(name, out symbol) || _symbols.TryGetValue(name, out symbol);

        public bool IsDefinedMethod(string name, out IMethod method)
            => _methods.TryGetValue(name, out method) || Parent != null && Parent.IsDefinedMethod(name, out method);

        public static CoolType Lca(CoolType a, CoolType b)
        {
            var listTypes = new List<CoolType>();
            while (a.Parent != null)
            {
                listTypes.Add(a);
                a = (CoolType)a.Parent;
            }
            while (b.Parent != null)
            {
                foreach (var type in listTypes)
                {
                    if (b.Name != type.Name) continue;
                    return type;
                }
                b = (CoolType)b.Parent;
            }
            return a;
        }

        public static bool operator <=(CoolType first, CoolType second)
            => first == null || second == null ? false : first.IsVariance(second);

        public static bool operator >=(CoolType first, CoolType second)
            => first == null || second == null ? false : second.IsVariance(first);

        public IEnumerable<ISymbol> GetAttributes
            => _attrs ?? (_attrs = ((CoolType)Parent)?.GetAttributes.Concat(_symbols.Values.Select(symb => symb)) ?? _symbols.Values.Select(attr => attr));

        public IEnumerable<IMethod> GetMethods
        {
            get
            {
                var parent = Parent as CoolType;
                return _funcs ?? (_funcs = AllMethods(parent?.GetMethods) ?? _methods.Values.Select(method => method));

                IEnumerable<IMethod> AllMethods(IEnumerable<IMethod> enumerable)
                {
                    if (enumerable is null)
                        return null;
                    var dicc = new Dictionary<string, IMethod>();
                    foreach (var method in enumerable)
                        dicc.Add(method.Name, method);
                    foreach (var method in _methods.Values)
                        dicc.Add(method.Name, method);
                    return dicc.Values;
                }
            }
        }

        public override string ToString()
            => $"{Name}";
    }
}