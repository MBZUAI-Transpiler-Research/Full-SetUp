	.file	"problem5.c"
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
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sw	a5,-44(s0)
	fmv.s.x	fa5,zero
	fsw	fa5,-32(s0)
	sw	zero,-24(s0)
	sw	zero,-24(s0)
	j	.L2
.L3:
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	flw	fa4,-32(s0)
	fadd.s	fa5,fa4,fa5
	fsw	fa5,-32(s0)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L2:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L3
	lw	a5,-44(s0)
	fcvt.s.w	fa5,a5
	flw	fa4,-32(s0)
	fdiv.s	fa5,fa4,fa5
	fsw	fa5,-20(s0)
	fmv.s.x	fa5,zero
	fsw	fa5,-28(s0)
	sw	zero,-24(s0)
	j	.L4
.L5:
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	flw	fa4,0(a5)
	flw	fa5,-20(s0)
	fsub.s	fa5,fa4,fa5
	fabs.s	fa5,fa5
	flw	fa4,-28(s0)
	fadd.s	fa5,fa4,fa5
	fsw	fa5,-28(s0)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L4:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L5
	lw	a5,-44(s0)
	fcvt.s.w	fa5,a5
	flw	fa4,-28(s0)
	fdiv.s	fa5,fa4,fa5
	fmv.s	fa0,fa5
	ld	s0,40(sp)
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
.LC7:
	.string	"problem5.c"
	.align	3
.LC8:
	.string	"fabs(func0(case1, 3) - 2.0/3.0) < 1e-4"
	.align	3
.LC10:
	.string	"fabs(func0(case2, 4) - 1.0) < 1e-4"
	.align	3
.LC12:
	.string	"fabs(func0(case3, 5) - 6.0/5.0) < 1e-4"
	.align	3
.LC0:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1082130432
	.align	3
.LC1:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1082130432
	.word	1084227584
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC2
	flw	fa5,0(a5)
	fsw	fa5,-80(s0)
	lla	a5,.LC3
	flw	fa5,0(a5)
	fsw	fa5,-76(s0)
	lla	a5,.LC4
	flw	fa5,0(a5)
	fsw	fa5,-72(s0)
	addi	a5,s0,-80
	li	a1,3
	mv	a0,a5
	call	func0
	fmv.s	fa5,fa0
	fcvt.d.s	fa4,fa5
	lla	a5,.LC5
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	fabs.d	fa4,fa5
	lla	a5,.LC6
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,28
	lla	a1,.LC7
	lla	a0,.LC8
	call	__assert_fail@plt
.L8:
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-64(s0)
	ld	a5,8(a5)
	sd	a5,-56(s0)
	addi	a5,s0,-64
	li	a1,4
	mv	a0,a5
	call	func0
	fmv.s	fa5,fa0
	fcvt.d.s	fa4,fa5
	lla	a5,.LC9
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	fabs.d	fa4,fa5
	lla	a5,.LC6
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,31
	lla	a1,.LC7
	lla	a0,.LC10
	call	__assert_fail@plt
.L9:
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a4,8(a5)
	sd	a4,-40(s0)
	lw	a5,16(a5)
	sw	a5,-32(s0)
	addi	a5,s0,-48
	li	a1,5
	mv	a0,a5
	call	func0
	fmv.s	fa5,fa0
	fcvt.d.s	fa4,fa5
	lla	a5,.LC11
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	fabs.d	fa4,fa5
	lla	a5,.LC6
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	bne	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,34
	lla	a1,.LC7
	lla	a0,.LC12
	call	__assert_fail@plt
.L10:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L12
	call	__stack_chk_fail@plt
.L12:
	mv	a0,a4
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
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
.LC2:
	.word	1065353216
	.align	2
.LC3:
	.word	1073741824
	.align	2
.LC4:
	.word	1077936128
	.align	3
.LC5:
	.word	1431655765
	.word	1071994197
	.align	3
.LC6:
	.word	-350469331
	.word	1058682594
	.align	3
.LC9:
	.word	0
	.word	1072693248
	.align	3
.LC11:
	.word	858993459
	.word	1072902963
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
