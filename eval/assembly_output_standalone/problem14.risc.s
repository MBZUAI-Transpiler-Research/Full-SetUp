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
	mv	a5,a0
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	j	.L2
.L3:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	remw	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-40(s0)
	sw	a5,-36(s0)
	lw	a5,-20(s0)
	sw	a5,-40(s0)
.L2:
	lw	a5,-40(s0)
	sext.w	a5,a5
	bne	a5,zero,.L3
	lw	a5,-36(s0)
	mv	a0,a5
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
