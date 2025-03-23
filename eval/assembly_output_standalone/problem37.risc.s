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
	sw	a5,-36(s0)
	sw	zero,-28(s0)
	sw	zero,-24(s0)
	j	.L2
.L8:
	lw	a5,-24(s0)
	mv	a4,a5
	li	a5,11
	remw	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L3
	lw	a5,-24(s0)
	mv	a4,a5
	li	a5,13
	remw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L4
.L3:
	lw	a5,-24(s0)
	sw	a5,-20(s0)
	j	.L5
.L7:
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,10
	remw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,7
	bne	a4,a5,.L6
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L6:
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,10
	divw	a5,a4,a5
	sw	a5,-20(s0)
.L5:
	lw	a5,-20(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L7
.L4:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L2:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L8
	lw	a5,-28(s0)
	mv	a0,a5
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
