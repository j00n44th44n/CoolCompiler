.data 
	 _abortException: 	 .asciiz 	 "Exception: Abort" 
	 _argOutOfRangeException: 	 .asciiz 	 "Exception: Argument out of range" 
	 _caseOnVoidException: 	 .asciiz 	 "Exception: Case on void" 
	 _dispatchOnVoidException: 	 .asciiz 	 "Exception: Dispatch on void" 
	 _divideByZeroException: 	 .asciiz 	 "Exception: Divide by zero" 
	 _executionOfACaseStatementWithoutAMatchingBranchException: 	 .asciiz 	 "Exception: Execution of a cases statement without a matching branch" 
	 _negativeLengthException: 	 .asciiz 	 "Exception: Negative length" 
	 _substringOutOfRangeException: 	 .asciiz 	 "Exception: Substring out of range" 
	 Inheritance_Tree: 	 .word 	 -1, 0, 0, 0, 0, 0, 0 
	 _prompt: 	 .space 	 1026 
	 empty: 	 .asciiz 	 "" 
	 Type_Object: 	 .asciiz 	 "Object" 
	 Type_IO: 	 .asciiz 	 "IO" 
	 Type_String: 	 .asciiz 	 "String" 
	 Type_Bool: 	 .asciiz 	 "Bool" 
	 Type_Int: 	 .asciiz 	 "Int" 
	 Type_Math: 	 .asciiz 	 "Math" 
	 Type_Main: 	 .asciiz 	 "Main" 
	 s_0: 	 .asciiz 	 "\nfibonacci\n" 
	 s_1: 	 .asciiz 	 "2 + 2 * 2 = " 
	 s_2: 	 .asciiz 	 "\n5! = " 
	 s_3: 	 .asciiz 	 "\nFibonacci numbers in range 0..10: " 
	 s_4: 	 .asciiz 	 " " 
	 s_5: 	 .asciiz 	 "" 
	 s_6: 	 .asciiz 	 "math is not void\n" 
	 s_7: 	 .asciiz 	 "math is void\n" 
	 s_8: 	 .asciiz 	 "math is not void" 
	 s_9: 	 .asciiz 	 "math is void" 
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
Math_factorial: 
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
		#______  Cil_Argument
	 lw $t1, 4($fp) 
	 sw $t1, -12($fp) 
		#______  Cil_Argument
	 lw $t1, 8($fp) 
	 sw $t1, -16($fp) 
		#______  Assign
	 la $t1, -28($fp) 
	 lw $t2, -16($fp) 
	 sw $t2, ($t1) 
		#______  Assign
	 la $t1, -32($fp) 
	 li $t2, 1 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -36($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -32($fp) 
	 lw $t2, -36($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  CilEqualValue
	 li $t3, 2 
	 lw $t1, -28($fp) 
	 lw $t4, ($t1) 
	 bne $t4, $t3, tag_0 
	 lw $t2, -36($fp) 
	 lw $t4, ($t2) 
	 bne $t4, $t3, tag_0 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_length 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 add $v1, $v1, 8 
	 lw $t6, ($v1) 
	 lw $t2, -36($fp) 
	 subu $sp, $sp, 4 
	 sw $t2, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_length 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 add $v1, $v1, 8 
	 lw $v1, ($v1) 
	 seq $t3, $t6, $v1 
	 li $t4, 1 
	 bne $t3, $t4, tag_1 
	 lw $t1, -28($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -36($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
tag_2: 
	 beqz $v1, tag_1 
	 sub $v1, $v1, 1 
	 lb $t5, ($t1) 
	 lb $t6, ($t2) 
	 seq $t3, $t5, $t6 
	 bne $t3, $t4, tag_1 
	 add $t1, $t1, 1 
	 add $t2, $t2, 1 
	 j tag_2 
tag_0: 
	 lw $t1, -28($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -36($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 seq $t3, $t1, $t2 
tag_1: 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -24($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -24($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_0 
		#______  Assign
	 la $t1, -44($fp) 
	 lw $t2, -16($fp) 
	 sw $t2, ($t1) 
		#______  Assign
	 la $t1, -52($fp) 
	 lw $t2, -12($fp) 
	 sw $t2, ($t1) 
		#______  TypeOf
	 lw $t1, -52($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_3 
	 lw $t1, ($t1) 
tag_3: 
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
		#______  Assign
	 la $t1, -68($fp) 
	 lw $t2, -16($fp) 
	 sw $t2, ($t1) 
		#______  Assign
	 la $t1, -72($fp) 
	 li $t2, 1 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -76($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -72($fp) 
	 lw $t2, -76($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  CilMinus
	 lw $t1, -68($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -76($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 sub $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -64($fp) 
	 li $t4, 4 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  Param
	 lw $t1, -64($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -52($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal Math_factorial 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -48($fp) 
	 addu $sp, $sp, 8 
		#______  CilMult
	 lw $t1, -44($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -48($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 mul $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -40($fp) 
	 li $t4, 4 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  Assign
	 la $t1, -20($fp) 
	 lw $t2, -40($fp) 
	 sw $t2, ($t1) 
		#______  Goto
	 j label_1 
		#______  Label
label_0: 
		#______  Assign
	 la $t1, -80($fp) 
	 li $t2, 1 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -84($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -80($fp) 
	 lw $t2, -84($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Assign
	 la $t1, -20($fp) 
	 lw $t2, -84($fp) 
	 sw $t2, ($t1) 
		#______  Label
label_1: 
		#______  CIL_Return
	 lw $v1, -20($fp) 
		#______  EndUse_fp
	 lw $sp, -8($fp) 
	 lw $fp, -4($fp) 
	 jr $ra 
Math_fibonacci: 
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
		#______  Cil_Argument
	 lw $t1, 8($fp) 
	 sw $t1, -16($fp) 
		#______  Assign
	 la $t1, -28($fp) 
	 lw $t2, -16($fp) 
	 sw $t2, ($t1) 
		#______  Assign
	 la $t1, -32($fp) 
	 li $t2, 0 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -36($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -32($fp) 
	 lw $t2, -36($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  CilEqualValue
	 li $t3, 2 
	 lw $t1, -28($fp) 
	 lw $t4, ($t1) 
	 bne $t4, $t3, tag_4 
	 lw $t2, -36($fp) 
	 lw $t4, ($t2) 
	 bne $t4, $t3, tag_4 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_length 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 add $v1, $v1, 8 
	 lw $t6, ($v1) 
	 lw $t2, -36($fp) 
	 subu $sp, $sp, 4 
	 sw $t2, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_length 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 add $v1, $v1, 8 
	 lw $v1, ($v1) 
	 seq $t3, $t6, $v1 
	 li $t4, 1 
	 bne $t3, $t4, tag_5 
	 lw $t1, -28($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -36($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
tag_6: 
	 beqz $v1, tag_5 
	 sub $v1, $v1, 1 
	 lb $t5, ($t1) 
	 lb $t6, ($t2) 
	 seq $t3, $t5, $t6 
	 bne $t3, $t4, tag_5 
	 add $t1, $t1, 1 
	 add $t2, $t2, 1 
	 j tag_6 
tag_4: 
	 lw $t1, -28($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -36($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 seq $t3, $t1, $t2 
tag_5: 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -24($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -24($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_2 
		#______  Assign
	 la $t1, -48($fp) 
	 lw $t2, -16($fp) 
	 sw $t2, ($t1) 
		#______  Assign
	 la $t1, -52($fp) 
	 li $t2, 1 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -56($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -52($fp) 
	 lw $t2, -56($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  CilEqualValue
	 li $t3, 2 
	 lw $t1, -48($fp) 
	 lw $t4, ($t1) 
	 bne $t4, $t3, tag_7 
	 lw $t2, -56($fp) 
	 lw $t4, ($t2) 
	 bne $t4, $t3, tag_7 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_length 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 add $v1, $v1, 8 
	 lw $t6, ($v1) 
	 lw $t2, -56($fp) 
	 subu $sp, $sp, 4 
	 sw $t2, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_length 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 add $v1, $v1, 8 
	 lw $v1, ($v1) 
	 seq $t3, $t6, $v1 
	 li $t4, 1 
	 bne $t3, $t4, tag_8 
	 lw $t1, -48($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -56($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
tag_9: 
	 beqz $v1, tag_8 
	 sub $v1, $v1, 1 
	 lb $t5, ($t1) 
	 lb $t6, ($t2) 
	 seq $t3, $t5, $t6 
	 bne $t3, $t4, tag_8 
	 add $t1, $t1, 1 
	 add $t2, $t2, 1 
	 j tag_9 
tag_7: 
	 lw $t1, -48($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -56($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 seq $t3, $t1, $t2 
tag_8: 
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
	 beq $t1, $t2, label_4 
		#______  Assign
	 la $t1, -68($fp) 
	 lw $t2, -12($fp) 
	 sw $t2, ($t1) 
		#______  TypeOf
	 lw $t1, -68($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_10 
	 lw $t1, ($t1) 
tag_10: 
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
		#______  Assign
	 la $t1, -84($fp) 
	 lw $t2, -16($fp) 
	 sw $t2, ($t1) 
		#______  Assign
	 la $t1, -88($fp) 
	 li $t2, 1 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -92($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -88($fp) 
	 lw $t2, -92($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  CilMinus
	 lw $t1, -84($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -92($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 sub $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -80($fp) 
	 li $t4, 4 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  Param
	 lw $t1, -80($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -68($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  VCall
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal Math_fibonacci 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -64($fp) 
	 addu $sp, $sp, 8 
		#______  Assign
	 la $t1, -100($fp) 
	 lw $t2, -12($fp) 
	 sw $t2, ($t1) 
		#______  Assign
	 la $t1, -108($fp) 
	 lw $t2, -16($fp) 
	 sw $t2, ($t1) 
		#______  Assign
	 la $t1, -112($fp) 
	 li $t2, 2 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -116($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -112($fp) 
	 lw $t2, -116($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  CilMinus
	 lw $t1, -108($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -116($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 sub $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -104($fp) 
	 li $t4, 4 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  Param
	 lw $t1, -104($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -100($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal Math_fibonacci 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -96($fp) 
	 addu $sp, $sp, 8 
		#______  CilPlus
	 lw $t1, -64($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -96($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 add $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -60($fp) 
	 li $t4, 4 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  Assign
	 la $t1, -40($fp) 
	 lw $t2, -60($fp) 
	 sw $t2, ($t1) 
		#______  Goto
	 j label_5 
		#______  Label
label_4: 
		#______  Assign
	 la $t1, -120($fp) 
	 li $t2, 1 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -124($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -120($fp) 
	 lw $t2, -124($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Assign
	 la $t1, -40($fp) 
	 lw $t2, -124($fp) 
	 sw $t2, ($t1) 
		#______  Label
label_5: 
		#______  Assign
	 la $t1, -20($fp) 
	 lw $t2, -40($fp) 
	 sw $t2, ($t1) 
		#______  Goto
	 j label_3 
		#______  Label
label_2: 
		#______  Assign
	 la $t1, -128($fp) 
	 li $t2, 0 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -132($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -128($fp) 
	 lw $t2, -132($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Assign
	 la $t1, -20($fp) 
	 lw $t2, -132($fp) 
	 sw $t2, ($t1) 
		#______  Label
label_3: 
		#______  CIL_Return
	 lw $v1, -20($fp) 
		#______  EndUse_fp
	 lw $sp, -8($fp) 
	 lw $fp, -4($fp) 
	 jr $ra 
Math_Init: 
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
	 la $t1, -28($fp) 
	 li $t2, 10 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -32($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -28($fp) 
	 lw $t2, -32($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Assign
	 la $t1, -24($fp) 
	 lw $t2, -32($fp) 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -40($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  Assign
	 la $t1, -44($fp) 
	 li $t2, 0 
	 sw $t2, ($t1) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -44($fp) 
	 lw $t2, -40($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -52($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  Assign
	 la $t1, -56($fp) 
	 li $t2, 0 
	 sw $t2, ($t1) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -56($fp) 
	 lw $t2, -52($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Allocate
	 li $a0, 32 
	 li $v0, 9 
	 syscall 
	 sw $v0, -64($fp) 
	 li $t1, 1 
	 sw $t1, ($v0) 
	 li $t1, 32 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  TypeOf
	 lw $t1, -64($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_11 
	 lw $t1, ($t1) 
tag_11: 
	 sw $t1, -68($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -68($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -72($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -72($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Assign
	 la $t1, -84($fp) 
	 lw $t2, -24($fp) 
	 sw $t2, ($t1) 
		#______  Assign
	 la $t1, -88($fp) 
	 lw $t2, -40($fp) 
	 sw $t2, ($t1) 
		#______  CilPlus
	 lw $t1, -84($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -88($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 add $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -80($fp) 
	 li $t4, 4 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  Assign
	 la $t1, -92($fp) 
	 lw $t2, -52($fp) 
	 sw $t2, ($t1) 
		#______  CilPlus
	 lw $t1, -80($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -92($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 add $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -76($fp) 
	 li $t4, 4 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  Param
	 lw $t1, -76($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -64($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_int 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -60($fp) 
	 addu $sp, $sp, 4 
		#______  Assign
	 la $t1, -48($fp) 
	 lw $t2, -60($fp) 
	 sw $t2, ($t1) 
		#______  Assign
	 la $t1, -36($fp) 
	 lw $t2, -48($fp) 
	 sw $t2, ($t1) 
		#______  Assign
	 la $t1, -20($fp) 
	 lw $t2, -36($fp) 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -108($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  Assign
	 la $t1, -112($fp) 
	 li $t2, 0 
	 sw $t2, ($t1) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -112($fp) 
	 lw $t2, -108($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Assign
	 la $t1, -120($fp) 
	 lw $t2, -108($fp) 
	 sw $t2, ($t1) 
		#______  Assign
	 la $t1, -124($fp) 
	 li $t2, 5 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -128($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -124($fp) 
	 lw $t2, -128($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  CilPlus
	 lw $t1, -120($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -128($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 add $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -116($fp) 
	 li $t4, 4 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  Assign
	 la $t1, -104($fp) 
	 lw $t2, -116($fp) 
	 sw $t2, ($t1) 
		#______  Assign
	 la $t1, -100($fp) 
	 lw $t2, -104($fp) 
	 sw $t2, ($t1) 
		#______  Assign
	 la $t1, -140($fp) 
	 lw $t2, -100($fp) 
	 sw $t2, ($t1) 
		#______  Assign
	 la $t1, -136($fp) 
	 lw $t2, -140($fp) 
	 sw $t2, ($t1) 
		#______  GetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -148($fp) 
		#______  TypeOf
	 lw $t1, -148($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_12 
	 lw $t1, ($t1) 
tag_12: 
	 sw $t1, -152($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -152($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -156($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -156($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Assign
	 la $t1, -160($fp) 
	 lw $t2, -136($fp) 
	 sw $t2, ($t1) 
		#______  Param
	 lw $t1, -160($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -148($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_int 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -144($fp) 
	 addu $sp, $sp, 4 
		#______  Assign
	 la $t1, -132($fp) 
	 lw $t2, -144($fp) 
	 sw $t2, ($t1) 
		#______  Assign
	 la $t1, -96($fp) 
	 lw $t2, -132($fp) 
	 sw $t2, ($t1) 
		#______  GetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -168($fp) 
		#______  TypeOf
	 lw $t1, -168($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_13 
	 lw $t1, ($t1) 
tag_13: 
	 sw $t1, -172($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -172($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -176($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -176($fp) 
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
	 sw $v1, -180($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -184($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -180($fp) 
	 lw $t2, -184($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -184($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -168($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -164($fp) 
	 addu $sp, $sp, 4 
		#______  GetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -192($fp) 
		#______  TypeOf
	 lw $t1, -192($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_14 
	 lw $t1, ($t1) 
tag_14: 
	 sw $t1, -196($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -196($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -200($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -200($fp) 
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
	 sw $v1, -204($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -208($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -204($fp) 
	 lw $t2, -208($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -208($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -192($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -188($fp) 
	 addu $sp, $sp, 4 
		#______  GetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -216($fp) 
		#______  TypeOf
	 lw $t1, -216($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_15 
	 lw $t1, ($t1) 
tag_15: 
	 sw $t1, -220($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -220($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -224($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -224($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Assign
	 la $t1, -232($fp) 
	 li $t2, 2 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -236($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -232($fp) 
	 lw $t2, -236($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Assign
	 la $t1, -244($fp) 
	 li $t2, 2 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -248($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -244($fp) 
	 lw $t2, -248($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Assign
	 la $t1, -252($fp) 
	 li $t2, 2 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -256($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -252($fp) 
	 lw $t2, -256($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  CilMult
	 lw $t1, -248($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -256($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 mul $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -240($fp) 
	 li $t4, 4 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  CilPlus
	 lw $t1, -236($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -240($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 add $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -228($fp) 
	 li $t4, 4 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  Param
	 lw $t1, -228($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -216($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_int 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -212($fp) 
	 addu $sp, $sp, 4 
		#______  GetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -264($fp) 
		#______  TypeOf
	 lw $t1, -264($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_16 
	 lw $t1, ($t1) 
tag_16: 
	 sw $t1, -268($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -268($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -272($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -272($fp) 
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
	 sw $v1, -276($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -280($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -276($fp) 
	 lw $t2, -280($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -280($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -264($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -260($fp) 
	 addu $sp, $sp, 4 
		#______  GetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -288($fp) 
		#______  TypeOf
	 lw $t1, -288($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_17 
	 lw $t1, ($t1) 
tag_17: 
	 sw $t1, -292($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -292($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -296($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -296($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Allocate
	 li $a0, 32 
	 li $v0, 9 
	 syscall 
	 sw $v0, -304($fp) 
	 li $t1, 5 
	 sw $t1, ($v0) 
	 li $t1, 32 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  Param
	 lw $t1, -304($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  VCall
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal Math_Init 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -308($fp) 
	 addu $sp, $sp, 4 
		#______  TypeOf
	 lw $t1, -304($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_18 
	 lw $t1, ($t1) 
tag_18: 
	 sw $t1, -312($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -312($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -316($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -316($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Assign
	 la $t1, -320($fp) 
	 li $t2, 5 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -324($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -320($fp) 
	 lw $t2, -324($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -324($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -304($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal Math_factorial 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -300($fp) 
	 addu $sp, $sp, 4 
		#______  Param
	 lw $t1, -300($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -288($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_int 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -284($fp) 
	 addu $sp, $sp, 4 
		#______  GetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -332($fp) 
		#______  TypeOf
	 lw $t1, -332($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_19 
	 lw $t1, ($t1) 
tag_19: 
	 sw $t1, -336($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -336($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -340($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -340($fp) 
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
	 sw $v1, -344($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -348($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -344($fp) 
	 lw $t2, -348($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -348($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -332($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -328($fp) 
	 addu $sp, $sp, 4 
		#______  Label
label_6: 
		#______  GetAttr
	 li $t1, 3 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -356($fp) 
		#______  Assign
	 la $t1, -360($fp) 
	 li $t2, 10 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -364($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -360($fp) 
	 lw $t2, -364($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  CilMinorEqual
	 lw $t1, -356($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -364($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 sle $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -352($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -352($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_7 
		#______  GetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -376($fp) 
		#______  TypeOf
	 lw $t1, -376($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_20 
	 lw $t1, ($t1) 
tag_20: 
	 sw $t1, -380($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -380($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -384($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -384($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Allocate
	 li $a0, 32 
	 li $v0, 9 
	 syscall 
	 sw $v0, -392($fp) 
	 li $t1, 5 
	 sw $t1, ($v0) 
	 li $t1, 32 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  Param
	 lw $t1, -392($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  VCall
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal Math_Init 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -396($fp) 
	 addu $sp, $sp, 4 
		#______  TypeOf
	 lw $t1, -392($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_21 
	 lw $t1, ($t1) 
tag_21: 
	 sw $t1, -400($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -400($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -404($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -404($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  GetAttr
	 li $t1, 3 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -408($fp) 
		#______  Param
	 lw $t1, -408($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -392($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal Math_fibonacci 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -388($fp) 
	 addu $sp, $sp, 4 
		#______  Param
	 lw $t1, -388($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -376($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_int 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -372($fp) 
	 addu $sp, $sp, 4 
		#______  GetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -416($fp) 
		#______  TypeOf
	 lw $t1, -416($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_22 
	 lw $t1, ($t1) 
tag_22: 
	 sw $t1, -420($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -420($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -424($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -424($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Load
	 la $t1, s_4 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_copy 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 sw $v1, -428($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -432($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -428($fp) 
	 lw $t2, -432($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -432($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -416($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -412($fp) 
	 addu $sp, $sp, 4 
		#______  GetAttr
	 li $t1, 3 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -440($fp) 
		#______  Assign
	 la $t1, -444($fp) 
	 li $t2, 1 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -448($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -444($fp) 
	 lw $t2, -448($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  CilPlus
	 lw $t1, -440($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -448($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 add $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -436($fp) 
	 li $t4, 4 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  SetAttr
	 li $t1, 3 
	 mul $t1, $t1, 4 
	 lw $t3, -436($fp) 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Assign
	 la $t1, -452($fp) 
	 lw $t2, -436($fp) 
	 sw $t2, ($t1) 
		#______  Assign
	 la $t1, -368($fp) 
	 lw $t2, -452($fp) 
	 sw $t2, ($t1) 
		#______  Goto
	 j label_6 
		#______  Label
label_7: 
		#______  Assign
	 la $t1, -456($fp) 
	 li $t2, -1 
	 sw $t2, ($t1) 
		#______  GetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -464($fp) 
		#______  TypeOf
	 lw $t1, -464($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_23 
	 lw $t1, ($t1) 
tag_23: 
	 sw $t1, -468($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -468($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -472($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -472($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Load
	 la $t1, s_5 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_copy 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 sw $v1, -476($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -480($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -476($fp) 
	 lw $t2, -480($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -480($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -464($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -460($fp) 
	 addu $sp, $sp, 4 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -488($fp) 
	 li $t1, 3 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  GetAttr
	 li $t1, 4 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -492($fp) 
		#______  Assign
	 la $t1, -496($fp) 
	 li $t2, 1 
	 sw $t2, ($t1) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -496($fp) 
	 lw $t2, -488($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  TypeOf
	 lw $t1, -492($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_24 
	 lw $t1, ($t1) 
tag_24: 
	 sw $t1, -500($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -500($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -504($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -504($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_8 
		#______  Assign
	 la $t1, -496($fp) 
	 li $t2, 0 
	 sw $t2, ($t1) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -496($fp) 
	 lw $t2, -488($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Label
label_8: 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -488($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_9 
		#______  GetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -512($fp) 
		#______  TypeOf
	 lw $t1, -512($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_25 
	 lw $t1, ($t1) 
tag_25: 
	 sw $t1, -516($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -516($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -520($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -520($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Load
	 la $t1, s_6 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_copy 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 sw $v1, -524($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -528($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -524($fp) 
	 lw $t2, -528($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -528($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -512($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -508($fp) 
	 addu $sp, $sp, 4 
		#______  Assign
	 la $t1, -484($fp) 
	 lw $t2, -508($fp) 
	 sw $t2, ($t1) 
		#______  Goto
	 j label_10 
		#______  Label
label_9: 
		#______  GetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -536($fp) 
		#______  TypeOf
	 lw $t1, -536($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_26 
	 lw $t1, ($t1) 
tag_26: 
	 sw $t1, -540($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -540($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -544($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -544($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Load
	 la $t1, s_7 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_copy 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 sw $v1, -548($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -552($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -548($fp) 
	 lw $t2, -552($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -552($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -536($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -532($fp) 
	 addu $sp, $sp, 4 
		#______  Assign
	 la $t1, -484($fp) 
	 lw $t2, -532($fp) 
	 sw $t2, ($t1) 
		#______  Label
label_10: 
		#______  Allocate
	 li $a0, 32 
	 li $v0, 9 
	 syscall 
	 sw $v0, -556($fp) 
	 li $t1, 5 
	 sw $t1, ($v0) 
	 li $t1, 32 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  Param
	 lw $t1, -556($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  VCall
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal Math_Init 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -560($fp) 
	 addu $sp, $sp, 4 
		#______  SetAttr
	 li $t1, 4 
	 mul $t1, $t1, 4 
	 lw $t3, -556($fp) 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Assign
	 la $t1, -564($fp) 
	 lw $t2, -556($fp) 
	 sw $t2, ($t1) 
		#______  GetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -572($fp) 
		#______  TypeOf
	 lw $t1, -572($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_27 
	 lw $t1, ($t1) 
tag_27: 
	 sw $t1, -576($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -576($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -580($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -580($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  GetAttr
	 li $t1, 4 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -588($fp) 
		#______  TypeOf
	 lw $t1, -588($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_28 
	 lw $t1, ($t1) 
tag_28: 
	 sw $t1, -592($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -592($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -596($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -596($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Param
	 lw $t1, -588($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal Object_type_name 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -584($fp) 
	 addu $sp, $sp, 4 
		#______  Param
	 lw $t1, -584($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -572($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -568($fp) 
	 addu $sp, $sp, 4 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -604($fp) 
	 li $t1, 3 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  GetAttr
	 li $t1, 4 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -608($fp) 
		#______  Assign
	 la $t1, -612($fp) 
	 li $t2, 1 
	 sw $t2, ($t1) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -612($fp) 
	 lw $t2, -604($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  TypeOf
	 lw $t1, -608($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_29 
	 lw $t1, ($t1) 
tag_29: 
	 sw $t1, -616($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -616($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -620($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -620($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_11 
		#______  Assign
	 la $t1, -612($fp) 
	 li $t2, 0 
	 sw $t2, ($t1) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -612($fp) 
	 lw $t2, -604($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Label
label_11: 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -604($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_12 
		#______  GetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -628($fp) 
		#______  TypeOf
	 lw $t1, -628($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_30 
	 lw $t1, ($t1) 
tag_30: 
	 sw $t1, -632($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -632($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -636($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -636($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Load
	 la $t1, s_8 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_copy 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 sw $v1, -640($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -644($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -640($fp) 
	 lw $t2, -644($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -644($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -628($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -624($fp) 
	 addu $sp, $sp, 4 
		#______  Assign
	 la $t1, -600($fp) 
	 lw $t2, -624($fp) 
	 sw $t2, ($t1) 
		#______  Goto
	 j label_13 
		#______  Label
label_12: 
		#______  GetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -652($fp) 
		#______  TypeOf
	 lw $t1, -652($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_31 
	 lw $t1, ($t1) 
tag_31: 
	 sw $t1, -656($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -656($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -660($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -660($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Load
	 la $t1, s_9 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_copy 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 sw $v1, -664($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -668($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -664($fp) 
	 lw $t2, -668($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -668($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -652($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -648($fp) 
	 addu $sp, $sp, 4 
		#______  Assign
	 la $t1, -600($fp) 
	 lw $t2, -648($fp) 
	 sw $t2, ($t1) 
		#______  Label
label_13: 
		#______  Assign
	 la $t1, -16($fp) 
	 lw $t2, -600($fp) 
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
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Allocate
	 li $a0, 96 
	 li $v0, 9 
	 syscall 
	 sw $v0, -12($fp) 
	 li $t1, 6 
	 sw $t1, ($v0) 
	 li $t1, 96 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
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
		#______  Assign
	 la $t1, -16($fp) 
	 lw $t2, -20($fp) 
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
	 sw $v0, -24($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  Assign
	 la $t1, -28($fp) 
	 li $t2, 0 
	 sw $t2, ($t1) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -28($fp) 
	 lw $t2, -24($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  SetAttr
	 li $t1, 3 
	 mul $t1, $t1, 4 
	 lw $t3, -24($fp) 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Assign
	 la $t1, -32($fp) 
	 li $t2, -1 
	 sw $t2, ($t1) 
		#______  SetAttr
	 li $t1, 4 
	 mul $t1, $t1, 4 
	 lw $t3, -32($fp) 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
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
	 sw $v1, -40($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -36($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 1 
	 mul $t1, $t1, 4 
	 lw $t3, -40($fp) 
	 lw $t2, -36($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  SetAttr
	 li $t1, 5 
	 mul $t1, $t1, 4 
	 lw $t3, -36($fp) 
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
	 sw $v1, -44($fp) 
	 addu $sp, $sp, 0 
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
	 beq $t1, $t4, tag_32 
	 lw $t1, ($t1) 
tag_32: 
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
	 beq $t1, $t2, label_15 
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
	 j label_14 
		#______  Label
label_15: 
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
	 beq $t1, $t2, label_16 
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
	 j label_14 
		#______  Label
label_16: 
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
	 beq $t1, $t2, label_17 
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
	 j label_14 
		#______  Label
label_17: 
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
	 beq $t1, $t2, label_18 
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
	 j label_14 
		#______  Label
label_18: 
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
	 beq $t1, $t2, label_19 
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
	 j label_14 
		#______  Label
label_19: 
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
	 beq $t1, $t2, label_20 
		#______  Load
	 la $t1, Type_Math 
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
	 j label_14 
		#______  Label
label_20: 
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
	 beq $t1, $t2, label_21 
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
	 j label_14 
		#______  Label
label_21: 
		#______  Label
label_14: 
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
