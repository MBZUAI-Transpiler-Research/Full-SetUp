	.file	"problem4.c"
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
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	zero,-24(s0)
	li	a5,100
	sw	a5,-32(s0)
	j	.L2
.L6:
	li	a5,100
	sw	a5,-28(s0)
	j	.L3
.L5:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	mulw	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	call	is_palindromic
	mv	a5,a0
	beq	a5,zero,.L4
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bleu	a4,a5,.L4
	lw	a5,-20(s0)
	sw	a5,-24(s0)
.L4:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L3:
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,999
	bleu	a4,a5,.L5
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L2:
	lw	a5,-32(s0)
	sext.w	a4,a5
	li	a5,999
	bleu	a4,a5,.L6
	lw	a5,-24(s0)
	mv	a1,a5
	lla	a0,.LC0
	call	printf@plt
	li	a5,0
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	1
	.type	is_palindromic, @function
is_palindromic:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-36(s0)
	sw	zero,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	j	.L9
.L10:
	lw	a5,-24(s0)
	mv	a4,a5
	mv	a5,a4
	slliw	a5,a5,2
	addw	a5,a5,a4
	slliw	a5,a5,1
	sext.w	a4,a5
	lw	a5,-20(s0)
	mv	a3,a5
	li	a5,10
	remuw	a5,a3,a5
	sext.w	a5,a5
	addw	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,10
	divuw	a5,a4,a5
	sw	a5,-20(s0)
.L9:
	lw	a5,-20(s0)
	sext.w	a5,a5
	bne	a5,zero,.L10
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	sub	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	is_palindromic, .-is_palindromic
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
