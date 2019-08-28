.data 
	 _abortException: 	 .asciiz 	 "Exception: Abort" 
	 _argOutOfRangeException: 	 .asciiz 	 "Exception: Argument out of range" 
	 _caseOnVoidException: 	 .asciiz 	 "Exception: Case on void" 
	 _dispatchOnVoidException: 	 .asciiz 	 "Exception: Dispatch on void" 
	 _divideByZeroException: 	 .asciiz 	 "Exception: Divide by zero" 
	 _executionOfACaseStatementWithoutAMatchingBranchException: 	 .asciiz 	 "Exception: Execution of a cases statement without a matching branch" 
	 _negativeLengthException: 	 .asciiz 	 "Exception: Negative length" 
	 _substringOutOfRangeException: 	 .asciiz 	 "Exception: Substring out of range" 
	 Inheritance_Tree: 	 .word 	 -1, 0, 0, 0, 0, 0, 0, 5 
	 _prompt: 	 .space 	 1026 
	 empty: 	 .asciiz 	 "" 
	 Type_Object: 	 .asciiz 	 "Object" 
	 Type_IO: 	 .asciiz 	 "IO" 
	 Type_String: 	 .asciiz 	 "String" 
	 Type_Bool: 	 .asciiz 	 "Bool" 
	 Type_Int: 	 .asciiz 	 "Int" 
	 Type_A: 	 .asciiz 	 "A" 
	 Type_Main: 	 .asciiz 	 "Main" 
	 Type_B: 	 .asciiz 	 "B" 
	 s_0: 	 .asciiz 	 "\ncall A.g()" 
	 s_1: 	 .asciiz 	 "\nA.b = false" 
	 s_2: 	 .asciiz 	 "\nA.b = true" 
	 s_3: 	 .asciiz 	 "\ncall B.f()" 
.text 
		#______  InitialProcedure
main: 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal Main_Init 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 li $v0, 10 
	 syscall 
