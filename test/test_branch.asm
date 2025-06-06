addi $t0, $zero, 5
addi $t1, $zero, 5
beq $t0, $t1, label_equal
addi $t2, $zero, 0       # Não deve executar
j end
label_equal:
addi $t2, $zero, 1       # Deve executar
end:
