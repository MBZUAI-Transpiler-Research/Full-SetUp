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
	ld	a5,-56(s0)
	ld	a5,0(a5)
	sd	a5,-32(s0)
	ld	a5,-56(s0)
	ld	a5,0(a5)
	sd	a5,-24(s0)
	li	a5,1
	sw	a5,-36(s0)
	j	.L2
.L6:
	ld	a5,-32(s0)
	bge	a5,zero,.L3
	lw	a5,-36(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	ld	a5,-32(s0)
	add	a5,a4,a5
	j	.L4
.L3:
	lw	a5,-36(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
.L4:
	sd	a5,-32(s0)
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	bge	a4,a5,.L5
	ld	a5,-32(s0)
	sd	a5,-24(s0)
.L5:
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L2:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
	ld	a5,-24(s0)
	mv	a0,a5
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
