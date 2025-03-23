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
	sd	s1,40(sp)
	addi	s0,sp,64
	sd	a0,-56(s0)
	sw	zero,-44(s0)
	sw	zero,-40(s0)
	sw	zero,-36(s0)
	j	.L2
.L9:
	lw	a5,-36(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,91
	bne	a4,a5,.L3
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L3:
	lw	a5,-36(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,93
	bne	a4,a5,.L4
	lw	a5,-44(s0)
	addiw	a5,a5,-1
	sw	a5,-44(s0)
.L4:
	lw	a5,-44(s0)
	sext.w	a5,a5
	bge	a5,zero,.L5
	sw	zero,-44(s0)
.L5:
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L6
	lw	a5,-44(s0)
	sw	a5,-40(s0)
.L6:
	lw	a5,-40(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-44(s0)
	sext.w	a5,a5
	bge	a5,a4,.L7
	li	a5,1
	j	.L8
.L7:
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L2:
	lw	s1,-36(s0)
	ld	a0,-56(s0)
	call	strlen@plt
	mv	a5,a0
	bltu	s1,a5,.L9
	li	a5,0
.L8:
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
