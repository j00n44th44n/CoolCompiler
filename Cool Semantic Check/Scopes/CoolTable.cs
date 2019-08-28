using System.Collections.Generic;
using System.Linq;
using CoolGrammar.Interfaces;

namespace CoolCheckSemantic.Scopes
{
    public static class TypeTable
    {
        private static readonly Dictionary<string, IType> Dictionary;

        static TypeTable()
        {
            Dictionary = new Dictionary<string, IType>();
            DefineCoolTypes();
        }

        private static void DefineCoolTypes()
        {
            #region Types
            Dictionary["Object"] = new CoolType("Object") { Parent = null };
            Dictionary["IO"] = new CoolType("IO") { Parent = Dictionary["Object"] };
            Dictionary["String"] = new CoolType("String", true) { Parent = Dictionary["Object"] };
            Dictionary["Int"] = new CoolType("Int", true) { Parent = Dictionary["Object"] };
            Dictionary["Bool"] = new CoolType("Bool", true) { Parent = Dictionary["Object"] };
            #endregion

            #region Methods
            Dictionary["Object"]
                .Def_Method("abort", Dictionary["Object"])
                .Def_Method("copy", Dictionary["Object"])
                .Def_Method("type_name", Dictionary["String"]);

            Dictionary["IO"]
                .Def_Method("out_string", Dictionary["Object"], new[] { ("x", Dictionary["String"]) })
                .Def_Method("out_int", Dictionary["Object"], new[] { ("x", Dictionary["Int"]) })
                .Def_Method("in_string", Dictionary["String"])
                .Def_Method("in_int", Dictionary["Int"]);

            Dictionary["String"]
                .Def_Method("length", Dictionary["Int"])
                .Def_Method("concat", Dictionary["String"], new[] { ("s", Dictionary["String"]) })
                .Def_Method("substr", Dictionary["String"], new[] { ("i", Dictionary["Int"]), ("l", Dictionary["Int"]) });
            #endregion
        }

        public static bool IsDefinedType(string typeName, out IType type)
            => Dictionary.TryGetValue(typeName, out type);

        public static bool AddType(IType type)
        {
            if (Dictionary.ContainsKey(type.Name)) return false;
            Dictionary[type.Name] = type;
            return true;
        }
    }

    internal static class CoolExtensor
    {
        public static IType Def_Method(this IType type, string name, IType returnType, IEnumerable<(string, IType)> arguments = null)
        {
            var args = arguments?.Select(x =>
            {
                var (n, t) = x;
                return new Symbol(n, t);
            });
            if (!type.IsDefinedMethod(name, out _))
                type.DefineMethod(name, returnType, args);
            return type;
        }
    }
}