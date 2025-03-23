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
	ld	a0,-40(s0)
	call	atof@plt
	fsd	fa0,-24(s0)
	fld	fa5,-24(s0)
	fmv.d.x	fa4,zero
	flt.d	a5,fa5,fa4
	beq	a5,zero,.L7
	fld	fa4,-24(s0)
	lla	a5,.LC0
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	call	ceil@plt
	fmv.d	fa5,fa0
	fcvt.w.d a5,fa5,rtz
	sext.w	a5,a5
	j	.L4
.L7:
	fld	fa4,-24(s0)
	lla	a5,.LC0
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	call	floor@plt
	fmv.d	fa5,fa0
	fcvt.w.d a5,fa5,rtz
	sext.w	a5,a5
.L4:
	mv	a0,a5
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	1071644672
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
