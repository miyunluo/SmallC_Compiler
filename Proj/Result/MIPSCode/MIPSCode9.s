.data
temp: .space 452
var0: .space 400
var1: .space 400
var2: .space 400
var3: .space 400
var4: .space 4
var5: .space 4

.text
__printf_one:
li $v0, 1
syscall
jr $ra
__scanf_one:
li $v0,5
syscall
jr $ra

__print:
add $11, $29, -72
move $14, $11
move $11, $14
li $15, 1
sw $15, 0($11)
move $15, $14
lw $15, 0($15)
lw $13, 32($a3)
move $16, $13
lw $16, 0($16)
sub $16, $15, $16
li $15, 1
bltz $16, l3
li $15, 0
l3:
beqz $15, l2
l0:
lw $12, 20($a3)
move $15, $12
move $16, $14
lw $16, 0($16)
mul $17, $16, 4
add $15, $15, $17
lw $15, 0($15)
move $4, $15
sw $31, -10000($29)
jal __printf_one
lw $31, -10000($29)
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
move $11, $12
move $12, $13
lw $12, 0($12)
mul $13, $12, 4
add $11, $11, $13
lw $11, 0($11)
move $4, $11
sw $31, -10000($29)
jal __printf_one
lw $31, -10000($29)
li $11, 0
add $12, $29, 4
sw $11, 0($12)
jr $ra
jr $ra
__DFS:
add $12, $29, 0
add $18, $29, -320
move $19, $18
add $18, $29, -324
move $20, $18
add $18, $29, -328
move $20, $18
move $18, $12
lw $18, 0($18)
lw $13, 32($a3)
move $20, $13
lw $20, 0($20)
sub $20, $18, $20
li $18, 1
bgtz $20, l7
li $18, 0
l7:
beqz $18, l5
lw $11, 24($a3)
move $18, $11
lw $18, 0($18)
sub $20, $18, 3
li $18, 1
bltz $20, l10
li $18, 0
l10:
beqz $18, l8
sw $31, -336($29)
add $29, $29, -336
sw $11, 24($a3)
sw $12, 332($sp)
sw $13, 32($a3)
sw $19, 328($sp)
jal __print
lw $11, 24($a3)
lw $12, 332($sp)
lw $13, 32($a3)
lw $19, 328($sp)
sub $29, $29, -336
lw $31, -336($29)
add $18, $29, -332
move $20, $18
j l9
l8:
l9:
move $18, $11
move $11, $18
lw $18, 0($18)
add $18, $18, 1
sw $18, 0($11)
li $11, 0
add $18, $29, 8
sw $11, 0($18)
jr $ra
j l6
l5:
l6:
move $11, $19
li $18, 1
sw $18, 0($11)
move $18, $19
lw $18, 0($18)
move $20, $13
lw $20, 0($20)
add $20, $20, 1
sub $20, $18, $20
li $18, 1
bltz $20, l14
li $18, 0
l14:
beqz $18, l13
l11:
lw $14, 8($a3)
move $18, $14
move $20, $19
lw $20, 0($20)
mul $21, $20, 4
add $18, $18, $21
lw $18, 0($18)
move $a1, $18
li $18, 1
beqz $a1, lnot0
li $18, 0
lnot0:
lw $15, 12($a3)
move $20, $15
move $21, $19
lw $21, 0($21)
move $22, $12
lw $22, 0($22)
add $21, $21, $22
mul $22, $21, 4
add $20, $20, $22
lw $20, 0($20)
move $a1, $20
li $20, 1
beqz $a1, lnot1
li $20, 0
lnot1:
and $20, $18, $20
li $18, 1
bnez $20, l17
li $18, 0
l17:
lw $16, 16($a3)
move $20, $16
move $21, $19
lw $21, 0($21)
move $22, $12
lw $22, 0($22)
sub $21, $21, $22
add $21, $21, 15
mul $22, $21, 4
add $20, $20, $22
lw $20, 0($20)
move $a1, $20
li $20, 1
beqz $a1, lnot2
li $20, 0
lnot2:
and $20, $18, $20
li $18, 1
bnez $20, l18
li $18, 0
l18:
beqz $18, l15
move $18, $14
move $20, $19
lw $20, 0($20)
mul $21, $20, 4
add $18, $18, $21
li $20, 1
sw $20, 0($18)
move $18, $15
move $20, $19
lw $20, 0($20)
move $21, $12
lw $21, 0($21)
add $20, $20, $21
mul $21, $20, 4
add $18, $18, $21
li $20, 1
sw $20, 0($18)
move $18, $16
move $20, $19
lw $20, 0($20)
move $21, $12
lw $21, 0($21)
sub $20, $20, $21
add $20, $20, 15
mul $21, $20, 4
add $18, $18, $21
li $20, 1
sw $20, 0($18)
lw $17, 20($a3)
move $18, $17
move $20, $12
lw $20, 0($20)
mul $21, $20, 4
add $18, $18, $21
move $20, $19
lw $20, 0($20)
sw $20, 0($18)
sw $31, -336($29)
move $18, $12
lw $18, 0($18)
add $18, $18, 1
add $20, $29, -340
sw $18, 0($20)
add $29, $29, -340
sw $11, 268($sp)
sw $12, 336($sp)
sw $13, 32($a3)
sw $14, 8($a3)
sw $15, 12($a3)
sw $16, 16($a3)
sw $17, 20($a3)
sw $19, 332($sp)
jal __DFS
lw $11, 268($sp)
lw $12, 336($sp)
lw $13, 32($a3)
lw $14, 8($a3)
lw $15, 12($a3)
lw $16, 16($a3)
lw $17, 20($a3)
lw $19, 332($sp)
sub $29, $29, -340
lw $31, -336($29)
add $18, $29, -332
move $20, $18
move $18, $14
move $20, $19
lw $20, 0($20)
mul $21, $20, 4
add $18, $18, $21
li $20, 0
sw $20, 0($18)
move $18, $15
move $20, $19
lw $20, 0($20)
move $21, $12
lw $21, 0($21)
add $20, $20, $21
mul $21, $20, 4
add $18, $18, $21
li $20, 0
sw $20, 0($18)
move $18, $16
move $20, $19
lw $20, 0($20)
move $21, $12
lw $21, 0($21)
sub $20, $20, $21
add $20, $20, 15
mul $21, $20, 4
add $18, $18, $21
li $20, 0
sw $20, 0($18)
j l16
l15:
l16:
l12:
move $11, $19
move $18, $11
lw $11, 0($11)
add $11, $11, 1
sw $11, 0($18)
move $11, $19
lw $11, 0($11)
move $18, $13
lw $18, 0($18)
add $18, $18, 1
sub $18, $11, $18
li $11, 1
bltz $18, l19
li $11, 0
l19:
bnez $11, l11
l13:
li $11, 0
add $12, $29, 8
sw $11, 0($12)
jr $ra
jr $ra
main:
la $a3, temp
la $t0, var0
sw $t0, 8($a3)
la $t0, var1
sw $t0, 12($a3)
la $t0, var2
sw $t0, 16($a3)
la $t0, var3
sw $t0, 20($a3)
la $t0, var4
sw $t0, 24($a3)
la $t0, var5
sw $t0, 32($a3)
li $8, 0
sw $8, 28($a3)
lw $8, 28($a3)
lw $9, 24($a3)
sw $8, 0($9)
lw $11, 32($a3)
move $12, $11
jal __scanf_one
sw $2, 0($12)
li $11, 1
add $12, $29, -44
sw $11, 0($12)
add $29, $29, -44
jal __DFS
sub $29, $29, -44
add $11, $29, -36
move $12, $11
lw $14, 24($a3)
move $11, $14
lw $11, 0($11)
move $4, $11
jal __printf_one
li $11, 0
add $12, $29, 4
sw $11, 0($12)
j __program_end
j __program_end
__program_end:
li $v0, 10
syscall
