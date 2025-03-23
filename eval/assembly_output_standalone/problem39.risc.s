	.file	"code.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-80
	sd	ra,72(sp)
	sd	s0,64(sp)
	addi	s0,sp,80
	sd	a0,-72(s0)
	mv	a5,a1
	sw	a5,-76(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a0,-72(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	addiw	a5,a5,2
	sext.w	a5,a5
	mv	a4,a5
	li	a5,3
	divw	a5,a4,a5
	sw	a5,-40(s0)
	sw	zero,-48(s0)
	j	.L2
.L7:
	lw	a5,-48(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	mv	a4,a5
	mv	a5,a4
	slliw	a5,a5,1
	addw	a5,a5,a4
	sext.w	a4,a5
	lw	a5,-44(s0)
	sext.w	a5,a5
	bge	a5,a4,.L3
	lw	a5,-48(s0)
	mv	a4,a5
	mv	a5,a4
	slliw	a4,a4,2
	subw	a5,a5,a4
	sext.w	a5,a5
	lw	a4,-44(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	j	.L4
.L3:
	li	a5,3
.L4:
	sw	a5,-36(s0)
	lw	a5,-48(s0)
	mv	a4,a5
	mv	a5,a4
	slliw	a5,a5,1
	addw	a5,a5,a4
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-72(s0)
	add	a4,a5,a4
	lw	a3,-36(s0)
	addi	a5,s0,-32
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	strncpy@plt
	lw	a5,-36(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	zero,-16(a5)
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,3
	bne	a4,a5,.L5
	lw	a5,-76(s0)
	sext.w	a5,a5
	beq	a5,zero,.L6
	lbu	a5,-30(s0)
	sb	a5,-49(s0)
	lbu	a5,-31(s0)
	sb	a5,-30(s0)
	lbu	a5,-32(s0)
	sb	a5,-31(s0)
	lbu	a5,-49(s0)
	sb	a5,-32(s0)
	j	.L5
.L6:
	lbu	a5,-32(s0)
	sb	a5,-50(s0)
	lbu	a5,-31(s0)
	sb	a5,-32(s0)
	lbu	a5,-30(s0)
	sb	a5,-31(s0)
	lbu	a5,-50(s0)
	sb	a5,-30(s0)
.L5:
	lw	a5,-48(s0)
	mv	a4,a5
	mv	a5,a4
	slliw	a5,a5,1
	addw	a5,a5,a4
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-72(s0)
	add	a5,a5,a4
	lw	a3,-36(s0)
	addi	a4,s0,-32
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	strncpy@plt
	lw	a5,-48(s0)
	addiw	a5,a5,1
	sw	a5,-48(s0)
.L2:
	lw	a5,-48(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L7
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L8
	call	__stack_chk_fail@plt
.L8:
	ld	ra,72(sp)
	ld	s0,64(sp)
	addi	sp,sp,80
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
