	.file	"libmin_asin.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
	.type	one, @object
	.size	one, 8
one:
	.word	0
	.word	1072693248
	.align	3
	.type	huge, @object
	.size	huge, 8
huge:
	.word	-2013235812
	.word	2117592124
	.align	3
	.type	pio2_hi, @object
	.size	pio2_hi, 8
pio2_hi:
	.word	1413754136
	.word	1073291771
	.align	3
	.type	pio2_lo, @object
	.size	pio2_lo, 8
pio2_lo:
	.word	856972295
	.word	1016178214
	.align	3
	.type	pio4_hi, @object
	.size	pio4_hi, 8
pio4_hi:
	.word	1413754136
	.word	1072243195
	.align	3
	.type	pS0, @object
	.size	pS0, 8
pS0:
	.word	1431655765
	.word	1069897045
	.align	3
	.type	pS1, @object
	.size	pS1, 8
pS1:
	.word	65761149
	.word	-1076570606
	.align	3
	.type	pS2, @object
	.size	pS2, 8
pS2:
	.word	243811413
	.word	1070186837
	.align	3
	.type	pS3, @object
	.size	pS3, 8
pS3:
	.word	-1251438789
	.word	-1079737816
	.align	3
	.type	pS4, @object
	.size	pS4, 8
pS4:
	.word	1963045512
	.word	1061810144
	.align	3
	.type	pS5, @object
	.size	pS5, 8
pS5:
	.word	234747657
	.word	1057111521
	.align	3
	.type	qS1, @object
	.size	qS1, 8
qS1:
	.word	478817611
	.word	-1073530329
	.align	3
	.type	qS2, @object
	.size	qS2, 8
qS2:
	.word	-1671853368
	.word	1073752805
	.align	3
	.type	qS3, @object
	.size	qS3, 8
qS3:
	.word	462225753
	.word	-1075444116
	.align	3
	.type	qS4, @object
	.size	qS4, 8
qS4:
	.word	-1322347902
	.word	1068742853
	.text
	.align	1
	.globl	libmin_asin
	.type	libmin_asin, @function
