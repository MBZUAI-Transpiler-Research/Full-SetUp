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
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	ld	a0,-56(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a5,a5
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	ld	a5,-24(s0)
	bne	a5,zero,.L2
	li	a5,0
	j	.L3
.L2:
	sw	zero,-40(s0)
	j	.L4
.L12:
	li	a5,1
	sw	a5,-32(s0)
	sw	zero,-36(s0)
	j	.L5
.L8:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-56(s0)
	add	a5,a5,a4
	lbu	a4,0(a5)
	lw	a5,-28(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	lw	a3,-36(s0)
	subw	a5,a5,a3
	sext.w	a5,a5
	mv	a3,a5
	ld	a5,-56(s0)
	add	a5,a5,a3
	lbu	a5,0(a5)
	beq	a4,a5,.L6
	sw	zero,-32(s0)
	j	.L7
.L6:
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L5:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sext.w	a4,a5
	lw	a5,-36(s0)
	sext.w	a5,a5
	blt	a5,a4,.L8
.L7:
	lw	a5,-32(s0)
	sext.w	a5,a5
	beq	a5,zero,.L9
	lw	a5,-28(s0)
	mv	a2,a5
	ld	a1,-56(s0)
	ld	a0,-24(s0)
	call	strncpy@plt
	sw	zero,-36(s0)
	j	.L10
.L11:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	addi	a5,a5,-1
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-28(s0)
	mv	a3,a5
	lw	a5,-36(s0)
	addw	a5,a3,a5
	sext.w	a5,a5
	mv	a3,a5
	ld	a5,-24(s0)
	add	a5,a5,a3
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L10:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L11
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-24(s0)
	add	a5,a5,a4
	sb	zero,0(a5)
	ld	a5,-24(s0)
	j	.L3
.L9:
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L4:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L12
	lw	a5,-28(s0)
	mv	a2,a5
	ld	a1,-56(s0)
	ld	a0,-24(s0)
	call	strncpy@plt
	sw	zero,-36(s0)
	j	.L13
.L14:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	addi	a5,a5,-1
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-28(s0)
	mv	a3,a5
	lw	a5,-36(s0)
	addw	a5,a3,a5
	sext.w	a5,a5
	mv	a3,a5
	ld	a5,-24(s0)
	add	a5,a5,a3
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L13:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L14
	lw	a5,-28(s0)
	slliw	a5,a5,1
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-24(s0)
	add	a5,a5,a4
	sb	zero,0(a5)
	ld	a5,-24(s0)
.L3:
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
