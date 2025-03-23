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
	mv	a5,a1
	sw	a5,-44(s0)
	sw	zero,-24(s0)
	lw	a5,-24(s0)
	sw	a5,-28(s0)
	li	a5,1
	sw	a5,-20(s0)
	j	.L2
.L7:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa4,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fgt.s	a5,fa4,fa5
	beq	a5,zero,.L3
	li	a5,1
	sw	a5,-28(s0)
.L3:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa4,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	flt.s	a5,fa4,fa5
	beq	a5,zero,.L5
	li	a5,1
	sw	a5,-24(s0)
.L5:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L7
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,2
	bne	a4,a5,.L8
	li	a5,0
	j	.L9
.L8:
	li	a5,1
.L9:
	mv	a0,a5
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
