	.data
	enter_size: 
	
	
	.text
	.globl main
	
main:
	li $v0 9
	li $a0 8
	syscall 
	move $s0 $v0 # A base address
	
	li $v0 9
	li $a0 8
	syscall
	move $s1 $v0 # B base address
	
	li $t0 1
	sw $t0 0($s0)
	li $t0 2
	sw $t0 4($s0)
	# A is [1,2] 
	
	move $a0 $s0 # A
	move $a1 $s1 # B
	li $a2 2
	jal reverse
	
	li $v0 10
	syscall