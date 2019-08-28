using System.Collections.Generic;
using System.Linq;
using Antlr.Runtime;
using CoolGrammar.AST.Feature;

namespace CoolGrammar.AST.Util
{
    public class FeatureListNode : UtilNode
    {
        private IEnumerable<FeatureNode> _features;
        public IEnumerable<FeatureNode> Features => _features ??
                                                    (_features = Children?.Select(x => (FeatureNode)x));

        public FeatureListNode() : base() { }
        public FeatureListNode(IToken token) : base(token) { }
    }
}
