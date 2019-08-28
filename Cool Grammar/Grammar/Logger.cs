using System;
using System.Collections.Generic;
using System.Linq;

namespace CoolGrammar.Grammar
{
    public static class Logger
    {
        private static readonly List<Error> Errors;

        public static bool HasError
        {
            get => Errors.Any();
        }

        static Logger()
            => Errors = new List<Error>();

        public static void LogError(int line, int column, string msg)
            => Errors.Add(new Error(line,column,msg));

        public static void Report()
        {
            Console.ForegroundColor = ConsoleColor.Red;
            foreach (var e in Errors)
                Console.WriteLine(e);
            Console.ResetColor();
        }
    }
}