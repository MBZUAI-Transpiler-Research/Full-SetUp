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
	mv	a5,a1
	sw	a5,-60(s0)
	lw	a5,-60(s0)
	sext.w	a5,a5
	beq	a5,zero,.L2
	li	a5,5
	j	.L3
.L2:
	li	a5,21
.L3:
	sw	a5,-40(s0)
	ld	a0,-56(s0)
	call	strlen@plt
	sd	a0,-24(s0)
	sd	zero,-32(s0)
	j	.L4
.L5:
	ld	a4,-56(s0)
	ld	a5,-32(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-97
	sext.w	a5,a5
	lw	a4,-40(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,26
	remw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,97
	sw	a5,-36(s0)
	ld	a4,-56(s0)
	ld	a5,-32(s0)
	add	a5,a4,a5
	lw	a4,-36(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-32(s0)
.L4:
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	bltu	a4,a5,.L5
	nop
	nop
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
