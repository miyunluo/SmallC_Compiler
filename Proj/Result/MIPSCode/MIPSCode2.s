.data
temp: .space 108
var0: .space 4
var1: .space 4

.text
__printf_one:
li $v0, 1
syscall
jr $ra
__scanf_one:
li $v0,5
syscall
jr $ra
__gcd:
add $11, $29, 0
add $12, $29, 4
move $13, $12
lw $13, 0($13)
move $a1, $13
li $13, 1
beqz $a1, lnot0
li $13, 0
lnot0:
beqz $13, l0
move $13, $11
add $14, $29, 12
lw $13, 0($13)
sw $13, 0($14)
jr $ra
j l1
l0:
l1:
sw $31, -60($29)
move $13, $11
lw $13, 0($13)
move $11, $12
lw $11, 0($11)
rem $13, $13, $11
add $11, $29, -64
sw $13, 0($11)
move $11, $12
add $12, $29, -68
lw $11, 0($11)
sw $11, 0($12)
add $29, $29, -68
jal __gcd
sub $29, $29, -68
lw $31, -60($29)
add $11, $29, -56
move $12, $11
add $11, $29, 12
lw $12, 0($12)
sw $12, 0($11)
jr $ra
jr $ra
main:
la $a3, temp
la $t0, var0
sw $t0, 8($a3)
la $t0, var1
sw $t0, 12($a3)
lw $14, 8($a3)
move $11, $14
jal __scanf_one
sw $2, 0($11)
lw $13, 12($a3)
move $11, $13
jal __scanf_one
sw $2, 0($11)
move $11, $13
add $12, $29, -52
lw $11, 0($11)
sw $11, 0($12)
move $11, $14
add $12, $29, -56
lw $11, 0($11)
sw $11, 0($12)
add $29, $29, -56
jal __gcd
sub $29, $29, -56
add $11, $29, -44
move $12, $11
lw $12, 0($12)
move $4, $12
jal __printf_one
li $11, 0
add $12, $29, 4
sw $11, 0($12)
j __program_end
j __program_end
__program_end:
li $v0, 10
syscall
