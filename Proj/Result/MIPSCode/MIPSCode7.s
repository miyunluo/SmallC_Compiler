.data
temp: .space 284
var0: .space 4
var1: .space 20

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
la $t0, var0
sw $t0, 8($a3)
la $t0, var1
sw $t0, 16($a3)
li $8, 913
sw $8, 12($a3)
lw $9, 12($a3)
neg $8, $9
sw $8, 12($a3)
lw $8, 12($a3)
lw $9, 8($a3)
sw $8, 0($9)
li $8, 0
sw $8, 20($a3)
lw $8, 20($a3)
lw $9, 16($a3)
sw $8, 0($9)
li $8, 1
sw $8, 24($a3)
lw $8, 24($a3)
lw $9, 16($a3)
sw $8, 4($9)
li $8, 2
sw $8, 28($a3)
lw $8, 28($a3)
lw $9, 16($a3)
sw $8, 8($9)
li $8, 3
sw $8, 32($a3)
lw $8, 32($a3)
lw $9, 16($a3)
sw $8, 12($9)
li $8, 4
sw $8, 36($a3)
lw $8, 36($a3)
lw $9, 16($a3)
sw $8, 16($9)
add $11, $29, -248
move $16, $11
add $11, $29, -252
move $17, $11
add $11, $29, -276
move $18, $11
lw $12, 8($a3)
move $11, $12
jal __scanf_one
sw $2, 0($11)
move $11, $16
li $12, 0
sw $12, 0($11)
move $12, $16
lw $12, 0($12)
sub $19, $12, 2
li $12, 1
bltz $19, l3
li $12, 0
l3:
beqz $12, l2
l0:
move $12, $17
li $19, 0
sw $19, 0($12)
move $19, $17
lw $19, 0($19)
sub $20, $19, 3
li $19, 1
bltz $20, l7
li $19, 0
l7:
beqz $19, l6
l4:
move $19, $18
move $20, $16
lw $20, 0($20)
mul $21, $20, 12
add $19, $19, $21
move $20, $17
lw $20, 0($20)
mul $21, $20, 4
add $19, $19, $21
jal __scanf_one
sw $2, 0($19)
l5:
move $12, $17
move $19, $12
lw $12, 0($12)
add $12, $12, 1
sw $12, 0($19)
move $12, $17
lw $12, 0($12)
sub $19, $12, 3
li $12, 1
bltz $19, l8
li $12, 0
l8:
bnez $12, l4
l6:
l1:
move $11, $16
move $12, $11
lw $11, 0($11)
add $11, $11, 1
sw $11, 0($12)
move $11, $16
lw $11, 0($11)
sub $12, $11, 2
li $11, 1
bltz $12, l9
li $11, 0
l9:
bnez $11, l0
l2:
move $11, $16
li $12, 0
sw $12, 0($11)
move $12, $16
lw $12, 0($12)
sub $13, $12, 5
li $12, 1
bltz $13, l13
li $12, 0
l13:
beqz $12, l12
l10:
add $12, $29, -280
move $15, $12
li $12, 1000000
sw $12, 0($15)
move $12, $15
lw $12, 0($12)
move $4, $12
jal __printf_one
lw $14, 16($a3)
move $12, $14
move $13, $16
lw $13, 0($13)
mul $17, $13, 4
add $12, $12, $17
lw $12, 0($12)
move $4, $12
jal __printf_one
l11:
move $11, $16
move $12, $11
lw $11, 0($11)
add $11, $11, 1
sw $11, 0($12)
move $11, $16
lw $11, 0($11)
sub $12, $11, 5
li $11, 1
bltz $12, l14
li $11, 0
l14:
bnez $11, l10
l12:
move $11, $16
li $12, 0
sw $12, 0($11)
move $12, $16
lw $12, 0($12)
sub $13, $12, 2
li $12, 1
bltz $13, l18
li $12, 0
l18:
beqz $12, l17
l15:
move $12, $15
li $13, 0
sw $13, 0($12)
move $13, $15
lw $13, 0($13)
sub $14, $13, 3
li $13, 1
bltz $14, l22
li $13, 0
l22:
beqz $13, l21
l19:
move $13, $18
move $14, $16
lw $14, 0($14)
mul $17, $14, 12
add $13, $13, $17
move $14, $15
lw $14, 0($14)
mul $17, $14, 4
add $13, $13, $17
lw $13, 0($13)
move $4, $13
jal __printf_one
l20:
move $12, $15
move $13, $12
lw $12, 0($12)
add $12, $12, 1
sw $12, 0($13)
move $12, $15
lw $12, 0($12)
sub $13, $12, 3
li $12, 1
bltz $13, l23
li $12, 0
l23:
bnez $12, l19
l21:
l16:
move $11, $16
move $12, $11
lw $11, 0($11)
add $11, $11, 1
sw $11, 0($12)
move $11, $16
lw $11, 0($11)
sub $12, $11, 2
li $11, 1
bltz $12, l24
li $11, 0
l24:
bnez $11, l15
l17:
li $11, 0
add $12, $29, 4
sw $11, 0($12)
j __program_end
j __program_end
__program_end:
li $v0, 10
syscall
