	.file	"problem46.c"
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
	fsw	fa1,-24(s0)
	flw	fa4,-20(s0)
	flw	fa5,-24(s0)
	fmul.s	fa4,fa4,fa5
	lla	a5,.LC0
	flw	fa5,0(a5)
	fmul.s	fa5,fa4,fa5
	fmv.s	fa0,fa5
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC5:
	.string	"problem46.c"
	.align	3
.LC6:
	.string	"fabs(func0(5, 3) - 7.5) < 1e-4"
	.align	3
.LC9:
	.string	"fabs(func0(2, 2) - 2.0) < 1e-4"
	.align	3
.LC13:
	.string	"fabs(func0(10, 8) - 40.0) < 1e-4"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	lla	a5,.LC1
	flw	fa4,0(a5)
	lla	a5,.LC2
	flw	fa5,0(a5)
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	fmv.s	fa5,fa0
	fcvt.d.s	fa4,fa5
	lla	a5,.LC3
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	fabs.d	fa4,fa5
	lla	a5,.LC4
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L4
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,15
	lla	a1,.LC5
	lla	a0,.LC6
	call	__assert_fail@plt
.L4:
	lla	a5,.LC7
	flw	fa4,0(a5)
	lla	a5,.LC7
	flw	fa5,0(a5)
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	fmv.s	fa5,fa0
	fcvt.d.s	fa4,fa5
	lla	a5,.LC8
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	fabs.d	fa4,fa5
	lla	a5,.LC4
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L5
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,16
	lla	a1,.LC5
	lla	a0,.LC9
	call	__assert_fail@plt
.L5:
	lla	a5,.LC10
	flw	fa4,0(a5)
	lla	a5,.LC11
	flw	fa5,0(a5)
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	fmv.s	fa5,fa0
	fcvt.d.s	fa4,fa5
	lla	a5,.LC12
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	fabs.d	fa4,fa5
	lla	a5,.LC4
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L6
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,17
	lla	a1,.LC5
	lla	a0,.LC13
	call	__assert_fail@plt
.L6:
	li	a5,0
	mv	a0,a5
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	2
.LC0:
	.word	1056964608
	.align	2
.LC1:
	.word	1077936128
	.align	2
.LC2:
	.word	1084227584
	.align	3
.LC3:
	.word	0
	.word	1075707904
	.align	3
.LC4:
	.word	-350469331
	.word	1058682594
	.align	2
.LC7:
	.word	1073741824
	.align	3
.LC8:
	.word	0
	.word	1073741824
	.align	2
.LC10:
	.word	1090519040
	.align	2
.LC11:
	.word	1092616192
	.align	3
.LC12:
	.word	0
	.word	1078198272
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
