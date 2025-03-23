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
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	addi	s0,sp,64
	sd	a0,-56(s0)
	lla	a5,.LC0
	sd	a5,-32(s0)
	ld	a0,-56(s0)
	call	strlen@plt
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	sext.w	a5,a5
	addiw	a5,a5,-2
	sext.w	a5,a5
	sw	a5,-36(s0)
	j	.L2
.L5:
	lw	a5,-36(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a1,a5
	ld	a0,-32(s0)
	call	strchr@plt
	mv	a5,a0
	beq	a5,zero,.L3
	lw	a5,-36(s0)
	addi	a5,a5,1
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a1,a5
	ld	a0,-32(s0)
	call	strchr@plt
	mv	a5,a0
	bne	a5,zero,.L3
	lw	a5,-36(s0)
	addi	a5,a5,-1
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a1,a5
	ld	a0,-32(s0)
	call	strchr@plt
	mv	a5,a0
	bne	a5,zero,.L3
	lw	a5,-36(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lla	a5,out.0
	sb	a4,0(a5)
	lla	a5,out.0
	j	.L4
.L3:
	lw	a5,-36(s0)
	addiw	a5,a5,-1
	sw	a5,-36(s0)
.L2:
	lw	a5,-36(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L5
	lla	a5,out.0
	sb	zero,0(a5)
	lla	a5,out.0
.L4:
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.local	out.0
	.comm	out.0,2,8
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
