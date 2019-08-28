namespace CoolGrammar.CodeGeneration
{
    public abstract class Holder
    {
        public string Name { get; }
        protected Holder(string name) => Name = name;
    }

    public class Variable : Holder
    {
        public Variable(string name) : base(name) { }
    }

    public class DataHolder : Holder
    {
        public string Value { get; }
        public DataHolder(string name, string value) : base(name) => Value = value;
    }
}