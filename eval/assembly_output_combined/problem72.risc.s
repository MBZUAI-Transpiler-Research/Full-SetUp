	.file	"problem72.c"
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
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	fsw	fa0,-36(s0)
	fsw	fa1,-40(s0)
	fsw	fa2,-44(s0)
	flw	fa4,-36(s0)
	flw	fa5,-40(s0)
	fadd.s	fa5,fa4,fa5
	flw	fa4,-44(s0)
	fge.s	a5,fa4,fa5
	bne	a5,zero,.L2
	flw	fa4,-36(s0)
	flw	fa5,-44(s0)
	fadd.s	fa5,fa4,fa5
	flw	fa4,-40(s0)
	fge.s	a5,fa4,fa5
	bne	a5,zero,.L2
	flw	fa4,-40(s0)
	flw	fa5,-44(s0)
	fadd.s	fa5,fa4,fa5
	flw	fa4,-36(s0)
	fge.s	a5,fa4,fa5
	beq	a5,zero,.L6
.L2:
	lla	a5,.LC0
	flw	fa5,0(a5)
	j	.L5
.L6:
	flw	fa4,-36(s0)
	flw	fa5,-40(s0)
	fadd.s	fa4,fa4,fa5
	flw	fa5,-44(s0)
	fadd.s	fa4,fa4,fa5
	lla	a5,.LC1
	flw	fa5,0(a5)
	fdiv.s	fa5,fa4,fa5
	fsw	fa5,-24(s0)
	flw	fa4,-24(s0)
	flw	fa5,-36(s0)
	fsub.s	fa4,fa4,fa5
	flw	fa5,-24(s0)
	fmul.s	fa4,fa4,fa5
	flw	fa3,-24(s0)
	flw	fa5,-40(s0)
	fsub.s	fa5,fa3,fa5
	fmul.s	fa4,fa4,fa5
	flw	fa3,-24(s0)
	flw	fa5,-44(s0)
	fsub.s	fa5,fa3,fa5
	fmul.s	fa5,fa4,fa5
	fmv.s	fa0,fa5
	call	sqrtf@plt
	fsw	fa0,-20(s0)
	flw	fa4,-20(s0)
	lla	a5,.LC2
	flw	fa5,0(a5)
	fmul.s	fa5,fa4,fa5
	fmv.s	fa0,fa5
	call	roundf@plt
	fmv.s	fa4,fa0
	lla	a5,.LC2
	flw	fa5,0(a5)
	fdiv.s	fa5,fa4,fa5
.L5:
	fmv.s	fa0,fa5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC8:
	.string	"problem72.c"
	.align	3
.LC9:
	.string	"fabs(func0(3, 4, 5) - 6.00) < 0.01"
	.align	3
.LC12:
	.string	"fabs(func0(1, 2, 10) + 1) < 0.01"
	.align	3
.LC15:
	.string	"fabs(func0(4, 8, 5) - 8.18) < 0.01"
	.align	3
.LC17:
	.string	"fabs(func0(2, 2, 2) - 1.73) < 0.01"
	.align	3
.LC18:
	.string	"fabs(func0(1, 2, 3) + 1) < 0.01"
	.align	3
.LC21:
	.string	"fabs(func0(10, 5, 7) - 16.25) < 0.01"
	.align	3
.LC23:
	.string	"fabs(func0(2, 6, 3) + 1) < 0.01"
	.align	3
.LC25:
	.string	"fabs(func0(1, 1, 1) - 0.43) < 0.01"
	.align	3
.LC26:
	.string	"fabs(func0(2, 2, 10) + 1) < 0.01"
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
	lla	a5,.LC3
	flw	fa3,0(a5)
	lla	a5,.LC4
	flw	fa4,0(a5)
	lla	a5,.LC5
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	fmv.s	fa5,fa0
	fcvt.d.s	fa4,fa5
	lla	a5,.LC6
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	fabs.d	fa4,fa5
	lla	a5,.LC7
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,18
	lla	a1,.LC8
	lla	a0,.LC9
	call	__assert_fail@plt
.L8:
	lla	a5,.LC10
	flw	fa3,0(a5)
	lla	a5,.LC1
	flw	fa4,0(a5)
	lla	a5,.LC11
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	fmv.s	fa4,fa0
	lla	a5,.LC11
	flw	fa5,0(a5)
	fadd.s	fa5,fa4,fa5
	fabs.s	fa5,fa5
	fcvt.d.s	fa4,fa5
	lla	a5,.LC7
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,19
	lla	a1,.LC8
	lla	a0,.LC12
	call	__assert_fail@plt
