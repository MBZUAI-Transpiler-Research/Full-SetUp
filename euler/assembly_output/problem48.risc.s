	.file	"problem48.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%llu\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	zero,-32(s0)
	li	a5,1
	sw	a5,-40(s0)
	j	.L2
.L5:
	li	a5,1
	sd	a5,-24(s0)
	sw	zero,-36(s0)
	j	.L3
.L4:
	lwu	a4,-40(s0)
	ld	a5,-24(s0)
	mul	a4,a4,a5
	li	a5,9764864
	addi	a5,a5,761
	slli	a5,a5,10
	remu	a5,a4,a5
	sd	a5,-24(s0)
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L3:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bltu	a4,a5,.L4
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	add	a4,a4,a5
	li	a5,9764864
	addi	a5,a5,761
	slli	a5,a5,10
	remu	a5,a4,a5
	sd	a5,-32(s0)
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L2:
	lw	a5,-40(s0)
	sext.w	a4,a5
	li	a5,999
	bleu	a4,a5,.L5
	ld	a1,-32(s0)
	lla	a0,.LC0
	call	printf@plt
	li	a5,0
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
