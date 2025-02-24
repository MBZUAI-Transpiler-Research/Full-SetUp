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
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sd	a1,-48(s0)
	sw	a5,-36(s0)
	sw	zero,-28(s0)
	sw	zero,-24(s0)
	lw	a5,-36(s0)
	sraiw	a5,a5,31
	lw	a4,-36(s0)
	xor	a4,a5,a4
	subw	a5,a4,a5
	sw	a5,-36(s0)
.L4:
	lw	a5,-36(s0)
	mv	a4,a5
	li	a5,10
	remw	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L2
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
	j	.L3
.L2:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L3:
	lw	a5,-36(s0)
	mv	a4,a5
	li	a5,10
	divw	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L4
	ld	a5,-48(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	ld	a5,-48(s0)
	addi	a5,a5,4
	lw	a4,-24(s0)
	sw	a4,0(a5)
	nop
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
