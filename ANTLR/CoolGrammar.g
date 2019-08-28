grammar CoolGrammar;

options	{
	language = CSharp3;
	 output=AST;
	// backtrack=true;
	}

 	
tokens	{
	Program;
	Class;
	FeatureList;
	FuncDef;	
	FunctionArgsList;
	DotObjectInvoke;
	DotTypeInvoke;
	ImplicitInvoke;
	Block;
	Params;
	ExprList;
	LetExprs;
	LocalOrFieldInit;
	CaseExpr;
	IdValue;
	DoWhile;
	}

@lexer::namespace {CoolGrammar} 
@parser::namespace {CoolGrammar} 
@lexer::header{
	 using System.Text;
	 using CoolGrammar.Grammar;
	}
@parser::header{
	 using System.Text;
	 using CoolGrammar.Grammar;
	}


@lexer::members
{
	public override void ReportError(RecognitionException e)
    	{
    		base.ReportError(e);
        		var stringerror =  GetErrorMessage(e, TokenNames);
		Logger.LogError(e.Line, e.CharPositionInLine,stringerror);
    	}
}
@parser::members
{
	
	public override void ReportError(RecognitionException e)
    	{
    		base.ReportError(e);
        		var stringerror =  GetErrorMessage(e, TokenNames);
		Logger.LogError(e.Line, e.CharPositionInLine,stringerror);
                  
    	}
}

fragment DIGIT
    	:	'0'..'9';
fragment CAPITAL_LETTER
    	:	('A'..'Z');
fragment LOWER_LETTER
	:	('a'..'z');
//LETTER	:
//	 CAPITAL_LETTER|LOWER_LETTER;
	  
//------------------------------------------------------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------------------------------------------
//KEYWORDS
//------------------------------------------------------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------------------------------------------
    
CLASS 	:	'class';
ELSE	:	'else';
FALSE	:	'false';
FI	:	'fi';
IF 	:	 'if';
IN	: 	 'in';
INHERITS	:	 'inherits';
ISVOID	:	 'isvoid';
LET	:	 'let';
LOOP 	:	 'loop';
POOL 	:	 'pool';
THEN 	:	 'then';
WHILE 	:	 'while';
DO	:	 'do';
OD	:	 'od';
CASE 	:	'case';
ESAC 	:	 'esac';
NEW 	:	 'new';
OF 	:	 'of';
NOT 	:	'not';
TRUE 	:	 'true';
SELF 	:	 'self';
BREAK	:	'break';
STRING	:	'"'
		{ StringBuilder b = new StringBuilder(); }
		(	'"' '"'	{ b.Append('"');}
		|	c=~('"'|'\r'|'\n')	{ b.Append((char)c);}
		)*
		'"'
		{ Text = b.ToString(); }
	;
INTEGER	:	 DIGIT+;

//StringType	:	'String';
//IntType	:	 'Int';
//BoolType 	:	'Bool';
//ObjectType	:	'Object';
	
             //OPERATORS
DOT	:	 '.';
ATSIGN	:	 '@';
OR	:	 '|' ;
AND	:	'&';
NEG	:	 '~';
MULT	:	 '*';
DIV	:	 '/';
PLUS	:	 '+';
MINUS	:	 '-';
LE	:	 '<=';
LT	:	 '<';
GE	:	'>=';
GT	:	 '>';
EQUAL	:	  '=';
ASSIGN	:	'<-' ;
SEMI	:	';';
LPAREN	:	 '(';
RPAREN	:	 ')';
LKEY	:	 '{';
RKEY	:	 '}';
COMMA	:	 ',';
COLON	:	 ':';
HENCE	:	 '=>';

MULTILINE_COMMENT : '(*' .* '*)' {$channel = Hidden;} ;
COMMENT : '--' .* ('\n'|'\r') {$channel = Hidden;};

TYPE_ID	:	( CAPITAL_LETTER)(( CAPITAL_LETTER| LOWER_LETTER) | DIGIT |'_')*
	;	
OBJ_ID	:	( LOWER_LETTER)(( CAPITAL_LETTER| LOWER_LETTER)|DIGIT|'_')*;
WS  :   ( ' '
        | '\t'
        | '\r'
        | '\n'
        ) {$channel=Hidden;}
    ;


//------------------------------------------------------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------------------------------------------
//---------------------------------------------------------PARSER-------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------------------------------------------






public program	:	
		(class SEMI)+
		->  ^( Program class+) 
		;
		
