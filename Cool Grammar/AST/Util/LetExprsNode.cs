using System.Collections.Generic;
using System.Linq;
using Antlr.Runtime;
using CoolGrammar.AST.Feature;

namespace CoolGrammar.AST.Util
{
    public class LetExpresNode : UtilNode
    {
        private IEnumerable<LocalOrFieldInit> _localOrFieldInits;
        public IEnumerable<LocalOrFieldInit> LocalOrFieldInits => _localOrFieldInits ??
                                                                  (_localOrFieldInits = Children.Select(x => (LocalOrFieldInit) x));

        public LetExpresNode() : base() { }

        public LetExpresNode(IToken token) : base(token) { }

    }
}
