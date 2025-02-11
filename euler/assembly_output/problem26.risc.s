	.file	"problem26.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%u\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB20:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sw	zero,-72(s0)
	sw	zero,-68(s0)
	addi	a5,s0,-56
	mv	a0,a5
	call	__gmpz_init@plt
	addi	a5,s0,-40
	mv	a0,a5
	call	__gmpz_init@plt
	li	a5,2
	sw	a5,-64(s0)
	j	.L2
.L8:
	li	a5,1
	sw	a5,-60(s0)
	lw	a5,-64(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L11
	lw	a5,-64(s0)
	mv	a4,a5
	li	a5,5
	remuw	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L11
	addi	a5,s0,-56
	li	a1,10
	mv	a0,a5
	call	__gmpz_set_ui@plt
	j	.L6
.L7:
	lw	a5,-60(s0)
	addiw	a5,a5,1
	sw	a5,-60(s0)
	addi	a4,s0,-56
	addi	a5,s0,-56
	li	a2,10
	mv	a1,a4
	mv	a0,a5
	call	__gmpz_mul_ui@plt
.L6:
	lwu	a3,-64(s0)
	addi	a4,s0,-56
	addi	a5,s0,-40
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	__gmpz_fdiv_r_ui@plt
	addi	a5,s0,-40
	li	a1,1
	mv	a0,a5
	call	__gmpz_cmp_ui@plt
	mv	a5,a0
	bne	a5,zero,.L7
	lw	a5,-60(s0)
	mv	a4,a5
	lw	a5,-72(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bleu	a4,a5,.L5
	lw	a5,-60(s0)
	sw	a5,-72(s0)
	lw	a5,-64(s0)
	sw	a5,-68(s0)
	j	.L5
.L11:
	nop
.L5:
	lw	a5,-64(s0)
	addiw	a5,a5,1
	sw	a5,-64(s0)
.L2:
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,999
	bleu	a4,a5,.L8
	lw	a5,-68(s0)
	mv	a1,a5
	lla	a0,.LC0
	call	printf@plt
	addi	a5,s0,-56
	mv	a0,a5
	call	__gmpz_clear@plt
	addi	a5,s0,-40
	mv	a0,a5
	call	__gmpz_clear@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L10
	call	__stack_chk_fail@plt
.L10:
	mv	a0,a4
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE20:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
