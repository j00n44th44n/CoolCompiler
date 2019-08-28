namespace Class_Intermediate_Language.AST.Type
{
    public class CIL_Attribute : CIL_Node
    {
        public string Name { get; }
        public CIL_Attribute(string name) => Name = name;
        public override string ToString() => Name;
    }
}