.L9:
	lla	a5,.LC3
	flw	fa3,0(a5)
	lla	a5,.LC13
	flw	fa4,0(a5)
	lla	a5,.LC4
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	fmv.s	fa5,fa0
	fcvt.d.s	fa4,fa5
	lla	a5,.LC14
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	fabs.d	fa4,fa5
	lla	a5,.LC7
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,20
	lla	a1,.LC8
	lla	a0,.LC15
	call	__assert_fail@plt
.L10:
	lla	a5,.LC1
	flw	fa3,0(a5)
	lla	a5,.LC1
	flw	fa4,0(a5)
	lla	a5,.LC1
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	fmv.s	fa5,fa0
	fcvt.d.s	fa4,fa5
	lla	a5,.LC16
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	fabs.d	fa4,fa5
	lla	a5,.LC7
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,21
	lla	a1,.LC8
	lla	a0,.LC17
	call	__assert_fail@plt
.L11:
	lla	a5,.LC5
	flw	fa3,0(a5)
	lla	a5,.LC1
	flw	fa4,0(a5)
	lla	a5,.LC11
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	fmv.s	fa4,fa0
	lla	a5,.LC11
	flw	fa5,0(a5)
	fadd.s	fa5,fa4,fa5
	fabs.s	fa5,fa5
	fcvt.d.s	fa4,fa5
	lla	a5,.LC7
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC8
	lla	a0,.LC18
	call	__assert_fail@plt
.L12:
	lla	a5,.LC19
	flw	fa3,0(a5)
	lla	a5,.LC3
	flw	fa4,0(a5)
	lla	a5,.LC10
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	fmv.s	fa5,fa0
	fcvt.d.s	fa4,fa5
	lla	a5,.LC20
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	fabs.d	fa4,fa5
	lla	a5,.LC7
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,23
	lla	a1,.LC8
	lla	a0,.LC21
	call	__assert_fail@plt
.L13:
	lla	a5,.LC5
	flw	fa3,0(a5)
	lla	a5,.LC22
	flw	fa4,0(a5)
	lla	a5,.LC1
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	fmv.s	fa4,fa0
	lla	a5,.LC11
	flw	fa5,0(a5)
	fadd.s	fa5,fa4,fa5
	fabs.s	fa5,fa5
	fcvt.d.s	fa4,fa5
	lla	a5,.LC7
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,24
	lla	a1,.LC8
	lla	a0,.LC23
	call	__assert_fail@plt
.L14:
	lla	a5,.LC11
	flw	fa3,0(a5)
	lla	a5,.LC11
	flw	fa4,0(a5)
	lla	a5,.LC11
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	fmv.s	fa5,fa0
	fcvt.d.s	fa4,fa5
	lla	a5,.LC24
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	fabs.d	fa4,fa5
	lla	a5,.LC7
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,25
	lla	a1,.LC8
	lla	a0,.LC25
	call	__assert_fail@plt
.L15:
	lla	a5,.LC10
	flw	fa3,0(a5)
	lla	a5,.LC1
	flw	fa4,0(a5)
	lla	a5,.LC1
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	fmv.s	fa4,fa0
	lla	a5,.LC11
	flw	fa5,0(a5)
	fadd.s	fa5,fa4,fa5
	fabs.s	fa5,fa5
	fcvt.d.s	fa4,fa5
	lla	a5,.LC7
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,26
	lla	a1,.LC8
	lla	a0,.LC26
	call	__assert_fail@plt
.L16:
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
	.align	2
.LC0:
	.word	-1082130432
	.align	2
.LC1:
	.word	1073741824
	.align	2
.LC2:
	.word	1120403456
	.align	2
.LC3:
	.word	1084227584
	.align	2
.LC4:
	.word	1082130432
	.align	2
.LC5:
	.word	1077936128
	.align	3
.LC6:
	.word	0
	.word	1075314688
	.align	3
.LC7:
	.word	1202590843
	.word	1065646817
	.align	2
.LC10:
	.word	1092616192
	.align	2
.LC11:
	.word	1065353216
	.align	2
.LC13:
	.word	1090519040
	.align	3
.LC14:
	.word	-171798692
	.word	1075862568
	.align	3
.LC16:
	.word	2061584302
	.word	1073458708
	.align	2
.LC19:
	.word	1088421888
	.align	3
.LC20:
	.word	0
	.word	1076903936
	.align	2
.LC22:
	.word	1086324736
	.align	3
.LC24:
	.word	-1202590843
	.word	1071351070
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
