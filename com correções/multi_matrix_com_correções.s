main:                                 

        addi    sp, sp, -1760
        sw      ra, 1756(sp)  
        sw      s0, 1752(sp)  
        addi    s0, sp, 1760
        li      a0, 0
        sw      a0, -16(s0)
        li      a1, 12
        sw      a1, -1748(s0)
        sw      a1, -1752(s0)
        sw      a0, -1756(s0)


label_1:
        lw      a0, -1756(s0)
        lw      a1, -1748(s0)
        bge     a0, a1, label_8

        li      a0, 0
        sw      a0, -1760(s0)


label_3:                                
        lw      a0, -1760(s0)
        lw      a1, -1752(s0)
        bge     a0, a1, label_6

        lw      a1, -1756(s0)
        lw      a2, -1760(s0)
        add     a0, a1, a2
        li      a3, 48
        mul     a4, a1, a3
        addi    a1, s0, -592
        add     a1, a1, a4
        slli    a2, a2, 2
        add     a1, a1, a2
        sw      a0, 0(a1)
        lw      a2, -1756(s0)
        lw      a1, -1760(s0)
        sub     a0, a2, a1
        mul     a3, a1, a3
        addi    a1, s0, -1168
        add     a1, a1, a3
        slli    a2, a2, 2
        add     a1, a1, a2
        sw      a0, 0(a1)

        lw      a0, -1760(s0)
        addi    a0, a0, 1
        sw      a0, -1760(s0)
        j       label_3

label_6:                                

        lw      a0, -1756(s0)
        addi    a0, a0, 1
        sw      a0, -1756(s0)
        j       label_1

label_8:
        lw      a3, -1748(s0)
        lw      a4, -1752(s0)
        addi    a0, s0, -592
        addi    a1, s0, -1168
        addi    a2, s0, -1744
        call    matrix_mult
        lw      a0, -16(s0)
        lw      ra, 1756(sp)                    
        lw      s0, 1752(sp)                    
        addi    sp, sp, 1760
        li a7, 10
        ecall

matrix_mult:                           

        addi    sp, sp, -48
        sw      ra, 44(sp)    
        sw      s0, 40(sp)    
        addi    s0, sp, 48
        sw      a0, -12(s0)
        sw      a1, -16(s0)
        sw      a2, -20(s0)
        sw      a3, -24(s0)
        sw      a4, -28(s0)
        li      a0, 0
        sw      a0, -40(s0)

label_mult_1:                                

        lw      a0, -40(s0)
        lw      a1, -24(s0)
        bge     a0, a1, label_mult_12

        li      a0, 0
        sw      a0, -44(s0)


label_mult_3:                                

        lw      a0, -44(s0)
        lw      a1, -28(s0)
        bge     a0, a1, label_mult_10

        li      a0, 0
        sw      a0, -36(s0)
        sw      a0, -32(s0)


label_mult_5:                                

        lw      a0, -32(s0)
        lw      a1, -24(s0)
        bge     a0, a1, label_mult_8

        lw      a0, -12(s0)
        lw      a1, -40(s0)
        li      a3, 48
        mul     a1, a1, a3
        add     a0, a0, a1
        lw      a2, -32(s0)
        slli    a1, a2, 2
        add     a0, a0, a1
        lw      a0, 0(a0)
        lw      a1, -16(s0)
        mul     a2, a2, a3
        add     a1, a1, a2
        lw      a2, -44(s0)
        slli    a2, a2, 2
        add     a1, a1, a2
        lw      a1, 0(a1)
        mul     a1, a0, a1
        lw      a0, -36(s0)
        add     a0, a0, a1
        sw      a0, -36(s0)

        lw      a0, -32(s0)
        addi    a0, a0, 1
        sw      a0, -32(s0)
        j       label_mult_5

label_mult_8:                                

        lw      a0, -36(s0)
        lw      a1, -20(s0)
        lw      a2, -40(s0)
        li      a3, 48
        mul     a2, a2, a3
        add     a1, a1, a2
        lw      a2, -44(s0)
        slli    a2, a2, 2
        add     a1, a1, a2
        sw      a0, 0(a1)

        lw      a0, -44(s0)
        addi    a0, a0, 1
        sw      a0, -44(s0)
        j       label_mult_3

label_mult_10:                              

        lw      a0, -40(s0)
        addi    a0, a0, 1
        sw      a0, -40(s0)
        j       label_mult_1

label_mult_12:

        lw      ra, 44(sp)                      # 4-byte Folded Reload
        lw      s0, 40(sp)                      # 4-byte Folded Reload
        addi    sp, sp, 48
        ret