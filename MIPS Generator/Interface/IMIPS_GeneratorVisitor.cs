using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MIPS_Generator
{
    public interface IMIPS_GeneratorVisitor<in TNode>
    {
        void GenerateCode(TNode node);
    }
}