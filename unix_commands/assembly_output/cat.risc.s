	.file	"cat.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sd	ra,152(sp)
	sd	s0,144(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sd	a1,-160(s0)
	sw	a5,-148(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a5,-160(s0)
	addi	a5,a5,8
	ld	a5,0(a5)
	li	a1,0
	mv	a0,a5
	call	open@plt
	mv	a5,a0
	sw	a5,-136(s0)
	j	.L2
.L3:
	lw	a4,-132(s0)
	addi	a5,s0,-128
	mv	a2,a4
	mv	a1,a5
	li	a0,1
	call	write@plt
.L2:
	addi	a4,s0,-128
	lw	a5,-136(s0)
	li	a2,99
	mv	a1,a4
	mv	a0,a5
	call	read@plt
	mv	a5,a0
	sw	a5,-132(s0)
	lw	a5,-132(s0)
	sext.w	a5,a5
	bne	a5,zero,.L3
	li	a0,10
	call	putchar@plt
	lw	a5,-136(s0)
	mv	a0,a5
	call	close@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L5
	call	__stack_chk_fail@plt
.L5:
	mv	a0,a4
	ld	ra,152(sp)
	.cfi_restore 1
	ld	s0,144(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
