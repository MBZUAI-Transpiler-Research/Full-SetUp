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
	bne	a5,zero,.L2
	li	a5,0
	j	.L3
.L2:
	sw	zero,-40(s0)
	sw	zero,-36(s0)
	sw	zero,-32(s0)
	j	.L4
.L11:
	lw	a5,-32(s0)
	slli	a5,a5,4
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	sd	a5,-24(s0)
	sw	zero,-28(s0)
	j	.L5
.L10:
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lw	a5,-28(s0)
	ld	a3,-24(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,1024
	sext.w	a5,a5
	bne	a5,zero,.L6
	li	a5,0
	j	.L3
.L6:
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lw	a5,-28(s0)
	ld	a3,-24(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,256
	sext.w	a5,a5
	beq	a5,zero,.L7
	li	a5,1
	sw	a5,-36(s0)
.L7:
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lw	a5,-28(s0)
	ld	a3,-24(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,512
	sext.w	a5,a5
	beq	a5,zero,.L8
	li	a5,1
	sw	a5,-40(s0)
.L8:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,2
	bne	a4,a5,.L9
	li	a5,0
	j	.L3
.L9:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L5:
	lw	a5,-28(s0)
	ld	a4,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L10
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L4:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L11
	li	a5,1
.L3:
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
