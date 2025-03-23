	.file	"problem33.c"
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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	li	a5,1
	sw	a5,-56(s0)
	li	a5,1
	sw	a5,-52(s0)
	li	a5,11
	sw	a5,-48(s0)
	j	.L2
.L12:
	lw	a5,-48(s0)
	mv	a4,a5
	li	a5,10
	remuw	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L15
	li	a5,11
	sw	a5,-44(s0)
	j	.L5
.L11:
	lw	a5,-44(s0)
	mv	a4,a5
	li	a5,10
	remuw	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L16
	lw	a4,-44(s0)
	lw	a5,-48(s0)
	mv	a1,a4
	mv	a0,a5
	call	gcd
	mv	a5,a0
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	sext.w	a4,a5
	li	a5,1
	beq	a4,a5,.L17
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	divuw	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-48(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	divuw	a5,a4,a5
	sw	a5,-32(s0)
	addi	a3,s0,-60
	addi	a2,s0,-64
	lw	a4,-48(s0)
	lw	a5,-44(s0)
	mv	a1,a4
	mv	a0,a5
	call	cancel
	mv	a5,a0
	beq	a5,zero,.L10
	lw	a5,-64(s0)
	lw	a4,-60(s0)
	mv	a1,a4
	mv	a0,a5
	call	gcd
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a5,-64(s0)
	lw	a4,-28(s0)
	divuw	a5,a5,a4
	sext.w	a5,a5
	sw	a5,-64(s0)
	lw	a5,-60(s0)
	lw	a4,-28(s0)
	divuw	a5,a5,a4
	sext.w	a5,a5
	sw	a5,-60(s0)
	lw	a4,-64(s0)
	lw	a5,-36(s0)
	sext.w	a5,a5
	bne	a5,a4,.L10
	lw	a4,-60(s0)
	lw	a5,-32(s0)
	sext.w	a5,a5
	bne	a5,a4,.L10
	lw	a5,-56(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	mulw	a5,a4,a5
	sw	a5,-56(s0)
	lw	a5,-52(s0)
	mv	a4,a5
	lw	a5,-32(s0)
	mulw	a5,a4,a5
	sw	a5,-52(s0)
	j	.L10
.L16:
	nop
	j	.L10
.L17:
	nop
.L10:
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L5:
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-48(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bltu	a4,a5,.L11
	j	.L4
.L15:
	nop
.L4:
	lw	a5,-48(s0)
	addiw	a5,a5,1
	sw	a5,-48(s0)
.L2:
	lw	a5,-48(s0)
	sext.w	a4,a5
	li	a5,99
	bleu	a4,a5,.L12
	lw	a4,-52(s0)
	lw	a5,-56(s0)
	mv	a1,a4
	mv	a0,a5
	call	gcd
	mv	a5,a0
	sext.w	a5,a5
	lw	a4,-52(s0)
	divuw	a5,a4,a5
	sext.w	a5,a5
	mv	a1,a5
	lla	a0,.LC0
	call	printf@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L14
	call	__stack_chk_fail@plt
.L14:
	mv	a0,a4
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	1
	.type	gcd, @function
gcd:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	j	.L19
.L20:
	lw	a5,-40(s0)
	sw	a5,-36(s0)
	lw	a5,-20(s0)
	sw	a5,-40(s0)
.L19:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	remuw	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sext.w	a5,a5
	bne	a5,zero,.L20
	lw	a5,-40(s0)
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	gcd, .-gcd
	.align	1
	.type	cancel, @function
cancel:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sd	a2,-32(s0)
	sd	a3,-40(s0)
	sw	a5,-20(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,10
	remuw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-24(s0)
	mv	a3,a5
	li	a5,10
	remuw	a5,a3,a5
	sext.w	a5,a5
	bne	a4,a5,.L23
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,10
	divuw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-32(s0)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	mv	a4,a5
	li	a5,10
	divuw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-40(s0)
	sw	a4,0(a5)
	li	a5,1
	j	.L24
.L23:
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,10
	remuw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-24(s0)
	mv	a3,a5
	li	a5,10
	divuw	a5,a3,a5
	sext.w	a5,a5
	bne	a4,a5,.L25
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,10
	divuw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-32(s0)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	mv	a4,a5
	li	a5,10
	remuw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-40(s0)
	sw	a4,0(a5)
	li	a5,1
	j	.L24
.L25:
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,10
	divuw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-24(s0)
	mv	a3,a5
	li	a5,10
	remuw	a5,a3,a5
	sext.w	a5,a5
	bne	a4,a5,.L26
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,10
	remuw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-32(s0)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	mv	a4,a5
	li	a5,10
	divuw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-40(s0)
	sw	a4,0(a5)
	li	a5,1
	j	.L24
.L26:
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,10
	divuw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-24(s0)
	mv	a3,a5
	li	a5,10
	divuw	a5,a3,a5
	sext.w	a5,a5
	bne	a4,a5,.L27
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,10
	remuw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-32(s0)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	mv	a4,a5
	li	a5,10
	remuw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-40(s0)
	sw	a4,0(a5)
	li	a5,1
	j	.L24
.L27:
	ld	a5,-32(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	ld	a5,-40(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	li	a5,0
.L24:
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	cancel, .-cancel
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
