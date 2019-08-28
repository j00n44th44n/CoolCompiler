using System;

namespace Class_Intermediate_Language.Interfaces
{
    public interface ICodeGeneratorVisitor<in TNode>
    {
        void GenerateCode(TNode node, ICIL_CodeGenerator codeGenerator = null);
    }
}