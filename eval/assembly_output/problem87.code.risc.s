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
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sd	ra,136(sp)
	sd	s0,128(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	sd	a0,-136(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a0,-136(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-92(s0)
	lw	a5,-92(s0)
	addiw	a5,a5,2
	sext.w	a5,a5
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-88(s0)
	sw	zero,-116(s0)
	sw	zero,-112(s0)
	sw	zero,-108(s0)
	j	.L2
.L14:
	lw	a5,-108(s0)
	ld	a4,-136(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,32
	beq	a4,a5,.L3
	lw	a5,-108(s0)
	ld	a4,-136(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L4
.L3:
	sw	zero,-104(s0)
	j	.L5
.L9:
	lw	a5,-104(s0)
	addiw	a5,a5,1
	sw	a5,-100(s0)
	j	.L6
.L8:
	lw	a5,-104(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a4,-64(a5)
	lw	a5,-100(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-64(a5)
	bleu	a4,a5,.L7
	lw	a5,-104(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-64(a5)
	sb	a5,-117(s0)
	lw	a5,-100(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a4,-64(a5)
	lw	a5,-104(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-64(a5)
	lw	a5,-100(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a4,-117(s0)
	sb	a4,-64(a5)
.L7:
	lw	a5,-100(s0)
	addiw	a5,a5,1
	sw	a5,-100(s0)
.L6:
	lw	a5,-100(s0)
	mv	a4,a5
	lw	a5,-112(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L8
	lw	a5,-104(s0)
	addiw	a5,a5,1
	sw	a5,-104(s0)
.L5:
	lw	a5,-112(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-104(s0)
	sext.w	a5,a5
	blt	a5,a4,.L9
	lw	a5,-116(s0)
	sext.w	a5,a5
	ble	a5,zero,.L10
	lw	a5,-116(s0)
	addiw	a4,a5,1
	sw	a4,-116(s0)
	mv	a4,a5
	ld	a5,-88(s0)
	add	a5,a5,a4
	li	a4,32
	sb	a4,0(a5)
.L10:
	sw	zero,-96(s0)
	j	.L11
.L12:
	lw	a5,-116(s0)
	addiw	a4,a5,1
	sw	a4,-116(s0)
	mv	a4,a5
	ld	a5,-88(s0)
	add	a5,a5,a4
	lw	a4,-96(s0)
	addi	a4,a4,-16
	add	a4,a4,s0
	lbu	a4,-64(a4)
	sb	a4,0(a5)
	lw	a5,-96(s0)
	addiw	a5,a5,1
	sw	a5,-96(s0)
.L11:
	lw	a5,-96(s0)
	mv	a4,a5
	lw	a5,-112(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L12
	sw	zero,-112(s0)
	j	.L13
.L4:
	lw	a5,-108(s0)
	ld	a4,-136(s0)
	add	a4,a4,a5
	lw	a5,-112(s0)
	addiw	a3,a5,1
	sw	a3,-112(s0)
	lbu	a4,0(a4)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-64(a5)
.L13:
	lw	a5,-108(s0)
	addiw	a5,a5,1
	sw	a5,-108(s0)
.L2:
	lw	a5,-108(s0)
	mv	a4,a5
	lw	a5,-92(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L14
	lw	a5,-116(s0)
	ld	a4,-88(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	ld	a5,-88(s0)
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L16
	call	__stack_chk_fail@plt
.L16:
	mv	a0,a4
	ld	ra,136(sp)
	.cfi_restore 1
	ld	s0,128(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
