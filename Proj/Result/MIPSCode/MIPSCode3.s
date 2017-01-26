.data
temp: .space 84

.text
__printf_one:
li $v0, 1
syscall
jr $ra
__scanf_one:
li $v0,5
syscall
jr $ra
main:
la $a3, temp
add $11, $29, -80
move $13, $11
add $11, $29, -84
move $14, $11
move $11, $13
jal __scanf_one
lw $12, -12($a3)
sw $2, 0($11)
move $11, $13
lw $11, 0($11)
move $4, $11
jal __printf_one
move $11, $14
li $15, 0
sw $15, 0($11)
move $15, $14
lw $15, 0($15)
move $16, $13
lw $16, 0($16)
sub $16, $15, $16
li $15, 1
bltz $16, l3
li $15, 0
l3:
beqz $15, l2
l0:
add $15, $29, -88
move $16, $15
move $15, $16
jal __scanf_one
sw $2, 0($15)
move $15, $16
lw $15, 0($15)
move $4, $15
jal __printf_one
l1:
move $11, $14
move $15, $11
lw $11, 0($11)
add $11, $11, 1
sw $11, 0($15)
move $11, $14
lw $11, 0($11)
move $15, $13
lw $15, 0($15)
sub $15, $11, $15
li $11, 1
bltz $15, l4
li $11, 0
l4:
bnez $11, l0
l2:
li $11, 0
add $12, $29, 4
sw $11, 0($12)
j __program_end
j __program_end
__program_end:
li $v0, 10
syscall
