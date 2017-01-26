.data
temp: .space 76
var0: .space 4
var1: .space 4
var2: .space 16
var3: .space 20
var4: .space 20
var5: .space 20

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
sw $t0, 12($a3)
la $t0, var2
sw $t0, 16($a3)
la $t0, var3
sw $t0, 20($a3)
la $t0, var4
sw $t0, 24($a3)
la $t0, var5
sw $t0, 28($a3)
lw $14, 8($a3)
move $11, $14
add $11, $11, 0
jal __scanf_one
lw $12, -12($a3)
sw $2, 0($11)
lw $15, 12($a3)
move $11, $15
add $11, $11, 0
jal __scanf_one
sw $2, 0($11)
lw $16, 16($a3)
move $11, $16
add $11, $11, 12
jal __scanf_one
sw $2, 0($11)
lw $13, 20($a3)
move $11, $13
add $11, $11, 16
li $12, 1234567890
neg $12, $12
sw $12, 0($11)
move $11, $13
add $11, $11, 16
lw $11, 0($11)
move $4, $11
jal __printf_one
move $11, $14
add $11, $11, 0
lw $11, 0($11)
move $4, $11
jal __printf_one
move $11, $15
add $11, $11, 0
lw $11, 0($11)
move $4, $11
jal __printf_one
move $11, $16
add $11, $11, 12
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
