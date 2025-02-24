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
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	mv	a5,a1
	sw	a5,-76(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-48(s0)
	ld	a5,-72(s0)
	fld	fa5,0(a5)
	fsd	fa5,-40(s0)
	li	a5,1
	sw	a5,-64(s0)
	j	.L2
.L5:
	lla	a5,.LC0
	fld	fa5,0(a5)
	fsd	fa5,-24(s0)
	sw	zero,-60(s0)
	j	.L3
.L4:
	fld	fa4,-24(s0)
	fld	fa5,-48(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lw	a5,-60(s0)
	addiw	a5,a5,1
	sw	a5,-60(s0)
.L3:
	lw	a5,-60(s0)
	mv	a4,a5
	lw	a5,-64(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L4
	lw	a5,-64(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	fld	fa4,0(a5)
	fld	fa5,-24(s0)
	fmul.d	fa5,fa4,fa5
	fld	fa4,-40(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
	lw	a5,-64(s0)
	addiw	a5,a5,1
	sw	a5,-64(s0)
.L2:
	lw	a5,-64(s0)
	mv	a4,a5
	lw	a5,-76(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L5
	j	.L6
.L15:
	fmv.d.x	fa5,zero
	fsd	fa5,-32(s0)
	li	a5,1
	sw	a5,-64(s0)
	j	.L7
.L10:
	lla	a5,.LC0
	fld	fa5,0(a5)
	fsd	fa5,-24(s0)
	li	a5,1
	sw	a5,-56(s0)
	j	.L8
.L9:
	fld	fa4,-24(s0)
	fld	fa5,-48(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lw	a5,-56(s0)
	addiw	a5,a5,1
	sw	a5,-56(s0)
.L8:
	lw	a5,-56(s0)
	mv	a4,a5
	lw	a5,-64(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L9
	lw	a5,-64(s0)
	fcvt.d.w	fa4,a5
	lw	a5,-64(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	fld	fa5,0(a5)
	fmul.d	fa4,fa4,fa5
	fld	fa5,-24(s0)
	fmul.d	fa5,fa4,fa5
	fld	fa4,-32(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-32(s0)
	lw	a5,-64(s0)
	addiw	a5,a5,1
	sw	a5,-64(s0)
.L7:
	lw	a5,-64(s0)
	mv	a4,a5
	lw	a5,-76(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L10
	fld	fa4,-40(s0)
	fld	fa5,-32(s0)
	fdiv.d	fa5,fa4,fa5
	fld	fa4,-48(s0)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-48(s0)
	ld	a5,-72(s0)
	fld	fa5,0(a5)
	fsd	fa5,-40(s0)
	li	a5,1
	sw	a5,-64(s0)
	j	.L11
.L14:
	lla	a5,.LC0
	fld	fa5,0(a5)
	fsd	fa5,-24(s0)
	sw	zero,-52(s0)
	j	.L12
.L13:
	fld	fa4,-24(s0)
	fld	fa5,-48(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lw	a5,-52(s0)
	addiw	a5,a5,1
	sw	a5,-52(s0)
.L12:
	lw	a5,-52(s0)
	mv	a4,a5
	lw	a5,-64(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L13
	lw	a5,-64(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	fld	fa4,0(a5)
	fld	fa5,-24(s0)
	fmul.d	fa5,fa4,fa5
	fld	fa4,-40(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
	lw	a5,-64(s0)
	addiw	a5,a5,1
	sw	a5,-64(s0)
.L11:
	lw	a5,-64(s0)
	mv	a4,a5
	lw	a5,-76(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L14
.L6:
	fld	fa5,-40(s0)
	fabs.d	fa4,fa5
	lla	a5,.LC1
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	bne	a5,zero,.L15
	fld	fa5,-48(s0)
	fmv.d	fa0,fa5
	ld	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	1072693248
	.align	3
.LC1:
	.word	-1598689907
	.word	1051772663
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
