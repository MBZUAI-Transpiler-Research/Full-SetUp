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
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	fsd	fs0,40(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 40, -40
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	mv	a5,a1
	sw	a5,-76(s0)
	sd	zero,-56(s0)
	sw	zero,-60(s0)
	j	.L2
.L6:
	lw	a5,-60(s0)
	slli	a5,a5,2
	ld	a4,-72(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fs0,fa5
	lw	a5,-60(s0)
	slli	a5,a5,2
	ld	a4,-72(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa5,fa5
	fmv.d	fa0,fa5
	call	round@plt
	fmv.d	fa5,fa0
	fsub.d	fa5,fs0,fa5
	fabs.d	fa4,fa5
	lla	a5,.LC0
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	beq	a5,zero,.L3
	lw	a5,-60(s0)
	slli	a5,a5,2
	ld	a4,-72(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fmv.s.x	fa4,zero
	fgt.s	a5,fa5,fa4
	beq	a5,zero,.L3
	lw	a5,-60(s0)
	slli	a5,a5,2
	ld	a4,-72(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa5,fa5
	fmv.d	fa0,fa5
	call	round@plt
	fmv.d	fa5,fa0
	fcvt.w.d a5,fa5,rtz
	sext.w	a5,a5
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,31
	addw	a4,a4,a5
	andi	a4,a4,1
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,1
	bne	a4,a5,.L3
	lw	a5,-60(s0)
	slli	a5,a5,2
	ld	a4,-72(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa5,fa5
	fmv.d	fa0,fa5
	call	round@plt
	fmv.d	fa5,fa0
	fcvt.w.d a5,fa5,rtz
	sext.w	s1,a5
	lw	a5,-60(s0)
	slli	a5,a5,2
	ld	a4,-72(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa5,fa5
	fmv.d	fa0,fa5
	call	round@plt
	fmv.d	fa5,fa0
	fcvt.w.d a5,fa5,rtz
	sext.w	a5,a5
	mulw	a5,s1,a5
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-56(s0)
	add	a5,a5,a4
	sd	a5,-56(s0)
.L3:
	lw	a5,-60(s0)
	addiw	a5,a5,1
	sw	a5,-60(s0)
.L2:
	lw	a5,-60(s0)
	mv	a4,a5
	lw	a5,-76(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
	ld	a5,-56(s0)
	mv	a0,a5
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	ld	s1,56(sp)
	.cfi_restore 9
	fld	fs0,40(sp)
	.cfi_restore 40
	addi	sp,sp,80
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
