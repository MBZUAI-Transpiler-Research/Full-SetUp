	.file	"code.c"
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
.LC0:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
