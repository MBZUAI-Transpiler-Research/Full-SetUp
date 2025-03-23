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
	sd	a0,-72(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a0,-72(s0)
	call	strlen@plt
	mv	a4,a0
	li	a5,10
	beq	a4,a5,.L2
	li	a5,0
	j	.L18
.L2:
	sw	zero,-64(s0)
	j	.L4
.L10:
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,2
	beq	a4,a5,.L5
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,5
	bne	a4,a5,.L6
.L5:
	lw	a5,-64(s0)
	ld	a4,-72(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,45
	beq	a4,a5,.L8
	li	a5,0
	j	.L18
.L6:
	lw	a5,-64(s0)
	ld	a4,-72(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,47
	bleu	a4,a5,.L9
	lw	a5,-64(s0)
	ld	a4,-72(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,57
	bleu	a4,a5,.L8
.L9:
	li	a5,0
	j	.L18
.L8:
	lw	a5,-64(s0)
	addiw	a5,a5,1
	sw	a5,-64(s0)
.L4:
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,9
	ble	a4,a5,.L10
	ld	a5,-72(s0)
	lbu	a5,0(a5)
	sb	a5,-48(s0)
	ld	a5,-72(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	sb	a5,-47(s0)
	sb	zero,-46(s0)
	ld	a5,-72(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	sb	a5,-40(s0)
	ld	a5,-72(s0)
	addi	a5,a5,4
	lbu	a5,0(a5)
	sb	a5,-39(s0)
	sb	zero,-38(s0)
	ld	a5,-72(s0)
	addi	a5,a5,6
	lbu	a5,0(a5)
	sb	a5,-32(s0)
	ld	a5,-72(s0)
	addi	a5,a5,7
	lbu	a5,0(a5)
	sb	a5,-31(s0)
	ld	a5,-72(s0)
	addi	a5,a5,8
	lbu	a5,0(a5)
	sb	a5,-30(s0)
	ld	a5,-72(s0)
	addi	a5,a5,9
	lbu	a5,0(a5)
	sb	a5,-29(s0)
	sb	zero,-28(s0)
	addi	a5,s0,-48
	mv	a0,a5
	call	atoi@plt
	mv	a5,a0
	sw	a5,-60(s0)
	addi	a5,s0,-40
	mv	a0,a5
	call	atoi@plt
	mv	a5,a0
	sw	a5,-56(s0)
	addi	a5,s0,-32
	mv	a0,a5
	call	atoi@plt
	mv	a5,a0
	sw	a5,-52(s0)
	lw	a5,-60(s0)
	sext.w	a5,a5
	ble	a5,zero,.L11
	lw	a5,-60(s0)
	sext.w	a4,a5
	li	a5,12
	ble	a4,a5,.L12
.L11:
	li	a5,0
	j	.L18
.L12:
	lw	a5,-56(s0)
	sext.w	a5,a5
	ble	a5,zero,.L13
	lw	a5,-56(s0)
	sext.w	a4,a5
	li	a5,31
	ble	a4,a5,.L14
.L13:
	li	a5,0
	j	.L18
.L14:
	lw	a5,-60(s0)
	sext.w	a4,a5
	li	a5,4
	beq	a4,a5,.L15
	lw	a5,-60(s0)
	sext.w	a4,a5
	li	a5,6
	beq	a4,a5,.L15
	lw	a5,-60(s0)
	sext.w	a4,a5
	li	a5,9
	beq	a4,a5,.L15
	lw	a5,-60(s0)
	sext.w	a4,a5
	li	a5,11
	bne	a4,a5,.L16
.L15:
	lw	a5,-56(s0)
	sext.w	a4,a5
	li	a5,31
	bne	a4,a5,.L16
	li	a5,0
	j	.L18
.L16:
	lw	a5,-60(s0)
	sext.w	a4,a5
	li	a5,2
	bne	a4,a5,.L17
	lw	a5,-56(s0)
	sext.w	a4,a5
	li	a5,29
	ble	a4,a5,.L17
	li	a5,0
	j	.L18
.L17:
	li	a5,1
.L18:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L19
	call	__stack_chk_fail@plt
.L19:
	mv	a0,a4
	ld	ra,72(sp)
	ld	s0,64(sp)
	addi	sp,sp,80
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
