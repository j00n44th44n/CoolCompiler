using System.Collections.Generic;

namespace CoolGrammar.Interfaces
{
    public interface IType : IScope
    {
        string Name { get; }
        bool IsSealed { get; }
        ISymbol Self { get; }
        IType Parent { get; }

        bool IsDefinedMethod(string name, out IMethod method);
        bool DefineMethod(string name, IType returnType, IEnumerable<ISymbol> arguments = null);
        bool IsVariance(IType type);
    }
}