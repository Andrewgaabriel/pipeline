main:                                   # @main
        addi    sp, sp, -336
        sw      ra, 332(sp)                     # 4-byte Folded Spill
        sw      s0, 328(sp)                     # 4-byte Folded Spill
        addi    s0, sp, 336
        li      a0, 0
        sw      a0, -12(s0)
        li      a1, 5 # dimensão
        sw      a1, -316(s0)
        sw      a1, -320(s0)
        sw      a0, -324(s0)
        j       LBB0_1

LBB0_1:                                # =>This Loop Header: Depth=1
        lw      a0, -324(s0)
        lw      a1, -316(s0)
        bge     a0, a1, LBB0_8
        j       LBB0_2
LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
        li      a0, 0
        sw      a0, -328(s0)
        j       LBB0_3
LBB0_3:                                #   Parent Loop BB0_1 Depth=1
        lw      a0, -328(s0)
        lw      a1, -320(s0)
        bge     a0, a1, LBB0_6
        j       LBB0_4
LBB0_4:                                #   in Loop: Header=BB0_3 Depth=2
        lw      a1, -324(s0)
        lw      a2, -328(s0)
        add     a0, a1, a2
        li      a3, 20
        mul     a4, a1, a3
        addi    a1, s0, -112
        add     a1, a1, a4
        slli    a2, a2, 2
        add     a1, a1, a2
        sw      a0, 0(a1)
        lw      a2, -324(s0)
        lw      a1, -328(s0)
        sub     a0, a2, a1
        mul     a3, a1, a3
        addi    a1, s0, -212
        add     a1, a1, a3
        slli    a2, a2, 2
        add     a1, a1, a2
        sw      a0, 0(a1)
        j       LBB0_5
LBB0_5:                                #   in Loop: Header=BB0_3 Depth=2
        lw      a0, -328(s0)
        addi    a0, a0, 1
        sw      a0, -328(s0)
        j       LBB0_3
LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
        j       LBB0_7
LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
        lw      a0, -324(s0)
        addi    a0, a0, 1
        sw      a0, -324(s0)
        j       LBB0_1
LBB0_8:
        lw      a3, -316(s0)
        lw      a4, -320(s0)
        addi    a0, s0, -112
        addi    a1, s0, -212
        addi    a2, s0, -312
        call    matrix_mult
        lw      a0, -12(s0)
        lw      ra, 332(sp)                     # 4-byte Folded Reload
        lw      s0, 328(sp)                     # 4-byte Folded Reload
        addi    sp, sp, 336
        ret
matrix_mult:           # @matrix_mult
        addi    sp, sp, -48
        sw      ra, 44(sp)                      # 4-byte Folded Spill
        sw      s0, 40(sp)                      # 4-byte Folded Spill
        addi    s0, sp, 48
        sw      a0, -12(s0)
        sw      a1, -16(s0)
        sw      a2, -20(s0)
        sw      a3, -24(s0)
        sw      a4, -28(s0)
        li      a0, 0
        sw      a0, -40(s0)
        j       LBB1_1
LBB1_1:                                # =>This Loop Header: Depth=1
        lw      a0, -40(s0)
        lw      a1, -24(s0)
        bge     a0, a1, LBB1_12
        j       LBB1_2
LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
        li      a0, 0
        sw      a0, -44(s0)
        j       LBB1_3
LBB1_3:                                #   Parent Loop BB1_1 Depth=1
        lw      a0, -44(s0)
        lw      a1, -28(s0)
        bge     a0, a1, LBB1_10
        j       LBB1_4
LBB1_4:                                #   in Loop: Header=BB1_3 Depth=2
        li      a0, 0
        sw      a0, -36(s0)
        sw      a0, -32(s0)
        j       LBB1_5
LBB1_5:                                #   Parent Loop BB1_1 Depth=1
        lw      a0, -32(s0)
        lw      a1, -24(s0)
        bge     a0, a1, LBB1_8
        j       LBB1_6
LBB1_6:                                #   in Loop: Header=BB1_5 Depth=3
        lw      a0, -12(s0)
        lw      a1, -40(s0)
        li      a3, 20
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
        j       LBB1_7
LBB1_7:                                #   in Loop: Header=BB1_5 Depth=3
        lw      a0, -32(s0)
        addi    a0, a0, 1
        sw      a0, -32(s0)
        j       LBB1_5
LBB1_8:                                #   in Loop: Header=BB1_3 Depth=2
        lw      a0, -36(s0)
        lw      a1, -20(s0)
        lw      a2, -40(s0)
        li      a3, 20
        mul     a2, a2, a3
        add     a1, a1, a2
        lw      a2, -44(s0)
        slli    a2, a2, 2
        add     a1, a1, a2
        sw      a0, 0(a1)
        j       LBB1_9
LBB1_9:                                #   in Loop: Header=BB1_3 Depth=2
        lw      a0, -44(s0)
        addi    a0, a0, 1
        sw      a0, -44(s0)
        j       LBB1_3
LBB1_10:                               #   in Loop: Header=BB1_1 Depth=1
        j       LBB1_11
LBB1_11:                               #   in Loop: Header=BB1_1 Depth=1
        lw      a0, -40(s0)
        addi    a0, a0, 1
        sw      a0, -40(s0)
        j       LBB1_1
LBB1_12:
        lw      ra, 44(sp)                      # 4-byte Folded Reload
        lw      s0, 40(sp)                      # 4-byte Folded Reload
        addi    sp, sp, 48
        ret