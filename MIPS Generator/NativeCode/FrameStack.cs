using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using Class_Intermediate_Language.AST.Functions;
using MIPS_Generator.NativeCode;
using static MIPS_Generator.NativeCode.NativeInstruction;


namespace MIPS_Generator.NativeCode
{
    public class FrameStack
    {
        private List<CIL_LocalVariable> localVariable;
        private List<CIL_Argument> argments;
        private bool[] initializeVariable;

        public FrameStack(IEnumerable<CIL_LocalVariable> Cil_LocalVariable, IEnumerable<CIL_Argument> argments)
        {
            localVariable = Cil_LocalVariable.ToList();
            initializeVariable = new bool[localVariable.Count];
            argments = new List<CIL_Argument>(argments);
        }


        // Salva el marco de pila y la pila del método invocador, y define las variables locales 
        public List<string> InitialUse()
        {
            List<string> instructions = new List<string>
                                            {
                                                "\t\t#______  InitialUse_fp\n",

                                                // almaceno el marco del metodo anterior
                                                StoreWord(Register.fp, $"-4({Register.sp})"),
                                                
                                                // guardo $sp antes de poner cosas en la pila
                                                LoadAddress(Register.t1, Register.sp, true), // modificado
                                                //LoadWord(Register.t1, Register.sp, true), // modificado
                                                StoreWord(Register.t1, $"-8({Register.sp})"),

                                                // marco para este metodo	
                                                Move(Register.fp, Register.sp), 

                                                // actualizo $sp, corriendo to_do lo tomado por el marco d este metodo
                                                Sub(Register.sp, Register.sp, 8),

                                                // almaceno -1 para cada variable, sinónimo q no he reservado espacio aun para ninguna de ellas, para luego ponerlo en el marco de pila
                                                LoadInteger(Register.t1, -1)
                                            };

            foreach (var _ in localVariable)
                instructions.Add(Push(Register.t1));

            return instructions;
        }


        // Restaura los registros $fp y $sp con los valores iniciales, antes de entrar al método
        public List<string> EndUse()
        {
            return new List<string>
            {
                "\t\t#______  EndUse_fp\n",

                // pongo $sp en donde estaba al comenzar el metodo, al hacer esto me ahorro hacer : add $sp, $sp, #?#
                LoadWord(Register.sp, $"-8({Register.fp})"),

                //pongo en $fp, el marco del metodo q llamo a este
                LoadWord(Register.fp, $"-4({Register.fp})")
            };
        }


        // Determina si una variable ya ha sido inicializada (si referencia en la pila es != -1)
        public bool IsInitilizeVariable(string variable)
        {
            return initializeVariable[localVariable.FindIndex(x => x.Variable.Name == variable)];
        }


        // Cambia el estado, a inicializado, de una variable local 
        public void ModifyIniciaization(string variable)
        {
            initializeVariable[localVariable.FindIndex(x => x.Variable.Name == variable)] = true;
        }


        // Computa la posición relativa al marco de pila, donde se encuentra la variable
        public int RelativePositionForLocal(string variable)
        {
            // + 2(info $fp y $sp) + 1(situarse en la posición correcta)
            int i = 0;
            for (; i < localVariable.Count; i++)
                if (localVariable[i].Variable.Name == variable)
                    break;
            return (i + 3) * -4;
        }


        // Computa la posición relativa al marco de pila, donde se encuentran los 
        public int RelativePositionForArgumentInv(string variable)
        {
            int i = 0;
            for (; i < localVariable.Count; i++)
                if (localVariable[i].Variable.Name == variable)
                    break;
            return (i + 1) * 4;
        }


        // Devuelve la localización de una variable en el marco de pila
        public string GetLocation(string variable, bool isLocalVar = true)
        {
            int offset = isLocalVar
                                ? RelativePositionForLocal(variable)
                                : RelativePositionForArgumentInv(variable);
            return $"{offset}({Register.fp})";
        }

        // Modifica el valor de una variable
        public List<string> ModifyValueIntInVariable(string variable, string registerWithValue, string auxRegister, int type, int size)
        {
            if (IsInitilizeVariable(variable))
                return new List<string>
                {
                    LoadWord(auxRegister, GetLocation(variable)), // cargo la dirección de memoria
                    Add(auxRegister, auxRegister, 8), // colocarme en el campo del valor
                    StoreWord(registerWithValue, auxRegister, true) // modifico el valor, en la direccion cargada
                };

            ModifyIniciaization(variable);
            return new List<string>
            {
                AllocateMemory(size, Register.v0), // reservo espacio
                StoreWord(Register.v0, GetLocation(variable)), // coloco en la variable, la direccion en memoria de donde está el valor

                LoadInteger(auxRegister, type),
                StoreWord(auxRegister, Register.v0, true), //coloco en el primer espacio, el tipo de dato

                Add(Register.v0, Register.v0, 4),
                LoadInteger(auxRegister, size),
                StoreWord(auxRegister, Register.v0, true), //coloco en el segundo espacio, el tamaño

                Add(Register.v0, Register.v0, 4),
                StoreWord(registerWithValue, Register.v0, true), //coloco en el tercer espacio reservado, el valor que quiero
            };
        }
    }
}