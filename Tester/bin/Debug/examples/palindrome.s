.data 
	 _abortException: 	 .asciiz 	 "Exception: Abort" 
	 _argOutOfRangeException: 	 .asciiz 	 "Exception: Argument out of range" 
	 _caseOnVoidException: 	 .asciiz 	 "Exception: Case on void" 
	 _dispatchOnVoidException: 	 .asciiz 	 "Exception: Dispatch on void" 
	 _divideByZeroException: 	 .asciiz 	 "Exception: Divide by zero" 
	 _executionOfACaseStatementWithoutAMatchingBranchException: 	 .asciiz 	 "Exception: Execution of a case statement without a matching branch" 
	 _negativeLengthException: 	 .asciiz 	 "Exception: Negative lenght" 
	 _substringOutOfRangeException: 	 .asciiz 	 "Exception: Substring out of range" 
	 Inheritance_Tree: 	 .word 	 -1, 0, 0, 0, 0, 1 
	 _prompt: 	 .space 	 1026 
	 empty: 	 .asciiz 	 "" 
	 Object: 	 .asciiz 	 "Object" 
	 IO: 	 .asciiz 	 "IO" 
	 String: 	 .asciiz 	 "String" 
	 Bool: 	 .asciiz 	 "Bool" 
	 Int: 	 .asciiz 	 "Int" 
	 Main: 	 .asciiz 	 "Main" 
	 s_0: 	 .asciiz 	 "peep" 
	 s_1: 	 .asciiz 	 "false\n" 
	 s_2: 	 .asciiz 	 "true\n" 
	 s_3: 	 .asciiz 	 "\n" 
	 s_4: 	 .asciiz 	 "\n" 
	 s_5: 	 .asciiz 	 "\n" 
	 s_6: 	 .asciiz 	 "\n" 
	 s_7: 	 .asciiz 	 "\n" 
	 s_8: 	 .asciiz 	 "that was not a palindrome\n" 
	 s_9: 	 .asciiz 	 "that was a palindrome\n" 
	 s_10: 	 .asciiz 	 "false" 
	 s_11: 	 .asciiz 	 "true" 
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
Main_pal: 
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
		#______  Cil_Argument
	 lw $t1, 4($fp) 
	 sw $t1, -12($fp) 
		#______  Cil_Argument
	 lw $t1, 8($fp) 
	 sw $t1, -16($fp) 
		#______  Assign
	 la $t1, -32($fp) 
	 lw $t2, -16($fp) 
	 sw $t2, ($t1) 
		#______  TypeOf
	 lw $t1, -32($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_0 
	 lw $t1, ($t1) 
tag_0: 
	 sw $t1, -36($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -36($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -40($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -40($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Param
	 lw $t1, -32($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  CilEqualValue
	 li $t1, 0 
	 lw $t2, -36($fp) 
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
	 li $t1, 0 
	 lw $t2, -44($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_1 
		#______  Label
label_1: 
		#______  CilEqualValue
	 li $t1, 1 
	 lw $t2, -36($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -48($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -48($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_2 
		#______  Label
label_2: 
		#______  CilEqualValue
	 li $t1, 2 
	 lw $t2, -36($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -52($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -52($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_3 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_length 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -28($fp) 
	 addu $sp, $sp, 8 
		#______  Goto
	 j label_0 
		#______  Label
label_3: 
		#______  CilEqualValue
	 li $t1, 3 
	 lw $t2, -36($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -56($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -56($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_4 
		#______  Label
label_4: 
		#______  CilEqualValue
	 li $t1, 4 
	 lw $t2, -36($fp) 
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
	 li $t1, 0 
	 lw $t2, -60($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_5 
		#______  Label
label_5: 
		#______  CilEqualValue
	 li $t1, 5 
	 lw $t2, -36($fp) 
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
	 li $t1, 0 
	 lw $t2, -64($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_6 
		#______  Label
label_6: 
		#______  Label
label_0: 
		#______  Assign
	 la $t1, -68($fp) 
	 li $t2, 0 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -72($fp) 
	 li $t1, 4 
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
		#______  CilEqualValue
	 li $t3, 2 
	 lw $t1, -28($fp) 
	 lw $t4, ($t1) 
	 bne $t4, $t3, tag_1 
	 lw $t2, -72($fp) 
	 lw $t4, ($t2) 
	 bne $t4, $t3, tag_1 
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
	 lw $t2, -72($fp) 
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
	 bne $t3, $t4, tag_2 
	 lw $t1, -28($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -72($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
tag_3: 
	 beqz $v1, tag_2 
	 sub $v1, $v1, 1 
	 lb $t5, ($t1) 
	 lb $t6, ($t2) 
	 seq $t3, $t5, $t6 
	 bne $t3, $t4, tag_2 
	 add $t1, $t1, 1 
	 add $t2, $t2, 1 
	 j tag_3 
tag_1: 
	 lw $t1, -28($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -72($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 seq $t3, $t1, $t2 
tag_2: 
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
	 beq $t1, $t2, label_7 
		#______  Assign
	 la $t1, -88($fp) 
	 lw $t2, -16($fp) 
	 sw $t2, ($t1) 
		#______  TypeOf
	 lw $t1, -88($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_4 
	 lw $t1, ($t1) 
tag_4: 
	 sw $t1, -92($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -92($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -96($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -96($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Param
	 lw $t1, -88($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  CilEqualValue
	 li $t1, 0 
	 lw $t2, -92($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -100($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -100($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_10 
		#______  Label
label_10: 
		#______  CilEqualValue
	 li $t1, 1 
	 lw $t2, -92($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -104($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -104($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_11 
		#______  Label
label_11: 
		#______  CilEqualValue
	 li $t1, 2 
	 lw $t2, -92($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -108($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -108($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_12 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_length 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -84($fp) 
	 addu $sp, $sp, 8 
		#______  Goto
	 j label_9 
		#______  Label
label_12: 
		#______  CilEqualValue
	 li $t1, 3 
	 lw $t2, -92($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -112($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -112($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_13 
		#______  Label
label_13: 
		#______  CilEqualValue
	 li $t1, 4 
	 lw $t2, -92($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -116($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -116($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_14 
		#______  Label
label_14: 
		#______  CilEqualValue
	 li $t1, 5 
	 lw $t2, -92($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -120($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -120($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_15 
		#______  Label
label_15: 
		#______  Label
label_9: 
		#______  Assign
	 la $t1, -124($fp) 
	 li $t2, 1 
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
		#______  CilEqualValue
	 li $t3, 2 
	 lw $t1, -84($fp) 
	 lw $t4, ($t1) 
	 bne $t4, $t3, tag_5 
	 lw $t2, -128($fp) 
	 lw $t4, ($t2) 
	 bne $t4, $t3, tag_5 
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
	 lw $t2, -128($fp) 
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
	 bne $t3, $t4, tag_6 
	 lw $t1, -84($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -128($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
tag_7: 
	 beqz $v1, tag_6 
	 sub $v1, $v1, 1 
	 lb $t5, ($t1) 
	 lb $t6, ($t2) 
	 seq $t3, $t5, $t6 
	 bne $t3, $t4, tag_6 
	 add $t1, $t1, 1 
	 add $t2, $t2, 1 
	 j tag_7 
tag_5: 
	 lw $t1, -84($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -128($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 seq $t3, $t1, $t2 
tag_6: 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -80($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -80($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_16 
		#______  Assign
	 la $t1, -144($fp) 
	 lw $t2, -16($fp) 
	 sw $t2, ($t1) 
		#______  TypeOf
	 lw $t1, -144($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_8 
	 lw $t1, ($t1) 
tag_8: 
	 sw $t1, -148($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -148($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -152($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -152($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Assign
	 la $t1, -156($fp) 
	 li $t2, 0 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -160($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -156($fp) 
	 lw $t2, -160($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Assign
	 la $t1, -164($fp) 
	 li $t2, 1 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -168($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -164($fp) 
	 lw $t2, -168($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -168($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -160($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -144($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  CilEqualValue
	 li $t1, 0 
	 lw $t2, -148($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -172($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -172($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_19 
		#______  Label
label_19: 
		#______  CilEqualValue
	 li $t1, 1 
	 lw $t2, -148($fp) 
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
	 li $t1, 0 
	 lw $t2, -176($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_20 
		#______  Label
label_20: 
		#______  CilEqualValue
	 li $t1, 2 
	 lw $t2, -148($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -180($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -180($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_21 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_substr 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -140($fp) 
	 addu $sp, $sp, 8 
		#______  Goto
	 j label_18 
		#______  Label
label_21: 
		#______  CilEqualValue
	 li $t1, 3 
	 lw $t2, -148($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -184($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -184($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_22 
		#______  Label
label_22: 
		#______  CilEqualValue
	 li $t1, 4 
	 lw $t2, -148($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -188($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -188($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_23 
		#______  Label
label_23: 
		#______  CilEqualValue
	 li $t1, 5 
	 lw $t2, -148($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -192($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -192($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_24 
		#______  Label
label_24: 
		#______  Label
label_18: 
		#______  Assign
	 la $t1, -200($fp) 
	 lw $t2, -16($fp) 
	 sw $t2, ($t1) 
		#______  TypeOf
	 lw $t1, -200($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_9 
	 lw $t1, ($t1) 
tag_9: 
	 sw $t1, -204($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -204($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -208($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -208($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Assign
	 la $t1, -220($fp) 
	 lw $t2, -16($fp) 
	 sw $t2, ($t1) 
		#______  TypeOf
	 lw $t1, -220($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_10 
	 lw $t1, ($t1) 
tag_10: 
	 sw $t1, -224($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -224($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -228($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -228($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Param
	 lw $t1, -220($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  CilEqualValue
	 li $t1, 0 
	 lw $t2, -224($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -232($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -232($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_26 
		#______  Label
label_26: 
		#______  CilEqualValue
	 li $t1, 1 
	 lw $t2, -224($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -236($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -236($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_27 
		#______  Label
label_27: 
		#______  CilEqualValue
	 li $t1, 2 
	 lw $t2, -224($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -240($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -240($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_28 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_length 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -216($fp) 
	 addu $sp, $sp, 8 
		#______  Goto
	 j label_25 
		#______  Label
label_28: 
		#______  CilEqualValue
	 li $t1, 3 
	 lw $t2, -224($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -244($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -244($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_29 
		#______  Label
label_29: 
		#______  CilEqualValue
	 li $t1, 4 
	 lw $t2, -224($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -248($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -248($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_30 
		#______  Label
label_30: 
		#______  CilEqualValue
	 li $t1, 5 
	 lw $t2, -224($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -252($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -252($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_31 
		#______  Label
label_31: 
		#______  Label
label_25: 
		#______  Assign
	 la $t1, -256($fp) 
	 li $t2, 1 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -260($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -256($fp) 
	 lw $t2, -260($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  CilMinus
	 lw $t1, -216($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -260($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 sub $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -212($fp) 
	 li $t4, 4 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  Assign
	 la $t1, -264($fp) 
	 li $t2, 1 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -268($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -264($fp) 
	 lw $t2, -268($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -268($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -212($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -200($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  CilEqualValue
	 li $t1, 0 
	 lw $t2, -204($fp) 
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
	 li $t1, 0 
	 lw $t2, -272($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_33 
		#______  Label
label_33: 
		#______  CilEqualValue
	 li $t1, 1 
	 lw $t2, -204($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -276($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -276($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_34 
		#______  Label
label_34: 
		#______  CilEqualValue
	 li $t1, 2 
	 lw $t2, -204($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -280($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -280($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_35 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_substr 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -196($fp) 
	 addu $sp, $sp, 8 
		#______  Goto
	 j label_32 
		#______  Label
label_35: 
		#______  CilEqualValue
	 li $t1, 3 
	 lw $t2, -204($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -284($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -284($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_36 
		#______  Label
label_36: 
		#______  CilEqualValue
	 li $t1, 4 
	 lw $t2, -204($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -288($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -288($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_37 
		#______  Label
label_37: 
		#______  CilEqualValue
	 li $t1, 5 
	 lw $t2, -204($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -292($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -292($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_38 
		#______  Label
label_38: 
		#______  Label
label_32: 
		#______  CilEqualValue
	 li $t3, 2 
	 lw $t1, -140($fp) 
	 lw $t4, ($t1) 
	 bne $t4, $t3, tag_11 
	 lw $t2, -196($fp) 
	 lw $t4, ($t2) 
	 bne $t4, $t3, tag_11 
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
	 lw $t2, -196($fp) 
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
	 bne $t3, $t4, tag_12 
	 lw $t1, -140($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -196($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
tag_13: 
	 beqz $v1, tag_12 
	 sub $v1, $v1, 1 
	 lb $t5, ($t1) 
	 lb $t6, ($t2) 
	 seq $t3, $t5, $t6 
	 bne $t3, $t4, tag_12 
	 add $t1, $t1, 1 
	 add $t2, $t2, 1 
	 j tag_13 
tag_11: 
	 lw $t1, -140($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -196($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 seq $t3, $t1, $t2 
tag_12: 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -136($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -136($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_39 
		#______  Assign
	 la $t1, -296($fp) 
	 li $t2, 0 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -300($fp) 
	 li $t1, 3 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -296($fp) 
	 lw $t2, -300($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Assign
	 la $t1, -132($fp) 
	 lw $t2, -300($fp) 
	 sw $t2, ($t1) 
		#______  Goto
	 j label_40 
		#______  Label
label_39: 
		#______  Assign
	 la $t1, -308($fp) 
	 lw $t2, -12($fp) 
	 sw $t2, ($t1) 
		#______  Assign
	 la $t1, -316($fp) 
	 lw $t2, -16($fp) 
	 sw $t2, ($t1) 
		#______  TypeOf
	 lw $t1, -316($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_14 
	 lw $t1, ($t1) 
tag_14: 
	 sw $t1, -320($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -320($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -324($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -324($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Assign
	 la $t1, -328($fp) 
	 li $t2, 1 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -332($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -328($fp) 
	 lw $t2, -332($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Assign
	 la $t1, -344($fp) 
	 lw $t2, -16($fp) 
	 sw $t2, ($t1) 
		#______  TypeOf
	 lw $t1, -344($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_15 
	 lw $t1, ($t1) 
tag_15: 
	 sw $t1, -348($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -348($fp) 
	 seq $t3, $t1, $t2 
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
	 li $t1, 1 
	 lw $t2, -352($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Param
	 lw $t1, -344($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  CilEqualValue
	 li $t1, 0 
	 lw $t2, -348($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -356($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -356($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_42 
		#______  Label
label_42: 
		#______  CilEqualValue
	 li $t1, 1 
	 lw $t2, -348($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -360($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -360($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_43 
		#______  Label
label_43: 
		#______  CilEqualValue
	 li $t1, 2 
	 lw $t2, -348($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -364($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -364($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_44 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_length 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -340($fp) 
	 addu $sp, $sp, 8 
		#______  Goto
	 j label_41 
		#______  Label
label_44: 
		#______  CilEqualValue
	 li $t1, 3 
	 lw $t2, -348($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -368($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -368($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_45 
		#______  Label
label_45: 
		#______  CilEqualValue
	 li $t1, 4 
	 lw $t2, -348($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -372($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -372($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_46 
		#______  Label
label_46: 
		#______  CilEqualValue
	 li $t1, 5 
	 lw $t2, -348($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -376($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -376($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_47 
		#______  Label
label_47: 
		#______  Label
label_41: 
		#______  Assign
	 la $t1, -380($fp) 
	 li $t2, 2 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -384($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -380($fp) 
	 lw $t2, -384($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  CilMinus
	 lw $t1, -340($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -384($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 sub $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -336($fp) 
	 li $t4, 4 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  Param
	 lw $t1, -336($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -332($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -316($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  CilEqualValue
	 li $t1, 0 
	 lw $t2, -320($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -388($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -388($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_49 
		#______  Label
label_49: 
		#______  CilEqualValue
	 li $t1, 1 
	 lw $t2, -320($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -392($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -392($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_50 
		#______  Label
label_50: 
		#______  CilEqualValue
	 li $t1, 2 
	 lw $t2, -320($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -396($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -396($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_51 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_substr 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -312($fp) 
	 addu $sp, $sp, 8 
		#______  Goto
	 j label_48 
		#______  Label
label_51: 
		#______  CilEqualValue
	 li $t1, 3 
	 lw $t2, -320($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -400($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -400($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_52 
		#______  Label
label_52: 
		#______  CilEqualValue
	 li $t1, 4 
	 lw $t2, -320($fp) 
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
	 li $t1, 0 
	 lw $t2, -404($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_53 
		#______  Label
label_53: 
		#______  CilEqualValue
	 li $t1, 5 
	 lw $t2, -320($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -408($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -408($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_54 
		#______  Label
label_54: 
		#______  Label
label_48: 
		#______  Param
	 lw $t1, -312($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -308($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal Main_pal 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -304($fp) 
	 addu $sp, $sp, 8 
		#______  Assign
	 la $t1, -132($fp) 
	 lw $t2, -304($fp) 
	 sw $t2, ($t1) 
		#______  Label
label_40: 
		#______  Assign
	 la $t1, -76($fp) 
	 lw $t2, -132($fp) 
	 sw $t2, ($t1) 
		#______  Goto
	 j label_17 
		#______  Label
label_16: 
		#______  Assign
	 la $t1, -412($fp) 
	 li $t2, 1 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -416($fp) 
	 li $t1, 3 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -412($fp) 
	 lw $t2, -416($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Assign
	 la $t1, -76($fp) 
	 lw $t2, -416($fp) 
	 sw $t2, ($t1) 
		#______  Label
label_17: 
		#______  Assign
	 la $t1, -20($fp) 
	 lw $t2, -76($fp) 
	 sw $t2, ($t1) 
		#______  Goto
	 j label_8 
		#______  Label
label_7: 
		#______  Assign
	 la $t1, -420($fp) 
	 li $t2, 1 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -424($fp) 
	 li $t1, 3 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -420($fp) 
	 lw $t2, -424($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Assign
	 la $t1, -20($fp) 
	 lw $t2, -424($fp) 
	 sw $t2, ($t1) 
		#______  Label
label_8: 
		#______  CIL_Return
	 lw $v1, -20($fp) 
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
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
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
	 la $t1, -24($fp) 
	 li $t2, 0 
	 sw $t2, ($t1) 
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
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -24($fp) 
	 lw $t2, -28($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -28($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_55 
		#______  Assign
	 la $t1, -36($fp) 
	 lw $t2, -12($fp) 
	 sw $t2, ($t1) 
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
	 sw $v1, -40($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -44($fp) 
	 li $t1, 2 
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
		#______  Param
	 lw $t1, -44($fp) 
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
		#______  Assign
	 la $t1, -20($fp) 
	 lw $t2, -32($fp) 
	 sw $t2, ($t1) 
		#______  Goto
	 j label_56 
		#______  Label
label_55: 
		#______  Assign
	 la $t1, -52($fp) 
	 lw $t2, -12($fp) 
	 sw $t2, ($t1) 
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
	 sw $v1, -56($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -60($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -56($fp) 
	 lw $t2, -60($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -60($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -52($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -48($fp) 
	 addu $sp, $sp, 4 
		#______  Assign
	 la $t1, -20($fp) 
	 lw $t2, -48($fp) 
	 sw $t2, ($t1) 
		#______  Label
label_56: 
		#______  Assign
	 la $t1, -68($fp) 
	 li $t2, 1 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -72($fp) 
	 li $t1, 4 
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
		#______  CilNeg
	 lw $t1, -72($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 not $t3, $t1 
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
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -64($fp) 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Assign
	 la $t1, -76($fp) 
	 lw $t2, -64($fp) 
	 sw $t2, ($t1) 
		#______  Assign
	 la $t1, -84($fp) 
	 lw $t2, -12($fp) 
	 sw $t2, ($t1) 
		#______  GetAttr
	 li $t1, 3 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -88($fp) 
		#______  Param
	 lw $t1, -88($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -84($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -80($fp) 
	 addu $sp, $sp, 4 
		#______  Assign
	 la $t1, -96($fp) 
	 lw $t2, -12($fp) 
	 sw $t2, ($t1) 
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
	 sw $v1, -100($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -104($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -100($fp) 
	 lw $t2, -104($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -104($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -96($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -92($fp) 
	 addu $sp, $sp, 4 
		#______  Assign
	 la $t1, -112($fp) 
	 lw $t2, -12($fp) 
	 sw $t2, ($t1) 
		#______  GetAttr
	 li $t1, 3 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -120($fp) 
		#______  TypeOf
	 lw $t1, -120($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_16 
	 lw $t1, ($t1) 
tag_16: 
	 sw $t1, -124($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -124($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -128($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -128($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Param
	 lw $t1, -120($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  CilEqualValue
	 li $t1, 0 
	 lw $t2, -124($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -132($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -132($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_58 
		#______  Label
label_58: 
		#______  CilEqualValue
	 li $t1, 1 
	 lw $t2, -124($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -136($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -136($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_59 
		#______  Label
label_59: 
		#______  CilEqualValue
	 li $t1, 2 
	 lw $t2, -124($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -140($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -140($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_60 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_length 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -116($fp) 
	 addu $sp, $sp, 4 
		#______  Goto
	 j label_57 
		#______  Label
label_60: 
		#______  CilEqualValue
	 li $t1, 3 
	 lw $t2, -124($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -144($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -144($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_61 
		#______  Label
label_61: 
		#______  CilEqualValue
	 li $t1, 4 
	 lw $t2, -124($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -148($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -148($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_62 
		#______  Label
label_62: 
		#______  CilEqualValue
	 li $t1, 5 
	 lw $t2, -124($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -152($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -152($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_63 
		#______  Label
label_63: 
		#______  Label
label_57: 
		#______  Param
	 lw $t1, -116($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -112($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_int 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -108($fp) 
	 addu $sp, $sp, 4 
		#______  Assign
	 la $t1, -160($fp) 
	 lw $t2, -12($fp) 
	 sw $t2, ($t1) 
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
	 sw $v1, -164($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -168($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -164($fp) 
	 lw $t2, -168($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -168($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -160($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -156($fp) 
	 addu $sp, $sp, 4 
		#______  Assign
	 la $t1, -176($fp) 
	 lw $t2, -12($fp) 
	 sw $t2, ($t1) 
		#______  GetAttr
	 li $t1, 3 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -184($fp) 
		#______  TypeOf
	 lw $t1, -184($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_17 
	 lw $t1, ($t1) 
tag_17: 
	 sw $t1, -188($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -188($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -192($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -192($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Assign
	 la $t1, -196($fp) 
	 li $t2, 0 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -200($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -196($fp) 
	 lw $t2, -200($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Assign
	 la $t1, -204($fp) 
	 li $t2, 1 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -208($fp) 
	 li $t1, 4 
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
	 lw $t1, -200($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -184($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  CilEqualValue
	 li $t1, 0 
	 lw $t2, -188($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -212($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -212($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_65 
		#______  Label
label_65: 
		#______  CilEqualValue
	 li $t1, 1 
	 lw $t2, -188($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -216($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -216($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_66 
		#______  Label
label_66: 
		#______  CilEqualValue
	 li $t1, 2 
	 lw $t2, -188($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -220($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -220($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_67 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_substr 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -180($fp) 
	 addu $sp, $sp, 4 
		#______  Goto
	 j label_64 
		#______  Label
label_67: 
		#______  CilEqualValue
	 li $t1, 3 
	 lw $t2, -188($fp) 
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
	 li $t1, 0 
	 lw $t2, -224($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_68 
		#______  Label
label_68: 
		#______  CilEqualValue
	 li $t1, 4 
	 lw $t2, -188($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -228($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -228($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_69 
		#______  Label
label_69: 
		#______  CilEqualValue
	 li $t1, 5 
	 lw $t2, -188($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -232($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -232($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_70 
		#______  Label
label_70: 
		#______  Label
label_64: 
		#______  Param
	 lw $t1, -180($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -176($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -172($fp) 
	 addu $sp, $sp, 4 
		#______  Assign
	 la $t1, -240($fp) 
	 lw $t2, -12($fp) 
	 sw $t2, ($t1) 
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
	 sw $v1, -244($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -248($fp) 
	 li $t1, 2 
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
		#______  Param
	 lw $t1, -248($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -240($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -236($fp) 
	 addu $sp, $sp, 4 
		#______  Assign
	 la $t1, -256($fp) 
	 lw $t2, -12($fp) 
	 sw $t2, ($t1) 
		#______  GetAttr
	 li $t1, 3 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -264($fp) 
		#______  TypeOf
	 lw $t1, -264($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_18 
	 lw $t1, ($t1) 
tag_18: 
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
		#______  GetAttr
	 li $t1, 3 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -284($fp) 
		#______  TypeOf
	 lw $t1, -284($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_19 
	 lw $t1, ($t1) 
tag_19: 
	 sw $t1, -288($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -288($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -292($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -292($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Param
	 lw $t1, -284($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  CilEqualValue
	 li $t1, 0 
	 lw $t2, -288($fp) 
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
	 li $t1, 0 
	 lw $t2, -296($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_72 
		#______  Label
label_72: 
		#______  CilEqualValue
	 li $t1, 1 
	 lw $t2, -288($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -300($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -300($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_73 
		#______  Label
label_73: 
		#______  CilEqualValue
	 li $t1, 2 
	 lw $t2, -288($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -304($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -304($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_74 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_length 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -280($fp) 
	 addu $sp, $sp, 4 
		#______  Goto
	 j label_71 
		#______  Label
label_74: 
		#______  CilEqualValue
	 li $t1, 3 
	 lw $t2, -288($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -308($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -308($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_75 
		#______  Label
label_75: 
		#______  CilEqualValue
	 li $t1, 4 
	 lw $t2, -288($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -312($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -312($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_76 
		#______  Label
label_76: 
		#______  CilEqualValue
	 li $t1, 5 
	 lw $t2, -288($fp) 
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
	 li $t1, 0 
	 lw $t2, -316($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_77 
		#______  Label
label_77: 
		#______  Label
label_71: 
		#______  Assign
	 la $t1, -320($fp) 
	 li $t2, 1 
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
		#______  CilMinus
	 lw $t1, -280($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -324($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 sub $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -276($fp) 
	 li $t4, 4 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  Assign
	 la $t1, -328($fp) 
	 li $t2, 1 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -332($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -328($fp) 
	 lw $t2, -332($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -332($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -276($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -264($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  CilEqualValue
	 li $t1, 0 
	 lw $t2, -268($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -336($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -336($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_79 
		#______  Label
label_79: 
		#______  CilEqualValue
	 li $t1, 1 
	 lw $t2, -268($fp) 
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
	 li $t1, 0 
	 lw $t2, -340($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_80 
		#______  Label
label_80: 
		#______  CilEqualValue
	 li $t1, 2 
	 lw $t2, -268($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -344($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -344($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_81 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_substr 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -260($fp) 
	 addu $sp, $sp, 4 
		#______  Goto
	 j label_78 
		#______  Label
label_81: 
		#______  CilEqualValue
	 li $t1, 3 
	 lw $t2, -268($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -348($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -348($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_82 
		#______  Label
label_82: 
		#______  CilEqualValue
	 li $t1, 4 
	 lw $t2, -268($fp) 
	 seq $t3, $t1, $t2 
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
	 beq $t1, $t2, label_83 
		#______  Label
label_83: 
		#______  CilEqualValue
	 li $t1, 5 
	 lw $t2, -268($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -356($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -356($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_84 
		#______  Label
label_84: 
		#______  Label
label_78: 
		#______  Param
	 lw $t1, -260($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -256($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -252($fp) 
	 addu $sp, $sp, 4 
		#______  Assign
	 la $t1, -364($fp) 
	 lw $t2, -12($fp) 
	 sw $t2, ($t1) 
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
	 sw $v1, -368($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -372($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -368($fp) 
	 lw $t2, -372($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -372($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -364($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -360($fp) 
	 addu $sp, $sp, 4 
		#______  Assign
	 la $t1, -380($fp) 
	 lw $t2, -12($fp) 
	 sw $t2, ($t1) 
		#______  GetAttr
	 li $t1, 3 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -388($fp) 
		#______  TypeOf
	 lw $t1, -388($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_20 
	 lw $t1, ($t1) 
tag_20: 
	 sw $t1, -392($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -392($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -396($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -396($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Assign
	 la $t1, -400($fp) 
	 li $t2, 1 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -404($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -400($fp) 
	 lw $t2, -404($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  GetAttr
	 li $t1, 3 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -416($fp) 
		#______  TypeOf
	 lw $t1, -416($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_21 
	 lw $t1, ($t1) 
tag_21: 
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
		#______  Param
	 lw $t1, -416($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  CilEqualValue
	 li $t1, 0 
	 lw $t2, -420($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -428($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -428($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_86 
		#______  Label
label_86: 
		#______  CilEqualValue
	 li $t1, 1 
	 lw $t2, -420($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -432($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -432($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_87 
		#______  Label
label_87: 
		#______  CilEqualValue
	 li $t1, 2 
	 lw $t2, -420($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -436($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -436($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_88 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_length 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -412($fp) 
	 addu $sp, $sp, 4 
		#______  Goto
	 j label_85 
		#______  Label
label_88: 
		#______  CilEqualValue
	 li $t1, 3 
	 lw $t2, -420($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -440($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -440($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_89 
		#______  Label
label_89: 
		#______  CilEqualValue
	 li $t1, 4 
	 lw $t2, -420($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -444($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -444($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_90 
		#______  Label
label_90: 
		#______  CilEqualValue
	 li $t1, 5 
	 lw $t2, -420($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -448($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -448($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_91 
		#______  Label
label_91: 
		#______  Label
label_85: 
		#______  Assign
	 la $t1, -452($fp) 
	 li $t2, 2 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -456($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -452($fp) 
	 lw $t2, -456($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  CilMinus
	 lw $t1, -412($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -456($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 sub $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -408($fp) 
	 li $t4, 4 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  Param
	 lw $t1, -408($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -404($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -388($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  CilEqualValue
	 li $t1, 0 
	 lw $t2, -392($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -460($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -460($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_93 
		#______  Label
label_93: 
		#______  CilEqualValue
	 li $t1, 1 
	 lw $t2, -392($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -464($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -464($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_94 
		#______  Label
label_94: 
		#______  CilEqualValue
	 li $t1, 2 
	 lw $t2, -392($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -468($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -468($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_95 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_substr 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -384($fp) 
	 addu $sp, $sp, 4 
		#______  Goto
	 j label_92 
		#______  Label
label_95: 
		#______  CilEqualValue
	 li $t1, 3 
	 lw $t2, -392($fp) 
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
	 li $t1, 0 
	 lw $t2, -472($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_96 
		#______  Label
label_96: 
		#______  CilEqualValue
	 li $t1, 4 
	 lw $t2, -392($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -476($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -476($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_97 
		#______  Label
label_97: 
		#______  CilEqualValue
	 li $t1, 5 
	 lw $t2, -392($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -480($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -480($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_98 
		#______  Label
label_98: 
		#______  Label
label_92: 
		#______  Param
	 lw $t1, -384($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -380($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -376($fp) 
	 addu $sp, $sp, 4 
		#______  Assign
	 la $t1, -488($fp) 
	 lw $t2, -12($fp) 
	 sw $t2, ($t1) 
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
	 sw $v1, -492($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -496($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -492($fp) 
	 lw $t2, -496($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -496($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -488($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -484($fp) 
	 addu $sp, $sp, 4 
		#______  Assign
	 la $t1, -508($fp) 
	 lw $t2, -12($fp) 
	 sw $t2, ($t1) 
		#______  GetAttr
	 li $t1, 3 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -512($fp) 
		#______  Param
	 lw $t1, -512($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -508($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal Main_pal 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -504($fp) 
	 addu $sp, $sp, 4 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -504($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_99 
		#______  Assign
	 la $t1, -520($fp) 
	 lw $t2, -12($fp) 
	 sw $t2, ($t1) 
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
	 lw $t1, -520($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -516($fp) 
	 addu $sp, $sp, 4 
		#______  Assign
	 la $t1, -500($fp) 
	 lw $t2, -516($fp) 
	 sw $t2, ($t1) 
		#______  Goto
	 j label_100 
		#______  Label
label_99: 
		#______  Assign
	 la $t1, -536($fp) 
	 lw $t2, -12($fp) 
	 sw $t2, ($t1) 
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
	 sw $v1, -540($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -544($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -540($fp) 
	 lw $t2, -544($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -544($fp) 
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
	 la $t1, -500($fp) 
	 lw $t2, -532($fp) 
	 sw $t2, ($t1) 
		#______  Label
label_100: 
		#______  GetAttr
	 li $t1, 3 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -560($fp) 
		#______  TypeOf
	 lw $t1, -560($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_22 
	 lw $t1, ($t1) 
tag_22: 
	 sw $t1, -564($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -564($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -568($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -568($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Assign
	 la $t1, -572($fp) 
	 li $t2, 0 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -576($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -572($fp) 
	 lw $t2, -576($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Assign
	 la $t1, -580($fp) 
	 li $t2, 1 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -584($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -580($fp) 
	 lw $t2, -584($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -584($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -576($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -560($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  CilEqualValue
	 li $t1, 0 
	 lw $t2, -564($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -588($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -588($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_102 
		#______  Label
label_102: 
		#______  CilEqualValue
	 li $t1, 1 
	 lw $t2, -564($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -592($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -592($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_103 
		#______  Label
label_103: 
		#______  CilEqualValue
	 li $t1, 2 
	 lw $t2, -564($fp) 
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
	 li $t1, 0 
	 lw $t2, -596($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_104 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_substr 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -556($fp) 
	 addu $sp, $sp, 4 
		#______  Goto
	 j label_101 
		#______  Label
label_104: 
		#______  CilEqualValue
	 li $t1, 3 
	 lw $t2, -564($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -600($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -600($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_105 
		#______  Label
label_105: 
		#______  CilEqualValue
	 li $t1, 4 
	 lw $t2, -564($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -604($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -604($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_106 
		#______  Label
label_106: 
		#______  CilEqualValue
	 li $t1, 5 
	 lw $t2, -564($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -608($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -608($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_107 
		#______  Label
label_107: 
		#______  Label
label_101: 
		#______  GetAttr
	 li $t1, 3 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -616($fp) 
		#______  TypeOf
	 lw $t1, -616($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_23 
	 lw $t1, ($t1) 
tag_23: 
	 sw $t1, -620($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -620($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -624($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -624($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  GetAttr
	 li $t1, 3 
	 mul $t1, $t1, 4 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 lw $t2, ($t2) 
	 sw $t2, -636($fp) 
		#______  TypeOf
	 lw $t1, -636($fp) 
	 li $t4, -1 
	 beq $t1, $t4, tag_24 
	 lw $t1, ($t1) 
tag_24: 
	 sw $t1, -640($fp) 
		#______  CilEqualValue
	 li $t1, -1 
	 lw $t2, -640($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -644($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -644($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, DispatchOnVoidException 
		#______  Param
	 lw $t1, -636($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  CilEqualValue
	 li $t1, 0 
	 lw $t2, -640($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -648($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -648($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_109 
		#______  Label
label_109: 
		#______  CilEqualValue
	 li $t1, 1 
	 lw $t2, -640($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -652($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -652($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_110 
		#______  Label
label_110: 
		#______  CilEqualValue
	 li $t1, 2 
	 lw $t2, -640($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -656($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -656($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_111 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_length 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -632($fp) 
	 addu $sp, $sp, 4 
		#______  Goto
	 j label_108 
		#______  Label
label_111: 
		#______  CilEqualValue
	 li $t1, 3 
	 lw $t2, -640($fp) 
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
	 li $t1, 0 
	 lw $t2, -660($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_112 
		#______  Label
label_112: 
		#______  CilEqualValue
	 li $t1, 4 
	 lw $t2, -640($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -664($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -664($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_113 
		#______  Label
label_113: 
		#______  CilEqualValue
	 li $t1, 5 
	 lw $t2, -640($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -668($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -668($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_114 
		#______  Label
label_114: 
		#______  Label
label_108: 
		#______  Assign
	 la $t1, -672($fp) 
	 li $t2, 1 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -676($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -672($fp) 
	 lw $t2, -676($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  CilMinus
	 lw $t1, -632($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -676($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 sub $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -628($fp) 
	 li $t4, 4 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  Assign
	 la $t1, -680($fp) 
	 li $t2, 1 
	 sw $t2, ($t1) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -684($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -680($fp) 
	 lw $t2, -684($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -684($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -628($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -616($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  CilEqualValue
	 li $t1, 0 
	 lw $t2, -620($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -688($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -688($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_116 
		#______  Label
label_116: 
		#______  CilEqualValue
	 li $t1, 1 
	 lw $t2, -620($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -692($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -692($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_117 
		#______  Label
label_117: 
		#______  CilEqualValue
	 li $t1, 2 
	 lw $t2, -620($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -696($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -696($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_118 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_substr 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -612($fp) 
	 addu $sp, $sp, 4 
		#______  Goto
	 j label_115 
		#______  Label
label_118: 
		#______  CilEqualValue
	 li $t1, 3 
	 lw $t2, -620($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -700($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -700($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_119 
		#______  Label
label_119: 
		#______  CilEqualValue
	 li $t1, 4 
	 lw $t2, -620($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -704($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -704($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_120 
		#______  Label
label_120: 
		#______  CilEqualValue
	 li $t1, 5 
	 lw $t2, -620($fp) 
	 seq $t3, $t1, $t2 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -708($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 0 
	 lw $t2, -708($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_121 
		#______  Label
label_121: 
		#______  Label
label_115: 
		#______  CilEqualValue
	 li $t3, 2 
	 lw $t1, -556($fp) 
	 lw $t4, ($t1) 
	 bne $t4, $t3, tag_25 
	 lw $t2, -612($fp) 
	 lw $t4, ($t2) 
	 bne $t4, $t3, tag_25 
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
	 lw $t2, -612($fp) 
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
	 bne $t3, $t4, tag_26 
	 lw $t1, -556($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -612($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
tag_27: 
	 beqz $v1, tag_26 
	 sub $v1, $v1, 1 
	 lb $t5, ($t1) 
	 lb $t6, ($t2) 
	 seq $t3, $t5, $t6 
	 bne $t3, $t4, tag_26 
	 add $t1, $t1, 1 
	 add $t2, $t2, 1 
	 j tag_27 
tag_25: 
	 lw $t1, -556($fp) 
	 add $t1, $t1, 8 
	 lw $t1, ($t1) 
	 lw $t2, -612($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 seq $t3, $t1, $t2 
tag_26: 
	 li $a0, 12 
	 li $v0, 9 
	 syscall 
	 sw $v0, -552($fp) 
	 li $t4, 3 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 li $t4, 12 
	 sw $t4, ($v0) 
	 add $v0, $v0, 4 
	 sw $t3, ($v0) 
		#______  ConditionalJump
	 li $t1, 1 
	 lw $t2, -552($fp) 
	 add $t2, $t2, 8 
	 lw $t2, ($t2) 
	 beq $t1, $t2, label_122 
		#______  Assign
	 la $t1, -716($fp) 
	 lw $t2, -12($fp) 
	 sw $t2, ($t1) 
		#______  Load
	 la $t1, s_10 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_copy 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 sw $v1, -720($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -724($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -720($fp) 
	 lw $t2, -724($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -724($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -716($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -712($fp) 
	 addu $sp, $sp, 4 
		#______  Assign
	 la $t1, -548($fp) 
	 lw $t2, -712($fp) 
	 sw $t2, ($t1) 
		#______  Goto
	 j label_123 
		#______  Label
label_122: 
		#______  Assign
	 la $t1, -732($fp) 
	 lw $t2, -12($fp) 
	 sw $t2, ($t1) 
		#______  Load
	 la $t1, s_11 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal String_copy 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 addu $sp, $sp, 4 
	 sw $v1, -736($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -740($fp) 
	 li $t1, 2 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -736($fp) 
	 lw $t2, -740($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -740($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Param
	 lw $t1, -732($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal IO_out_string 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -728($fp) 
	 addu $sp, $sp, 4 
		#______  Assign
	 la $t1, -548($fp) 
	 lw $t2, -728($fp) 
	 sw $t2, ($t1) 
		#______  Label
label_123: 
		#______  Assign
	 la $t1, -16($fp) 
	 lw $t2, -548($fp) 
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
		#______  Allocate
	 li $a0, 64 
	 li $v0, 9 
	 syscall 
	 sw $v0, -12($fp) 
	 li $t1, 5 
	 sw $t1, ($v0) 
	 li $t1, 64 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -16($fp) 
	 li $t1, 4 
	 sw $t1, ($v0) 
	 li $t1, 48 
	 add $v0, $v0, 4 
	 sw $t1, ($v0) 
		#______  Assign
	 la $t1, -20($fp) 
	 li $t2, 0 
	 sw $t2, ($t1) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -20($fp) 
	 lw $t2, -16($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  SetAttr
	 li $t1, 2 
	 mul $t1, $t1, 4 
	 lw $t3, -16($fp) 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
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
	 sw $v1, -28($fp) 
		#______  Allocate
	 li $a0, 48 
	 li $v0, 9 
	 syscall 
	 sw $v0, -32($fp) 
	 li $t1, 2 
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
		#______  SetAttr
	 li $t1, 3 
	 mul $t1, $t1, 4 
	 lw $t3, -24($fp) 
	 lw $t2, -12($fp) 
	 add $t2, $t2, $t1 
	 sw $t3, ($t2) 
		#______  Param
	 lw $t1, -12($fp) 
	 subu $sp, $sp, 4 
	 sw $t1, ($sp) 
		#______  Call
	 subu $sp, $sp, 4 
	 sw $ra, ($sp) 
	 jal Main_main 
	 lw $ra, ($sp) 
	 addu $sp, $sp, 4 
	 sw $v1, -36($fp) 
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
	 beq $t1, $t4, tag_28 
	 lw $t1, ($t1) 
tag_28: 
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
	 beq $t1, $t2, label_125 
		#______  Load
	 la $t1, Object 
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
	 j label_124 
		#______  Label
label_125: 
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
	 beq $t1, $t2, label_126 
		#______  Load
	 la $t1, IO 
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
	 j label_124 
		#______  Label
label_126: 
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
	 beq $t1, $t2, label_127 
		#______  Load
	 la $t1, String 
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
	 j label_124 
		#______  Label
label_127: 
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
	 beq $t1, $t2, label_128 
		#______  Load
	 la $t1, Bool 
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
	 j label_124 
		#______  Label
label_128: 
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
	 beq $t1, $t2, label_129 
		#______  Load
	 la $t1, Int 
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
	 j label_124 
		#______  Label
label_129: 
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
	 beq $t1, $t2, label_130 
		#______  Load
	 la $t1, Main 
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
	 j label_124 
		#______  Label
label_130: 
		#______  Label
label_124: 
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
