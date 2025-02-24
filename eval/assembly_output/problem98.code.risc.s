	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-20(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	sraiw	a5,a5,31
	lw	a4,-20(s0)
	xor	a4,a5,a4
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,10
	remw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-24(s0)
	sraiw	a5,a5,31
	lw	a3,-24(s0)
	xor	a3,a5,a3
	subw	a5,a3,a5
	sext.w	a5,a5
	mv	a3,a5
	li	a5,10
	remw	a5,a3,a5
	sext.w	a5,a5
	mulw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
