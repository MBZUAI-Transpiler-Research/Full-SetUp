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
	ld	a0,-40(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sext.w	a5,a5
	bne	a5,zero,.L2
	li	a5,0
	j	.L3
.L2:
	lw	a5,-20(s0)
	addi	a5,a5,-1
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-22(s0)
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lbu	a5,-22(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,1024
	sext.w	a5,a5
	bne	a5,zero,.L4
	li	a5,0
	j	.L3
.L4:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,1
	bne	a4,a5,.L5
	li	a5,1
	j	.L3
.L5:
	lw	a5,-20(s0)
	addi	a5,a5,-2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-21(s0)
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lbu	a5,-21(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,1024
	sext.w	a5,a5
	beq	a5,zero,.L6
	li	a5,0
	j	.L3
.L6:
	li	a5,1
.L3:
	mv	a0,a5
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
