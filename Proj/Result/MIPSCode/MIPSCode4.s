.data
temp: .space 124

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
add $11, $29, -120
move $13, $11
move $11, $13
jal __scanf_one
sw $2, 0($11)
move $11, $13
lw $11, 0($11)
rem $11, $11, 2
sub $12, $11, 0
li $11, 1
beqz $12, l2
li $11, 0
l2:
beqz $11, l0
move $11, $13
lw $11, 0($11)
move $4, $11
jal __printf_one
j l1
l0:
move $11, $13
move $12, $13
lw $12, 0($12)
sub $12, $12, 1
div $12, $12, 2
sw $12, 0($11)
move $11, $13
lw $11, 0($11)
rem $11, $11, 2
sub $12, $11, 0
li $11, 1
beqz $12, l5
li $11, 0
l5:
beqz $11, l3
move $11, $13
lw $11, 0($11)
move $4, $11
jal __printf_one
j l4
l3:
move $11, $13
move $12, $13
lw $12, 0($12)
sub $12, $12, 1
div $12, $12, 2
sw $12, 0($11)
move $11, $13
lw $11, 0($11)
rem $11, $11, 2
sub $12, $11, 0
li $11, 1
beqz $12, l8
li $11, 0
l8:
beqz $11, l6
move $11, $13
lw $11, 0($11)
move $4, $11
jal __printf_one
j l7
l6:
move $11, $13
lw $11, 0($11)
rem $11, $11, 2
sub $12, $11, 0
li $11, 1
beqz $12, l11
li $11, 0
l11:
beqz $11, l9
move $11, $13
lw $11, 0($11)
move $4, $11
jal __printf_one
j l10
l9:
l10:
l7:
l4:
l1:
li $11, 0
add $12, $29, 4
sw $11, 0($12)
j __program_end
j __program_end
__program_end:
li $v0, 10
syscall