class		:	
		CLASS TYPE_ID (INHERITS TYPE_ID)? LKEY feature_list  RKEY 
		-> ^( CLASS TYPE_ID feature_list TYPE_ID?)
		;
feature_list		:
		(feature SEMI)* 
		-> ^( FeatureList  feature*)
		;
		
feature		:
		  localOrFieldInit -> localOrFieldInit 
		  | method -> method
		;
		
method		:
 		OBJ_ID LPAREN (formal_parameters)? RPAREN  COLON  TYPE_ID LKEY expression RKEY 
 		-> ^(FuncDef OBJ_ID TYPE_ID formal_parameters? expression) 
		;

formal_parameters 	:
		formal  ( COMMA formal)*
		->^(FunctionArgsList formal+)
		;
		
formal		:	 
		OBJ_ID  COLON  TYPE_ID
		->^( COLON OBJ_ID TYPE_ID)
		;
		
localOrFieldInit	:
		OBJ_ID  COLON  TYPE_ID (ASSIGN  expression)?
		 -> ^(LocalOrFieldInit OBJ_ID  TYPE_ID expression? )
		;			
		
expression		:	  let ->let
			| assig_expr -> assig_expr			
		;	
assig_expr		: 	(OBJ_ID ASSIGN^) *  not_expr
		;			
not_expr		:	(NOT^)*   relation
		;		
relation		:	(compare_expr)  ((OR^|AND^)  compare_expr)*		
		;
compare_expr	:	(arith_expr) ( ( LE^| LT^| GE^| GT^ | EQUAL^)  arith_expr)*
		;	
arith_expr		:	 (mult_expr) (( PLUS^| MINUS^) mult_expr)*
		;
mult_expr		:	 (isVoid_expr) ( (MULT^|  DIV ^) isVoid_expr) *
		;
isVoid_expr		:	 (ISVOID^)*  neg_expr
		;
neg_expr		:	 (NEG^)*   dot_expr
		;
dot_expr		:	 ( term -> term  )
		                       (ATSIGN  TYPE_ID DOT  call_expr  -> ^(DotTypeInvoke  $dot_expr  TYPE_ID call_expr)
			
			| DOT  call_expr 
			-> ^(DotObjectInvoke  $dot_expr  call_expr))*
		; 
			//term ((ATSIGN  TYPE_ID )? DOT call_expr)?	
			//->^(Term term  TYPE_ID? call_expr?) 
	
term		:  	  call_expr ->   call_expr 
			 |conditionals_expr -> conditionals_expr	
		 	 |loops -> loops
		   	 |blocks -> blocks	
			 |case -> case
			 |new -> new
			 |LPAREN expression RPAREN -> expression
			 |constants   	 -> constants
			 |identifiers 	 -> identifiers
		;

identifiers		:	 OBJ_ID^ 
			| SELF^   
		;
constants		:	TRUE^ 
			|FALSE^
			|INTEGER^
			| STRING^
		;
		 
 call_expr		:
 			 OBJ_ID  LPAREN invokeExpressions?  RPAREN 
 			->^(ImplicitInvoke OBJ_ID invokeExpressions?)
 		;
 		
invokeExpressions	: 	 expression( COMMA expression)* 
			->^(Params expression+)
		;
conditionals_expr	
	:	IF cond=expression  THEN e1= expression  (ELSE  e2= expression)?  FI 
		-> ^(IF  $cond $e1 $e2?)	
	;
loops	:	 WHILE  cond= expression LOOP  loop= expression POOL
		->^( WHILE $cond $loop)
		| 
		DO loop=expression  WHILE cond=expression OD
		->^(DoWhile  $loop  $cond)
	;
	
blocks	:	 LKEY  (expression SEMI)+ RKEY
		->^(Block expression+)	
	;
		
let	 :	LET  letExprs IN child= expression
		-> ^(LET  letExprs $child)		
	;	

letExprs	:	 localOrFieldInit (COMMA localOrFieldInit)*
		->^(LetExprs localOrFieldInit+)
	;
	
case	:	 CASE expression  OF caseExprs+  ESAC
		-> ^(CASE expression caseExprs+)
	;
caseExprs	:	 OBJ_ID COLON  TYPE_ID HENCE expression SEMI
		->^(CaseExpr OBJ_ID TYPE_ID expression)
	;
new 	: 	NEW TYPE_ID 
		-> ^(NEW TYPE_ID)	
	;
