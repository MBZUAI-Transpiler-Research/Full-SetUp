	.file	"code.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
	sd	a0,-40(s0)
	ld	a0,-40(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,1
	bgt	a4,a5,.L2
	li	a5,0
	j	.L3
.L2:
	li	a5,2
	sw	a5,-24(s0)
	j	.L4
.L6:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	remw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L5
	li	a5,0
	j	.L3
.L5:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L4:
	lw	a5,-24(s0)
	mulw	a5,a5,a5
	sext.w	a4,a5
	lw	a5,-20(s0)
	sext.w	a5,a5
	bge	a5,a4,.L6
	li	a5,1
.L3:
	mv	a0,a5
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
