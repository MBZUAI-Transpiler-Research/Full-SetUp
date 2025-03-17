	.file	"problem12.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%lu\n"
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
	li	a5,1
	sd	a5,-32(s0)
	li	a5,1
	sd	a5,-24(s0)
	j	.L2
.L3:
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-32(s0)
	ld	a5,-32(s0)
	ld	a4,-24(s0)
	add	a5,a4,a5
	sd	a5,-24(s0)
.L2:
	ld	a0,-24(s0)
	call	divisor_count
	mv	a5,a0
	sext.w	a5,a5
	mv	a4,a5
	li	a5,499
	bleu	a4,a5,.L3
	ld	a1,-24(s0)
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
	.type	divisor_count, @function
divisor_count:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	li	a5,1
	sw	a5,-32(s0)
	li	a5,2
	sd	a5,-24(s0)
	j	.L6
.L9:
	sw	zero,-28(s0)
	j	.L7
.L8:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
	ld	a4,-40(s0)
	ld	a5,-24(s0)
	divu	a5,a4,a5
	sd	a5,-40(s0)
.L7:
	ld	a4,-40(s0)
	ld	a5,-24(s0)
	remu	a5,a4,a5
	beq	a5,zero,.L8
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	lw	a4,-32(s0)
	mulw	a5,a4,a5
	sw	a5,-32(s0)
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L6:
	ld	a4,-24(s0)
	ld	a5,-40(s0)
	bleu	a4,a5,.L9
	lw	a5,-32(s0)
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	divisor_count, .-divisor_count
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
