	.file	"code.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-48
	sd	s0,40(sp)
	addi	s0,sp,48
	mv	a5,a0
	mv	a4,a2
	sd	a3,-40(s0)
	sw	a5,-20(s0)
	mv	a5,a1
	sw	a5,-24(s0)
	mv	a5,a4
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L2
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	addw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-40(s0)
	sw	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,4
	sw	zero,0(a5)
	j	.L4
.L2:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	addw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-40(s0)
	sw	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,4
	lw	a4,-28(s0)
	mv	a3,a4
	lw	a4,-24(s0)
	subw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
.L4:
	nop
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