A_f: 
		#______  InitialUse_fp
	 sw $fp, -4($sp) 
	 la $t1, ($sp) 
	 sw $t1, -8($sp) 
	 move $fp, $sp 
	 sub $sp, $sp, 8 
	 li $t1, -1 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Cil_Argument
	 lw $t1, 4($fp) 
	 sw $t1, -12($fp) 
		#______  Allocate
	 li $a0, 32 
	 li $v0, 9 
	 syscall 
	 sw $v0, -20($fp) 
	 li $t1, 1 
	 sw $t1, ($v0) 
	 li $t1, 32 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  TypeOf
	 lw $t1, -20($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_0 
	 lw $t1, ($t1) 
tag_0: 
	 sw $t1, -24($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -24($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -28($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -28($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  GetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -36($fp) 
		#______  Assign
	 la $t1, -40($fp) 
	 li $t2, 10 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -44($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -40($fp) 
	 lw $t2, -44($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  CilMult
	 lw $t1, -36($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -44($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 mul $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -32($fp) 
	 li $t4, 4 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  Param
	 lw $t1, -32($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -20($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_int 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -16($fp) 
	 addu $sp, $sp, 4 
		#______  CIL_Return
	 lw $v1, -16($fp) 
		#______  EndUse_fp
	 lw $sp, -8($fp) 
	 lw $fp, -4($fp) 
	 jr $ra 
A_g: 
		#______  InitialUse_fp
	 sw $fp, -4($sp) 
	 la $t1, ($sp) 
	 sw $t1, -8($sp) 
	 move $fp, $sp 
	 sub $sp, $sp, 8 
	 li $t1, -1 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Cil_Argument
	 lw $t1, 4($fp) 
	 sw $t1, -12($fp) 
		#______  Allocate
	 li $a0, 32 
	 li $v0, 9 
	 syscall 
	 sw $v0, -24($fp) 
	 li $t1, 1 
	 sw $t1, ($v0) 
	 li $t1, 32 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  TypeOf
	 lw $t1, -24($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_1 
	 lw $t1, ($t1) 
tag_1: 
	 sw $t1, -28($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -28($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -32($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -32($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Load
	 la $t1, s_0 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_copy 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 sw $v1, -36($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -40($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -36($fp) 
	 lw $t2, -40($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -40($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -24($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -20($fp) 
	 addu $sp, $sp, 4 
		#______  GetAttr
	 li $t1, 3 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -48($fp) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -48($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_0 
		#______  Allocate
	 li $a0, 32 
	 li $v0, 9 
	 syscall 
	 sw $v0, -56($fp) 
	 li $t1, 1 
	 sw $t1, ($v0) 
	 li $t1, 32 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  TypeOf
	 lw $t1, -56($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_2 
	 lw $t1, ($t1) 
tag_2: 
	 sw $t1, -60($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -60($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -64($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -64($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Load
	 la $t1, s_1 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_copy 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 sw $v1, -68($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -72($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -68($fp) 
	 lw $t2, -72($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -72($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -56($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -52($fp) 
	 addu $sp, $sp, 4 
		#______  Assign
	 la $t1, -44($fp) 
	 lw $t2, -52($fp) 
	 sw $t2, ($t1) 
		#______  Goto
	 j label_1 
		#______  Label
label_0: 
		#______  Allocate
	 li $a0, 32 
	 li $v0, 9 
	 syscall 
	 sw $v0, -80($fp) 
	 li $t1, 1 
	 sw $t1, ($v0) 
	 li $t1, 32 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  TypeOf
	 lw $t1, -80($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_3 
	 lw $t1, ($t1) 
tag_3: 
	 sw $t1, -84($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -84($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -88($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -88($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Load
	 la $t1, s_2 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_copy 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 sw $v1, -92($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -96($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -92($fp) 
	 lw $t2, -96($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -96($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -80($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -76($fp) 
	 addu $sp, $sp, 4 
		#______  Assign
	 la $t1, -44($fp) 
	 lw $t2, -76($fp) 
	 sw $t2, ($t1) 
		#______  Label
label_1: 
		#______  Assign
	 la $t1, -16($fp) 
	 lw $t2, -44($fp) 
	 sw $t2, ($t1) 
		#______  CIL_Return
	 lw $v1, -16($fp) 
		#______  EndUse_fp
	 lw $sp, -8($fp) 
	 lw $fp, -4($fp) 
	 jr $ra 
A_Init: 
		#______  InitialUse_fp
	 sw $fp, -4($sp) 
	 la $t1, ($sp) 
	 sw $t1, -8($sp) 
	 move $fp, $sp 
	 sub $sp, $sp, 8 
	 li $t1, -1 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Cil_Argument
	 lw $t1, 4($fp) 
	 sw $t1, -12($fp) 
		#______  Assign
	 la $t1, -20($fp) 
	 li $t2, 2 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -24($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -20($fp) 
	 lw $t2, -24($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Assign
	 la $t1, -16($fp) 
	 lw $t2, -24($fp) 
	 sw $t2, ($t1) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -16($fp) 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -28($fp) 
	 li $t1, 3 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  Assign
	 la $t1, -32($fp) 
	 li $t2, 0 
	 sw $t2, ($t1) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -32($fp) 
	 lw $t2, -28($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  SetAttr
	 li $t1, 3 
	 mul $t1, $t1, 4 
	 lw $t3, -28($fp) 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  CIL_Return
		#______  EndUse_fp
	 lw $sp, -8($fp) 
	 lw $fp, -4($fp) 
	 jr $ra 
Main_main: 
		#______  InitialUse_fp
	 sw $fp, -4($sp) 
	 la $t1, ($sp) 
	 sw $t1, -8($sp) 
	 move $fp, $sp 
	 sub $sp, $sp, 8 
	 li $t1, -1 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Cil_Argument
	 lw $t1, 4($fp) 
	 sw $t1, -12($fp) 
		#______  Allocate
	 li $a0, 64 
	 li $v0, 9 
	 syscall 
	 sw $v0, -20($fp) 
	 li $t1, 5 
	 sw $t1, ($v0) 
	 li $t1, 64 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  Param
	 lw $t1, -20($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  VCall
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal A_Init 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -24($fp) 
	 addu $sp, $sp, 4 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -20($fp) 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Assign
	 la $t1, -28($fp) 
	 lw $t2, -20($fp) 
	 sw $t2, ($t1) 
		#______  GetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -36($fp) 
		#______  TypeOf
	 lw $t1, -36($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_4 
	 lw $t1, ($t1) 
tag_4: 
	 sw $t1, -40($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -40($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -44($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -44($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Param
	 lw $t1, -36($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal A_f 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -32($fp) 
	 addu $sp, $sp, 4 
		#______  GetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -52($fp) 
		#______  TypeOf
	 lw $t1, -52($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_5 
	 lw $t1, ($t1) 
tag_5: 
	 sw $t1, -56($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -56($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -60($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -60($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Param
	 lw $t1, -52($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal A_g 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -48($fp) 
	 addu $sp, $sp, 4 
		#______  GetAttr
	 li $t1, 3 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -68($fp) 
		#______  TypeOf
	 lw $t1, -68($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_6 
	 lw $t1, ($t1) 
tag_6: 
	 sw $t1, -72($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -72($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -76($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -76($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Param
	 lw $t1, -68($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal B_f 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -64($fp) 
	 addu $sp, $sp, 4 
		#______  GetAttr
	 li $t1, 3 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -84($fp) 
		#______  TypeOf
	 lw $t1, -84($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_7 
	 lw $t1, ($t1) 
tag_7: 
	 sw $t1, -88($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -88($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -92($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -92($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Param
	 lw $t1, -84($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal A_g 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -80($fp) 
	 addu $sp, $sp, 4 
		#______  Assign
	 la $t1, -16($fp) 
	 lw $t2, -80($fp) 
	 sw $t2, ($t1) 
		#______  CIL_Return
	 lw $v1, -16($fp) 
		#______  EndUse_fp
	 lw $sp, -8($fp) 
	 lw $fp, -4($fp) 
	 jr $ra 
Main_Init: 
		#______  InitialUse_fp
	 sw $fp, -4($sp) 
	 la $t1, ($sp) 
	 sw $t1, -8($sp) 
	 move $fp, $sp 
	 sub $sp, $sp, 8 
	 li $t1, -1 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Allocate
	 li $a0, 64 
	 li $v0, 9 
	 syscall 
	 sw $v0, -12($fp) 
	 li $t1, 6 
	 sw $t1, ($v0) 
	 li $t1, 64 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  Assign
	 la $t1, -16($fp) 
	 li $t2, -1 
	 sw $t2, ($t1) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -16($fp) 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Allocate
	 li $a0, 80 
	 li $v0, 9 
	 syscall 
	 sw $v0, -24($fp) 
	 li $t1, 7 
	 sw $t1, ($v0) 
	 li $t1, 80 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  Param
	 lw $t1, -24($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  VCall
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal B_Init 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -28($fp) 
	 addu $sp, $sp, 0 
		#______  Assign
	 la $t1, -20($fp) 
	 lw $t2, -24($fp) 
	 sw $t2, ($t1) 
		#______  SetAttr
	 li $t1, 3 
	 mul $t1, $t1, 4 
	 lw $t3, -20($fp) 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -12($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  VCall
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal Main_main 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -32($fp) 
	 addu $sp, $sp, 0 
		#______  CIL_Return
		#______  EndUse_fp
	 lw $sp, -8($fp) 
	 lw $fp, -4($fp) 
	 jr $ra 
B_f: 
		#______  InitialUse_fp
	 sw $fp, -4($sp) 
	 la $t1, ($sp) 
	 sw $t1, -8($sp) 
	 move $fp, $sp 
	 sub $sp, $sp, 8 
	 li $t1, -1 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Cil_Argument
	 lw $t1, 4($fp) 
	 sw $t1, -12($fp) 
		#______  Assign
	 la $t1, -20($fp) 
	 li $t2, 5 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -24($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -20($fp) 
	 lw $t2, -24($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -24($fp) 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Assign
	 la $t1, -28($fp) 
	 lw $t2, -24($fp) 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 32 
	 li $v0, 9 
	 syscall 
	 sw $v0, -36($fp) 
	 li $t1, 1 
	 sw $t1, ($v0) 
	 li $t1, 32 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  TypeOf
	 lw $t1, -36($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_8 
	 lw $t1, ($t1) 
tag_8: 
	 sw $t1, -40($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -40($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -44($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -44($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Load
	 la $t1, s_3 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_copy 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 sw $v1, -48($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -52($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -48($fp) 
	 lw $t2, -52($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -52($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -36($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -32($fp) 
	 addu $sp, $sp, 4 
		#______  Allocate
	 li $a0, 32 
	 li $v0, 9 
	 syscall 
	 sw $v0, -60($fp) 
	 li $t1, 1 
	 sw $t1, ($v0) 
	 li $t1, 32 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  TypeOf
	 lw $t1, -60($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_9 
	 lw $t1, ($t1) 
tag_9: 
	 sw $t1, -64($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -64($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -68($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -68($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  GetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -72($fp) 
		#______  Param
	 lw $t1, -72($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -60($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_int 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -56($fp) 
	 addu $sp, $sp, 4 
		#______  Assign
	 la $t1, -16($fp) 
	 lw $t2, -56($fp) 
	 sw $t2, ($t1) 
		#______  CIL_Return
	 lw $v1, -16($fp) 
		#______  EndUse_fp
	 lw $sp, -8($fp) 
	 lw $fp, -4($fp) 
	 jr $ra 
B_Init: 
		#______  InitialUse_fp
	 sw $fp, -4($sp) 
	 la $t1, ($sp) 
	 sw $t1, -8($sp) 
	 move $fp, $sp 
	 sub $sp, $sp, 8 
	 li $t1, -1 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Cil_Argument
	 lw $t1, 4($fp) 
	 sw $t1, -12($fp) 
		#______  Param
	 lw $t1, -12($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  VCall
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal A_Init 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -16($fp) 
	 addu $sp, $sp, 4 
		#______  Load
	 la $t1, empty 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_copy 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 sw $v1, -24($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -20($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 1 
	 mul $t1, $t1, 4 
	 lw $t3, -24($fp) 
	 lw $t2, -20($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  SetAttr
	 li $t1, 4 
	 mul $t1, $t1, 4 
	 lw $t3, -20($fp) 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  CIL_Return
		#______  EndUse_fp
	 lw $sp, -8($fp) 
	 lw $fp, -4($fp) 
	 jr $ra 
Object_copy: 
		#______  InitialUse_fp
	 sw $fp, -4($sp) 
	 la $t1, ($sp) 
	 sw $t1, -8($sp) 
	 move $fp, $sp 
	 sub $sp, $sp, 8 
	 li $t1, -1 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Cil_Argument
	 lw $t1, 4($fp) 
	 sw $t1, -12($fp) 
		#______  Assign
	 la $t1, -16($fp) 
	 lw $t2, -12($fp) 
	 sw $t2, ($t1) 
		#______  CIL_Return
	 lw $v1, -16($fp) 
		#______  EndUse_fp
	 lw $sp, -8($fp) 
	 lw $fp, -4($fp) 
	 jr $ra 
Object_type_name: 
		#______  InitialUse_fp
	 sw $fp, -4($sp) 
	 la $t1, ($sp) 
	 sw $t1, -8($sp) 
	 move $fp, $sp 
	 sub $sp, $sp, 8 
	 li $t1, -1 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Cil_Argument
	 lw $t1, 4($fp) 
	 sw $t1, -12($fp) 
		#______  TypeOf
	 lw $t1, -12($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_10 
	 lw $t1, ($t1) 
tag_10: 
	 sw $t1, -16($fp) 
		#______  CilEqualValue
	 li $t1, 0 
	 lw $t2, -16($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -20($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -20($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_3 
		#______  Load
	 la $t1, Type_Object 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_copy 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 sw $v1, -24($fp) 
		#______  Goto
	 j label_2 
		#______  Label
label_3: 
		#______  CilEqualValue
	 li $t1, 1 
	 lw $t2, -16($fp) 
	 seq $t3, $t1, $t2 
	 lw $t4, -20($fp) 
	 add $t4, $t4, 8 
	 sw $t3, ($t4) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -20($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_4 
		#______  Load
	 la $t1, Type_IO 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_copy 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 sw $v1, -24($fp) 
		#______  Goto
	 j label_2 
		#______  Label
label_4: 
		#______  CilEqualValue
	 li $t1, 2 
	 lw $t2, -16($fp) 
	 seq $t3, $t1, $t2 
	 lw $t4, -20($fp) 
	 add $t4, $t4, 8 
	 sw $t3, ($t4) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -20($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_5 
		#______  Load
	 la $t1, Type_String 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_copy 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 sw $v1, -24($fp) 
		#______  Goto
	 j label_2 
		#______  Label
label_5: 
		#______  CilEqualValue
	 li $t1, 3 
	 lw $t2, -16($fp) 
	 seq $t3, $t1, $t2 
	 lw $t4, -20($fp) 
	 add $t4, $t4, 8 
	 sw $t3, ($t4) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -20($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_6 
		#______  Load
	 la $t1, Type_Bool 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_copy 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 sw $v1, -24($fp) 
		#______  Goto
	 j label_2 
		#______  Label
label_6: 
		#______  CilEqualValue
	 li $t1, 4 
	 lw $t2, -16($fp) 
	 seq $t3, $t1, $t2 
	 lw $t4, -20($fp) 
	 add $t4, $t4, 8 
	 sw $t3, ($t4) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -20($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_7 
		#______  Load
	 la $t1, Type_Int 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_copy 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 sw $v1, -24($fp) 
		#______  Goto
	 j label_2 
		#______  Label
label_7: 
		#______  CilEqualValue
	 li $t1, 5 
	 lw $t2, -16($fp) 
	 seq $t3, $t1, $t2 
	 lw $t4, -20($fp) 
	 add $t4, $t4, 8 
	 sw $t3, ($t4) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -20($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_8 
		#______  Load
	 la $t1, Type_A 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_copy 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 sw $v1, -24($fp) 
		#______  Goto
	 j label_2 
		#______  Label
label_8: 
		#______  CilEqualValue
	 li $t1, 6 
	 lw $t2, -16($fp) 
	 seq $t3, $t1, $t2 
	 lw $t4, -20($fp) 
	 add $t4, $t4, 8 
	 sw $t3, ($t4) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -20($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_9 
		#______  Load
	 la $t1, Type_Main 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_copy 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 sw $v1, -24($fp) 
		#______  Goto
	 j label_2 
		#______  Label
label_9: 
		#______  CilEqualValue
	 li $t1, 7 
	 lw $t2, -16($fp) 
	 seq $t3, $t1, $t2 
	 lw $t4, -20($fp) 
	 add $t4, $t4, 8 
	 sw $t3, ($t4) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -20($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_10 
		#______  Load
	 la $t1, Type_B 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_copy 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 sw $v1, -24($fp) 
		#______  Goto
	 j label_2 
		#______  Label
label_10: 
		#______  Label
label_2: 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -28($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -24($fp) 
	 lw $t2, -28($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  CIL_Return
	 lw $v1, -28($fp) 
		#______  EndUse_fp
	 lw $sp, -8($fp) 
	 lw $fp, -4($fp) 
	 jr $ra 
Object_abort: 
		#______  InitialUse_fp
	 sw $fp, -4($sp) 
	 la $t1, ($sp) 
	 sw $t1, -8($sp) 
	 move $fp, $sp 
	 sub $sp, $sp, 8 
	 li $t1, -1 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Cil_Argument
	 lw $t1, 4($fp) 
	 sw $t1, -12($fp) 
		#______  CIL_Exception
	 la $a0, _abortException 
	 j PrintError 
IO_out_string: 
		#______  InitialUse_fp
	 sw $fp, -4($sp) 
	 la $t1, ($sp) 
	 sw $t1, -8($sp) 
	 move $fp, $sp 
	 sub $sp, $sp, 8 
	 li $t1, -1 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Cil_Argument
	 lw $t1, 4($fp) 
	 sw $t1, -12($fp) 
		#______  Cil_Argument
	 lw $t1, 8($fp) 
	 sw $t1, -16($fp) 
		#______  Print_String
	 lw $a0, -16($fp) 
	 add $a0, $a0, 8 
	 lw $a0, ($a0) 
	 li $v0, 4 
	 syscall 
		#______  CIL_Return
	 lw $v1, -12($fp) 
		#______  EndUse_fp
	 lw $sp, -8($fp) 
	 lw $fp, -4($fp) 
	 jr $ra 
IO_out_int: 
		#______  InitialUse_fp
	 sw $fp, -4($sp) 
	 la $t1, ($sp) 
	 sw $t1, -8($sp) 
	 move $fp, $sp 
	 sub $sp, $sp, 8 
	 li $t1, -1 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Cil_Argument
	 lw $t1, 4($fp) 
	 sw $t1, -12($fp) 
		#______  Cil_Argument
	 lw $t1, 8($fp) 
	 sw $t1, -16($fp) 
		#______  Print_Int
	 lw $a0, -16($fp) 
	 add $a0, $a0, 8 
	 lw $a0, ($a0) 
	 li $v0, 1 
	 syscall 
		#______  CIL_Return
	 lw $v1, -12($fp) 
		#______  EndUse_fp
	 lw $sp, -8($fp) 
	 lw $fp, -4($fp) 
	 jr $ra 
IO_in_string: 
		#______  InitialUse_fp
	 sw $fp, -4($sp) 
	 la $t1, ($sp) 
	 sw $t1, -8($sp) 
	 move $fp, $sp 
	 sub $sp, $sp, 8 
	 li $t1, -1 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Cil_Argument
	 lw $t1, 4($fp) 
	 sw $t1, -12($fp) 
		#______  Read_String
	 li $v0, 8 
	 la $a0, _prompt 
	 li $a1, 1026 
	 syscall 
	 la $t1, _prompt 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_copy 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 sw $v1, -16($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -20($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -16($fp) 
	 lw $t2, -20($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  CIL_Return
	 lw $v1, -20($fp) 
		#______  EndUse_fp
	 lw $sp, -8($fp) 
	 lw $fp, -4($fp) 
	 jr $ra 
IO_in_int: 
		#______  InitialUse_fp
	 sw $fp, -4($sp) 
	 la $t1, ($sp) 
	 sw $t1, -8($sp) 
	 move $fp, $sp 
	 sub $sp, $sp, 8 
	 li $t1, -1 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Cil_Argument
	 lw $t1, 4($fp) 
	 sw $t1, -12($fp) 
		#______  Read_Int
	 li $v0, 5 
	 syscall 
	 sw $v0, -16($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -20($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -16($fp) 
	 lw $t2, -20($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  CIL_Return
	 lw $v1, -20($fp) 
		#______  EndUse_fp
	 lw $sp, -8($fp) 
	 lw $fp, -4($fp) 
	 jr $ra 
String_concat: 
		#______  InitialUse_fp
	 sw $fp, -4($sp) 
	 la $t1, ($sp) 
	 sw $t1, -8($sp) 
	 move $fp, $sp 
	 sub $sp, $sp, 8 
	 li $t1, -1 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Cil_Argument
	 lw $t1, 4($fp) 
	 sw $t1, -12($fp) 
		#______  Cil_Argument
	 lw $t1, 8($fp) 
	 sw $t1, -16($fp) 
		#______  GetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -20($fp) 
		#______  GetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t2, -16($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -24($fp) 
		#______  Concat
	 lw $t1, -20($fp) 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 subu $sp, $sp, 4 
	 sw $v0, ($sp) 
	 add $v0, $v0, 8 
	 sw $t1, ($v0) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_length 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 add $v1, $v1, 8 
	 lw $v1, ($v1) 
	 move $t4, $v1 
	 lw $t1, -24($fp) 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 subu $sp, $sp, 4 
	 sw $v0, ($sp) 
	 add $v0, $v0, 8 
	 sw $t1, ($v0) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_length 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 add $v1, $v1, 8 
	 lw $v1, ($v1) 
	 add $t4, $t4, $v1 
	 add $t4, $t4, 1 
	 li $v0, 9 
	 move $a0, $t4 
	 syscall 
	 move $t4, $v0 
	 lw $t1, -20($fp) 
	 lw $t2, -24($fp) 
	 subu $sp, $sp, 12 
	 sw $t4, 0($sp) 
	 sw $t1, 4($sp) 
	 sw $t2, 8($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_concatPlus 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 lw $v1, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 8 
	 sw $v1, -32($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -28($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -32($fp) 
	 lw $t2, -28($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  CIL_Return
	 lw $v1, -28($fp) 
		#______  EndUse_fp
	 lw $sp, -8($fp) 
	 lw $fp, -4($fp) 
	 jr $ra 
String_length: 
		#______  InitialUse_fp
	 sw $fp, -4($sp) 
	 la $t1, ($sp) 
	 sw $t1, -8($sp) 
	 move $fp, $sp 
	 sub $sp, $sp, 8 
	 li $t1, -1 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Cil_Argument
	 lw $t1, 4($fp) 
	 sw $t1, -12($fp) 
		#______  GetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -16($fp) 
		#______  Length
	 li $v1, 0 
	 lw $t1, -16($fp) 
loopString_length: 
	 lb $t2, 0($t1) 
	 beqz $t2, loopEndString_length 
	 add $t1, $t1, 1 
	 add $v1, $v1, 1 
	 j loopString_length 
loopEndString_length: 
	 sw $v1, -20($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -24($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -20($fp) 
	 lw $t2, -24($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  CIL_Return
	 lw $v1, -24($fp) 
		#______  EndUse_fp
	 lw $sp, -8($fp) 
	 lw $fp, -4($fp) 
	 jr $ra 
String_substr: 
		#______  InitialUse_fp
	 sw $fp, -4($sp) 
	 la $t1, ($sp) 
	 sw $t1, -8($sp) 
	 move $fp, $sp 
	 sub $sp, $sp, 8 
	 li $t1, -1 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Cil_Argument
	 lw $t1, 4($fp) 
	 sw $t1, -12($fp) 
		#______  Cil_Argument
	 lw $t1, 8($fp) 
	 sw $t1, -16($fp) 
		#______  Cil_Argument
	 lw $t1, 12($fp) 
	 sw $t1, -20($fp) 
		#______  GetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -24($fp) 
		#______  GetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t2, -16($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -28($fp) 
		#______  GetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t2, -20($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -32($fp) 
		#______  Substring
	 lw $t1, -24($fp) 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 subu $sp, $sp, 4 
	 sw $v0, ($sp) 
	 add $v0, $v0, 8 
	 sw $t1, ($v0) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_length 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 move $t5, $t1 
	 lw $t2, -28($fp) 
	 lw $t3, -32($fp) 
	 bltz $t3, NegativeLengthException 
	 move $t6, $t3 
	 add $t6, $t6, 1 
	 li $v0, 9 
	 move $a0, $t6 
	 syscall 
	 move $t4, $v0 
	 move $v1, $v0 
	 bge $t2, $t5, ArgumentOutOfRangeException 
	 bltz $t2, ArgumentOutOfRangeException 
	 sub $t1, $t5, $t3 
	 blt $t1, $t2, ArgumentOutOfRangeException 
	 lw $t1, -24($fp) 
	 add $t1, $t1, $t2 
loopString_substr: 
	 beqz $t3, endLoopString_substr 
	 sub $t3, $t3, 1 
	 lb $t2, 0($t1) 
	 sb $t2, 0($t4) 
	 add $t1, $t1, 1 
	 add $t4, $t4, 1 
	 j loopString_substr 
endLoopString_substr: 
	 sb $t3, 0($t4) 
	 sw $v1, -36($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -40($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -36($fp) 
	 lw $t2, -40($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  CIL_Return
	 lw $v1, -40($fp) 
		#______  EndUse_fp
	 lw $sp, -8($fp) 
	 lw $fp, -4($fp) 
	 jr $ra 
ExecutionOfACaseStatementWithoutAMatchingBranchException: 
		#______  InitialUse_fp
	 sw $fp, -4($sp) 
	 la $t1, ($sp) 
	 sw $t1, -8($sp) 
	 move $fp, $sp 
	 sub $sp, $sp, 8 
	 li $t1, -1 
		#______  CIL_Exception
	 la $a0, _executionOfACaseStatementWithoutAMatchingBranchException 
	 j PrintError 
CaseOnVoidException: 
		#______  InitialUse_fp
	 sw $fp, -4($sp) 
	 la $t1, ($sp) 
	 sw $t1, -8($sp) 
	 move $fp, $sp 
	 sub $sp, $sp, 8 
	 li $t1, -1 
		#______  CIL_Exception
	 la $a0, _caseOnVoidException 
	 j PrintError 
ArgumentOutOfRangeException: 
		#______  InitialUse_fp
	 sw $fp, -4($sp) 
	 la $t1, ($sp) 
	 sw $t1, -8($sp) 
	 move $fp, $sp 
	 sub $sp, $sp, 8 
	 li $t1, -1 
		#______  CIL_Exception
	 la $a0, _argOutOfRangeException 
	 j PrintError 
DispatchOnVoidException: 
		#______  InitialUse_fp
	 sw $fp, -4($sp) 
	 la $t1, ($sp) 
	 sw $t1, -8($sp) 
	 move $fp, $sp 
	 sub $sp, $sp, 8 
	 li $t1, -1 
		#______  CIL_Exception
	 la $a0, _dispatchOnVoidException 
	 j PrintError 
DivideByZeroException: 
		#______  InitialUse_fp
	 sw $fp, -4($sp) 
	 la $t1, ($sp) 
	 sw $t1, -8($sp) 
	 move $fp, $sp 
	 sub $sp, $sp, 8 
	 li $t1, -1 
		#______  CIL_Exception
	 la $a0, _divideByZeroException 
	 j PrintError 
NegativeLengthException: 
		#______  InitialUse_fp
	 sw $fp, -4($sp) 
	 la $t1, ($sp) 
	 sw $t1, -8($sp) 
	 move $fp, $sp 
	 sub $sp, $sp, 8 
	 li $t1, -1 
		#______  CIL_Exception
	 la $a0, _negativeLengthException 
	 j PrintError 
SubstringOutOfRangeException: 
		#______  InitialUse_fp
	 sw $fp, -4($sp) 
	 la $t1, ($sp) 
	 sw $t1, -8($sp) 
	 move $fp, $sp 
	 sub $sp, $sp, 8 
	 li $t1, -1 
		#______  CIL_Exception
	 la $a0, _substringOutOfRangeException 
	 j PrintError 
		#______  ErrorPrint
PrintError: 
	 li $v0, 4 
	 syscall 
	 li $v0, 10 
	 syscall 
		#______  StrCopy
String_copy: 
	 lw $t8, 4($sp) 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 move $t7, $v0 
	 add $v0, $v0, 8 
	 sw $t8, ($v0) 
	 subu $sp, $sp, 4 
	 sw $t7, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_length 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 add $v1, $v1, 8 
	 lw $v1, ($v1) 
	 add $v1, $v1, 1 
	 move $a0, $v1 
	 li $v0, 9 
	 syscall 
	 move $v1, $v0 
	 move $t1, $t8 
loopString_copy: 
	 lb $t3, ($t1) 
	 beqz $t3, loopEndString_copy 
	 sb $t3, ($v0) 
	 add $t1, $t1, 1 
	 add $v0, $v0, 1 
	 j loopString_copy 
loopEndString_copy: 
	 li $t3, 0 
	 sb $t3, ($v0) 
	 jr $ra 
		#______  ConcatPlus
String_concatPlus: 
	 lw $t1, 4($sp) 
	 lw $t2, 8($sp) 
loop1String_concatPlus: 
	 lb $t3, 0($t2) 
	 beqz $t3, endLoop1String_concatPlus 
	 sb $t3, 0($t1) 
	 add $t2, $t2, 1 
	 add $t1, $t1, 1 
	 j loop1String_concatPlus 
endLoop1String_concatPlus: 
	 lw $t2, 12($sp) 
loop2String_concatPlus: 
	 lb $t3, 0($t2) 
	 beqz $t3, endLoop2String_concatPlus 
	 sb $t3, 0($t1) 
	 add $t2, $t2, 1 
	 add $t1, $t1, 1 
	 j loop2String_concatPlus 
endLoop2String_concatPlus: 
	 li $t3, 0 
	 sb $t3, ($t1) 
	 jr $ra 
