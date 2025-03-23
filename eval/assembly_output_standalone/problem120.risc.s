	.file	"code.c"
	.option pic
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Yes"
	.align	3
.LC1:
	.string	"No"
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
	sw	zero,-36(s0)
	ld	a0,-56(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-24(s0)
	ld	a0,-64(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-20(s0)
	li	a5,1
	sw	a5,-28(s0)
	sw	zero,-32(s0)
	j	.L2
.L6:
	lw	a5,-32(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,40
	bne	a4,a5,.L3
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L3:
	lw	a5,-32(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,41
	bne	a4,a5,.L4
	lw	a5,-36(s0)
	addiw	a5,a5,-1
	sw	a5,-36(s0)
.L4:
	lw	a5,-36(s0)
	sext.w	a5,a5
	bge	a5,zero,.L5
	sw	zero,-28(s0)
.L5:
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L2:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
	sw	zero,-32(s0)
	j	.L7
.L11:
	lw	a5,-32(s0)
	ld	a4,-64(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,40
	bne	a4,a5,.L8
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L8:
	lw	a5,-32(s0)
	ld	a4,-64(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,41
	bne	a4,a5,.L9
	lw	a5,-36(s0)
	addiw	a5,a5,-1
	sw	a5,-36(s0)
.L9:
	lw	a5,-36(s0)
	sext.w	a5,a5
	bge	a5,zero,.L10
	sw	zero,-28(s0)
.L10:
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L7:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L11
	lw	a5,-36(s0)
	sext.w	a5,a5
	bne	a5,zero,.L12
	lw	a5,-28(s0)
	sext.w	a5,a5
	beq	a5,zero,.L12
	lla	a5,.LC0
	j	.L13
.L12:
	sw	zero,-36(s0)
	li	a5,1
	sw	a5,-28(s0)
	sw	zero,-32(s0)
	j	.L14
.L18:
	lw	a5,-32(s0)
	ld	a4,-64(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,40
	bne	a4,a5,.L15
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L15:
	lw	a5,-32(s0)
	ld	a4,-64(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,41
	bne	a4,a5,.L16
	lw	a5,-36(s0)
	addiw	a5,a5,-1
	sw	a5,-36(s0)
.L16:
	lw	a5,-36(s0)
	sext.w	a5,a5
	bge	a5,zero,.L17
	sw	zero,-28(s0)
.L17:
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L14:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L18
	sw	zero,-32(s0)
	j	.L19
.L23:
	lw	a5,-32(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,40
	bne	a4,a5,.L20
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L20:
	lw	a5,-32(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,41
	bne	a4,a5,.L21
	lw	a5,-36(s0)
	addiw	a5,a5,-1
	sw	a5,-36(s0)
.L21:
	lw	a5,-36(s0)
	sext.w	a5,a5
	bge	a5,zero,.L22
	sw	zero,-28(s0)
.L22:
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L19:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L23
	lw	a5,-36(s0)
	sext.w	a5,a5
	bne	a5,zero,.L24
	lw	a5,-28(s0)
	sext.w	a5,a5
	beq	a5,zero,.L24
	lla	a5,.LC0
	j	.L13
.L24:
	lla	a5,.LC1
.L13:
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
