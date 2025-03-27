	.file	"libmin_sincos.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
	.type	S1, @object
	.size	S1, 8
S1:
	.word	1431655753
	.word	-1077586603
	.align	3
	.type	S2, @object
	.size	S2, 8
S2:
	.word	286324902
	.word	1065423121
	.align	3
	.type	S3, @object
	.size	S3, 8
S3:
	.word	432103893
	.word	-1087766112
	.align	3
	.type	S4, @object
	.size	S4, 8
S4:
	.word	1471282813
	.word	1053236707
	.align	3
	.type	S5, @object
	.size	S5, 8
S5:
	.word	-1976853269
	.word	-1101339162
	.align	3
	.type	S6, @object
	.size	S6, 8
S6:
	.word	1523570044
	.word	1038473530
	.text
	.align	1
	.globl	__sin
	.type	__sin, @function
__sin:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	fsd	fa0,-56(s0)
	fsd	fa1,-64(s0)
	mv	a5,a0
	sw	a5,-68(s0)
	fld	fa5,-56(s0)
	fmul.d	fa5,fa5,fa5
	fsd	fa5,-48(s0)
	fld	fa5,-48(s0)
	fmul.d	fa5,fa5,fa5
	fsd	fa5,-40(s0)
	lla	a5,.LC0
	fld	fa4,0(a5)
	fld	fa5,-48(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC1
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-48(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC2
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa3,-48(s0)
	fld	fa5,-40(s0)
	fmul.d	fa3,fa3,fa5
	lla	a5,.LC3
	fld	fa2,0(a5)
	fld	fa5,-48(s0)
	fmul.d	fa2,fa2,fa5
	lla	a5,.LC4
	fld	fa5,0(a5)
	fadd.d	fa5,fa2,fa5
	fmul.d	fa5,fa3,fa5
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-32(s0)
	fld	fa4,-48(s0)
	fld	fa5,-56(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lw	a5,-68(s0)
	sext.w	a5,a5
	bne	a5,zero,.L2
	fld	fa4,-48(s0)
	fld	fa5,-32(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC5
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-24(s0)
	fmul.d	fa4,fa4,fa5
	fld	fa5,-56(s0)
	fadd.d	fa5,fa4,fa5
	j	.L3
.L2:
	fld	fa4,-64(s0)
	lla	a5,.LC6
	fld	fa5,0(a5)
	fmul.d	fa4,fa4,fa5
	fld	fa3,-24(s0)
	fld	fa5,-32(s0)
	fmul.d	fa5,fa3,fa5
	fsub.d	fa4,fa4,fa5
	fld	fa5,-48(s0)
	fmul.d	fa4,fa4,fa5
	fld	fa5,-64(s0)
	fsub.d	fa4,fa4,fa5
	lla	a5,.LC5
	fld	fa3,0(a5)
	fld	fa5,-24(s0)
	fmul.d	fa5,fa3,fa5
	fsub.d	fa5,fa4,fa5
	fld	fa4,-56(s0)
	fsub.d	fa5,fa4,fa5
.L3:
	fmv.d	fa0,fa5
	ld	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	__sin, .-__sin
	.section	.rodata
	.align	3
	.type	C1, @object
	.size	C1, 8
C1:
	.word	1431655756
	.word	1067799893
	.align	3
	.type	C2, @object
	.size	C2, 8
C2:
	.word	381768055
	.word	-1084833428
	.align	3
	.type	C3, @object
	.size	C3, 8
C3:
	.word	432739728
	.word	1056571808
	.align	3
	.type	C4, @object
	.size	C4, 8
C4:
	.word	-2137238867
	.word	-1097695665
	.align	3
	.type	C5, @object
	.size	C5, 8
C5:
	.word	-1112231484
	.word	1042411166
	.align	3
	.type	C6, @object
	.size	C6, 8
C6:
	.word	-1098368812
	.word	-1112999191
	.text
	.align	1
	.globl	__cos
	.type	__cos, @function
__cos:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	fsd	fa0,-56(s0)
	fsd	fa1,-64(s0)
	fld	fa5,-56(s0)
	fmul.d	fa5,fa5,fa5
	fsd	fa5,-48(s0)
	fld	fa5,-48(s0)
	fmul.d	fa5,fa5,fa5
	fsd	fa5,-40(s0)
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
	fld	fa5,-40(s0)
	fmul.d	fa3,fa5,fa5
	lla	a5,.LC10
	fld	fa2,0(a5)
	fld	fa5,-48(s0)
	fmul.d	fa2,fa2,fa5
	lla	a5,.LC11
	fld	fa5,0(a5)
	fadd.d	fa2,fa2,fa5
	fld	fa5,-48(s0)
	fmul.d	fa2,fa2,fa5
	lla	a5,.LC12
	fld	fa5,0(a5)
	fadd.d	fa5,fa2,fa5
	fmul.d	fa5,fa3,fa5
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-32(s0)
	fld	fa4,-48(s0)
	lla	a5,.LC6
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lla	a5,.LC13
	fld	fa4,0(a5)
	fld	fa5,-24(s0)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
	lla	a5,.LC13
	fld	fa4,0(a5)
	fld	fa5,-40(s0)
	fsub.d	fa4,fa4,fa5
	fld	fa5,-24(s0)
	fsub.d	fa4,fa4,fa5
	fld	fa3,-48(s0)
	fld	fa5,-32(s0)
	fmul.d	fa3,fa3,fa5
	fld	fa2,-56(s0)
	fld	fa5,-64(s0)
	fmul.d	fa5,fa2,fa5
	fsub.d	fa5,fa3,fa5
	fadd.d	fa4,fa4,fa5
	fld	fa5,-40(s0)
	fadd.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	__cos, .-__cos
	.align	1
	.globl	libmin_cos
	.type	libmin_cos, @function
libmin_cos:
.LFB5:
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
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	fld	fa5,-88(s0)
	fsd	fa5,-64(s0)
	ld	a5,-64(s0)
	srli	a5,a5,32
	sw	a5,-72(s0)
	lw	a5,-72(s0)
	mv	a4,a5
	li	a5,-2147483648
	xori	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-72(s0)
	lw	a5,-72(s0)
	sext.w	a4,a5
	li	a5,1072242688
	addi	a5,a5,507
	bgtu	a4,a5,.L7
	lw	a5,-72(s0)
	sext.w	a4,a5
	li	a5,1044815872
	addi	a5,a5,157
	bgtu	a4,a5,.L8
	fld	fa4,-88(s0)
	lla	a5,.LC14
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-64(s0)
	fld	fa5,-64(s0)
	lla	a5,.LC13
	fld	fa5,0(a5)
	j	.L15
.L8:
	fmv.d.x	fa1,zero
	fld	fa0,-88(s0)
	call	__cos
	fmv.d	fa5,fa0
	j	.L15
.L7:
	lw	a5,-72(s0)
	sext.w	a4,a5
	li	a5,2146435072
	bltu	a4,a5,.L10
	fld	fa5,-88(s0)
	fsub.d	fa5,fa5,fa5
	j	.L15
.L10:
	addi	a5,s0,-40
	mv	a0,a5
	fld	fa0,-88(s0)
	call	__rem_pio2@plt
	mv	a5,a0
	sw	a5,-68(s0)
	lw	a5,-68(s0)
	andi	a5,a5,3
	sext.w	a5,a5
	mv	a3,a5
	li	a4,2
	beq	a3,a4,.L11
	mv	a3,a5
	li	a4,2
	bgtu	a3,a4,.L12
	beq	a5,zero,.L13
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L14
	j	.L12
.L13:
	fld	fa5,-40(s0)
	fld	fa4,-32(s0)
	fmv.d	fa1,fa4
	fmv.d	fa0,fa5
	call	__cos
	fmv.d	fa5,fa0
	j	.L15
.L14:
	fld	fa5,-40(s0)
	fld	fa4,-32(s0)
	li	a0,1
	fmv.d	fa1,fa4
	fmv.d	fa0,fa5
	call	__sin
	fmv.d	fa5,fa0
	fneg.d	fa5,fa5
	j	.L15
.L11:
	fld	fa5,-40(s0)
	fld	fa4,-32(s0)
	fmv.d	fa1,fa4
	fmv.d	fa0,fa5
	call	__cos
	fmv.d	fa5,fa0
	fneg.d	fa5,fa5
	j	.L15
.L12:
	fld	fa5,-40(s0)
	fld	fa4,-32(s0)
	li	a0,1
	fmv.d	fa1,fa4
	fmv.d	fa0,fa5
	call	__sin
	fmv.d	fa5,fa0
.L15:
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L16
	call	__stack_chk_fail@plt
.L16:
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
.LFE5:
	.size	libmin_cos, .-libmin_cos
	.align	1
	.globl	libmin_sin
	.type	libmin_sin, @function
libmin_sin:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	fsd	fa0,-72(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	fmv.d.x	fa5,zero
	fsd	fa5,-48(s0)
	fld	fa5,-72(s0)
	fsd	fa5,-56(s0)
	ld	a5,-56(s0)
	srli	a5,a5,32
	sw	a5,-64(s0)
	lw	a5,-64(s0)
	mv	a4,a5
	li	a5,-2147483648
	xori	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-64(s0)
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,1072242688
	addi	a5,a5,507
	bgt	a4,a5,.L18
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,1045430272
	bge	a4,a5,.L19
	fld	fa5,-72(s0)
	fcvt.w.d a5,fa5,rtz
	sext.w	a5,a5
	bne	a5,zero,.L19
	fld	fa5,-72(s0)
	j	.L26
.L19:
	li	a0,0
	fld	fa1,-48(s0)
	fld	fa0,-72(s0)
	call	__sin
	fmv.d	fa5,fa0
	j	.L26
.L18:
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,2146435072
	blt	a4,a5,.L21
	fld	fa5,-72(s0)
	fsub.d	fa5,fa5,fa5
	j	.L26
.L21:
	addi	a5,s0,-40
	mv	a0,a5
	fld	fa0,-72(s0)
	call	__rem_pio2@plt
	mv	a5,a0
	sw	a5,-60(s0)
	lw	a5,-60(s0)
	andi	a5,a5,3
	sext.w	a5,a5
	mv	a3,a5
	li	a4,2
	beq	a3,a4,.L22
	mv	a3,a5
	li	a4,2
	bgt	a3,a4,.L23
	beq	a5,zero,.L24
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L25
	j	.L23
.L24:
	fld	fa5,-40(s0)
	fld	fa4,-32(s0)
	li	a0,1
	fmv.d	fa1,fa4
	fmv.d	fa0,fa5
	call	__sin
	fmv.d	fa5,fa0
	j	.L26
.L25:
	fld	fa5,-40(s0)
	fld	fa4,-32(s0)
	fmv.d	fa1,fa4
	fmv.d	fa0,fa5
	call	__cos
	fmv.d	fa5,fa0
	j	.L26
.L22:
	fld	fa5,-40(s0)
	fld	fa4,-32(s0)
	li	a0,1
	fmv.d	fa1,fa4
	fmv.d	fa0,fa5
	call	__sin
	fmv.d	fa5,fa0
	fneg.d	fa5,fa5
	j	.L26
.L23:
	fld	fa5,-40(s0)
	fld	fa4,-32(s0)
	fmv.d	fa1,fa4
	fmv.d	fa0,fa5
	call	__cos
	fmv.d	fa5,fa0
	fneg.d	fa5,fa5
.L26:
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L27
	call	__stack_chk_fail@plt
.L27:
	fmv.d	fa0,fa5
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	libmin_sin, .-libmin_sin
	.section	.rodata
	.align	3
.LC0:
	.word	1471282813
	.word	1053236707
	.align	3
.LC1:
	.word	432103893
	.word	-1087766112
	.align	3
.LC2:
	.word	286324902
	.word	1065423121
	.align	3
.LC3:
	.word	1523570044
	.word	1038473530
	.align	3
.LC4:
	.word	-1976853269
	.word	-1101339162
	.align	3
.LC5:
	.word	1431655753
	.word	-1077586603
	.align	3
.LC6:
	.word	0
	.word	1071644672
	.align	3
.LC7:
	.word	432739728
	.word	1056571808
	.align	3
.LC8:
	.word	381768055
	.word	-1084833428
	.align	3
.LC9:
	.word	1431655756
	.word	1067799893
	.align	3
.LC10:
	.word	-1098368812
	.word	-1112999191
	.align	3
.LC11:
	.word	-1112231484
	.word	1042411166
	.align	3
.LC12:
	.word	-2137238867
	.word	-1097695665
	.align	3
.LC13:
	.word	0
	.word	1072693248
	.align	3
.LC14:
	.word	0
	.word	1198522368
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
