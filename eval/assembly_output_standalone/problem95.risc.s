	.file	"code.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64
	sd	s0,56(sp)
	addi	s0,sp,64
	sd	a0,-56(s0)
	mv	a5,a1
	sw	a5,-60(s0)
	sw	zero,-40(s0)
	sw	zero,-36(s0)
	sw	zero,-32(s0)
	j	.L2
.L9:
	lw	a5,-32(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L3
	li	a5,1
	sw	a5,-28(s0)
	li	a5,2
	sw	a5,-24(s0)
	j	.L4
.L7:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	remw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L5
	sw	zero,-28(s0)
	j	.L6
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
	bge	a5,a4,.L7
.L6:
	lw	a5,-28(s0)
	sext.w	a5,a5
	beq	a5,zero,.L3
	lw	a5,-20(s0)
	mv	a2,a5
	lw	a5,-40(s0)
	sext.w	a3,a5
	sext.w	a4,a2
	bge	a3,a4,.L8
	mv	a5,a2
.L8:
	sw	a5,-40(s0)
.L3:
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L2:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L9
	j	.L10
.L11:
	lw	a5,-40(s0)
	mv	a4,a5
	li	a5,10
	remw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-36(s0)
	addw	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	mv	a4,a5
	li	a5,10
	divw	a5,a4,a5
	sw	a5,-40(s0)
.L10:
	lw	a5,-40(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L11
	lw	a5,-36(s0)
	mv	a0,a5
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
