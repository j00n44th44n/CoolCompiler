using System;
using System.Collections.Generic;
using System.Diagnostics.Tracing;
using System.Linq;
using System.Linq.Expressions;

namespace Class_Intermediate_Language.AST.Type
{
    public class CIL_Type : CIL_Node
    {
        private readonly List<CIL_Attribute> _attributes;
        private readonly List<CIL_FunctionDeclaration> _functions;

        public string Name { get; set; }
        public int Id { get; }
        public int Size { get; }
        public IEnumerable<CIL_Attribute> Attributes => _attributes;
        public IEnumerable<CIL_FunctionDeclaration> Functions => _functions;

        public CIL_Type(string name,
                    int id,
                    IEnumerable<CIL_Attribute> attributes = null,
                    IEnumerable<CIL_FunctionDeclaration> functions = null)
        {
            Name = name;
            Id = id;
            _attributes = new List<CIL_Attribute>(attributes ?? Enumerable.Empty<CIL_Attribute>());
            _functions = new List<CIL_FunctionDeclaration>(functions ?? Enumerable.Empty<CIL_FunctionDeclaration>());
            Size = 4 * (2 + _attributes.Count);
        }
            //=> (Name,
            //    Id,
            //    _attributes,
            //    _functions,
            //    Size)

            //= (name,
                //id,
                //new List<CIL_Attribute>(attributes ?? Enumerable.Empty<CIL_Attribute>()),
                //new List<CIL_FunctionDeclaration>(functions ?? Enumerable.Empty<CIL_FunctionDeclaration>()),
                //4 * (2 + _attributes.Count));

        public int GetAttributeOffSet(string attributeName)
            => _attributes.FindIndex(attr => attr.Name == attributeName) + 2;

        public string GetFunctionOffSet(string functionName)
        {
            foreach (var function in _functions)
            {
                var split = function.Name.Split('_');
                if (split.Length == 3)
                {
                    if ($"{split[1]}_{split[2]}" == functionName)
                        return function.Name;
                }
                else if ($"{split[1]}" == functionName)
                    return function.Name;
            }
            throw new Exception();
        }
    }
}
