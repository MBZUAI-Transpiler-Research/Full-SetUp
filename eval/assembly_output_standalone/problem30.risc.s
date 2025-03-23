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
	sd	a0,-40(s0)
	mv	a5,a1
	sd	a2,-56(s0)
	sd	a3,-64(s0)
	sw	a5,-44(s0)
	ld	a0,-56(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-44(s0)
	slli	a5,a5,3
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	mv	a4,a5
	ld	a5,-64(s0)
	sd	a4,0(a5)
	sw	zero,-28(s0)
	sw	zero,-24(s0)
	j	.L2
.L4:
	lw	a5,-24(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lw	a4,-20(s0)
	mv	a2,a4
	ld	a1,-56(s0)
	mv	a0,a5
	call	strncmp@plt
	mv	a5,a0
	bne	a5,zero,.L3
	lw	a5,-24(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a4,a4,a5
	ld	a5,-64(s0)
	ld	a3,0(a5)
	lw	a5,-28(s0)
	addiw	a2,a5,1
	sw	a2,-28(s0)
	slli	a5,a5,3
	add	a5,a3,a5
	ld	a4,0(a4)
	sd	a4,0(a5)
.L3:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L2:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L4
	lw	a5,-28(s0)
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
