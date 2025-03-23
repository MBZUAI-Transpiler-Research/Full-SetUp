	.file	"code.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
	sd	a0,-40(s0)
	li	a5,1
	sw	a5,-32(s0)
	sw	zero,-28(s0)
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	j	.L2
.L9:
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lw	a5,-20(s0)
	ld	a3,-40(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a4,a5
	li	a5,8192
	and	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L3
	lw	a5,-28(s0)
	sext.w	a5,a5
	beq	a5,zero,.L3
	sw	zero,-28(s0)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L3:
	lw	a5,-20(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,73
	bne	a4,a5,.L4
	lw	a5,-32(s0)
	sext.w	a5,a5
	beq	a5,zero,.L4
	li	a5,1
	sw	a5,-28(s0)
	j	.L5
.L4:
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lw	a5,-20(s0)
	ld	a3,-40(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a4,a5
	li	a5,8192
	and	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L5
	sw	zero,-28(s0)
.L5:
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lw	a5,-20(s0)
	ld	a3,-40(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a4,a5
	li	a5,8192
	and	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L6
	sw	zero,-32(s0)
.L6:
	lw	a5,-20(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,46
	beq	a4,a5,.L7
	lw	a5,-20(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,63
	beq	a4,a5,.L7
	lw	a5,-20(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,33
	bne	a4,a5,.L8
.L7:
	li	a5,1
	sw	a5,-32(s0)
.L8:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-20(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L9
	lw	a5,-24(s0)
	mv	a0,a5
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
