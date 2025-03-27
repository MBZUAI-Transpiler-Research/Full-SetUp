	.file	"libmin_atan.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.data
	.align	3
	.type	tiny, @object
	.size	tiny, 8
tiny:
	.word	-1023872167
	.word	27618847
	.section	.rodata
	.align	3
	.type	zero, @object
	.size	zero, 8
zero:
	.zero	8
	.align	3
	.type	pi_o_4, @object
	.size	pi_o_4, 8
pi_o_4:
	.word	1413754136
	.word	1072243195
	.align	3
	.type	pi_o_2, @object
	.size	pi_o_2, 8
pi_o_2:
	.word	1413754136
	.word	1073291771
	.align	3
	.type	pi, @object
	.size	pi, 8
pi:
	.word	1413754136
	.word	1074340347
	.data
	.align	3
	.type	pi_lo, @object
	.size	pi_lo, 8
pi_lo:
	.word	856972295
	.word	1017226790
	.text
	.align	1
	.globl	libmin_atan2
	.type	libmin_atan2, @function
libmin_atan2:
.LFB3:
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
	fsd	fa1,-80(s0)
	fld	fa5,-80(s0)
	fsd	fa5,-32(s0)
	ld	a5,-32(s0)
	srli	a5,a5,32
	sw	a5,-60(s0)
	ld	a5,-32(s0)
	sw	a5,-56(s0)
	lw	a5,-60(s0)
	mv	a4,a5
	li	a5,-2147483648
	xori	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-52(s0)
	fld	fa5,-72(s0)
	fsd	fa5,-32(s0)
	ld	a5,-32(s0)
	srli	a5,a5,32
	sw	a5,-48(s0)
	ld	a5,-32(s0)
	sw	a5,-44(s0)
	lw	a5,-48(s0)
	mv	a4,a5
	li	a5,-2147483648
	xori	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-40(s0)
	lw	a5,-56(s0)
	negw	a5,a5
	sext.w	a5,a5
	lw	a4,-56(s0)
	or	a5,a4,a5
	sext.w	a5,a5
	srliw	a5,a5,31
	sext.w	a4,a5
	lw	a5,-52(s0)
	or	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,2146435072
	bgtu	a4,a5,.L2
	lw	a5,-44(s0)
	negw	a5,a5
	sext.w	a5,a5
	lw	a4,-44(s0)
	or	a5,a4,a5
	sext.w	a5,a5
	srliw	a5,a5,31
	sext.w	a4,a5
	lw	a5,-40(s0)
	or	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,2146435072
	bleu	a4,a5,.L3
.L2:
	fld	fa4,-80(s0)
	fld	fa5,-72(s0)
	fadd.d	fa5,fa4,fa5
	j	.L4
.L3:
	lw	a5,-60(s0)
	sext.w	a4,a5
	li	a5,1072693248
	bne	a4,a5,.L5
	lw	a5,-56(s0)
	sext.w	a5,a5
	bne	a5,zero,.L5
	fld	fa0,-72(s0)
	call	libmin_atan
	fmv.d	fa5,fa0
	j	.L4
.L5:
	lw	a5,-48(s0)
	srliw	a5,a5,31
	sext.w	a5,a5
	sext.w	a4,a5
	lw	a5,-60(s0)
	sraiw	a5,a5,30
	sext.w	a5,a5
	andi	a5,a5,2
	sext.w	a5,a5
	or	a5,a4,a5
	sw	a5,-64(s0)
	lw	a5,-40(s0)
	lw	a4,-44(s0)
	or	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L6
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,3
	beq	a4,a5,.L7
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,3
	bgt	a4,a5,.L6
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,1
	bgt	a4,a5,.L8
	lw	a5,-64(s0)
	sext.w	a5,a5
	bge	a5,zero,.L9
	j	.L6
.L8:
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,2
	beq	a4,a5,.L10
	j	.L6
.L9:
	fld	fa5,-72(s0)
	j	.L4
.L10:
	lla	a5,.LC0
	fld	fa4,0(a5)
	lla	a5,tiny
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	j	.L4
.L7:
	lla	a5,.LC0
	fld	fa5,0(a5)
	fneg.d	fa4,fa5
	lla	a5,tiny
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	j	.L4
.L6:
	lw	a5,-52(s0)
	lw	a4,-56(s0)
	or	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L11
	lw	a5,-48(s0)
	sext.w	a5,a5
	bge	a5,zero,.L12
	lla	a5,.LC1
	fld	fa5,0(a5)
	fneg.d	fa4,fa5
	lla	a5,tiny
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	j	.L4
.L12:
	lla	a5,.LC1
	fld	fa4,0(a5)
	lla	a5,tiny
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	j	.L4
.L11:
	lw	a5,-52(s0)
	sext.w	a4,a5
	li	a5,2146435072
	bne	a4,a5,.L14
	lw	a5,-40(s0)
	sext.w	a4,a5
	li	a5,2146435072
	bne	a4,a5,.L15
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,3
	beq	a4,a5,.L16
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,3
	bgt	a4,a5,.L14
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,2
	beq	a4,a5,.L17
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,2
	bgt	a4,a5,.L14
	lw	a5,-64(s0)
	sext.w	a5,a5
	beq	a5,zero,.L18
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,1
	beq	a4,a5,.L19
	j	.L14
