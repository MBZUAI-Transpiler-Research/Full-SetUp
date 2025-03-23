	.file	"code.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-192
	sd	ra,184(sp)
	sd	s0,176(sp)
	addi	s0,sp,192
	sd	a0,-168(s0)
	sd	a1,-176(s0)
	sd	a2,-184(s0)
	sd	a3,-192(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sd	zero,-128(s0)
	sd	zero,-120(s0)
	sd	zero,-112(s0)
	sd	zero,-104(s0)
	sd	zero,-96(s0)
	sd	zero,-88(s0)
	sd	zero,-80(s0)
	sd	zero,-72(s0)
	sd	zero,-64(s0)
	sd	zero,-56(s0)
	sd	zero,-48(s0)
	sd	zero,-40(s0)
	sd	zero,-32(s0)
	sw	zero,-152(s0)
	ld	a5,-168(s0)
	sd	a5,-136(s0)
	sw	zero,-148(s0)
	j	.L2
.L4:
	ld	a5,-136(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,32
	beq	a4,a5,.L3
	ld	a5,-136(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-97
	sw	a5,-140(s0)
	lw	a5,-140(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-112(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	lw	a5,-140(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a4,-112(a5)
	lw	a5,-140(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-112(a5)
	lw	a5,-152(s0)
	sext.w	a5,a5
	bge	a5,a4,.L3
	lw	a5,-140(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-112(a5)
	sw	a5,-152(s0)
.L3:
	ld	a5,-136(s0)
	addi	a5,a5,1
	sd	a5,-136(s0)
.L2:
	ld	a5,-136(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L4
	sw	zero,-144(s0)
	j	.L5
.L7:
	lw	a5,-144(s0)
	slli	a5,a5,2
	ld	a4,-176(s0)
	add	a4,a4,a5
	lw	a5,-144(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-112(a5)
	sw	a5,0(a4)
	lw	a5,-144(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-112(a5)
	lw	a5,-152(s0)
	sext.w	a5,a5
	bne	a5,a4,.L6
	lw	a5,-144(s0)
	andi	a4,a5,0xff
	lw	a5,-148(s0)
	addiw	a3,a5,1
	sw	a3,-148(s0)
	mv	a3,a5
	ld	a5,-192(s0)
	add	a5,a5,a3
	addiw	a4,a4,97
	andi	a4,a4,0xff
	sb	a4,0(a5)
.L6:
	lw	a5,-144(s0)
	addiw	a5,a5,1
	sw	a5,-144(s0)
.L5:
	lw	a5,-144(s0)
	sext.w	a4,a5
	li	a5,25
	ble	a4,a5,.L7
	ld	a5,-184(s0)
	lw	a4,-152(s0)
	sw	a4,0(a5)
	lw	a5,-148(s0)
	ld	a4,-192(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L8
	call	__stack_chk_fail@plt
.L8:
	ld	ra,184(sp)
	ld	s0,176(sp)
	addi	sp,sp,192
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
