	.file	"problem47.c"
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
	sw	zero,-20(s0)
	li	a5,2
	sw	a5,-24(s0)
	j	.L2
.L7:
	sw	zero,-20(s0)
	j	.L3
.L5:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L3:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,3
	bgtu	a4,a5,.L4
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	call	distinct_factor_count
	mv	a5,a0
	mv	a4,a5
	li	a5,4
	beq	a4,a5,.L5
.L4:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L2:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,999424
	addi	a5,a5,575
	bgtu	a4,a5,.L6
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,3
	bleu	a4,a5,.L7
.L6:
	lw	a5,-24(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
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
	.type	distinct_factor_count, @function
distinct_factor_count:
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
	li	a5,2
	sw	a5,-20(s0)
	j	.L10
.L14:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	remuw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L11
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	divuw	a5,a4,a5
	sw	a5,-36(s0)
	j	.L12
.L13:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	divuw	a5,a4,a5
	sw	a5,-36(s0)
.L12:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	remuw	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L13
.L11:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L10:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bleu	a4,a5,.L14
	lw	a5,-24(s0)
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	distinct_factor_count, .-distinct_factor_count
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
