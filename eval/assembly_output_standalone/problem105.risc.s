	.file	"code.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-80
	sd	ra,72(sp)
	sd	s0,64(sp)
	addi	s0,sp,80
	sd	a0,-56(s0)
	mv	a5,a1
	sd	a2,-72(s0)
	sd	a3,-80(s0)
	sw	a5,-60(s0)
	lw	a5,-60(s0)
	slli	a5,a5,2
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	mv	a4,a5
	ld	a5,-72(s0)
	sd	a4,0(a5)
	ld	a5,-80(s0)
	sw	zero,0(a5)
	sw	zero,-36(s0)
	j	.L2
.L9:
	lw	a5,-36(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-32(s0)
	sb	zero,-37(s0)
	lw	a5,-32(s0)
	sext.w	a5,a5
	bne	a5,zero,.L4
	li	a5,1
	sb	a5,-37(s0)
	j	.L4
.L7:
	lw	a5,-32(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L5
	li	a5,1
	sb	a5,-37(s0)
.L5:
	lw	a5,-32(s0)
	mv	a4,a5
	li	a5,10
	divw	a5,a4,a5
	sw	a5,-32(s0)
.L4:
	lw	a5,-32(s0)
	sext.w	a5,a5
	ble	a5,zero,.L6
	lbu	a5,-37(s0)
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L7
.L6:
	lbu	a5,-37(s0)
	xori	a5,a5,1
	andi	a5,a5,0xff
	beq	a5,zero,.L8
	lw	a5,-36(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a4,a4,a5
	ld	a5,-72(s0)
	ld	a3,0(a5)
	ld	a5,-80(s0)
	lw	a5,0(a5)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	ld	a5,-80(s0)
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	ld	a5,-80(s0)
	sw	a4,0(a5)
.L8:
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L2:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L9
	sw	zero,-28(s0)
	j	.L10
.L14:
	sw	zero,-24(s0)
	j	.L11
.L13:
	ld	a5,-72(s0)
	ld	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	ld	a5,-72(s0)
	ld	a4,0(a5)
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	ble	a4,a5,.L12
	ld	a5,-72(s0)
	ld	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	ld	a5,-72(s0)
	ld	a4,0(a5)
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	add	a4,a4,a5
	ld	a5,-72(s0)
	ld	a3,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	ld	a5,-72(s0)
	ld	a4,0(a5)
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L12:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L11:
	ld	a5,-80(s0)
	lw	a5,0(a5)
	lw	a4,-28(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-24(s0)
	sext.w	a5,a5
	blt	a5,a4,.L13
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L10:
	ld	a5,-80(s0)
	lw	a5,0(a5)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-28(s0)
	sext.w	a5,a5
	blt	a5,a4,.L14
	nop
	nop
	ld	ra,72(sp)
	ld	s0,64(sp)
	addi	sp,sp,80
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
