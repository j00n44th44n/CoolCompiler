using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Class_Intermediate_Language.AST.Exceptions;
using Class_Intermediate_Language.Utils;

namespace MIPS_Generator.NativeCode
{
    public static class NativeInstruction
    {

        #region Labels

        public static string DefineSegmText()
        {
            return ".text \n";
        }

        public static string DefineSegmData()
        {
            return ".data \n";
        }

        public static string DefineLabel(string name)
        {
            return $"{name}: \n";
        }

        #endregion


        #region Arithmetic

        #region With overflowing

        public static string Add(string regDest, string regSrc1, string regSrc2)
        {
            return $"\t add {regDest}, {regSrc1}, {regSrc2} \n";
        }

        public static string Add(string regDest, string regSrc1, int value)
        {
            return $"\t add {regDest}, {regSrc1}, {value} \n";
        }

        public static string Div(string regDest, string regSrc1, string regSrc2)
        {
            return BranchOnEqualZero(regSrc2, Constant.Variables(CoolExceptionType.DivideByZeroException).NameProcedure) +
                   $"\t div {regDest}, {regSrc1}, {regSrc2} \n";
        }

        public static string Div(string regDest, string regSrc1, int value)
        {
            return value != 0 ?
                        $"\t div {regDest}, {regSrc1}, {value} \n" :
                        Jump(Constant.Variables(CoolExceptionType.DivideByZeroException).NameProcedure);
        }

        public static string Mul(string regDest, string regSrc1, string regSrc2)
        {
            return $"\t mul {regDest}, {regSrc1}, {regSrc2} \n";
        }

        public static string Mul(string regDest, string regSrc1, int value)
        {
            return $"\t mul {regDest}, {regSrc1}, {value} \n";
        }

        public static string Sub(string regDest, string regSrc1, string regSrc2)
        {
            return $"\t sub {regDest}, {regSrc1}, {regSrc2} \n";
        }

        public static string Sub(string regDest, string regSrc1, int value)
        {
            return $"\t sub {regDest}, {regSrc1}, {value} \n";
        }

        public static string Remainder(string regDest, string regSrc1, string regSrc2)
        {
            return $"\t rem {regDest}, {regSrc1}, {regSrc2} \n";
        }

        #endregion

        #region Without overflowing

        public static string Addu(string regDest, string regSrc1, string regSrc2)
        {
            return $"\t addu {regDest}, {regSrc1}, {regSrc2} \n";
        }

        public static string Addu(string regDest, string regSrc1, int value)
        {
            return $"\t addu {regDest}, {regSrc1}, {value} \n";
        }


        public static string Divu(string regDest, string regSrc1, string regSrc2)
        {
            return BranchOnEqualZero(regSrc2, Constant.Variables(CoolExceptionType.DivideByZeroException).NameProcedure) +
                   $"\t divu {regDest}, {regSrc1}, {regSrc2} \n";
        }

        public static string Divu(string regDest, string regSrc1, int value)
        {
            return value != 0 ?
                $"\t divu {regDest}, {regSrc1}, {value} \n" :
                Jump(Constant.Variables(CoolExceptionType.DivideByZeroException).NameProcedure);
        }

        public static string Mulo(string regDest, string regSrc1, string regSrc2)
        {
            return $"\t mulo {regDest}, {regSrc1}, {regSrc2} \n";
        }

        public static string Mulo(string regDest, string regSrc1, int value)
        {
            return $"\t mulo {regDest}, {regSrc1}, {value} \n";
        }

        public static string Subu(string regDest, string regSrc1, string regSrc2)
        {
            return $"\t subu {regDest}, {regSrc1}, {regSrc2} \n";
        }

        public static string Subu(string regDest, string regSrc1, int value)
        {
            return $"\t subu {regDest}, {regSrc1}, {value} \n";
        }

        #endregion

        #endregion


        #region  Logic

