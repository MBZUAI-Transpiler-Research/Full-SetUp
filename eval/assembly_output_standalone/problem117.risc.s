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
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	mv	a5,a1
	sw	a5,-60(s0)
	sw	zero,-28(s0)
	j	.L2
.L11:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
	j	.L3
.L10:
	sw	zero,-40(s0)
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-36(s0)
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-32(s0)
	j	.L4
.L5:
	lw	a5,-36(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	lw	a4,-40(s0)
	addw	a5,a4,a5
	sw	a5,-40(s0)
	lw	a5,-36(s0)
	sraiw	a5,a5,1
	sw	a5,-36(s0)
.L4:
	lw	a5,-36(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L5
	lw	a5,-40(s0)
	sw	a5,-36(s0)
	sw	zero,-40(s0)
	j	.L6
.L7:
	lw	a5,-32(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	lw	a4,-40(s0)
	addw	a5,a4,a5
	sw	a5,-40(s0)
	lw	a5,-32(s0)
	sraiw	a5,a5,1
	sw	a5,-32(s0)
.L6:
	lw	a5,-32(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L7
	lw	a5,-40(s0)
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L8
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bne	a4,a5,.L9
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	bge	a4,a5,.L9
.L8:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a3,-56(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L9:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L3:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L10
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L2:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L11
	nop
	nop
	ld	s0,56(sp)
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
