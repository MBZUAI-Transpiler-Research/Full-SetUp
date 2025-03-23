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
	sd	a1,-48(s0)
	ld	a0,-40(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-20(s0)
	sw	zero,-24(s0)
	j	.L2
.L5:
	lw	a5,-24(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-25(s0)
	lbu	a5,-25(s0)
	andi	a4,a5,0xff
	li	a5,96
	bleu	a4,a5,.L3
	lbu	a5,-25(s0)
	andi	a4,a5,0xff
	li	a5,122
	bgtu	a4,a5,.L3
	lbu	a5,-25(s0)
	addiw	a5,a5,-32
	sb	a5,-25(s0)
	j	.L4
.L3:
	lbu	a5,-25(s0)
	andi	a4,a5,0xff
	li	a5,64
	bleu	a4,a5,.L4
	lbu	a5,-25(s0)
	andi	a4,a5,0xff
	li	a5,90
	bgtu	a4,a5,.L4
	lbu	a5,-25(s0)
	addiw	a5,a5,32
	sb	a5,-25(s0)
.L4:
	lw	a5,-24(s0)
	ld	a4,-48(s0)
	add	a5,a4,a5
	lbu	a4,-25(s0)
	sb	a4,0(a5)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L2:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L5
	lw	a5,-20(s0)
	ld	a4,-48(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	nop
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
