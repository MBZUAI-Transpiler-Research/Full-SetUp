	.file	"problem158.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	fsw	fa0,-20(s0)
	fsw	fa1,-24(s0)
	fsw	fa2,-28(s0)
	flw	fa5,-20(s0)
	fmul.s	fa4,fa5,fa5
	flw	fa5,-24(s0)
	fmul.s	fa5,fa5,fa5
	fadd.s	fa4,fa4,fa5
	flw	fa5,-28(s0)
	fmul.s	fa5,fa5,fa5
	fsub.s	fa5,fa4,fa5
	fabs.s	fa5,fa5
	fcvt.d.s	fa4,fa5
	lla	a5,.LC0
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L2
	flw	fa5,-20(s0)
	fmul.s	fa4,fa5,fa5
	flw	fa5,-28(s0)
	fmul.s	fa5,fa5,fa5
	fadd.s	fa4,fa4,fa5
	flw	fa5,-24(s0)
	fmul.s	fa5,fa5,fa5
	fsub.s	fa5,fa4,fa5
	fabs.s	fa5,fa5
	fcvt.d.s	fa4,fa5
	lla	a5,.LC0
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L2
	flw	fa5,-24(s0)
	fmul.s	fa4,fa5,fa5
	flw	fa5,-28(s0)
	fmul.s	fa5,fa5,fa5
	fadd.s	fa4,fa4,fa5
	flw	fa5,-20(s0)
	fmul.s	fa5,fa5,fa5
	fsub.s	fa5,fa4,fa5
	fabs.s	fa5,fa5
	fcvt.d.s	fa4,fa5
	lla	a5,.LC0
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	beq	a5,zero,.L6
.L2:
	li	a5,1
	j	.L5
.L6:
	li	a5,0
.L5:
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC4:
	.string	"problem158.c"
	.align	3
.LC5:
	.string	"func0(3, 4, 5) == 1"
	.align	3
.LC8:
	.string	"func0(1, 2, 3) == 0"
	.align	3
.LC12:
	.string	"func0(10, 6, 8) == 1"
	.align	3
.LC13:
	.string	"func0(2, 2, 2) == 0"
	.align	3
.LC17:
	.string	"func0(7, 24, 25) == 1"
	.align	3
.LC18:
	.string	"func0(10, 5, 7) == 0"
	.align	3
.LC21:
	.string	"func0(5, 12, 13) == 1"
	.align	3
.LC24:
	.string	"func0(15, 8, 17) == 1"
	.align	3
.LC28:
	.string	"func0(48, 55, 73) == 1"
	.align	3
.LC29:
	.string	"func0(1, 1, 1) == 0"
	.align	3
.LC30:
	.string	"func0(2, 2, 10) == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	lla	a5,.LC1
	flw	fa3,0(a5)
	lla	a5,.LC2
	flw	fa4,0(a5)
	lla	a5,.LC3
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,14
	lla	a1,.LC4
	lla	a0,.LC5
	call	__assert_fail@plt
.L8:
	lla	a5,.LC3
	flw	fa3,0(a5)
	lla	a5,.LC6
	flw	fa4,0(a5)
	lla	a5,.LC7
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,15
	lla	a1,.LC4
	lla	a0,.LC8
	call	__assert_fail@plt
.L9:
	lla	a5,.LC9
	flw	fa3,0(a5)
	lla	a5,.LC10
	flw	fa4,0(a5)
	lla	a5,.LC11
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,16
	lla	a1,.LC4
	lla	a0,.LC12
	call	__assert_fail@plt
.L10:
	lla	a5,.LC6
	flw	fa3,0(a5)
	lla	a5,.LC6
	flw	fa4,0(a5)
	lla	a5,.LC6
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,17
	lla	a1,.LC4
	lla	a0,.LC13
	call	__assert_fail@plt
.L11:
	lla	a5,.LC14
	flw	fa3,0(a5)
	lla	a5,.LC15
	flw	fa4,0(a5)
	lla	a5,.LC16
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,18
	lla	a1,.LC4
	lla	a0,.LC17
	call	__assert_fail@plt
.L12:
	lla	a5,.LC16
	flw	fa3,0(a5)
	lla	a5,.LC1
	flw	fa4,0(a5)
	lla	a5,.LC11
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,19
	lla	a1,.LC4
	lla	a0,.LC18
	call	__assert_fail@plt
.L13:
	lla	a5,.LC19
	flw	fa3,0(a5)
	lla	a5,.LC20
	flw	fa4,0(a5)
	lla	a5,.LC1
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,20
	lla	a1,.LC4
	lla	a0,.LC21
	call	__assert_fail@plt
.L14:
	lla	a5,.LC22
	flw	fa3,0(a5)
	lla	a5,.LC9
	flw	fa4,0(a5)
	lla	a5,.LC23
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,21
	lla	a1,.LC4
	lla	a0,.LC24
	call	__assert_fail@plt
.L15:
	lla	a5,.LC25
	flw	fa3,0(a5)
	lla	a5,.LC26
	flw	fa4,0(a5)
	lla	a5,.LC27
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC4
	lla	a0,.LC28
	call	__assert_fail@plt
.L16:
	lla	a5,.LC7
	flw	fa3,0(a5)
	lla	a5,.LC7
	flw	fa4,0(a5)
	lla	a5,.LC7
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,23
	lla	a1,.LC4
	lla	a0,.LC29
	call	__assert_fail@plt
.L17:
	lla	a5,.LC11
	flw	fa3,0(a5)
	lla	a5,.LC6
	flw	fa4,0(a5)
	lla	a5,.LC6
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,24
	lla	a1,.LC4
	lla	a0,.LC30
	call	__assert_fail@plt
.L18:
	li	a5,0
	mv	a0,a5
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC0:
	.word	-350469331
	.word	1058682594
	.align	2
.LC1:
	.word	1084227584
	.align	2
.LC2:
	.word	1082130432
	.align	2
.LC3:
	.word	1077936128
	.align	2
.LC6:
	.word	1073741824
	.align	2
.LC7:
	.word	1065353216
	.align	2
.LC9:
	.word	1090519040
	.align	2
.LC10:
	.word	1086324736
	.align	2
.LC11:
	.word	1092616192
	.align	2
.LC14:
	.word	1103626240
	.align	2
.LC15:
	.word	1103101952
	.align	2
.LC16:
	.word	1088421888
	.align	2
.LC19:
	.word	1095761920
	.align	2
.LC20:
	.word	1094713344
	.align	2
.LC22:
	.word	1099431936
	.align	2
.LC23:
	.word	1097859072
	.align	2
.LC25:
	.word	1116864512
	.align	2
.LC26:
	.word	1113325568
	.align	2
.LC27:
	.word	1111490560
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
