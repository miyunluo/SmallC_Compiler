.data
temp: .space 220

.text
__printf_one:
li $v0, 1
syscall
jr $ra
__scanf_one:
li $v0,5
syscall
jr $ra
__divide:
add $11, $29, 0
add $12, $29, 4
move $13, $11
lw $13, 0($13)
move $11, $12
lw $11, 0($11)
rem $13, $13, $11
add $11, $29, 12
sw $13, 0($11)
jr $ra
jr $ra
__prime:
add $11, $29, 0
add $12, $29, -120
move $13, $12
add $12, $29, -124
move $14, $12
li $12, 1
sw $12, 0($14)
move $12, $11
lw $12, 0($12)
sub $15, $12, 2
li $12, 1
blez $15, l2
li $12, 0
l2:
beqz $12, l0
li $12, 0
add $15, $29, 8
sw $12, 0($15)
jr $ra
j l1
l0:
move $12, $13
li $15, 2
sw $15, 0($12)
move $15, $13
lw $15, 0($15)
move $16, $11
lw $16, 0($16)
sub $16, $15, $16
li $15, 1
bltz $16, l6
li $15, 0
l6:
beqz $15, l5
l3:
sw $31, -132($29)
move $15, $13
add $16, $29, -136
lw $15, 0($15)
sw $15, 0($16)
move $15, $11
add $16, $29, -140
lw $15, 0($15)
sw $15, 0($16)
add $29, $29, -140
sw $11, 136($sp)
sw $12, 96($sp)
sw $13, 132($sp)
sw $14, 124($sp)
jal __divide
lw $11, 136($sp)
lw $12, 96($sp)
lw $13, 132($sp)
lw $14, 124($sp)
sub $29, $29, -140
lw $31, -132($29)
add $15, $29, -128
move $16, $15
lw $16, 0($16)
sub $15, $16, 0
li $16, 1
beqz $15, l9
li $16, 0
l9:
beqz $16, l7
move $15, $14
li $16, 0
sw $16, 0($15)
j l4
j l8
l7:
l8:
l4:
move $12, $13
move $15, $13
lw $15, 0($15)
add $15, $15, 1
sw $15, 0($12)
move $12, $13
lw $12, 0($12)
move $15, $11
lw $15, 0($15)
sub $15, $12, $15
li $12, 1
bltz $15, l10
li $12, 0
l10:
bnez $12, l3
l5:
l1:
move $11, $14
add $12, $29, 8
lw $11, 0($11)
sw $11, 0($12)
jr $ra
jr $ra
main:
la $a3, temp
add $11, $29, -80
move $13, $11
li $11, 0
sw $11, 0($13)
add $11, $29, -84
move $14, $11
move $11, $13
jal __scanf_one
sw $2, 0($11)
move $11, $13
lw $11, 0($11)
sub $15, $11, 0
li $11, 1
bgez $15, l14
li $11, 0
l14:
beqz $11, l13
l11:
move $11, $14
jal __scanf_one
sw $2, 0($11)
move $11, $14
add $15, $29, -96
lw $11, 0($11)
sw $11, 0($15)
add $29, $29, -96
sw $12, 96($sp)
sw $13, 92($sp)
sw $14, 80($sp)
jal __prime
lw $12, 96($sp)
lw $13, 92($sp)
lw $14, 80($sp)
sub $29, $29, -96
add $11, $29, -88
move $15, $11
lw $15, 0($15)
move $4, $15
jal __printf_one
l12:
move $11, $13
move $15, $11
lw $11, 0($11)
add $11, $11, -1
sw $11, 0($15)
move $11, $13
lw $11, 0($11)
sub $15, $11, 0
li $11, 1
bgez $15, l15
li $11, 0
l15:
bnez $11, l11
l13:
li $11, 0
add $12, $29, 4
sw $11, 0($12)
j __program_end
j __program_end
__program_end:
li $v0, 10
syscall
