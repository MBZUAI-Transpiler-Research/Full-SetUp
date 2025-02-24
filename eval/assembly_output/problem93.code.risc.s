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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
