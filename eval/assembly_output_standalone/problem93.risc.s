	.file	"code.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	addi	s0,sp,32
	fsw	fa0,-20(s0)
	fsw	fa1,-24(s0)
	fsw	fa2,-28(s0)
	flw	fa0,-20(s0)
	call	roundf@plt
	fmv.s	fa4,fa0
	flw	fa5,-20(s0)
	feq.s	a5,fa5,fa4
	bne	a5,zero,.L2
	li	a5,0
	j	.L3
.L2:
	flw	fa0,-24(s0)
	call	roundf@plt
	fmv.s	fa4,fa0
	flw	fa5,-24(s0)
	feq.s	a5,fa5,fa4
	bne	a5,zero,.L4
	li	a5,0
	j	.L3
.L4:
	flw	fa0,-28(s0)
	call	roundf@plt
	fmv.s	fa4,fa0
	flw	fa5,-28(s0)
	feq.s	a5,fa5,fa4
	bne	a5,zero,.L5
	li	a5,0
	j	.L3
.L5:
	flw	fa4,-20(s0)
	flw	fa5,-24(s0)
	fadd.s	fa5,fa4,fa5
	flw	fa4,-28(s0)
	feq.s	a5,fa4,fa5
	bne	a5,zero,.L6
	flw	fa4,-20(s0)
	flw	fa5,-28(s0)
	fadd.s	fa5,fa4,fa5
	flw	fa4,-24(s0)
	feq.s	a5,fa4,fa5
	bne	a5,zero,.L6
	flw	fa4,-24(s0)
	flw	fa5,-28(s0)
	fadd.s	fa5,fa4,fa5
	flw	fa4,-20(s0)
	feq.s	a5,fa4,fa5
	beq	a5,zero,.L7
.L6:
	li	a5,1
	j	.L3
.L7:
	li	a5,0
.L3:
	mv	a0,a5
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
