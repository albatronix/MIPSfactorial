li $a0, 4

FACT:
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $a0, 0($sp)
	
	slti $t0, $a0, 1
	beq $t0, $zero, ELSE
	
	addi $v0, $zero, 1
	addi $sp, $sp, 8
	
	jr $ra
	
ELSE:
	addi $a0, $a0, -1
	jal FACT
	
	lw $a0, 0($sp)
	lw $ra 4($sp)
	addi $sp, $sp, 8
	mul $v0, $a0, $v0
	jr $ra