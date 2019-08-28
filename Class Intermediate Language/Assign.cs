namespace Class_Intermediate_Language
{
    public class Assign : VMInstruction
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="x">VMVariable</param>
        /// <param name="y">Valor computado previamente ó variable con valor constante</param>
        public Assign(VMVariable x, VMHolder y) { }
        
        public Assign(VMVariable x, int y) { }

        //public Assign(VMVariable x, string y) { }
    }

    #region Binary Operations
    public class PlusAssign : VMInstruction
    {
        public PlusAssign(VMVariable x, VMHolder y, VMHolder z) { }

        public PlusAssign(VMVariable x, VMHolder y, int z) { }

        public PlusAssign(VMVariable x, int y, VMHolder z) { }

        public PlusAssign(VMVariable x, int y, int z) { }

    }

    public class MinusAssign : VMInstruction
    {
        public MinusAssign(VMVariable x, VMHolder y, VMHolder z) { }

        public MinusAssign(VMVariable x, VMHolder y, int z) { }

        public MinusAssign(VMVariable x, int y, VMHolder z) { }

        public MinusAssign(VMVariable x, int y, int z) { }

    }

    public class MultAssign : VMInstruction
    {
        public MultAssign(VMVariable x, VMHolder y, VMHolder z) { }

        public MultAssign(VMVariable x, VMHolder y, int z) { }

        public MultAssign(VMVariable x, int y, VMHolder z) { }

        public MultAssign(VMVariable x, int y, int z) { }

    }

    public class DivAssign : VMInstruction
    {
        public DivAssign(VMVariable x, VMHolder y, VMHolder z) { }

        public DivAssign(VMVariable x, VMHolder y, int z) { }

        public DivAssign(VMVariable x, int y, VMHolder z) { }

        public DivAssign(VMVariable x, int y, int z) { }

    }

    public class AndAssign : VMInstruction
    {
    }

    public class OrAssign : VMInstruction
    {
    }
    #endregion

    #region Unary Operations

    public class NegAssign : VMInstruction
    {
    }

    public class NotAssign : VMInstruction
    {
    }

    #endregion

    #region Comparison
    public class AssignEq : VMInstruction
    {
    }

    public class AssignNotEq : VMInstruction
    {
    }

    public class AssignLt : VMInstruction
    {
    }

    public class AssignLtEq : VMInstruction
    {
    }

    public class AssignGt : VMInstruction
    {

    }

    public class AssignGtEq : VMInstruction
    {

    }
   
    #endregion

    #region Others assigns

    public class AssignAllocate : VMInstruction
    {
    }
    public class AssignTypeOf : VMInstruction
    {
    }
    public class AssignGetAttr : VMInstruction
    {
    }
    public class AssignGetIndex : VMInstruction
    {
    }
    public class AssignLoad : VMInstruction
    { }
    public class AssignStr : VMInstruction
    { }
    public class AssignSubstring : VMInstruction
    { }
    public class AssignLength : VMInstruction
    {
    }
    public class AssignConcat : VMInstruction
    {
    }
    public class AssignRead : VMInstruction
    {
    }

    #endregion

}