        public static string And(string regDest, string regSrc1, string regSrc2)
        {
            return $"\t and {regDest}, {regSrc1}, {regSrc2} \n";
        }

        public static string And(string regDest, string regSrc1, int value)
        {
            return $"\t and {regDest}, {regSrc1}, {value} \n";
        }

        public static string Or(string regDest, string regSrc1, string regSrc2)
        {
            return $"\t or {regDest}, {regSrc1}, {regSrc2} \n";
        }

        public static string Or(string regDest, string regSrc1, int value)
        {
            return $"\t or {regDest}, {regSrc1}, {value} \n";
        }



        #endregion


        #region  Comparison

        public static string SetEqual(string regDest, string regSrc1, string regSrc2)
        {
            return $"\t seq {regDest}, {regSrc1}, {regSrc2} \n";
        }

        public static string SetEqual(string regDest, string regSrc1, int value)
        {
            return $"\t seq {regDest}, {regSrc1}, {value} \n";
        }

        public static string SetGreaterThenEqual(string regDest, string regSrc1, string regSrc2)
        {
            return $"\t sge {regDest}, {regSrc1}, {regSrc2} \n";
        }

        public static string SetGreaterThenEqual(string regDest, string regSrc1, int value)
        {
            return $"\t sge {regDest}, {regSrc1}, {value} \n";
        }

        public static string SetGreaterThen(string regDest, string regSrc1, string regSrc2)
        {
            return $"\t sgt {regDest}, {regSrc1}, {regSrc2} \n";
        }

        public static string SetGreaterThen(string regDest, string regSrc1, int value)
        {
            return $"\t sgt {regDest}, {regSrc1}, {value} \n";
        }

        public static string SetLessThenEqual(string regDest, string regSrc1, string regSrc2)
        {
            return $"\t sle {regDest}, {regSrc1}, {regSrc2} \n";
        }

        public static string SetLessThenEqual(string regDest, string regSrc1, int value)
        {
            return $"\t sle {regDest}, {regSrc1}, {value} \n";
        }

        public static string SetLessThen(string regDest, string regSrc1, string regSrc2)
        {
            return $"\t slt {regDest}, {regSrc1}, {regSrc2} \n";
        }

        public static string SetLessThen(string regDest, string regSrc1, int value)
        {
            return $"\t slt {regDest}, {regSrc1}, {value} \n";
        }

        public static string SetNotEqual(string regDest, string regSrc1, string regSrc2)
        {
            return $"\t sne {regDest}, {regSrc1}, {regSrc2} \n";
        }

        public static string SetNotEqual(string regDest, string regSrc1, int value)
        {
            return $"\t sne {regDest}, {regSrc1}, {value} \n";
        }



        #endregion


        #region Negation

        public static string NumberComplement(string regDest, string regSrc)
        {
            return $"\t not {regDest}, {regSrc} \n";
        }

        public static string NotLogic(string regDest, string regSrc)
        {
            return SetEqual(regDest, regSrc, 0);
        }



        #endregion


        #region Load and Store Data

        public static string LoadWord(string reg, string data, bool isDataRegister = false)
        {
            return isDataRegister ? $"\t lw {reg}, ({data}) \n"
                : $"\t lw {reg}, {data} \n";
        }

        public static string LoadByte(string reg, string data, bool isDataRegister = false)
        {
            return isDataRegister ? $"\t lb {reg}, ({data}) \n"
                : $"\t lb {reg}, {data} \n";
        }

        public static string LoadAddress(string reg, string data, bool isDataRegister = false)
        {
            return isDataRegister ? $"\t la {reg}, ({data}) \n"
                : $"\t la {reg}, {data} \n";
        }

        public static string StoreWord(string reg, string data, bool isDataRegister = false)
        {
            return isDataRegister ? $"\t sw {reg}, ({data}) \n"
                : $"\t sw {reg}, {data} \n";
        }

