namespace Class_Intermediate_Language.AST.Type
{
    public class CIL_FunctionDeclaration : CIL_Node
    {
        public string Name { get; }
        public CIL_FunctionDeclaration(string name) => Name = name;
        public override string ToString() => Name;
    }
}