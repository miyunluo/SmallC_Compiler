.data
temp: .space 96

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
add $11, $29, -92
move $13, $11
add $11, $29, -96
move $14, $11
add $11, $29, -100
move $15, $11
add $11, $29, -120
move $16, $11
li $11, 0
sw $11, 0($16)
move $11, $13
jal __scanf_one
sw $2, 0($11)
move $11, $14
li $12, 8
sw $12, 0($11)
move $11, $15
li $12, 21
sw $12, 0($11)
move $11, $13
lw $11, 0($11)
move $4, $11
jal __printf_one
move $11, $14
lw $11, 0($11)
move $4, $11
jal __printf_one
move $11, $15
lw $11, 0($11)
move $4, $11
jal __printf_one
move $11, $16
li $12, 3
mul $13, $12, 4
add $11, $11, $13
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