libmin_asin:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)
	sd	s0,112(sp)
	fsd	fs0,104(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 40, -24
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	fsd	fa0,-120(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-88(s0)
	fld	fa5,-120(s0)
	fsd	fa5,-96(s0)
	ld	a5,-96(s0)
	srli	a5,a5,32
	sw	a5,-108(s0)
	lw	a5,-108(s0)
	mv	a4,a5
	li	a5,-2147483648
	xori	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-104(s0)
	lw	a5,-104(s0)
	sext.w	a4,a5
	li	a5,1072693248
	blt	a4,a5,.L2
	fld	fa5,-120(s0)
	fsd	fa5,-96(s0)
	ld	a5,-96(s0)
	sw	a5,-100(s0)
	lw	a5,-104(s0)
	mv	a4,a5
	li	a5,-1072693248
	addw	a5,a4,a5
	sext.w	a5,a5
	sext.w	a5,a5
	lw	a4,-100(s0)
	or	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L3
	lla	a5,.LC0
	fld	fa4,0(a5)
	fld	fa5,-120(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC1
	fld	fa3,0(a5)
	fld	fa5,-120(s0)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa5,fa4,fa5
	j	.L4
.L3:
	fld	fa5,-120(s0)
	fsub.d	fa4,fa5,fa5
	fld	fa5,-120(s0)
	fsub.d	fa5,fa5,fa5
	fdiv.d	fa5,fa4,fa5
	j	.L4
.L2:
	lw	a5,-104(s0)
	sext.w	a4,a5
	li	a5,1071644672
	bge	a4,a5,.L5
	lw	a5,-104(s0)
	sext.w	a4,a5
	li	a5,1045430272
	bge	a4,a5,.L6
	lla	a5,.LC2
	fld	fa4,0(a5)
	fld	fa5,-120(s0)
	fadd.d	fa4,fa4,fa5
	lla	a5,.LC3
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L6
	fld	fa5,-120(s0)
	j	.L4
.L6:
	fld	fa5,-120(s0)
	fmul.d	fa5,fa5,fa5
	fsd	fa5,-88(s0)
	lla	a5,.LC4
	fld	fa4,0(a5)
	fld	fa5,-88(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC5
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-88(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC6
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-88(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC7
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-88(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC8
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-88(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC9
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	fld	fa4,-88(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-72(s0)
	lla	a5,.LC10
	fld	fa4,0(a5)
	fld	fa5,-88(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC11
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-88(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC12
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-88(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC13
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-88(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC3
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-64(s0)
	fld	fa4,-72(s0)
	fld	fa5,-64(s0)
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-80(s0)
	fld	fa4,-120(s0)
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	fld	fa5,-120(s0)
	fadd.d	fa5,fa4,fa5
	j	.L4
.L5:
	lla	a5,.LC3
	fld	fs0,0(a5)
	fld	fa0,-120(s0)
	call	libmin_fabs@plt
	fmv.d	fa5,fa0
	fsub.d	fa5,fs0,fa5
	fsd	fa5,-80(s0)
	fld	fa4,-80(s0)
	lla	a5,.LC14
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-88(s0)
	lla	a5,.LC4
	fld	fa4,0(a5)
	fld	fa5,-88(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC5
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-88(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC6
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-88(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC7
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-88(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC8
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-88(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC9
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	fld	fa4,-88(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-72(s0)
	lla	a5,.LC10
	fld	fa4,0(a5)
	fld	fa5,-88(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC11
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-88(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC12
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-88(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC13
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-88(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC3
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-64(s0)
	fld	fa0,-88(s0)
	call	libmin_sqrt@plt
	fsd	fa0,-56(s0)
	lw	a5,-104(s0)
	sext.w	a4,a5
	li	a5,1072640000
	addi	a5,a5,818
	ble	a4,a5,.L8
	fld	fa4,-72(s0)
	fld	fa5,-64(s0)
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-80(s0)
	lla	a5,.LC0
	fld	fa4,0(a5)
	fld	fa3,-56(s0)
	fld	fa5,-80(s0)
	fmul.d	fa3,fa3,fa5
	fld	fa5,-56(s0)
	fadd.d	fa5,fa3,fa5
	fadd.d	fa3,fa5,fa5
	lla	a5,.LC1
	fld	fa5,0(a5)
	fsub.d	fa5,fa3,fa5
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-88(s0)
	j	.L9
.L8:
	fld	fa5,-56(s0)
	fsd	fa5,-80(s0)
	fld	fa5,-80(s0)
	fsd	fa5,-96(s0)
	ld	a4,-96(s0)
	li	a5,-1
	slli	a5,a5,32
	and	a5,a4,a5
	sd	a5,-96(s0)
	ld	a5,-96(s0)
	sd	a5,-96(s0)
	fld	fa5,-96(s0)
	fsd	fa5,-80(s0)
	fld	fa5,-80(s0)
	fmul.d	fa5,fa5,fa5
	fld	fa4,-88(s0)
	fsub.d	fa4,fa4,fa5
	fld	fa3,-56(s0)
	fld	fa5,-80(s0)
	fadd.d	fa5,fa3,fa5
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-48(s0)
	fld	fa4,-72(s0)
	fld	fa5,-64(s0)
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
	fld	fa5,-56(s0)
	fadd.d	fa4,fa5,fa5
	fld	fa5,-40(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC1
	fld	fa3,0(a5)
	fld	fa5,-48(s0)
	fadd.d	fa5,fa5,fa5
	fsub.d	fa5,fa3,fa5
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-72(s0)
	lla	a5,.LC15
	fld	fa4,0(a5)
	fld	fa5,-80(s0)
	fadd.d	fa5,fa5,fa5
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-64(s0)
	lla	a5,.LC15
	fld	fa4,0(a5)
	fld	fa3,-72(s0)
	fld	fa5,-64(s0)
	fsub.d	fa5,fa3,fa5
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-88(s0)
.L9:
	lw	a5,-108(s0)
	sext.w	a5,a5
	ble	a5,zero,.L10
	fld	fa5,-88(s0)
	j	.L4
.L10:
	fld	fa5,-88(s0)
	fneg.d	fa5,fa5
.L4:
	fmv.d	fa0,fa5
	ld	ra,120(sp)
	.cfi_restore 1
	ld	s0,112(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	fld	fs0,104(sp)
	.cfi_restore 40
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	libmin_asin, .-libmin_asin
	.section	.rodata
	.align	3
.LC0:
	.word	1413754136
	.word	1073291771
	.align	3
.LC1:
	.word	856972295
	.word	1016178214
	.align	3
.LC2:
	.word	-2013235812
	.word	2117592124
	.align	3
.LC3:
	.word	0
	.word	1072693248
	.align	3
.LC4:
	.word	234747657
	.word	1057111521
	.align	3
.LC5:
	.word	1963045512
	.word	1061810144
	.align	3
.LC6:
	.word	-1251438789
	.word	-1079737816
	.align	3
.LC7:
	.word	243811413
	.word	1070186837
	.align	3
.LC8:
	.word	65761149
	.word	-1076570606
	.align	3
.LC9:
	.word	1431655765
	.word	1069897045
	.align	3
.LC10:
	.word	-1322347902
	.word	1068742853
	.align	3
.LC11:
	.word	462225753
	.word	-1075444116
	.align	3
.LC12:
	.word	-1671853368
	.word	1073752805
	.align	3
.LC13:
	.word	478817611
	.word	-1073530329
	.align	3
.LC14:
	.word	0
	.word	1071644672
	.align	3
.LC15:
	.word	1413754136
	.word	1072243195
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
