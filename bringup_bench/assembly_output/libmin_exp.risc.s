	.file	"libmin_exp.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.type	__DOUBLE_BITS, @function
__DOUBLE_BITS:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	fsd	fa0,-40(s0)
	fld	fa5,-40(s0)
	fsd	fa5,-24(s0)
	ld	a5,-24(s0)
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	__DOUBLE_BITS, .-__DOUBLE_BITS
	.section	.rodata
	.align	3
	.type	half, @object
	.size	half, 16
half:
	.word	0
	.word	1071644672
	.word	0
	.word	-1075838976
	.align	3
	.type	ln2hi, @object
	.size	ln2hi, 8
ln2hi:
	.word	-18874368
	.word	1072049730
	.align	3
	.type	ln2lo, @object
	.size	ln2lo, 8
ln2lo:
	.word	897137782
	.word	1038760431
	.align	3
	.type	invln2, @object
	.size	invln2, 8
invln2:
	.word	1697350398
	.word	1073157447
	.align	3
	.type	P1, @object
	.size	P1, 8
P1:
	.word	1431655742
	.word	1069897045
	.align	3
	.type	P2, @object
	.size	P2, 8
P2:
	.word	381599123
	.word	-1083784852
	.align	3
	.type	P3, @object
	.size	P3, 8
P3:
	.word	-1356472788
	.word	1058100842
	.align	3
	.type	P4, @object
	.size	P4, 8
P4:
	.word	-976065551
	.word	-1094992575
	.align	3
	.type	P5, @object
	.size	P5, 8
P5:
	.word	1925096656
	.word	1046886249
	.text
	.align	1
	.globl	libmin_exp
	.type	libmin_exp, @function
libmin_exp:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	fsd	fa0,-88(s0)
	fld	fa5,-88(s0)
	fsd	fa5,-32(s0)
	ld	a5,-32(s0)
	srli	a5,a5,32
	sw	a5,-72(s0)
	lw	a5,-72(s0)
	srliw	a5,a5,31
	sext.w	a5,a5
	sw	a5,-68(s0)
	lw	a5,-72(s0)
	mv	a4,a5
	li	a5,-2147483648
	xori	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-72(s0)
	lw	a5,-72(s0)
	sext.w	a4,a5
	li	a5,1082535936
	addi	a5,a5,-447
	bleu	a4,a5,.L4
	fld	fa0,-88(s0)
	call	__DOUBLE_BITS
	mv	a4,a0
	li	a5,-1
	srli	a5,a5,1
	and	a4,a4,a5
	li	a5,2047
	slli	a5,a5,52
	bleu	a4,a5,.L5
	fld	fa5,-88(s0)
	j	.L6
.L5:
	lw	a5,-72(s0)
	sext.w	a4,a5
	li	a5,2146435072
	bne	a4,a5,.L7
	lw	a5,-68(s0)
	sext.w	a5,a5
	beq	a5,zero,.L7
	fmv.d.x	fa5,zero
	j	.L6
.L7:
	fld	fa4,-88(s0)
	lla	a5,.LC0
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L19
	fld	fa4,-88(s0)
	lla	a5,.LC1
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-88(s0)
	fld	fa5,-88(s0)
	j	.L6
.L19:
	fld	fa4,-88(s0)
	lla	a5,.LC2
	fld	fa5,0(a5)
	flt.d	a5,fa4,fa5
	beq	a5,zero,.L4
	fmv.d.x	fa5,zero
	fsd	fa5,-88(s0)
	fld	fa5,-88(s0)
	j	.L6
.L4:
	lw	a5,-72(s0)
	sext.w	a4,a5
	li	a5,1071001600
	addi	a5,a5,-446
	bleu	a4,a5,.L11
	lw	a5,-72(s0)
	sext.w	a4,a5
	li	a5,1072734208
	addi	a5,a5,689
	bleu	a4,a5,.L12
	lla	a5,.LC3
	fld	fa4,0(a5)
	fld	fa5,-88(s0)
	fmul.d	fa4,fa4,fa5
	lla	a4,half
	lw	a5,-68(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	fcvt.w.d a5,fa5,rtz
	sw	a5,-76(s0)
	j	.L13
.L12:
	li	a5,1
	lw	a4,-68(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	lw	a4,-68(s0)
	subw	a5,a5,a4
	sw	a5,-76(s0)
.L13:
	lw	a5,-76(s0)
	fcvt.d.w	fa4,a5
	lla	a5,.LC4
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fld	fa4,-88(s0)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-56(s0)
	lw	a5,-76(s0)
	fcvt.d.w	fa4,a5
	lla	a5,.LC5
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-64(s0)
	fld	fa4,-56(s0)
	fld	fa5,-64(s0)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-88(s0)
	j	.L14
.L11:
	lw	a5,-72(s0)
	sext.w	a4,a5
	li	a5,1043333120
	bleu	a4,a5,.L15
	sw	zero,-76(s0)
	fld	fa5,-88(s0)
	fsd	fa5,-56(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-64(s0)
	j	.L14
.L15:
	fld	fa4,-88(s0)
	lla	a5,.LC1
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-32(s0)
	fld	fa5,-32(s0)
	fld	fa4,-88(s0)
	lla	a5,.LC6
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	j	.L6
.L14:
	fld	fa5,-88(s0)
	fmul.d	fa5,fa5,fa5
	fsd	fa5,-48(s0)
	lla	a5,.LC7
	fld	fa4,0(a5)
	fld	fa5,-48(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC8
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-48(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC9
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-48(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC10
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-48(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC11
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-48(s0)
	fmul.d	fa5,fa4,fa5
	fld	fa4,-88(s0)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
	fld	fa4,-88(s0)
	fld	fa5,-40(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC12
	fld	fa3,0(a5)
	fld	fa5,-40(s0)
	fsub.d	fa5,fa3,fa5
	fdiv.d	fa4,fa4,fa5
	fld	fa5,-64(s0)
	fsub.d	fa4,fa4,fa5
	fld	fa5,-56(s0)
	fadd.d	fa4,fa4,fa5
	lla	a5,.LC6
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-88(s0)
	lw	a5,-76(s0)
	sext.w	a5,a5
	bne	a5,zero,.L16
	fld	fa5,-88(s0)
	j	.L6
.L16:
	lw	a5,-76(s0)
	mv	a0,a5
	fld	fa0,-88(s0)
	call	libmin_scalbn@plt
	fmv.d	fa5,fa0
.L6:
	fmv.d	fa0,fa5
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	libmin_exp, .-libmin_exp
	.section	.rodata
	.align	3
.LC0:
	.word	-17155601
	.word	1082535490
	.align	3
.LC1:
	.word	0
	.word	2145386496
	.align	3
.LC2:
	.word	-718458799
	.word	-1064875760
	.align	3
.LC3:
	.word	1697350398
	.word	1073157447
	.align	3
.LC4:
	.word	-18874368
	.word	1072049730
	.align	3
.LC5:
	.word	897137782
	.word	1038760431
	.align	3
.LC6:
	.word	0
	.word	1072693248
	.align	3
.LC7:
	.word	1925096656
	.word	1046886249
	.align	3
.LC8:
	.word	-976065551
	.word	-1094992575
	.align	3
.LC9:
	.word	-1356472788
	.word	1058100842
	.align	3
.LC10:
	.word	381599123
	.word	-1083784852
	.align	3
.LC11:
	.word	1431655742
	.word	1069897045
	.align	3
.LC12:
	.word	0
	.word	1073741824
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
