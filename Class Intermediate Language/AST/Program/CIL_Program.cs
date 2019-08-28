using System.Collections.Generic;
using Class_Intermediate_Language.AST.Functions;
using Class_Intermediate_Language.AST.Type;
using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.AST.Program
{
    public class CIL_Program : CIL_Node
    {
        public IEnumerable<int> InheritanceTree { get; }
        public IEnumerable<CIL_Type> Types { get; }
        public IEnumerable<DataHolder> Data { get; }
        public IEnumerable<CIL_Function> Functions { get; }

        public CIL_Program( IEnumerable<CIL_Type> types, 
                            IEnumerable<DataHolder> data, 
                            IEnumerable<CIL_Function> functions, 
                            IEnumerable<int> inheritanceTree)

            => (Types, Data, Functions, InheritanceTree)
                = (types, data, functions, inheritanceTree);
    }
}