	.file	"code.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	addi	s0,sp,64
	mv	a5,a0
	sd	a1,-64(s0)
	sw	a5,-52(s0)
	lw	a5,-52(s0)
	slli	a5,a5,2
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	ld	a5,-64(s0)
	sw	zero,0(a5)
	li	a5,2
	sw	a5,-40(s0)
	j	.L2
.L9:
	li	a5,1
	sw	a5,-32(s0)
	sw	zero,-36(s0)
	j	.L3
.L7:
	lw	a5,-36(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	mulw	a5,a5,a5
	sext.w	a4,a5
	lw	a5,-40(s0)
	sext.w	a5,a5
	blt	a5,a4,.L11
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	remw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L6
	sw	zero,-32(s0)
	j	.L5
.L6:
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L3:
	ld	a5,-64(s0)
	lw	a4,0(a5)
	lw	a5,-36(s0)
	sext.w	a5,a5
	blt	a5,a4,.L7
	j	.L5
.L11:
	nop
.L5:
	lw	a5,-32(s0)
	sext.w	a5,a5
	beq	a5,zero,.L8
	ld	a5,-64(s0)
	lw	a5,0(a5)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,-40(s0)
	sw	a4,0(a5)
	ld	a5,-64(s0)
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	ld	a5,-64(s0)
	sw	a4,0(a5)
.L8:
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L2:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L9
	ld	a5,-24(s0)
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
