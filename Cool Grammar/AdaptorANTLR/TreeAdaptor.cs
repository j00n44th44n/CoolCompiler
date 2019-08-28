using Antlr.Runtime;
using Antlr.Runtime.Tree;
using CoolGrammar.AST;
using CoolGrammar.AST.Expression.BinaryOperation.Arithmetic;
using CoolGrammar.AST.Expression.BinaryOperation.Comparison;
using CoolGrammar.AST.Expression.BinaryOperation.Logic;
using CoolGrammar.AST.Expression.Constant;
using CoolGrammar.AST.Expression.Identifier;
using CoolGrammar.AST.Expression.Instruction;
using CoolGrammar.AST.Expression.Instruction.FlowControl;
using CoolGrammar.AST.Expression.Instruction.Invoke;
using CoolGrammar.AST.Expression.Instruction.UnaryOperation;
using CoolGrammar.AST.Feature;
using CoolGrammar.AST.Util;

namespace CoolGrammar.AdaptorANTLR
{
    public class TreeAdaptor : CommonTreeAdaptor
    {
        public override object Create(IToken payload)
            => payload is null ? base.Create(null) : OtherNode(payload);

        private object OtherNode(IToken payload)
        {
            switch (payload.Type)
            {
                #region AST
                case CoolGrammarParser.Program:
                    return new ProgramNode(payload);

                case CoolGrammarParser.CLASS:
                    return new ClassNode(payload);

                default:
                    return new UnknownNode(payload);

                #region Util
                case CoolGrammarParser.FeatureList:
                    return new FeatureListNode(payload);

                case CoolGrammarParser.FunctionArgsList:
                    return new ArgumentsListNode(payload);

                case CoolGrammarParser.Params:
                    return new ParametersListNode(payload);

                case CoolGrammarParser.LetExprs:
                    return new LetExpresNode(payload);

                case CoolGrammarParser.COLON:
                    return new ArgumentNode(payload);

                #endregion

                #region Feature
                case CoolGrammarParser.FuncDef:
                    return new MethodNode(payload);

                case CoolGrammarParser.LocalOrFieldInit:
                    return new LocalOrFieldInit(payload);
                #endregion

                #region Expression

                #region Binary Operation

                #region Arithmetic
                case CoolGrammarParser.PLUS:
                    return new AdditionNode(payload);

                case CoolGrammarParser.MINUS:
                    return new SubstractionNode(payload);

                case CoolGrammarParser.DIV:
                    return new DivisionNode(payload);

                case CoolGrammarParser.MULT:
                    return new MultiplicationNode(payload);
                #endregion

                #region Comparison
                case CoolGrammarParser.EQUAL:
                    return new EqualNode(payload);

                case CoolGrammarParser.GT:
                    return new MajorNode(payload);

                case CoolGrammarParser.GE:
                    return new MajorEqualNode(payload);

                case CoolGrammarParser.LT:
                    return new MinorNode(payload);

                case CoolGrammarParser.LE:
                    return new MinorEqualNode(payload);
                #endregion

                #region Logic
                case CoolGrammarParser.AND:
                    return new AndNode(payload);

                case CoolGrammarParser.OR:
                    return new OrNode(payload);
                #endregion

                #endregion

                #region Constant

                case CoolGrammarParser.TRUE:
                    return new BoolNode(payload);

                case CoolGrammarParser.FALSE:
                    return new BoolNode(payload);

                case CoolGrammarParser.INTEGER:
                    return new IntegerNode(payload);

                case CoolGrammarParser.STRING:
                    return new StringNode(payload);

                #endregion

                #region Identifier

                case CoolGrammarParser.OBJ_ID:
                    return new ObjIdNode(payload);

                case CoolGrammarParser.SELF:
                    return new SelfNode(payload);

                #endregion

                #region Instruction

                case CoolGrammarParser.ASSIGN:
                    return new AssignNode(payload);

                case CoolGrammarParser.Block:
                    return new BlockNode(payload);

                case CoolGrammarParser.LET:
                    return new LetNode(payload);

                case CoolGrammarParser.NEW:
                    return new NewTypeNode(payload);

                case CoolGrammarParser.ISVOID:
                    return new IsVoidNode(payload);

                #region Invoke
                case CoolGrammarParser.DotObjectInvoke:
                    return new DotObjectInvoke(payload);

                case CoolGrammarParser.DotTypeInvoke:
                    return new DotTypeInvoke(payload);

                case CoolGrammarParser.ImplicitInvoke:
                    return new InvokeNode(payload);
                #endregion

                #region Flow Control
                case CoolGrammarParser.CASE:
                    return new CaseNode(payload);

                case CoolGrammarParser.CaseExpr:
                    return new CaseOptionNode(payload);

                case CoolGrammarParser.IF:
                    return new IfNode(payload);

                case CoolGrammarParser.WHILE:
                    return new WhileNode(payload);

                case CoolGrammarParser.DoWhile:
                    return new DoWhileNode(payload);

                #endregion

                #region Unary Operation
                case CoolGrammarParser.NOT:
                    return new NotNode(payload);

                case CoolGrammarParser.NEG:
                    return new NegNode(payload);
                    #endregion

                    #endregion

                    #endregion

                    #endregion
            }
        }
    }
}