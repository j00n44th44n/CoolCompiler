using System.Collections.Generic;
using Class_Intermediate_Language.CodeGenerator;
using Class_Intermediate_Language.Interfaces;

namespace Class_Intermediate_Language.AST.Functions
{
    public class CIL_Function : CIL_Node
    {
        private CIL_CodeGenerator _codeGenerator;
        private IEnumerable<CIL_Argument> _arguments;
        private IEnumerable<CIL_Instruction> _instructions;
        private IEnumerable<CIL_LocalVariable> _localVariables;
        public string Name { get; }

        public CIL_Function(string name) => Name = name;
        public ICIL_CodeGenerator CodeGenerator 
            => _codeGenerator ?? (_codeGenerator = new CIL_CodeGenerator());
        public IEnumerable<CIL_Argument> Arguments 
            => _arguments ?? (_arguments = _codeGenerator.Arguments);
        public IEnumerable<CIL_Instruction> Instructions 
            => _instructions ?? (_instructions = _codeGenerator.Instructions);
        public IEnumerable<CIL_LocalVariable> LocalVariables 
            => _localVariables ?? (_localVariables = _codeGenerator.LocalVariable);

    }
}