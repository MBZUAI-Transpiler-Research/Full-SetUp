	.file	"problem100.c"
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
.LC1:
	.string	"10"
	.align	3
.LC2:
	.string	"problem100.c"
	.align	3
.LC3:
	.string	"func0(\"10\") == 10"
	.align	3
.LC4:
	.string	"14.5"
	.align	3
.LC5:
	.string	"func0(\"14.5\") == 15"
	.align	3
.LC6:
	.string	"-15.5"
	.align	3
.LC7:
	.string	"func0(\"-15.5\") == -16"
	.align	3
.LC8:
	.string	"15.3"
	.align	3
.LC9:
	.string	"func0(\"15.3\") == 15"
	.align	3
.LC10:
	.string	"0"
	.align	3
.LC11:
	.string	"func0(\"0\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	lla	a0,.LC1
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,10
	beq	a4,a5,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,16
	lla	a1,.LC2
	lla	a0,.LC3
	call	__assert_fail@plt
.L9:
	lla	a0,.LC4
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,15
	beq	a4,a5,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,17
	lla	a1,.LC2
	lla	a0,.LC5
	call	__assert_fail@plt
.L10:
	lla	a0,.LC6
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,-16
	beq	a4,a5,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,18
	lla	a1,.LC2
	lla	a0,.LC7
	call	__assert_fail@plt
.L11:
	lla	a0,.LC8
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,15
	beq	a4,a5,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,19
	lla	a1,.LC2
	lla	a0,.LC9
	call	__assert_fail@plt
.L12:
	lla	a0,.LC10
	call	func0
	mv	a5,a0
	beq	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,20
	lla	a1,.LC2
	lla	a0,.LC11
	call	__assert_fail@plt
.L13:
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
	.align	3
.LC0:
	.word	0
	.word	1071644672
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
