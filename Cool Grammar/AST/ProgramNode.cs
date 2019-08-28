using System.Collections.Generic;
using System.Linq;
using Antlr.Runtime;

namespace CoolGrammar.AST
{
    public class ProgramNode : CoolNode
    {
        public ProgramNode() : base()
        { }

        public ProgramNode(IToken token) : base(token)
        { }

        private IEnumerable<ClassNode> _classesList;
        public IEnumerable<ClassNode> ClassesList => _classesList ?? 
                                                     (_classesList = Children.Select(x => (ClassNode) x));
    }
}
