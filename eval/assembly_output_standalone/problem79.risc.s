	.file	"code.c"
	.option pic
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"2357BD"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	addi	s0,sp,64
	sd	a0,-56(s0)
	lla	a5,.LC0
	sd	a5,-40(s0)
	sw	zero,-48(s0)
	sw	zero,-44(s0)
	j	.L2
.L4:
	lw	a5,-44(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a1,a5
	ld	a0,-40(s0)
	call	strchr@plt
	mv	a5,a0
	beq	a5,zero,.L3
	lw	a5,-48(s0)
	addiw	a5,a5,1
	sw	a5,-48(s0)
.L3:
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L2:
	lw	s1,-44(s0)
	ld	a0,-56(s0)
	call	strlen@plt
	mv	a5,a0
	bltu	s1,a5,.L4
	lw	a5,-48(s0)
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