.L18:
	lla	a5,.LC2
	fld	fa4,0(a5)
	lla	a5,tiny
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	j	.L4
.L19:
	lla	a5,.LC2
	fld	fa5,0(a5)
	fneg.d	fa4,fa5
	lla	a5,tiny
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	j	.L4
.L17:
	lla	a5,.LC2
	fld	fa4,0(a5)
	lla	a5,.LC3
	fld	fa5,0(a5)
	fmul.d	fa4,fa4,fa5
	lla	a5,tiny
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	j	.L4
.L16:
	lla	a5,.LC2
	fld	fa4,0(a5)
	lla	a5,.LC4
	fld	fa5,0(a5)
	fmul.d	fa4,fa4,fa5
	lla	a5,tiny
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	j	.L4
.L15:
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,3
	beq	a4,a5,.L20
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,3
	bgt	a4,a5,.L14
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,2
	beq	a4,a5,.L21
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,2
	bgt	a4,a5,.L14
	lw	a5,-64(s0)
	sext.w	a5,a5
	beq	a5,zero,.L22
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,1
	beq	a4,a5,.L23
	j	.L14
.L22:
	fmv.d.x	fa5,zero
	j	.L4
.L23:
	fmv.d.x	fa5,zero
	fneg.d	fa5,fa5
	j	.L4
.L21:
	lla	a5,.LC0
	fld	fa4,0(a5)
	lla	a5,tiny
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	j	.L4
.L20:
	lla	a5,.LC0
	fld	fa5,0(a5)
	fneg.d	fa4,fa5
	lla	a5,tiny
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	j	.L4
.L14:
	lw	a5,-40(s0)
	sext.w	a4,a5
	li	a5,2146435072
	bne	a4,a5,.L24
	lw	a5,-48(s0)
	sext.w	a5,a5
	bge	a5,zero,.L25
	lla	a5,.LC1
	fld	fa5,0(a5)
	fneg.d	fa4,fa5
	lla	a5,tiny
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	j	.L4
.L25:
	lla	a5,.LC1
	fld	fa4,0(a5)
	lla	a5,tiny
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	j	.L4
.L24:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	sraiw	a5,a5,20
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,60
	ble	a4,a5,.L27
	lla	a5,pi_lo
	fld	fa4,0(a5)
	lla	a5,.LC5
	fld	fa5,0(a5)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC1
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lw	a5,-64(s0)
	andi	a5,a5,1
	sw	a5,-64(s0)
	j	.L28
.L27:
	lw	a5,-60(s0)
	sext.w	a5,a5
	bge	a5,zero,.L29
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,-60
	bge	a4,a5,.L29
	fmv.d.x	fa5,zero
	fsd	fa5,-24(s0)
	j	.L28
.L29:
	fld	fa4,-72(s0)
	fld	fa5,-80(s0)
	fdiv.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	call	libmin_fabs@plt
	fmv.x.d	a5,fa0
	fmv.d.x	fa0,a5
	call	libmin_atan
	fsd	fa0,-24(s0)
.L28:
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,2
	beq	a4,a5,.L30
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,2
	bgt	a4,a5,.L31
	lw	a5,-64(s0)
	sext.w	a5,a5
	beq	a5,zero,.L32
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,1
	beq	a4,a5,.L33
	j	.L31
.L32:
	fld	fa5,-24(s0)
	j	.L4
.L33:
	fld	fa5,-24(s0)
	fneg.d	fa5,fa5
	j	.L4
.L30:
	lla	a5,.LC0
	fld	fa4,0(a5)
	lla	a5,pi_lo
	fld	fa5,0(a5)
	fld	fa3,-24(s0)
	fsub.d	fa5,fa3,fa5
	fsub.d	fa5,fa4,fa5
	j	.L4
.L31:
	lla	a5,pi_lo
	fld	fa5,0(a5)
	fld	fa4,-24(s0)
	fsub.d	fa4,fa4,fa5
	lla	a5,.LC0
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
.L4:
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
.LFE3:
	.size	libmin_atan2, .-libmin_atan2
	.section	.rodata
	.align	3
	.type	atanhi, @object
	.size	atanhi, 32
