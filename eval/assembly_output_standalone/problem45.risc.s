	.file	"code.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-96
	sd	ra,88(sp)
	sd	s0,80(sp)
	addi	s0,sp,96
	mv	a5,a0
	mv	a4,a1
	sd	a2,-96(s0)
	sw	a5,-84(s0)
	mv	a5,a4
	sw	a5,-88(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sw	zero,-72(s0)
	j	.L2
.L3:
	lw	a5,-84(s0)
	mv	a4,a5
	lw	a5,-88(s0)
	remw	a5,a4,a5
	sext.w	a5,a5
	andi	a4,a5,0xff
	lw	a5,-72(s0)
	addiw	a3,a5,1
	sw	a3,-72(s0)
	addiw	a4,a4,48
	andi	a4,a4,0xff
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-48(a5)
	lw	a5,-84(s0)
	mv	a4,a5
	lw	a5,-88(s0)
	divw	a5,a4,a5
	sw	a5,-84(s0)
.L2:
	lw	a5,-84(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L3
	sw	zero,-68(s0)
	j	.L4
.L5:
	lw	a5,-72(s0)
	addiw	a5,a5,-1
	sw	a5,-72(s0)
	lw	a5,-68(s0)
	addiw	a4,a5,1
	sw	a4,-68(s0)
	mv	a4,a5
	ld	a5,-96(s0)
	add	a5,a5,a4
	lw	a4,-72(s0)
	addi	a4,a4,-16
	add	a4,a4,s0
	lbu	a4,-48(a4)
	sb	a4,0(a5)
.L4:
	lw	a5,-72(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L5
	lw	a5,-68(s0)
	ld	a4,-96(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L6
	call	__stack_chk_fail@plt
.L6:
	ld	ra,88(sp)
	ld	s0,80(sp)
	addi	sp,sp,96
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
