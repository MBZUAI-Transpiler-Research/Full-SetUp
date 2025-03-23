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
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	ld	a0,-56(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-36(s0)
	ld	a0,-64(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-32(s0)
	lw	a5,-36(s0)
	mv	a2,a5
	lw	a5,-32(s0)
	sext.w	a3,a5
	sext.w	a4,a2
	ble	a3,a4,.L2
	mv	a5,a2
.L2:
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	ld	a5,-24(s0)
	bne	a5,zero,.L3
	li	a5,0
	j	.L4
.L3:
	sw	zero,-40(s0)
	j	.L5
.L8:
	lw	a5,-40(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	lw	a5,-40(s0)
	ld	a4,-64(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a3
	bne	a4,a5,.L6
	li	a5,48
	j	.L7
.L6:
	li	a5,49
.L7:
	lw	a4,-40(s0)
	ld	a3,-24(s0)
	add	a4,a3,a4
	sb	a5,0(a4)
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L5:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L8
	lw	a5,-28(s0)
	ld	a4,-24(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	ld	a5,-24(s0)
.L4:
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