atanhi:
	.word	90291023
	.word	1071492199
	.word	1413754136
	.word	1072243195
	.word	-763234661
	.word	1072657163
	.word	1413754136
	.word	1073291771
	.align	3
	.type	atanlo, @object
	.size	atanlo, 32
atanlo:
	.word	573531618
	.word	1014639487
	.word	856972295
	.word	1015129638
	.word	2062601149
	.word	1013974920
	.word	856972295
	.word	1016178214
	.align	3
	.type	aT, @object
	.size	aT, 88
aT:
	.word	1431655693
	.word	1070945621
	.word	-1718031420
	.word	-1077306983
	.word	-1845459969
	.word	1069697316
	.word	-31254927
	.word	-1078169146
	.word	-984866706
	.word	1068975565
	.word	-1351312787
	.word	-1078742798
	.word	-1596965551
	.word	1068567910
	.word	1390345626
	.word	-1079124435
	.word	611716587
	.word	1068071755
	.word	745172015
	.word	-1079856060
	.word	-484255215
	.word	1066446138
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
	.text
	.align	1
	.globl	libmin_atan
	.type	libmin_atan, @function
libmin_atan:
.LFB4:
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
	fsd	fa5,-56(s0)
	ld	a5,-56(s0)
	srli	a5,a5,32
	sw	a5,-68(s0)
	lw	a5,-68(s0)
	mv	a4,a5
	li	a5,-2147483648
	xori	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-64(s0)
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,1141899264
	blt	a4,a5,.L35
	fld	fa5,-88(s0)
	fsd	fa5,-56(s0)
	ld	a5,-56(s0)
	sw	a5,-60(s0)
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,2146435072
	bgt	a4,a5,.L36
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,2146435072
	bne	a4,a5,.L37
	lw	a5,-60(s0)
	sext.w	a5,a5
	beq	a5,zero,.L37
.L36:
	fld	fa5,-88(s0)
	fadd.d	fa5,fa5,fa5
	j	.L38
.L37:
	lw	a5,-68(s0)
	sext.w	a5,a5
	ble	a5,zero,.L39
	lla	a5,.LC1
	fld	fa4,0(a5)
	lla	a5,atanlo+24
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	j	.L38
.L39:
	lla	a5,.LC1
	fld	fa5,0(a5)
	fneg.d	fa4,fa5
	lla	a5,atanlo+24
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	j	.L38
.L35:
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,1071382528
	bge	a4,a5,.L40
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,1044381696
	bge	a4,a5,.L41
	lla	a5,.LC6
	fld	fa4,0(a5)
	fld	fa5,-88(s0)
	fadd.d	fa4,fa4,fa5
	lla	a5,.LC7
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L41
	fld	fa5,-88(s0)
	j	.L38
.L41:
	li	a5,-1
	sw	a5,-72(s0)
	j	.L43
.L40:
	fld	fa0,-88(s0)
	call	libmin_fabs@plt
	fsd	fa0,-88(s0)
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,1072889856
	bge	a4,a5,.L44
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,1072037888
	bge	a4,a5,.L45
	sw	zero,-72(s0)
	fld	fa5,-88(s0)
	fadd.d	fa4,fa5,fa5
	lla	a5,.LC7
	fld	fa5,0(a5)
	fsub.d	fa4,fa4,fa5
	fld	fa3,-88(s0)
	lla	a5,.LC8
	fld	fa5,0(a5)
	fadd.d	fa5,fa3,fa5
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-88(s0)
	j	.L43
.L45:
	li	a5,1
	sw	a5,-72(s0)
	lla	a5,.LC7
	fld	fa5,0(a5)
	fld	fa4,-88(s0)
	fsub.d	fa4,fa4,fa5
	lla	a5,.LC7
	fld	fa3,0(a5)
	fld	fa5,-88(s0)
	fadd.d	fa5,fa3,fa5
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-88(s0)
	j	.L43
.L44:
	lw	a5,-64(s0)
	sext.w	a4,a5
	li	a5,1073971200
	bge	a4,a5,.L46
	li	a5,2
	sw	a5,-72(s0)
	fld	fa4,-88(s0)
	lla	a5,.LC9
	fld	fa5,0(a5)
	fsub.d	fa4,fa4,fa5
	fld	fa3,-88(s0)
	lla	a5,.LC9
	fld	fa5,0(a5)
	fmul.d	fa3,fa3,fa5
	lla	a5,.LC7
	fld	fa5,0(a5)
	fadd.d	fa5,fa3,fa5
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-88(s0)
	j	.L43