        public static string StoreByte(string reg, string data, bool isDataRegister = false)
        {
            return isDataRegister ? $"\t sb {reg}, ({data}) \n"
                : $"\t sb {reg}, {data} \n";
        }

        #endregion


        #region Create new data


        public static string DefineData(string name, int value)
        {
            return $"\t {name}: \t .word \t {value.ToString()} \n";
        }

        public static string DefineData(string name, int[] values)
        {
            string array = "";
            for (int i = 0; i < values.Length - 1; i++)
                array += $"{values[i]}, ";
            array += values[values.Length - 1];

            return $"\t {name}: \t .word \t {array} \n";
        }

        public static string DefineData(string name, string value)
        {
            return $"\t {name}: \t .asciiz \t \"{value}\" \n";
        }

        public static string ReserveSpace(string name, int value)
        {
            return $"\t {name}: \t .space \t {value} \n";
        }

        #endregion


        #region Branch and Jump

        // salta a la etiqueta
        public static string Jump(string label)
        {
            return $"\t j {label} \n";
        }

        // salta a la etiqueta y enlaza (guarda) en $ra la próxima línea antes del salto
        public static string JumpAndLink(string label)
        {
            return Push("$ra") +
                    $"\t jal {label} \n" +
                    Pop("$ra");
        }

        public static string JumpRegister(string reg = "$ra")
        {
            return $"\t jr {reg} \n";
        }

        public static string BranchOnGreaterOrEqual(string reg1, string reg2, string label)
        {
            return $"\t bge {reg1}, {reg2}, {label} \n";
        }

        public static string BranchOnEqual(string reg1, string reg2, string label)
        {
            return $"\t beq {reg1}, {reg2}, {label} \n";
        }

        public static string BranchOnNotEqual(string reg1, string reg2, string label)
        {
            return $"\t bne {reg1}, {reg2}, {label} \n";
        }

        public static string BranchOnGreater(string reg1, string reg2, string label)
        {
            return $"\t bgt {reg1}, {reg2}, {label} \n";
        }

        public static string BranchOnLess(string reg1, string reg2, string label)
        {
            return $"\t blt {reg1}, {reg2}, {label} \n";
        }

        public static string BranchOnLessOrEqual(string reg1, string reg2, string label)
        {
            return $"\t ble {reg1}, {reg2}, {label} \n";
        }

        public static string BranchOnLessThenOrEqualZero(string reg, string label)
        {
            return $"\t blez {reg}, {label} \n";
        }

        public static string BranchOnEqualZero(string reg, string label)
        {
            return $"\t beqz {reg}, {label} \n";
        }

        public static string BranchOnLessThenZero(string reg, string label)
        {
            return $"\t bltz {reg}, {label} \n";
        }

        #endregion


        #region Working with constant

        public static string LoadInteger(string reg, int value)
        {
            return $"\t li {reg}, {value} \n";
        }

        #endregion


        #region Data Transfer 

        public static string Move(string regDest, string regSrc)
        {
            return $"\t move {regDest}, {regSrc} \n";
        }

        #endregion


        #region Exception and Break

        public static string NoOperation()
        {
            return "\t nop \n";
        }

        public static string SystemCall()
        {
            return "\t syscall \n";
        }

        #endregion


        #region System Services

        //public static string Print(string data, SystemServices service, bool isDataRegister = false)
        //{
        //    return (isDataRegister ? 
        //               $"\t la {Register.a0}, ({data}) \n" : 
        //               $"\t la {Register.a0}, {data} \n") +
        //           $"\t li {Register.v0}, {(int)service} \n" +
        //        SystemCall();
        //}

        //public static string Read(SystemServices service, string addr = null, bool isAddrRegister = false, bool store = false)
        //{
        //    //string code = String.Format("\t li $vo, {0} \n", (int)service) + SystemCall();

