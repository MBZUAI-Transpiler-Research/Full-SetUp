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
	sw	a5,-24(s0)
	ld	a0,-64(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-20(s0)
	sw	zero,-40(s0)
	j	.L2
.L9:
	sb	zero,-42(s0)
	sw	zero,-36(s0)
	j	.L3
.L6:
	lw	a5,-40(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	lw	a5,-36(s0)
	ld	a4,-64(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a3
	bne	a4,a5,.L4
	li	a5,1
	sb	a5,-42(s0)
	j	.L5
.L4:
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L3:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
.L5:
	lbu	a5,-42(s0)
	xori	a5,a5,1
	andi	a5,a5,0xff
	beq	a5,zero,.L7
	li	a5,0
	j	.L8
.L7:
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L2:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L9
	sw	zero,-32(s0)
	j	.L10
.L16:
	sb	zero,-41(s0)
	sw	zero,-28(s0)
	j	.L11
.L14:
	lw	a5,-32(s0)
	ld	a4,-64(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	lw	a5,-28(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a3
	bne	a4,a5,.L12
	li	a5,1
	sb	a5,-41(s0)
	j	.L13
.L12:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L11:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L14
.L13:
	lbu	a5,-41(s0)
	xori	a5,a5,1
	andi	a5,a5,0xff
	beq	a5,zero,.L15
	li	a5,0
	j	.L8
.L15:
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L10:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L16
	li	a5,1
.L8:
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
