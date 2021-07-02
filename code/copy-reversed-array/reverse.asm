	.text
	.globl reverse
	
reverse:
	# $a0 source array address
	# $a1 destination array address
	# $a2 number of elements
	
	move $t0 $a2
	addi $t0 $t0 -1 # get the last index
	mul $t0 $t0 4
	add $a1 $a1 $t0 # $a1 has the address of the last element
	
loop:
	beq $a2 $zero end
	lw $t0 0($a0) # load current element
	sw $t0 0($a1)
	
	# move addresses
	addi $a0 $a0 4
	addi $a1 $a1 -4
	
	addi $a2 $a2 -1
	
	j loop	
	
end:
	jr $ra