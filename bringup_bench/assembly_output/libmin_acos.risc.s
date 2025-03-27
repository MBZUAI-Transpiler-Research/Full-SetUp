	.file	"libmin_acos.c"
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
	.type	pi, @object
	.size	pi, 8
pi:
	.word	1413754136
	.word	1074340347
	.align	3
	.type	pio2_hi, @object
	.size	pio2_hi, 8
pio2_hi:
	.word	1413754136
	.word	1073291771
	.data
	.align	3
	.type	pio2_lo, @object
	.size	pio2_lo, 8
pio2_lo:
	.word	856972295
	.word	1016178214
	.section	.rodata
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
	.globl	libmin_acos
	.type	libmin_acos, @function
libmin_acos:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)
	sd	s0,112(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	fsd	fa0,-120(s0)
	fld	fa5,-120(s0)
	fsd	fa5,-88(s0)
	ld	a5,-88(s0)
	srli	a5,a5,32
	sw	a5,-100(s0)
	lw	a5,-100(s0)
	mv	a4,a5
	li	a5,-2147483648
	xori	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-96(s0)
	lw	a5,-96(s0)
	sext.w	a4,a5
	li	a5,1072693248
	blt	a4,a5,.L2
	fld	fa5,-120(s0)
	fsd	fa5,-88(s0)
	ld	a5,-88(s0)
	sw	a5,-92(s0)
	lw	a5,-96(s0)
	mv	a4,a5
	li	a5,-1072693248
	addw	a5,a4,a5
	sext.w	a5,a5
	sext.w	a5,a5
	lw	a4,-92(s0)
	or	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L3
	lw	a5,-100(s0)
	sext.w	a5,a5
	ble	a5,zero,.L4
	fmv.d.x	fa5,zero
	j	.L5
.L4:
	lla	a5,pio2_lo
	fld	fa5,0(a5)
	fadd.d	fa4,fa5,fa5
	lla	a5,.LC0
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	j	.L5
.L3:
	fld	fa5,-120(s0)
	fsub.d	fa4,fa5,fa5
	fld	fa5,-120(s0)
	fsub.d	fa5,fa5,fa5
	fdiv.d	fa5,fa4,fa5
	j	.L5
.L2:
	lw	a5,-96(s0)
	sext.w	a4,a5
	li	a5,1071644672
	bge	a4,a5,.L6
	lw	a5,-96(s0)
	sext.w	a4,a5
	li	a5,1012924416
	bgt	a4,a5,.L7
	lla	a5,.LC1
	fld	fa4,0(a5)
	lla	a5,pio2_lo
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	j	.L5
.L7:
	fld	fa5,-120(s0)
	fmul.d	fa5,fa5,fa5
	fsd	fa5,-80(s0)
	lla	a5,.LC2
	fld	fa4,0(a5)
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC3
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC4
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC5
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC6
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC7
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	fld	fa4,-80(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-48(s0)
	lla	a5,.LC8
	fld	fa4,0(a5)
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC9
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC10
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC11
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC12
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
	fld	fa4,-48(s0)
	fld	fa5,-40(s0)
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-32(s0)
	lla	a5,.LC1
	fld	fa4,0(a5)
	lla	a5,pio2_lo
	fld	fa3,0(a5)
	fld	fa2,-120(s0)
	fld	fa5,-32(s0)
	fmul.d	fa5,fa2,fa5
	fsub.d	fa5,fa3,fa5
	fld	fa3,-120(s0)
	fsub.d	fa5,fa3,fa5
	fsub.d	fa5,fa4,fa5
	j	.L5
.L6:
	lw	a5,-100(s0)
	sext.w	a5,a5
	bge	a5,zero,.L8
	lla	a5,.LC12
	fld	fa4,0(a5)
	fld	fa5,-120(s0)
	fadd.d	fa4,fa4,fa5
	lla	a5,.LC13
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-80(s0)
	lla	a5,.LC2
	fld	fa4,0(a5)
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC3
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC4
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC5
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC6
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC7
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	fld	fa4,-80(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-48(s0)
	lla	a5,.LC8
	fld	fa4,0(a5)
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC9
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC10
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC11
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC12
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
	fld	fa0,-80(s0)
	call	libmin_sqrt@plt
	fsd	fa0,-72(s0)
	fld	fa4,-48(s0)
	fld	fa5,-40(s0)
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-32(s0)
	fld	fa4,-32(s0)
	fld	fa5,-72(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,pio2_lo
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lla	a5,.LC0
	fld	fa4,0(a5)
	fld	fa3,-72(s0)
	fld	fa5,-24(s0)
	fadd.d	fa5,fa3,fa5
	fadd.d	fa5,fa5,fa5
	fsub.d	fa5,fa4,fa5
	j	.L5
.L8:
	lla	a5,.LC12
	fld	fa4,0(a5)
	fld	fa5,-120(s0)
	fsub.d	fa4,fa4,fa5
	lla	a5,.LC13
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-80(s0)
	fld	fa0,-80(s0)
	call	libmin_sqrt@plt
	fsd	fa0,-72(s0)
	fld	fa5,-72(s0)
	fsd	fa5,-64(s0)
	fld	fa5,-64(s0)
	fsd	fa5,-88(s0)
	ld	a4,-88(s0)
	li	a5,-1
	slli	a5,a5,32
	and	a5,a4,a5
	sd	a5,-88(s0)
	ld	a5,-88(s0)
	sd	a5,-88(s0)
	fld	fa5,-88(s0)
	fsd	fa5,-64(s0)
	fld	fa5,-64(s0)
	fmul.d	fa5,fa5,fa5
	fld	fa4,-80(s0)
	fsub.d	fa4,fa4,fa5
	fld	fa3,-72(s0)
	fld	fa5,-64(s0)
	fadd.d	fa5,fa3,fa5
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-56(s0)
	lla	a5,.LC2
	fld	fa4,0(a5)
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC3
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC4
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC5
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC6
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC7
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	fld	fa4,-80(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-48(s0)
	lla	a5,.LC8
	fld	fa4,0(a5)
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC9
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC10
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC11
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-80(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC12
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
	fld	fa4,-48(s0)
	fld	fa5,-40(s0)
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-32(s0)
	fld	fa4,-32(s0)
	fld	fa5,-72(s0)
	fmul.d	fa5,fa4,fa5
	fld	fa4,-56(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	fld	fa4,-64(s0)
	fld	fa5,-24(s0)
	fadd.d	fa5,fa4,fa5
	fadd.d	fa5,fa5,fa5
.L5:
	fmv.d	fa0,fa5
	ld	ra,120(sp)
	.cfi_restore 1
	ld	s0,112(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	libmin_acos, .-libmin_acos
	.section	.rodata
	.align	3
.LC0:
	.word	1413754136
	.word	1074340347
	.align	3
.LC1:
	.word	1413754136
	.word	1073291771
	.align	3
.LC2:
	.word	234747657
	.word	1057111521
	.align	3
.LC3:
	.word	1963045512
	.word	1061810144
	.align	3
.LC4:
	.word	-1251438789
	.word	-1079737816
	.align	3
.LC5:
	.word	243811413
	.word	1070186837
	.align	3
.LC6:
	.word	65761149
	.word	-1076570606
	.align	3
.LC7:
	.word	1431655765
	.word	1069897045
	.align	3
.LC8:
	.word	-1322347902
	.word	1068742853
	.align	3
.LC9:
	.word	462225753
	.word	-1075444116
	.align	3
.LC10:
	.word	-1671853368
	.word	1073752805
	.align	3
.LC11:
	.word	478817611
	.word	-1073530329
	.align	3
.LC12:
	.word	0
	.word	1072693248
	.align	3
.LC13:
	.word	0
	.word	1071644672
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
