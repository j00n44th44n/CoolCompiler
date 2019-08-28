using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization.Formatters;
using Class_Intermediate_Language.AST;
using Class_Intermediate_Language.AST.Exceptions;
using Class_Intermediate_Language.AST.Functions;
using Class_Intermediate_Language.AST.Instructions;
using Class_Intermediate_Language.AST.Instructions.Arithmetic;
using Class_Intermediate_Language.AST.Instructions.Assign;
using Class_Intermediate_Language.AST.Instructions.Attributes;
using Class_Intermediate_Language.AST.Instructions.Comparer;
using Class_Intermediate_Language.AST.Instructions.IO;
using Class_Intermediate_Language.AST.Instructions.Logical;
using Class_Intermediate_Language.AST.Instructions.Memory;
using Class_Intermediate_Language.AST.Instructions.Param;
using Class_Intermediate_Language.AST.Instructions.String;
using Class_Intermediate_Language.AST.Instructions.Unary;
using Class_Intermediate_Language.AST.Program;
using Class_Intermediate_Language.AST.Type;
using Class_Intermediate_Language.Utils;
using static MIPS_Generator.NativeCode.NativeInstruction;
using MIPS_Generator.NativeCode;


namespace MIPS_Generator
{
    public class MIPS_GeneratorVisitor :
        IMIPS_GeneratorVisitor<CIL_Program>,
        IMIPS_GeneratorVisitor<CIL_Function>,
        IMIPS_GeneratorVisitor<CIL_Instruction>,
        IMIPS_GeneratorVisitor<CIL_Argument>,
        IMIPS_GeneratorVisitor<CIL_Return>,
        IMIPS_GeneratorVisitor<CilDiv>,
        IMIPS_GeneratorVisitor<CilMinus>,
        IMIPS_GeneratorVisitor<CilMult>,
        IMIPS_GeneratorVisitor<CilPlus>,
        IMIPS_GeneratorVisitor<Assign>,
        IMIPS_GeneratorVisitor<GetAttr>,
        IMIPS_GeneratorVisitor<SetAttr>,
        IMIPS_GeneratorVisitor<Call>,
        IMIPS_GeneratorVisitor<CilEqualReference>,
        IMIPS_GeneratorVisitor<CilEqualValue>,
        IMIPS_GeneratorVisitor<CilMajor>,
        IMIPS_GeneratorVisitor<CilMajorEqual>,
        IMIPS_GeneratorVisitor<CilMinor>,
        IMIPS_GeneratorVisitor<CilMinorEqual>,
        IMIPS_GeneratorVisitor<ConditionalJump>,
        IMIPS_GeneratorVisitor<Goto>,
        IMIPS_GeneratorVisitor<Label>,
        IMIPS_GeneratorVisitor<And>,
        IMIPS_GeneratorVisitor<Or>,
        IMIPS_GeneratorVisitor<Allocate>,
        IMIPS_GeneratorVisitor<GetIndex>,
        IMIPS_GeneratorVisitor<TypeOf>,
        IMIPS_GeneratorVisitor<Param>,
        IMIPS_GeneratorVisitor<Concat>,
        IMIPS_GeneratorVisitor<Length>,
        IMIPS_GeneratorVisitor<Load>,
        IMIPS_GeneratorVisitor<Substring>,
        IMIPS_GeneratorVisitor<CilNeg>,
        IMIPS_GeneratorVisitor<CilNot>,
        IMIPS_GeneratorVisitor<VCall>,
        IMIPS_GeneratorVisitor<CIL_Exception>,
        IMIPS_GeneratorVisitor<Print_Int>,
        IMIPS_GeneratorVisitor<Print_String>,
        IMIPS_GeneratorVisitor<Read_Int>,
        IMIPS_GeneratorVisitor<Read_String>

