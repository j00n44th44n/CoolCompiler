using System.Collections.Generic;
using System.Linq;
using Antlr.Runtime;

namespace CoolGrammar.AST.Util
{
    public class ArgumentsListNode : UtilNode
    {
        public ArgumentsListNode() : base() { }

        public ArgumentsListNode(IToken token) : base(token) { }

        private IEnumerable<ArgumentNode> _arguments;
        public IEnumerable<ArgumentNode> Arguments => _arguments ??
                                                      (_arguments = Children.Select(x => (ArgumentNode) x));
    }
}
