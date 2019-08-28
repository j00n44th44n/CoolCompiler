using System.Collections.Generic;
using System.Reflection;
using Class_Intermediate_Language.AST;
using Class_Intermediate_Language.AST.Functions;
using Class_Intermediate_Language.AST.Type;
using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.Interfaces
{
    public interface ICIL_CodeGenerator
    {
        Variable DefineVariable();
        string DefineLabel();

        void AddInstruction(CIL_Instruction instruction);
        void AddLocalVariable(CIL_LocalVariable localVariable);
        void AddArgument(CIL_Argument argument);
    }

}