    {
        public readonly List<string> MipsInstructions;
        private int countArg;
        private FrameStack frameStack;
        private int countTag;


        public MIPS_GeneratorVisitor() => MipsInstructions = new List<string>();

        public void GenerateCode(CIL_Program node)
        {
            countTag = 0;

            #region .data

            MipsInstructions.Add(DefineSegmData());

            // defino las variables de excepcion, junto a sus mensajes
            foreach (var coolException in Constant.GetCoolExceptionType())
            {
                var data = Constant.Variables(coolException);
                MipsInstructions.Add(DefineData(data.NameVariable, data.Msg));
            }

            // defino el árbol de herencia 
            MipsInstructions.Add(DefineData(Constant.InheritanceTree, node.InheritanceTree.ToArray()));

            // defino la variable q almacenará lo leido desde consola
            MipsInstructions.Add(ReserveSpace(Constant.Prompt.Name, Constant.Prompt.BufferSize));

            // defino los string que son constantes en el programa
            foreach (var var in node.Data)
                MipsInstructions.Add(DefineData(var.Name, var.Value));

            #endregion

            #region .text

            MipsInstructions.Add(DefineSegmText());

            GenerateCodeForInitialProcedure(); // definino el procedimiento inicial q ejecutara el programa

            foreach (var func in node.Functions)
                GenerateCode(func);

            GenerateCodeforPrintExceptions(); // función q imprime el la excepción y culmina la ejecución del programa
            GenerateCodeforStringCopy(); // función q copia un string a una direcc en memoria q él mismo reserva, y retorna esta direcc
            GenerateCodeForConcatPlus(); // función auxiliar que utiliza Concat


            #endregion

        }

        public void GenerateCode(CIL_Function node)
        {
            frameStack = new FrameStack(node.LocalVariables, node.Arguments);
            countArg = node.Arguments.Count();

            // defino el nombre de la función
            MipsInstructions.Add(DefineLabel(node.Name));

            // preparo el marco de pila para esta función
            foreach (var code in frameStack.InitialUse())
                MipsInstructions.Add(code);

            // genero la carga de los argumentos
            foreach (var instruction in node.Arguments)
                GenerateCode(instruction);

            if (node.Name == "Main_main")
            {

            }

            // genero las instrucciones correspondientes
            foreach (var instruction in node.Instructions)
                GenerateCode(instruction);
        }

        public void GenerateCode(CIL_Instruction node)
        {
            switch (node)
            {
                case CIL_Exception cilException:
                    GenerateCode(cilException);
                    break;

                case CIL_Return cilReturn:
                    GenerateCode(cilReturn);
                    break;

                case CilDiv cilDiv:
                    GenerateCode(cilDiv);
                    break;

                case CilMinus cilMinus:
                    GenerateCode(cilMinus);
                    break;

                case CilMult cilMult:
                    GenerateCode(cilMult);
                    break;

                case CilPlus cilPlus:
                    GenerateCode(cilPlus);
                    break;

                case Assign assign:
                    GenerateCode(assign);
                    break;

                case GetAttr getAttr:
                    GenerateCode(getAttr);
                    break;

                case SetAttr setAttr:
                    GenerateCode(setAttr);
                    break;

                case Call call:
                    GenerateCode(call);
                    break;

                case CilEqualReference cilEqualReference:
                    GenerateCode(cilEqualReference);
                    break;

                case CilEqualValue cilEqualValue:
                    GenerateCode(cilEqualValue);
                    break;

                case CilMajor cilMajor:
                    GenerateCode(cilMajor);
                    break;

                case CilMajorEqual cilMajorEqual:
                    GenerateCode(cilMajorEqual);
                    break;

                case CilMinor cilMinor:
                    GenerateCode(cilMinor);
                    break;

                case CilMinorEqual cilMinorEqual:
                    GenerateCode(cilMinorEqual);
                    break;

                case ConditionalJump conditionalJump:
                    GenerateCode(conditionalJump);
                    break;

                case Goto @goto:
                    GenerateCode(@goto);
                    break;

                case Print_Int printInt:
                    GenerateCode(printInt);
                    break;

                case Print_String printString:
                    GenerateCode(printString);
                    break;

                case Read_Int readInt:
                    GenerateCode(readInt);
                    break;

                case Read_String readString:
                    GenerateCode(readString);
                    break;

                case Label label:
                    GenerateCode(label);
                    break;

                case And and:
                    GenerateCode(and);
                    break;

                case Or or:
                    GenerateCode(or);
                    break;

                case Allocate allocate:
                    GenerateCode(allocate);
                    break;

                case GetIndex getIndex:
                    GenerateCode(getIndex);
                    break;

                case TypeOf typeOf:
                    GenerateCode(typeOf);
                    break;

                case Param param:
                    GenerateCode(param);
                    break;

                case Concat concat:
                    GenerateCode(concat);
                    break;

                case Length length:
                    GenerateCode(length);
                    break;

                case Load load:
                    GenerateCode(load);
                    break;

                case Substring substring:
                    GenerateCode(substring);
                    break;

                case CilNeg cilNeg:
                    GenerateCode(cilNeg);
                    break;

                case CilNot cilNot:
                    GenerateCode(cilNot);
                    break;

                case VCall vCall:
                    GenerateCode(vCall);
                    break;
            }
        }

        public void GenerateCode(CIL_Argument node)
        {
            MipsInstructions.Add("\t\t#______  Cil_Argument\n");
            MipsInstructions.Add(LoadWord(Register.t1, frameStack.GetLocation(node.Variable.Name, false)));
            MipsInstructions.Add(StoreWord(Register.t1, frameStack.GetLocation(node.Variable.Name)));

            frameStack.ModifyIniciaization(node.Variable.Name);
        }

        public void GenerateCode(CIL_Return node)
        {
            MipsInstructions.Add("\t\t#______  CIL_Return\n");

            if (node.Variable != null)
                // coloco en el registro de retorno, el valor de la variable
                MipsInstructions.Add(LoadWord(Register.v1, frameStack.GetLocation(node.Variable.Name)));

            // retomo los valores del marco de pila del método invocador
            foreach (var code in frameStack.EndUse())
                MipsInstructions.Add(code);

            // mando a retornar al método invocador
            MipsInstructions.Add(JumpRegister(Register.ra));
        }

        public void GenerateCode(CilDiv node)
        {
            MipsInstructions.Add("\t\t#______  CilDiv\n");

            MipsInstructions.Add(LoadWord(Register.t1, frameStack.GetLocation(node.Y.Name))); // cargo direccion
            MipsInstructions.Add(Add(Register.t1, Register.t1, 8));
            MipsInstructions.Add(LoadWord(Register.t1, Register.t1, true)); // cargo valor

            MipsInstructions.Add(LoadWord(Register.t2, frameStack.GetLocation(node.Z.Name))); // cargo direccion
            MipsInstructions.Add(Add(Register.t2, Register.t2, 8));
            MipsInstructions.Add(LoadWord(Register.t2, Register.t2, true)); // cargo valor

            MipsInstructions.Add(Div(Register.t3, Register.t1, Register.t2));

            var type = CIL_Factory.Types.First(x => x.Name == "Int");
            foreach (var code in frameStack.ModifyValueIntInVariable(node.X.Name, Register.t3, Register.t4, type.Id, type.Size))
                MipsInstructions.Add(code);
        }

        public void GenerateCode(CilMinus node)
        {
            MipsInstructions.Add("\t\t#______  CilMinus\n");

            MipsInstructions.Add(LoadWord(Register.t1, frameStack.GetLocation(node.Y.Name))); // cargo direccion
            MipsInstructions.Add(Add(Register.t1, Register.t1, 8));
            MipsInstructions.Add(LoadWord(Register.t1, Register.t1, true)); // cargo valor

            MipsInstructions.Add(LoadWord(Register.t2, frameStack.GetLocation(node.Z.Name))); // cargo direccion
            MipsInstructions.Add(Add(Register.t2, Register.t2, 8));
            MipsInstructions.Add(LoadWord(Register.t2, Register.t2, true)); // cargo valor

            MipsInstructions.Add(Sub(Register.t3, Register.t1, Register.t2));

            var type = CIL_Factory.Types.First(x => x.Name == "Int");
            foreach (var code in frameStack.ModifyValueIntInVariable(node.X.Name, Register.t3, Register.t4, type.Id, type.Size))
                MipsInstructions.Add(code);
        }

        public void GenerateCode(CilMult node)
        {
            MipsInstructions.Add("\t\t#______  CilMult\n");

            MipsInstructions.Add(LoadWord(Register.t1, frameStack.GetLocation(node.Y.Name))); // cargo direccion
            MipsInstructions.Add(Add(Register.t1, Register.t1, 8));
            MipsInstructions.Add(LoadWord(Register.t1, Register.t1, true)); // cargo valor

            MipsInstructions.Add(LoadWord(Register.t2, frameStack.GetLocation(node.Z.Name))); // cargo direccion
            MipsInstructions.Add(Add(Register.t2, Register.t2, 8));
            MipsInstructions.Add(LoadWord(Register.t2, Register.t2, true)); // cargo valor

            MipsInstructions.Add(Mul(Register.t3, Register.t1, Register.t2));

            var type = CIL_Factory.Types.First(x => x.Name == "Int");
            foreach (var code in frameStack.ModifyValueIntInVariable(node.X.Name, Register.t3, Register.t4, type.Id, type.Size))
                MipsInstructions.Add(code);
        }

        public void GenerateCode(CilPlus node)
        {
            MipsInstructions.Add("\t\t#______  CilPlus\n");

            MipsInstructions.Add(LoadWord(Register.t1, frameStack.GetLocation(node.Y.Name))); // cargo direccion
            MipsInstructions.Add(Add(Register.t1, Register.t1, 8));
            MipsInstructions.Add(LoadWord(Register.t1, Register.t1, true)); // cargo valor

            MipsInstructions.Add(LoadWord(Register.t2, frameStack.GetLocation(node.Z.Name))); // cargo direccion
            MipsInstructions.Add(Add(Register.t2, Register.t2, 8));
            MipsInstructions.Add(LoadWord(Register.t2, Register.t2, true)); // cargo valor

            MipsInstructions.Add(Add(Register.t3, Register.t1, Register.t2));

            var type = CIL_Factory.Types.First(x => x.Name == "Int");
            foreach (var code in frameStack.ModifyValueIntInVariable(node.X.Name, Register.t3, Register.t4, type.Id, type.Size))
                MipsInstructions.Add(code);
        }

        public void GenerateCode(Assign node)
        {
            MipsInstructions.Add("\t\t#______  Assign\n");

            // cargo la dirección de la variable a modificar
            MipsInstructions.Add(LoadAddress(Register.t1, frameStack.GetLocation(node.Variable.Name)));

            if (node.Case == 0)
            {

                // cargo la dirección de la variable con el valor a copiar
                MipsInstructions.Add(LoadWord(Register.t2, frameStack.GetLocation(node.Holder.Name)));
                // modifico la referencia
                MipsInstructions.Add(StoreWord(Register.t2, Register.t1, true));
            }
            else
            {
                MipsInstructions.Add(node.Case == 1
                    ? LoadInteger(Register.t2, node.ValueInt) // cargo el número
                    : LoadInteger(Register.t2, node.ValueBool ? (int)BoolToInt.True : (int)BoolToInt.False)); // cargo el booleano

                // cambio el valor
                MipsInstructions.Add(StoreWord(Register.t2, Register.t1, true));
            }

            frameStack.ModifyIniciaization(node.Variable.Name); // marco a la variable como que fue usada
        }

        public void GenerateCode(GetAttr node)
        {
            MipsInstructions.Add("\t\t#______  GetAttr\n");

            MipsInstructions.Add(LoadInteger(Register.t1, node.NumberAttr));
            MipsInstructions.Add(Mul(Register.t1, Register.t1, 4)); // offset

            MipsInstructions.Add(LoadWord(Register.t2, frameStack.GetLocation(node.Instance.Name))); // cargo el objeto
            MipsInstructions.Add(Add(Register.t2, Register.t2, Register.t1)); // estoy en el atributo a consultar
            MipsInstructions.Add(LoadWord(Register.t2, Register.t2, true)); // copio el atributo (direcc del objeto)

            MipsInstructions.Add(StoreWord(Register.t2, frameStack.GetLocation(node.Variable.Name)));

            frameStack.ModifyIniciaization(node.Variable.Name);
        }

        public void GenerateCode(SetAttr node)
        {
            MipsInstructions.Add("\t\t#______  SetAttr\n");

            MipsInstructions.Add(LoadInteger(Register.t1, node.NumberAttr));
            MipsInstructions.Add(Mul(Register.t1, Register.t1, 4)); // offset

            MipsInstructions.Add(LoadWord(Register.t3, frameStack.GetLocation(node.Value.Name))); // cargo la información a cambiar

            MipsInstructions.Add(LoadWord(Register.t2, frameStack.GetLocation(node.Instance.Name))); // cargo el objeto
            MipsInstructions.Add(Add(Register.t2, Register.t2, Register.t1)); // estoy en la posición del atributo a modificar
            MipsInstructions.Add(StoreWord(Register.t3, Register.t2, true)); // modifico
        }

        public void GenerateCode(Call node)
        {
            MipsInstructions.Add("\t\t#______  Call\n");

            MipsInstructions.Add(JumpAndLink(node.Function)); // mando a ejecutar al método
            MipsInstructions.Add(StoreWord(Register.v1, frameStack.GetLocation(node.Variable.Name))); // guardo el valor de retorno
            MipsInstructions.Add(Pop(countArg)); // quito de la pila los argumentos puestos en ella

            frameStack.ModifyIniciaization(node.Variable.Name); // marco a la variable como que fue usada
        }

        public void GenerateCode(CilEqualReference node)
        {
            MipsInstructions.Add("\t\t#______  CilEqualReference\n");

            MipsInstructions.Add(LoadWord(Register.t1, frameStack.GetLocation(node.Y.Name)));
            MipsInstructions.Add(LoadWord(Register.t2, frameStack.GetLocation(node.ZHolder.Name)));

            MipsInstructions.Add(SetEqual(Register.t3, Register.t1, Register.t2));

            var type = CIL_Factory.Types.First(x => x.Name == "Bool");
            foreach (var code in frameStack.ModifyValueIntInVariable(node.X.Name, Register.t3, Register.t4, type.Id, type.Size))
                MipsInstructions.Add(code);
        }

        public void GenerateCode(CilEqualValue node)
        {
            MipsInstructions.Add("\t\t#______  CilEqualValue\n");

            if (node.Case == 0)
            {
                string notString = $"tag_{countTag++}";
                string @continue = $"tag_{countTag++}";
                string nameLoop = $"tag_{countTag++}";
                var idType = CIL_Factory.Types.First(x => x.Name == "String").Id;

                MipsInstructions.Add(LoadInteger(Register.t3, idType)); // cargo el id del string

                MipsInstructions.Add(LoadWord(Register.t1, frameStack.GetLocation(node.Y.Name))); // cargo la direcc del objeto
                MipsInstructions.Add(LoadWord(Register.t4, Register.t1, true)); // cargo el tipo
                MipsInstructions.Add(BranchOnNotEqual(Register.t4, Register.t3, notString)); // comparo si el obj es un string

                MipsInstructions.Add(LoadWord(Register.t2, frameStack.GetLocation(node.ZHolder.Name))); // cargo la direcc del objeto
                MipsInstructions.Add(LoadWord(Register.t4, Register.t2, true)); // cargo el tipo
                MipsInstructions.Add(BranchOnNotEqual(Register.t4, Register.t3, notString));

                MipsInstructions.Add(Push(Register.t1)); // pido el length del 1er string
                MipsInstructions.Add(JumpAndLink(Constant.StrLength));
                MipsInstructions.Add(Pop());

                MipsInstructions.Add(Add(Register.v1, Register.v1, 8));
                MipsInstructions.Add(LoadWord(Register.t6, Register.v1, true));

                MipsInstructions.Add(LoadWord(Register.t2, frameStack.GetLocation(node.ZHolder.Name))); // cargo la direcc del objeto
                MipsInstructions.Add(Push(Register.t2)); // pido el length del 2do string
                MipsInstructions.Add(JumpAndLink(Constant.StrLength));
                MipsInstructions.Add(Pop());

                MipsInstructions.Add(Add(Register.v1, Register.v1, 8));
                MipsInstructions.Add(LoadWord(Register.v1, Register.v1, true));

                MipsInstructions.Add(SetEqual(Register.t3, Register.t6, Register.v1)); // comparo si tienen el mismo length
                MipsInstructions.Add(LoadInteger(Register.t4, (int)BoolToInt.True)); // pongo true un registro
                MipsInstructions.Add(BranchOnNotEqual(Register.t3, Register.t4, @continue)); // salto si la comparación del length fue falsa

                // cargo la direcc de los string
                MipsInstructions.Add(LoadWord(Register.t1, frameStack.GetLocation(node.Y.Name))); // cargo la direcc del objeto
                MipsInstructions.Add(Add(Register.t1, Register.t1, 8)); // estoy en el valor
                MipsInstructions.Add(LoadWord(Register.t1, Register.t1, true)); // cargo el valor

                MipsInstructions.Add(LoadWord(Register.t2, frameStack.GetLocation(node.ZHolder.Name))); // cargo la direcc del objeto
                MipsInstructions.Add(Add(Register.t2, Register.t2, 8)); // estoy en el valor
                MipsInstructions.Add(LoadWord(Register.t2, Register.t2, true)); // cargo el valor

                MipsInstructions.Add(DefineLabel(nameLoop)); // defino el ciclo

                // verifico si ya comprobe toda la cadena, por los caracteres que quedan por verificar
                MipsInstructions.Add(BranchOnEqualZero(Register.v1, @continue));
                MipsInstructions.Add(Sub(Register.v1, Register.v1, 1));

                MipsInstructions.Add(LoadByte(Register.t5, Register.t1, true)); // cargo un caracter de la 1ra cadena
                MipsInstructions.Add(LoadByte(Register.t6, Register.t2, true)); // cargo un caracter de la 2da cadena

                MipsInstructions.Add(SetEqual(Register.t3, Register.t5, Register.t6)); // verifico que tengan el mismo caracter
                MipsInstructions.Add(BranchOnNotEqual(Register.t3, Register.t4, @continue)); // verifico si no tienen caracter distinto

                MipsInstructions.Add(Add(Register.t1, Register.t1, 1));
                MipsInstructions.Add(Add(Register.t2, Register.t2, 1));

                MipsInstructions.Add(Jump(nameLoop));

                MipsInstructions.Add(DefineLabel(notString));

                MipsInstructions.Add(LoadWord(Register.t1, frameStack.GetLocation(node.Y.Name))); // cargo la direcc del objeto
                MipsInstructions.Add(Add(Register.t1, Register.t1, 8)); // estoy en el valor
                MipsInstructions.Add(LoadWord(Register.t1, Register.t1, true)); // cargo el valor

                MipsInstructions.Add(LoadWord(Register.t2, frameStack.GetLocation(node.ZHolder.Name))); // cargo la direcc del objeto
                MipsInstructions.Add(Add(Register.t2, Register.t2, 8)); // estoy en el valor
                MipsInstructions.Add(LoadWord(Register.t2, Register.t2, true)); // cargo el valor

                MipsInstructions.Add(SetEqual(Register.t3, Register.t1, Register.t2));

                MipsInstructions.Add(DefineLabel(@continue));
            }
            else
            {
                MipsInstructions.Add(LoadInteger(Register.t1, node.ZInt)); // cargo el valor a comparar
                MipsInstructions.Add(LoadWord(Register.t2, frameStack.GetLocation(node.Y.Name))); // cargo el objeto de la variable

                MipsInstructions.Add(SetEqual(Register.t3, Register.t1, Register.t2));
            }

            // pongo en la variable, el resultado de comparar
            var type = CIL_Factory.Types.First(x => x.Name == "Bool");
            foreach (var code in frameStack.ModifyValueIntInVariable(node.X.Name, Register.t3, Register.t4, type.Id, type.Size))
                MipsInstructions.Add(code);

            frameStack.ModifyIniciaization(node.X.Name);
        }

        public void GenerateCode(CilMajor node)
        {
            MipsInstructions.Add("\t\t#______  CilMajor\n");

            MipsInstructions.Add(LoadWord(Register.t1, frameStack.GetLocation(node.Y.Name))); // cargo la dirección
            MipsInstructions.Add(Add(Register.t1, Register.t1, 8));
            MipsInstructions.Add(LoadWord(Register.t1, Register.t1, true)); //  cargo el valor

            MipsInstructions.Add(LoadWord(Register.t2, frameStack.GetLocation(node.Z.Name))); // cargo la dirección
            MipsInstructions.Add(Add(Register.t2, Register.t2, 8));
            MipsInstructions.Add(LoadWord(Register.t2, Register.t2, true)); //  cargo el valor

            MipsInstructions.Add(SetGreaterThen(Register.t3, Register.t1, Register.t2)); // comparo

            var type = CIL_Factory.Types.First(x => x.Name == "Bool");
            foreach (var code in frameStack.ModifyValueIntInVariable(node.X.Name, Register.t3, Register.t4, type.Id, type.Size))
                MipsInstructions.Add(code);
        }

        public void GenerateCode(CilMajorEqual node)
        {
            MipsInstructions.Add("\t\t#______  CilMajorEqual\n");

            MipsInstructions.Add(LoadWord(Register.t1, frameStack.GetLocation(node.Y.Name))); // cargo la dirección
            MipsInstructions.Add(Add(Register.t1, Register.t1, 8));
            MipsInstructions.Add(LoadWord(Register.t1, Register.t1, true)); //  cargo el valor

            MipsInstructions.Add(LoadWord(Register.t2, frameStack.GetLocation(node.Z.Name))); // cargo la dirección
            MipsInstructions.Add(Add(Register.t2, Register.t2, 8));
            MipsInstructions.Add(LoadWord(Register.t2, Register.t2, true)); //  cargo el valor

            MipsInstructions.Add(SetGreaterThenEqual(Register.t3, Register.t1, Register.t2)); // comparo

            var type = CIL_Factory.Types.First(x => x.Name == "Bool");
            foreach (var code in frameStack.ModifyValueIntInVariable(node.X.Name, Register.t3, Register.t4, type.Id, type.Size))
                MipsInstructions.Add(code);
        }

        public void GenerateCode(CilMinor node)
        {
            MipsInstructions.Add("\t\t#______  CilMinor\n");

            MipsInstructions.Add(LoadWord(Register.t1, frameStack.GetLocation(node.Y.Name))); // cargo la dirección
            MipsInstructions.Add(Add(Register.t1, Register.t1, 8));
            MipsInstructions.Add(LoadWord(Register.t1, Register.t1, true)); //  cargo el valor

            MipsInstructions.Add(LoadWord(Register.t2, frameStack.GetLocation(node.Z.Name))); // cargo la dirección
            MipsInstructions.Add(Add(Register.t2, Register.t2, 8));
            MipsInstructions.Add(LoadWord(Register.t2, Register.t2, true)); //  cargo el valor

            MipsInstructions.Add(SetLessThen(Register.t3, Register.t1, Register.t2)); // comparo

            var type = CIL_Factory.Types.First(x => x.Name == "Bool");
            foreach (var code in frameStack.ModifyValueIntInVariable(node.X.Name, Register.t3, Register.t4, type.Id, type.Size))
                MipsInstructions.Add(code);
        }

        public void GenerateCode(CilMinorEqual node)
        {
            MipsInstructions.Add("\t\t#______  CilMinorEqual\n");

            MipsInstructions.Add(LoadWord(Register.t1, frameStack.GetLocation(node.Y.Name))); // cargo la dirección
            MipsInstructions.Add(Add(Register.t1, Register.t1, 8));
            MipsInstructions.Add(LoadWord(Register.t1, Register.t1, true)); //  cargo el valor

            MipsInstructions.Add(LoadWord(Register.t2, frameStack.GetLocation(node.Z.Name))); // cargo la dirección
            MipsInstructions.Add(Add(Register.t2, Register.t2, 8));
            MipsInstructions.Add(LoadWord(Register.t2, Register.t2, true)); //  cargo el valor

            MipsInstructions.Add(SetLessThenEqual(Register.t3, Register.t1, Register.t2)); // comparo

            var type = CIL_Factory.Types.First(x => x.Name == "Bool");
            foreach (var code in frameStack.ModifyValueIntInVariable(node.X.Name, Register.t3, Register.t4, type.Id, type.Size))
                MipsInstructions.Add(code);
        }

        public void GenerateCode(ConditionalJump node)
        {
            MipsInstructions.Add("\t\t#______  ConditionalJump\n");

            MipsInstructions.Add(LoadInteger(Register.t1, node.Condition ? (int)BoolToInt.True : (int)BoolToInt.False)); //cargo la condicion
            MipsInstructions.Add(LoadWord(Register.t2, frameStack.GetLocation(node.Variable.Name))); // cargo el objeto
            MipsInstructions.Add(Add(Register.t2, Register.t2, 8));
            MipsInstructions.Add(LoadWord(Register.t2, Register.t2, true)); // cargo el valor

            MipsInstructions.Add(BranchOnEqual(Register.t1, Register.t2, node.Label));
        }

        public void GenerateCode(Goto node)
        {
            MipsInstructions.Add("\t\t#______  Goto\n");

            MipsInstructions.Add(Jump(node.Label));
        }

        public void GenerateCode(Label node)
        {
            MipsInstructions.Add("\t\t#______  Label\n");

            MipsInstructions.Add(DefineLabel(node.Tag));
        }

        public void GenerateCode(And node)
        {
            MipsInstructions.Add("\t\t#______  And\n");

            MipsInstructions.Add(LoadWord(Register.t1, frameStack.GetLocation(node.Y.Name))); // cargo direccion
            MipsInstructions.Add(Add(Register.t1, Register.t1, 8));
            MipsInstructions.Add(LoadWord(Register.t1, Register.t1, true)); // cargo valor

            MipsInstructions.Add(LoadWord(Register.t2, frameStack.GetLocation(node.Z.Name))); // cargo direccion
            MipsInstructions.Add(Add(Register.t2, Register.t2, 8));
            MipsInstructions.Add(LoadWord(Register.t2, Register.t2, true)); // cargo valor

            MipsInstructions.Add(And(Register.t3, Register.t1, Register.t2));

            var type = CIL_Factory.Types.First(x => x.Name == "Bool");
            foreach (var code in frameStack.ModifyValueIntInVariable(node.X.Name, Register.t3, Register.t4, type.Id, type.Size))
                MipsInstructions.Add(code);
        }

        public void GenerateCode(Or node)
        {
            MipsInstructions.Add("\t\t#______  Or\n");

            MipsInstructions.Add(LoadWord(Register.t1, frameStack.GetLocation(node.Y.Name))); // cargo direccion
            MipsInstructions.Add(Add(Register.t1, Register.t1, 8));
            MipsInstructions.Add(LoadWord(Register.t1, Register.t1, true)); // cargo valor

            MipsInstructions.Add(LoadWord(Register.t2, frameStack.GetLocation(node.Z.Name))); // cargo direccion
            MipsInstructions.Add(Add(Register.t2, Register.t2, 8));
            MipsInstructions.Add(LoadWord(Register.t2, Register.t2, true)); // cargo valor

            MipsInstructions.Add(Or(Register.t3, Register.t1, Register.t2));

            var type = CIL_Factory.Types.First(x => x.Name == "Bool");
            foreach (var code in frameStack.ModifyValueIntInVariable(node.X.Name, Register.t3, Register.t4, type.Id, type.Size))
                MipsInstructions.Add(code);
        }

        public void GenerateCode(Allocate node)
        {
            MipsInstructions.Add("\t\t#______  Allocate\n");

            MipsInstructions.Add(AllocateMemory(node.Size, Register.v0)); // reservo espacio
            MipsInstructions.Add(StoreWord(Register.v0, frameStack.GetLocation(node.X.Name))); // almaceno en la variable, la direcc

            MipsInstructions.Add(LoadInteger(Register.t1, node.Type)); // cargo el tipo
            MipsInstructions.Add(StoreWord(Register.t1, Register.v0, true));

            MipsInstructions.Add(LoadInteger(Register.t1, node.Size)); // cargo el tamaño del tipo
            MipsInstructions.Add(Add(Register.v0, Register.v0, 4));
            MipsInstructions.Add(StoreWord(Register.t1, Register.v0, true));

            frameStack.ModifyIniciaization(node.X.Name);
        }

        public void GenerateCode(GetIndex node)
        {
            MipsInstructions.Add("\t\t#______  GetIndex\n");

            MipsInstructions.Add(LoadWord(Register.t1, frameStack.GetLocation(node.Index.Name))); // tengo el valor/posición dentro del array
            MipsInstructions.Add(Mul(Register.t1, Register.t1, 4)); // offset

            MipsInstructions.Add(LoadAddress(Register.t2, node.Array)); // cargo el array (la direcc de este)
            MipsInstructions.Add(Add(Register.t2, Register.t2, Register.t1)); // estoy en la posición q quiero consultar
            MipsInstructions.Add(LoadWord(Register.t1, Register.t2, true)); // cargo el valor

            MipsInstructions.Add(StoreWord(Register.t1, frameStack.GetLocation(node.X.Name))); // pongo en la varieble el tipo/valor deseado
        }

        public void GenerateCode(TypeOf node)
        {
            string jump = $"tag_{countTag++}";

            MipsInstructions.Add("\t\t#______  TypeOf\n");

            MipsInstructions.Add(LoadWord(Register.t1, frameStack.GetLocation(node.Source.Name))); // cargo el objeto

            MipsInstructions.Add(LoadInteger(Register.t4, -1));
            MipsInstructions.Add(BranchOnEqual(Register.t1, Register.t4, jump));
            MipsInstructions.Add(LoadWord(Register.t1, Register.t1, true));

            MipsInstructions.Add(DefineLabel(jump));
            MipsInstructions.Add(StoreWord(Register.t1, frameStack.GetLocation(node.Dest.Name))); // copio el tipo en la variable
        }

        public void GenerateCode(Param node)
        {
            MipsInstructions.Add("\t\t#______  Param\n");

            if (node.Case == 0)
            {
                MipsInstructions.Add(LoadWord(Register.t1, frameStack.GetLocation(node.YVariable.Name)));
                MipsInstructions.Add(Push(Register.t1));
            }
            else
            {
                MipsInstructions.Add(AllocateMemory(4, Register.v0)); // reservo espacio
                MipsInstructions.Add(Move(Register.t7, Register.v0)); // copio la direcc reservada en memoria 

                CIL_Type type;
                type = CIL_Factory.Types.First(x => x.Name == (node.Case == 1 ? "Int" : "Bool"));

                MipsInstructions.Add(LoadInteger(Register.t1, type.Id)); // cargo el id del tipo
                MipsInstructions.Add(StoreWord(Register.t1, Register.t7, true)); // copio el id del tipo

                MipsInstructions.Add(Add(Register.t7, Register.t7, 4));
                MipsInstructions.Add(LoadInteger(Register.t1, type.Size)); // cargo el tamaño del tipo
                MipsInstructions.Add(StoreWord(Register.t1, Register.t7, true)); // copio el tamaño del tipo

                MipsInstructions.Add(Add(Register.t7, Register.t7, 4));
                MipsInstructions.Add(LoadInteger(Register.t1, node.YInt));
                MipsInstructions.Add(StoreWord(Register.t1, Register.t7, true)); // copio el valor

                MipsInstructions.Add(Push(Register.v0)); // pongo en la pila la direcc reservada, almacenada aun en $v0
            }

        }

        public void GenerateCode(Concat node)
        {
            MipsInstructions.Add("\t\t#______  Concat\n");

            string auxReg1 = Register.t1;
            string auxReg2 = Register.t2;
            string auxReg3 = Register.t3;
            string auxReg4 = Register.t4;

            void SearchLength()
            {
                MipsInstructions.Add(AllocateMemory(12));
                MipsInstructions.Add(Push(Register.v0));
                MipsInstructions.Add(Add(Register.v0, Register.v0, 8));
                MipsInstructions.Add(StoreWord(auxReg1, Register.v0, true));

                //MipsInstructions.Add(Push(auxReg1));
                MipsInstructions.Add(JumpAndLink(Constant.StrLength));
                MipsInstructions.Add(Pop());

                MipsInstructions.Add(Add(Register.v1, Register.v1, 8));
                MipsInstructions.Add(LoadWord(Register.v1, Register.v1, true));
            }

            MipsInstructions.Add(LoadWord(auxReg1, frameStack.GetLocation(node.X.Name)));

            SearchLength();

            MipsInstructions.Add(Move(auxReg4, Register.v1));
            MipsInstructions.Add(LoadWord(auxReg1, frameStack.GetLocation(node.Y.Name)));

            SearchLength();

            MipsInstructions.Add(Add(auxReg4, auxReg4, Register.v1));
            MipsInstructions.Add(Add(auxReg4, auxReg4, 1));
            MipsInstructions.Add(LoadInteger(Register.v0, (int)SystemServices.AllocateMemory));
            MipsInstructions.Add(Move(Register.a0, auxReg4));
            MipsInstructions.Add(SystemCall());
            MipsInstructions.Add(Move(auxReg4, Register.v0));
            MipsInstructions.Add(LoadWord(auxReg1, frameStack.GetLocation(node.X.Name)));
            MipsInstructions.Add(LoadWord(auxReg2, frameStack.GetLocation(node.Y.Name)));
            MipsInstructions.Add(Push(new[] { auxReg4, auxReg1, auxReg2 }));
            MipsInstructions.Add(JumpAndLink(Constant.StrConcatPlus));
            MipsInstructions.Add(Pop(Register.v1));
            MipsInstructions.Add(Pop(2));

            MipsInstructions.Add(StoreWord(Register.v1, frameStack.GetLocation(node.Z.Name)));
        }

        public void GenerateCode(Length node)
        {
            MipsInstructions.Add("\t\t#______  Length\n");

            string nameLoop = "loop" + Constant.StrLength;
            string loopEnd = "loopEnd" + Constant.StrLength;

            MipsInstructions.Add(LoadInteger(Register.v1, 0));
            MipsInstructions.Add(LoadWord(Register.t1, frameStack.GetLocation(node.Holder.Name)));
            MipsInstructions.Add(DefineLabel(nameLoop));
            MipsInstructions.Add(LoadByte(Register.t2, $"0({Register.t1})"));
            MipsInstructions.Add(BranchOnEqualZero(Register.t2, loopEnd));
            MipsInstructions.Add(Add(Register.t1, Register.t1, 1));
            MipsInstructions.Add(Add(Register.v1, Register.v1, 1));
            MipsInstructions.Add(Jump(nameLoop));
            MipsInstructions.Add(DefineLabel(loopEnd));

            MipsInstructions.Add(StoreWord(Register.v1, frameStack.GetLocation(node.Variable.Name)));
        }

        public void GenerateCode(Load node)
        {
            MipsInstructions.Add("\t\t#______  Load\n");

            // copio la direcc del ojeto a calcular su longitud
            MipsInstructions.Add(LoadAddress(Register.t1, node.Data.Name));

            // meto en la pila
            MipsInstructions.Add(Push(Register.t1));

            // mando a copiar el string y me devuelve en $v1 la direcc en memoria de donde esta la copia
            MipsInstructions.Add(JumpAndLink(Constant.StrCopy));
            MipsInstructions.Add(Pop());

            // pongo en la variable la direcc en memoria de donde esta la copia
            MipsInstructions.Add(StoreWord(Register.v1, frameStack.GetLocation(node.Variable.Name)));
        }

        public void GenerateCode(Substring node)
        {
            MipsInstructions.Add("\t\t#______  Substring\n");

            string auxReg1 = Register.t1;
            string auxReg2 = Register.t2;
            string auxReg3 = Register.t3;
            string auxReg4 = Register.t4;
            string auxReg5 = Register.t5;
            string auxReg6 = Register.t6;

            string nameLoop = "loop" + Constant.StrSubstr;
            string nameEndLoop = "endLoop" + Constant.StrSubstr;


            MipsInstructions.Add(LoadWord(auxReg1, frameStack.GetLocation(node.Str.Name)));

            MipsInstructions.Add(AllocateMemory(12));
            MipsInstructions.Add(Push(Register.v0));
            MipsInstructions.Add(Add(Register.v0, Register.v0, 8));
            MipsInstructions.Add(StoreWord(auxReg1, Register.v0, true));


            MipsInstructions.Add(JumpAndLink(Constant.StrLength));
            MipsInstructions.Add(Pop());
            MipsInstructions.Add(Move(auxReg5, auxReg1));
            MipsInstructions.Add(LoadWord(auxReg2, frameStack.GetLocation(node.IndexValue.Name)));
            MipsInstructions.Add(LoadWord(auxReg3, frameStack.GetLocation(node.CountValue.Name)));
            MipsInstructions.Add(BranchOnLessThenZero(auxReg3, Constant.Variables(CoolExceptionType.NegativeLengthException).NameProcedure));
            MipsInstructions.Add(Move(auxReg6, auxReg3));
            MipsInstructions.Add(Add(auxReg6, auxReg6, 1));
            MipsInstructions.Add(LoadInteger(Register.v0, (int)SystemServices.AllocateMemory));
            MipsInstructions.Add(Move(Register.a0, auxReg6));
            MipsInstructions.Add(SystemCall());
            MipsInstructions.Add(Move(auxReg4, Register.v0));
            MipsInstructions.Add(Move(Register.v1, Register.v0));
            MipsInstructions.Add(BranchOnGreaterOrEqual(auxReg2, auxReg5, Constant.Variables(CoolExceptionType.ArgumentOutOfRangeException).NameProcedure));
            MipsInstructions.Add(BranchOnLessThenZero(auxReg2, Constant.Variables(CoolExceptionType.ArgumentOutOfRangeException).NameProcedure));
            MipsInstructions.Add(Sub(auxReg1, auxReg5, auxReg3));
            MipsInstructions.Add(BranchOnLess(auxReg1, auxReg2, Constant.Variables(CoolExceptionType.ArgumentOutOfRangeException).NameProcedure));
            MipsInstructions.Add(LoadWord(auxReg1, frameStack.GetLocation(node.Str.Name)));
            MipsInstructions.Add(Add(auxReg1, auxReg1, auxReg2));
            MipsInstructions.Add(DefineLabel(nameLoop));
            MipsInstructions.Add(BranchOnEqualZero(auxReg3, nameEndLoop));
            MipsInstructions.Add(Sub(auxReg3, auxReg3, 1));
            MipsInstructions.Add(LoadByte(auxReg2, $"0({auxReg1})"));
            MipsInstructions.Add(StoreByte(auxReg2, $"0({auxReg4})"));
            MipsInstructions.Add(Add(auxReg1, auxReg1, 1));
            MipsInstructions.Add(Add(auxReg4, auxReg4, 1));
            MipsInstructions.Add(Jump(nameLoop));
            MipsInstructions.Add(DefineLabel(nameEndLoop));
            MipsInstructions.Add(StoreByte(auxReg3, $"0({auxReg4})"));
            MipsInstructions.Add(StoreWord(Register.v1, frameStack.GetLocation(node.SubStr.Name)));
        }

        public void GenerateCode(CilNeg node)
        {
            MipsInstructions.Add("\t\t#______  CilNeg\n");

            MipsInstructions.Add(LoadWord(Register.t1, frameStack.GetLocation(node.Y.Name))); // cargo direccion
            MipsInstructions.Add(Add(Register.t1, Register.t1, 8));
            MipsInstructions.Add(LoadWord(Register.t1, Register.t1, true)); // cargo valor

            MipsInstructions.Add(NumberComplement(Register.t3, Register.t1));

            var type = CIL_Factory.Types.First(x => x.Name == "Int");
            foreach (var code in frameStack.ModifyValueIntInVariable(node.X.Name, Register.t3, Register.t4, type.Id, type.Size))
                MipsInstructions.Add(code);
        }

        public void GenerateCode(CilNot node)
        {
            MipsInstructions.Add("\t\t#______  CilNot\n");

            MipsInstructions.Add(LoadWord(Register.t1, frameStack.GetLocation(node.Y.Name))); // cargo direccion
            MipsInstructions.Add(Add(Register.t1, Register.t1, 8));
            MipsInstructions.Add(LoadWord(Register.t1, Register.t1, true)); // cargo valor

            MipsInstructions.Add(NotLogic(Register.t3, Register.t1));

            var type = CIL_Factory.Types.First(x => x.Name == "Bool");
            foreach (var code in frameStack.ModifyValueIntInVariable(node.X.Name, Register.t3, Register.t4, type.Id, type.Size))
                MipsInstructions.Add(code);
        }

        public void GenerateCode(VCall node)
        {
            MipsInstructions.Add("\t\t#______  VCall\n");

            GenerateCode(new Call(node.Variable, node.Function));
        }

        public void GenerateCode(CIL_Exception node)
        {
            MipsInstructions.Add("\t\t#______  CIL_Exception\n");

            // cargo la variable q contiene el emnsaje de error
            MipsInstructions.Add(LoadAddress(Register.a0, Constant.Variables(node.Type).NameVariable));
            // mando a llamar al método q imprime el error y termina la ejecución de del programa
            MipsInstructions.Add(Jump(Constant.ErrorPrintProcedure));
        }

        public void GenerateCode(Print_Int node)
        {
            MipsInstructions.Add("\t\t#______  Print_Int\n");

            MipsInstructions.Add(LoadWord(Register.a0, frameStack.GetLocation(node.Variable.Name))); // cargo el objeto
            MipsInstructions.Add(Add(Register.a0, Register.a0, 8)); // me muevo para obtener el valor deseado
            MipsInstructions.Add(LoadWord(Register.a0, Register.a0, true)); // cargo el valor real
            MipsInstructions.Add(LoadInteger(Register.v0, (int)SystemServices.PrintInt));
            MipsInstructions.Add(SystemCall());
        }

        public void GenerateCode(Print_String node)
        {
            MipsInstructions.Add("\t\t#______  Print_String\n");

            MipsInstructions.Add(LoadWord(Register.a0, frameStack.GetLocation(node.Variable.Name))); // cargo el objeto
            MipsInstructions.Add(Add(Register.a0, Register.a0, 8)); // me muevo para obtener el valor deseado
            MipsInstructions.Add(LoadWord(Register.a0, Register.a0, true));
            MipsInstructions.Add(LoadInteger(Register.v0, (int)SystemServices.PrintString));
            MipsInstructions.Add(SystemCall());
        }

        public void GenerateCode(Read_Int node)
        {
            MipsInstructions.Add("\t\t#______  Read_Int\n");

            MipsInstructions.Add(LoadInteger(Register.v0, (int)SystemServices.ReadInt));
            MipsInstructions.Add(SystemCall());
            MipsInstructions.Add(StoreWord(Register.v0, frameStack.GetLocation(node.Variable.Name)));
        }

        public void GenerateCode(Read_String node)
        {
            MipsInstructions.Add("\t\t#______  Read_String\n");

            MipsInstructions.Add(LoadInteger(Register.v0, (int)SystemServices.ReadString)); // mandar a leer string
            MipsInstructions.Add(LoadAddress(Register.a0, Constant.Prompt.Name));
            MipsInstructions.Add(LoadInteger(Register.a1, Constant.Prompt.BufferSize));
            MipsInstructions.Add(SystemCall());

            MipsInstructions.Add(LoadAddress(Register.t1, Constant.Prompt.Name)); // copiar la direcc de lo leido desde consola
            MipsInstructions.Add(Push(Register.t1)); // lo pongo en la pila
            MipsInstructions.Add(JumpAndLink(Constant.StrCopy)); // ejecuto copiar el string
            MipsInstructions.Add(Pop());

            MipsInstructions.Add(StoreWord(Register.v1, frameStack.GetLocation(node.Variable.Name))); // copio la direcc de la copia, en la variable
        }



        private void GenerateCodeforStringCopy()
        {
            MipsInstructions.Add("\t\t#______  StrCopy\n");

            List<string> StrCopy()
            {
                var reg1 = Register.t1;
                var reg2 = Register.t2;
                var reg3 = Register.t3;
                var countReg = 0;

                var nameLoop = "loop" + Constant.StrCopy;
                var namEndLoop = "loopEnd" + Constant.StrCopy;

                return new List<string>
                {
                    DefineLabel(Constant.StrCopy),
                    //SaveRegisters(new []{reg1,reg2,reg3}),
                    LoadParam(Register.t8, countReg + 1),

                    AllocateMemory(12),
                    Move(Register.t7, Register.v0),
                    Add(Register.v0, Register.v0, 8),
                    StoreWord(Register.t8, Register.v0, true),
                    Push(Register.t7),

                    //Push(reg1),
                    JumpAndLink(Constant.StrLength),
                    Pop(),

                    Add(Register.v1,Register.v1,8),
                    LoadWord(Register.v1,Register.v1,true),

                    Add(Register.v1, Register.v1, 1),
                    AllocateMemory(Register.v1, Register.v1),
                    //Move(Register.v1, Register.v0),
                    Move(reg1, Register.t8),

                    DefineLabel(nameLoop),
                    LoadByte(reg3, reg1, true),
                    BranchOnEqualZero(reg3, namEndLoop),
                    StoreByte(reg3, Register.v0, true),
                    Add(reg1, reg1, 1),
                    Add(Register.v0, Register.v0, 1),
                    Jump(nameLoop),
                    DefineLabel(namEndLoop),
                    LoadInteger(reg3, 0),
                    StoreByte(reg3, Register.v0, true),
                    //SaveRegisters(new[] { reg1, reg2, reg3 }, false),
                    JumpRegister()
                };
            }


            foreach (var code in StrCopy())
                MipsInstructions.Add(code);
        }

        private void GenerateCodeforPrintExceptions()
        {
            MipsInstructions.Add("\t\t#______  ErrorPrint\n");

            MipsInstructions.Add(DefineLabel(Constant.ErrorPrintProcedure));
            MipsInstructions.Add(LoadInteger(Register.v0, (int)SystemServices.PrintString));
            MipsInstructions.Add(SystemCall());
            MipsInstructions.Add(DeclareEndProgram());
        }

        private void GenerateCodeForConcatPlus()
        {
            MipsInstructions.Add("\t\t#______  ConcatPlus\n");

            /*
             * la pila debe de estar de la siguiente forma 
             * +0   (propio de hacer jal)   $ra
             * +4   (1er parámetro)         dirección de memoria en donde irá el resultado de concatenar
             *                              el 2do string al 1ro
             * +8   (2do parámetro)         dirección de memoria de la variable q contiene al string
             *                              (variable = #, donde # es una dirrecion en memoria donde
             *                              está realmente el string)
             * +12  (3er parámetro)         dirección de memoria donde está el string a concatenar      
             */

            string auxReg1 = Register.t1;
            string auxReg2 = Register.t2;
            string auxReg3 = Register.t3;

            void CopyLoop(string regDest, string regSource, string auxReg, string nameLoop, string nameEndLoop)
            {
                MipsInstructions.Add(DefineLabel(nameLoop));
                MipsInstructions.Add(LoadByte(auxReg, $"0({regSource})"));
                MipsInstructions.Add(BranchOnEqualZero(auxReg, nameEndLoop));
                MipsInstructions.Add(StoreByte(auxReg, $"0({regDest})"));
                MipsInstructions.Add(Add(regSource, regSource, 1));
                MipsInstructions.Add(Add(regDest, regDest, 1));
                MipsInstructions.Add(Jump(nameLoop));
                MipsInstructions.Add(DefineLabel(nameEndLoop));
            }

            string loop1 = "loop1" + Constant.StrConcatPlus;
            string endLoop1 = "endLoop1" + Constant.StrConcatPlus;
            string loop2 = "loop2" + Constant.StrConcatPlus;
            string endLoop2 = "endLoop2" + Constant.StrConcatPlus;

            MipsInstructions.Add(DefineLabel(Constant.StrConcatPlus));
            MipsInstructions.Add(LoadParam(auxReg1, 1));
            MipsInstructions.Add(LoadParam(auxReg2, 2));
            CopyLoop(auxReg1, auxReg2, auxReg3, loop1, endLoop1);
            MipsInstructions.Add(LoadParam(auxReg2, 3));
            CopyLoop(auxReg1, auxReg2, auxReg3, loop2, endLoop2);
            MipsInstructions.Add(LoadInteger(auxReg3, 0));
            MipsInstructions.Add(StoreByte(auxReg3, auxReg1, true));
            MipsInstructions.Add(JumpRegister());
        }

        private void GenerateCodeForInitialProcedure()
        {
            MipsInstructions.Add("\t\t#______  InitialProcedure\n");

            MipsInstructions.Add(DefineLabel("main"));
            MipsInstructions.Add(JumpAndLink(Constant.Main_Init));
            MipsInstructions.Add(DeclareEndProgram());
        }
    }
}