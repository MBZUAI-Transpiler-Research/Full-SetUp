	.file	"code.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	fsw	fa0,-20(s0)
	flw	fa5,-20(s0)
	fcvt.w.s a5,fa5,rtz
	sext.w	a5,a5
	fcvt.s.w	fa5,a5
	flw	fa4,-20(s0)
	fsub.s	fa5,fa4,fa5
	fmv.s	fa0,fa5
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
