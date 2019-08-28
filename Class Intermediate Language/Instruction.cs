namespace Class_Intermediate_Language
{
    public abstract class VMInstruction
    {
    }
    public class Attribute:VMInstruction
    { }
    public class Argument : VMInstruction
    {
    }

    public class LocalField : VMInstruction
    {

    }

    public class Param : VMInstruction
    {
        public Param(VMHolder y) { }

        public Param(int y) { }

        public Param(bool y) { }

        public Param(string y) { }
    }

    public class Call : VMInstruction
    {
        public Call(VMValue x, VMFunction function) { }

        public Call(VMFunction function) { }
    }

    public class VCall : VMInstruction
    {
    }

    public class Print : VMInstruction
    {
    }

    public class SetAttr : VMInstruction
    { }

    public class SetIndex : VMInstruction
    { }

    public class Return : VMInstruction
    {
        
    }
}