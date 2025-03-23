	.file	"code.c"
	.option pic
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"AEIOUaeiou"
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
	lla	a5,.LC0
	sd	a5,-24(s0)
	ld	a5,-40(s0)
	sd	a5,-32(s0)
	j	.L2
.L4:
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a1,a5
	ld	a0,-24(s0)
	call	strchr@plt
	mv	a5,a0
	bne	a5,zero,.L3
	ld	a5,-32(s0)
	addi	a4,a5,1
	sd	a4,-32(s0)
	ld	a4,-40(s0)
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L3:
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
.L2:
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L4
	ld	a5,-32(s0)
	sb	zero,0(a5)
	nop
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
