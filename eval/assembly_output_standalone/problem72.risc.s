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
	.align	2
.LC0:
	.word	-1082130432
	.align	2
.LC1:
	.word	1073741824
	.align	2
.LC2:
	.word	1120403456
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
