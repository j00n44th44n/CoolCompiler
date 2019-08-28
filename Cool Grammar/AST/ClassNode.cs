using Antlr.Runtime;
using CoolGrammar.AST.Util;
using CoolGrammar.Interfaces;

namespace CoolGrammar.AST
{
    public class ClassNode : CoolNode
    {
        public ClassNode() : base() { }

        public ClassNode(IToken token) : base(token) { }

        public string TypeClass => Children[0].Text;

        private string _typeParent;
        public string TypeParent => _typeParent ??
                                    (_typeParent = ChildCount == 3 ? Children[2].Text : "Object");

        private FeatureListNode _featureList;
        public FeatureListNode FeatureList => _featureList ??
                                              (_featureList = (FeatureListNode)Children[1]);

    }
}
