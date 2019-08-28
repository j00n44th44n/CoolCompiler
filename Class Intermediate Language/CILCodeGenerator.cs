using System;

namespace Class_Intermediate_Language
{
    public class CILCodeGenerator
    {
        public VMVariable DefineVariable(VMType type, string name=null)
        {
            throw new NotImplementedException();
        }

        public void AddInstruction(VMInstruction instruction)
        {
            throw new NotImplementedException();
        }

        public int NextInstructionIndex { get; }

        public void BackPatch(int index)
        {
            throw new NotImplementedException();
        }
    }
}