.L46:
	li	a5,3
	sw	a5,-72(s0)
	lla	a5,.LC10
	fld	fa4,0(a5)
	fld	fa5,-88(s0)
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-88(s0)
.L43:
	fld	fa5,-88(s0)
	fmul.d	fa5,fa5,fa5
	fsd	fa5,-48(s0)
	fld	fa5,-48(s0)
	fmul.d	fa5,fa5,fa5
	fsd	fa5,-40(s0)
	lla	a5,.LC11
	fld	fa4,0(a5)
	lla	a5,.LC12
	fld	fa3,0(a5)
	lla	a5,.LC13
	fld	fa2,0(a5)
	lla	a5,.LC14
	fld	fa1,0(a5)
	lla	a5,.LC15
	fld	fa0,0(a5)
	lla	a5,.LC16
	fld	ft0,0(a5)
	fld	fa5,-40(s0)
	fmul.d	fa5,ft0,fa5
	fadd.d	fa0,fa0,fa5
	fld	fa5,-40(s0)
	fmul.d	fa5,fa0,fa5
	fadd.d	fa1,fa1,fa5
	fld	fa5,-40(s0)
	fmul.d	fa5,fa1,fa5
	fadd.d	fa2,fa2,fa5
	fld	fa5,-40(s0)
	fmul.d	fa5,fa2,fa5
	fadd.d	fa3,fa3,fa5
	fld	fa5,-40(s0)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa5,fa4,fa5
	fld	fa4,-48(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-32(s0)
	lla	a5,.LC17
	fld	fa4,0(a5)
	lla	a5,.LC18
	fld	fa3,0(a5)
	lla	a5,.LC19
	fld	fa2,0(a5)
	lla	a5,.LC20
	fld	fa1,0(a5)
	lla	a5,.LC21
	fld	fa0,0(a5)
	fld	fa5,-40(s0)
	fmul.d	fa5,fa0,fa5
	fadd.d	fa1,fa1,fa5
	fld	fa5,-40(s0)
	fmul.d	fa5,fa1,fa5
	fadd.d	fa2,fa2,fa5
	fld	fa5,-40(s0)
	fmul.d	fa5,fa2,fa5
	fadd.d	fa3,fa3,fa5
	fld	fa5,-40(s0)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa5,fa4,fa5
	fld	fa4,-40(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lw	a5,-72(s0)
	sext.w	a5,a5
	bge	a5,zero,.L47
	fld	fa4,-32(s0)
	fld	fa5,-24(s0)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-88(s0)
	fmul.d	fa5,fa4,fa5
	fld	fa4,-88(s0)
	fsub.d	fa5,fa4,fa5
	j	.L38
.L47:
	lla	a4,atanhi
	lw	a5,-72(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	fld	fa4,0(a5)
	fld	fa3,-32(s0)
	fld	fa5,-24(s0)
	fadd.d	fa3,fa3,fa5
	fld	fa5,-88(s0)
	fmul.d	fa3,fa3,fa5
	lla	a4,atanlo
	lw	a5,-72(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	fld	fa5,0(a5)
	fsub.d	fa3,fa3,fa5
	fld	fa5,-88(s0)
	fsub.d	fa5,fa3,fa5
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-48(s0)
	lw	a5,-68(s0)
	sext.w	a5,a5
	bge	a5,zero,.L48
	fld	fa5,-48(s0)
	fneg.d	fa5,fa5
	j	.L38
.L48:
	fld	fa5,-48(s0)
.L38:
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
.LFE4:
	.size	libmin_atan, .-libmin_atan
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
	.word	1413754136
	.word	1072243195
	.align	3
.LC3:
	.word	0
	.word	1074266112
	.align	3
.LC4:
	.word	0
	.word	-1073217536
	.align	3
.LC5:
	.word	0
	.word	1071644672
	.align	3
.LC6:
	.word	-2013235812
	.word	2117592124
	.align	3
.LC7:
	.word	0
	.word	1072693248
	.align	3
.LC8:
	.word	0
	.word	1073741824
	.align	3
.LC9:
	.word	0
	.word	1073217536
	.align	3
.LC10:
	.word	0
	.word	-1074790400
	.align	3
.LC11:
	.word	1431655693
	.word	1070945621
	.align	3
.LC12:
	.word	-1845459969
	.word	1069697316
	.align	3
.LC13:
	.word	-984866706
	.word	1068975565
	.align	3
.LC14:
	.word	-1596965551
	.word	1068567910
	.align	3
.LC15:
	.word	611716587
	.word	1068071755
	.align	3
.LC16:
	.word	-484255215
	.word	1066446138
	.align	3
.LC17:
	.word	-1718031420
	.word	-1077306983
	.align	3
.LC18:
	.word	-31254927
	.word	-1078169146
	.align	3
.LC19:
	.word	-1351312787
	.word	-1078742798
	.align	3
.LC20:
	.word	1390345626
	.word	-1079124435
	.align	3
.LC21:
	.word	745172015
	.word	-1079856060
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
