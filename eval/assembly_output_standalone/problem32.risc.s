	.file	"code.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-48
	sd	s0,40(sp)
	addi	s0,sp,48
	sd	a0,-40(s0)
	ld	a4,-40(s0)
	li	a5,1
	bgt	a4,a5,.L2
	li	a5,0
	j	.L3
.L2:
	li	a5,2
	sd	a5,-24(s0)
	j	.L4
.L6:
	ld	a4,-40(s0)
	ld	a5,-24(s0)
	rem	a5,a4,a5
	bne	a5,zero,.L5
	li	a5,0
	j	.L3
.L5:
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L4:
	ld	a5,-24(s0)
	mul	a5,a5,a5
	ld	a4,-40(s0)
	bge	a4,a5,.L6
	li	a5,1
.L3:
	mv	a0,a5
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