        //    //if (addr != null)
        //    //    switch (service)
        //    //    {
        //    //        case SystemServices.ReadInt:
        //    //            code += (isAddrRegister ? Move(addr, "$v0") : StoreWord("$v0", addr));
        //    //            break;

        //    //        case SystemServices.ReadString:
        //    //            code += (isAddrRegister ? Move(addr, "$a0") : StoreWord("$a0", addr));
        //    //            break;

        //    //        default:
        //    //            break;
        //    //    }

        //    string code = LoadInteger(Register.v0, (int)service);

        //    if (!isAddrRegister && addr != null && service == SystemServices.ReadString)
        //        code += LoadAddress(Register.a0, addr);

        //    code += SystemCall();

        //    if (addr != null)
        //        switch (service)
        //        {
        //            case SystemServices.ReadInt:
        //                code += (isAddrRegister ? Move(addr, Register.v0) : StoreWord(Register.v0, addr));
        //                break;

        //            case SystemServices.ReadString:
        //                if (isAddrRegister && store)
        //                    code += Move(addr, Register.a0);
        //                break;
        //        }

        //    return code;
        //}

        #endregion


        #region Stack

        public static string Push(string reg)
        {
            return Subu(Register.sp, Register.sp, 4) +
                StoreWord(reg, Register.sp, true);
        }

        public static string Push(string[] regs)
        {
            var code = Subu(Register.sp, Register.sp, 4 * regs.Length);
            for (int i = 0; i < regs.Length; i++)
                code += StoreWord(regs[i], $"{i * 4}({Register.sp})");
            return code;
        }


        // si reg == null => solo saco de la pila lo q guarde, no me importa recuperarlo
        public static string Pop(string reg = null)
        {
            return reg != null ?
                LoadWord(reg, Register.sp, true) + Addu(Register.sp, Register.sp, 4) :
                Addu(Register.sp, Register.sp, 4);
        }

        public static string Pop(int countToRemove)
        {
            return Addu(Register.sp, Register.sp, 4 * countToRemove);
        }

        #endregion


        #region Working with procedures

        // todo -> ver esta funcion bien, y llamarla desde otras
        //los indices empiezan en 1
        public static string LoadParam(string regDest, int index)
        {
            if (index <= 0)
                throw new ArgumentException();
            index *= 4;
            return LoadWord(regDest, $"{index.ToString()}({Register.sp})", false);
        }

        public static string DeclareEntryPointDirective(string procName)
        {
            return $".ent {procName} \n";
        }

        public static string DeclareGlobalDirective(string procName)
        {
            return $".globl {procName} \n";
        }

        public static string DeclareEndDirective(string procName)
        {
            return $".end {procName} \n";
        }

        public static string DeclareEndProgram()
        {
            return LoadInteger(Register.v0, (int)SystemServices.Terminate) + SystemCall();
        }



        #endregion


        #region Utils

        public static string AllocateMemory(int countBytes, string registerInfo = "$v0")
        {
            string code = LoadInteger(Register.a0, countBytes) +
                          LoadInteger(Register.v0, (int)SystemServices.AllocateMemory) +
                          SystemCall();
            return registerInfo == Register.v0
                        ? code
                        : code + Move(registerInfo, Register.v0);
        }

        public static string AllocateMemory(string regWithCountBytes, string registerInfo = "$v0")
        {
            string code = Move(Register.a0, regWithCountBytes) +
                          LoadInteger(Register.v0, (int)SystemServices.AllocateMemory) +
                          SystemCall();
            return registerInfo == Register.v0
                ? code
                : code + Move(registerInfo, Register.v0);
        }

        public static string SaveRegisters(string[] regs, bool isPush = true)
        {
            string code = "";
            if (isPush)
                for (int i = 0; i < regs.Length; i++)
                    code += Push(regs[i]);
            else
                for (int i = regs.Length - 1; i >= 0; i--)
                    code += Pop(regs[i]);

            return code;
        }

        #endregion
    }
}