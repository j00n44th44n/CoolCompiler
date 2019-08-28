using System;

namespace Class_Intermediate_Language
{
    public class VMType
    {
        public int class_tag;
        public VMVariable[] attributes;
        public VMFunction[] Functions;

        public VMVariable DefineAttribute( string name, VMType type)
        {
            throw new NotImplementedException();
        }
        public VMUserFunction DeclareFunction(string name)
        {
            throw new NotImplementedException();
        }

    }
}