	.file	"problem93.c"
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
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
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
	.cfi_restore 1
	ld	s0,16(sp)
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
.LC3:
	.string	"problem93.c"
	.align	3
.LC4:
	.string	"func0(2, 3, 1) == 1"
	.align	3
.LC6:
	.string	"func0(2.5, 2, 3) == 0"
	.align	3
.LC10:
	.string	"func0(1.5, 5, 3.5) == 0"
	.align	3
.LC12:
	.string	"func0(2, 6, 2) == 0"
	.align	3
.LC14:
	.string	"func0(4, 2, 2) == 1"
	.align	3
.LC16:
	.string	"func0(2.2, 2.2, 2.2) == 0"
	.align	3
.LC18:
	.string	"func0(-4, 6, 2) == 1"
	.align	3
.LC19:
	.string	"func0(2, 1, 1) == 1"
	.align	3
.LC21:
	.string	"func0(3, 4, 7) == 1"
	.align	3
.LC23:
	.string	"func0(3.01, 4, 7) == 0"
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
	lla	a5,.LC0
	flw	fa3,0(a5)
	lla	a5,.LC1
	flw	fa4,0(a5)
	lla	a5,.LC2
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,17
	lla	a1,.LC3
	lla	a0,.LC4
	call	__assert_fail@plt
.L9:
	lla	a5,.LC1
	flw	fa3,0(a5)
	lla	a5,.LC2
	flw	fa4,0(a5)
	lla	a5,.LC5
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,18
	lla	a1,.LC3
	lla	a0,.LC6
	call	__assert_fail@plt
.L10:
	lla	a5,.LC7
	flw	fa3,0(a5)
	lla	a5,.LC8
	flw	fa4,0(a5)
	lla	a5,.LC9
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,19
	lla	a1,.LC3
	lla	a0,.LC10
	call	__assert_fail@plt
.L11:
	lla	a5,.LC2
	flw	fa3,0(a5)
	lla	a5,.LC11
	flw	fa4,0(a5)
	lla	a5,.LC2
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,20
	lla	a1,.LC3
	lla	a0,.LC12
	call	__assert_fail@plt
.L12:
	lla	a5,.LC2
	flw	fa3,0(a5)
	lla	a5,.LC2
	flw	fa4,0(a5)
	lla	a5,.LC13
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,21
	lla	a1,.LC3
	lla	a0,.LC14
	call	__assert_fail@plt
.L13:
	lla	a5,.LC15
	flw	fa3,0(a5)
	lla	a5,.LC15
	flw	fa4,0(a5)
	lla	a5,.LC15
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC3
	lla	a0,.LC16
	call	__assert_fail@plt
.L14:
	lla	a5,.LC2
	flw	fa3,0(a5)
	lla	a5,.LC11
	flw	fa4,0(a5)
	lla	a5,.LC17
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
	li	a2,23
	lla	a1,.LC3
	lla	a0,.LC18
	call	__assert_fail@plt
.L15:
	lla	a5,.LC0
	flw	fa3,0(a5)
	lla	a5,.LC0
	flw	fa4,0(a5)
	lla	a5,.LC2
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
	li	a2,24
	lla	a1,.LC3
	lla	a0,.LC19
	call	__assert_fail@plt
.L16:
	lla	a5,.LC20
	flw	fa3,0(a5)
	lla	a5,.LC13
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
	beq	a4,a5,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,25
	lla	a1,.LC3
	lla	a0,.LC21
	call	__assert_fail@plt
.L17:
	lla	a5,.LC20
	flw	fa3,0(a5)
	lla	a5,.LC13
	flw	fa4,0(a5)
	lla	a5,.LC22
	flw	fa5,0(a5)
	fmv.s	fa2,fa3
	fmv.s	fa1,fa4
	fmv.s	fa0,fa5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,26
	lla	a1,.LC3
	lla	a0,.LC23
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
	.align	2
.LC0:
	.word	1065353216
	.align	2
.LC1:
	.word	1077936128
	.align	2
.LC2:
	.word	1073741824
	.align	2
.LC5:
	.word	1075838976
	.align	2
.LC7:
	.word	1080033280
	.align	2
.LC8:
	.word	1084227584
	.align	2
.LC9:
	.word	1069547520
	.align	2
.LC11:
	.word	1086324736
	.align	2
.LC13:
	.word	1082130432
	.align	2
.LC15:
	.word	1074580685
	.align	2
.LC17:
	.word	-1065353216
	.align	2
.LC20:
	.word	1088421888
	.align	2
.LC22:
	.word	1077978071
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
