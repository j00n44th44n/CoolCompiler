using System;
using System.Collections.Generic;
using Class_Intermediate_Language.AST.Functions;
using Class_Intermediate_Language.AST.Program;
using Class_Intermediate_Language.AST.Type;
using CoolGrammar.CodeGeneration;

namespace Class_Intermediate_Language.Utils
{
    public static class CIL_Factory
    {
        private static int _tag;
        private static int _nameData;

        private static readonly Dictionary<string, int> typeMapper;
        private static readonly List<CIL_Type> _types;
        private static readonly List<CIL_Function> _functions;
        private static readonly List<DataHolder> _data;

        private static CIL_Program _program;
        private static List<int> _inheritanceTree;

        public static IEnumerable<CIL_Type> Types => _types;
        public static IEnumerable<CIL_Function> Functions => _functions;
        public static IEnumerable<DataHolder> Data => _data;

        public static CIL_Program Program
            => _program ?? (_program = new CIL_Program(Types, Data, Functions, _inheritanceTree));

        static CIL_Factory()
        {
            _inheritanceTree = new List<int>();
            typeMapper = new Dictionary<string, int>();

            _types = new List<CIL_Type>();
            _functions = new List<CIL_Function>();
            _data = new List<DataHolder> { new DataHolder("empty", string.Empty) };
        }

        public static CIL_Type DefineType(string name,
                                            string parent = null,
                                            IEnumerable<CIL_Attribute> attributes = null,
                                            IEnumerable<CIL_FunctionDeclaration> funtion = null)
        {
            var cilType = new CIL_Type(name, _tag++, attributes, funtion);
            typeMapper[cilType.Name] = cilType.Id;
            _inheritanceTree.Insert(cilType.Id, parent is null ? -1 : typeMapper[parent]);
            return cilType;
        }

        public static void AddType(CIL_Type type)
        {
            _data.Add(new DataHolder($"{type.Name}", type.Name));
            _types.Add(type);
        }

        public static DataHolder DefineData(string data)
            => new DataHolder($"s_{_nameData++}", data);
        public static void AddData(DataHolder data)
            => _data.Add(data);
        public static CIL_Function DefineFunction(string function)
            => new CIL_Function(function);
        public static void AddFunction(CIL_Function function)
            => _functions.Add(function);
    }
}