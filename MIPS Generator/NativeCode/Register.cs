using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MIPS_Generator.NativeCode
{
    public static class Register
    {
        public static readonly string zero = "$zero";     // stores value 0
        public static readonly string sp = "$sp";        // stack pointer
        public static readonly string fp = "$fp";        // frame stack
        public static readonly string ra = "$ra";        // used to store return address in procedure call

        public static readonly string v0 = "$v0";        // used for system calls and procedure return values
        public static readonly string v1 = "$v1";

        public static readonly string a0 = "$a0";        // used for passing arguments to procedures (this project used the stack)
        public static readonly string a1 = "$a1";
        public static readonly string a2 = "$a2";
        public static readonly string a3 = "$a3";

        public static readonly string t0 = "$t0";        // used for local storage
        public static readonly string t1 = "$t1";
        public static readonly string t2 = "$t2";
        public static readonly string t3 = "$t3";
        public static readonly string t4 = "$t4";
        public static readonly string t5 = "$t5";
        public static readonly string t6 = "$t6";
        public static readonly string t7 = "$t7";
        public static readonly string t8 = "$t8";
        public static readonly string t9 = "$t9";

        public static readonly string s0 = "$s0";        // used for local storage (others)
        public static readonly string s1 = "$s1";
        public static readonly string s2 = "$s2";
        public static readonly string s3 = "$s3";
        public static readonly string s4 = "$s4";
        public static readonly string s5 = "$s5";
        public static readonly string s6 = "$s6";
        public static readonly string s7 = "$s7";


    }
}
