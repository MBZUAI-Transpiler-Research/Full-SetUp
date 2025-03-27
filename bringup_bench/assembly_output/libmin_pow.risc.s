	.file	"libmin_pow.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
	.type	bp, @object
	.size	bp, 16
bp:
	.word	0
	.word	1072693248
	.word	0
	.word	1073217536
	.align	3
	.type	dp_h, @object
	.size	dp_h, 16
dp_h:
	.word	0
	.word	0
	.word	1073741824
	.word	1071822851
	.align	3
	.type	dp_l, @object
	.size	dp_l, 16
dp_l:
	.word	0
	.word	0
	.word	1137692678
	.word	1045233131
	.align	3
	.type	two53, @object
	.size	two53, 8
two53:
	.word	0
	.word	1128267776
	.align	3
	.type	huge, @object
	.size	huge, 8
huge:
	.word	-2013235812
	.word	2117592124
	.align	3
	.type	tiny, @object
	.size	tiny, 8
tiny:
	.word	-1023872167
	.word	27618847
	.align	3
	.type	L1, @object
	.size	L1, 8
L1:
	.word	858993411
	.word	1071854387
	.align	3
	.type	L2, @object
	.size	L2, 8
L2:
	.word	-613438465
	.word	1071345078
	.align	3
	.type	L3, @object
	.size	L3, 8
L3:
	.word	1368335949
	.word	1070945621
	.align	3
	.type	L4, @object
	.size	L4, 8
L4:
	.word	-1457700607
	.word	1070691424
	.align	3
	.type	L5, @object
	.size	L5, 8
L5:
	.word	-1815487643
	.word	1070433866
	.align	3
	.type	L6, @object
	.size	L6, 8
L6:
	.word	1246056175
	.word	1070235176
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
	.align	3
	.type	lg2, @object
	.size	lg2, 8
lg2:
	.word	-17155601
	.word	1072049730
	.align	3
	.type	lg2_h, @object
	.size	lg2_h, 8
lg2_h:
	.word	0
	.word	1072049731
	.align	3
	.type	lg2_l, @object
	.size	lg2_l, 8
lg2_l:
	.word	212364345
	.word	-1105175455
	.align	3
	.type	ovt, @object
	.size	ovt, 8
ovt:
	.word	1697350398
	.word	1016534343
	.align	3
	.type	cp, @object
	.size	cp, 8
cp:
	.word	-600177667
	.word	1072613129
	.align	3
	.type	cp_h, @object
	.size	cp_h, 8
cp_h:
	.word	-536870912
	.word	1072613129
	.align	3
	.type	cp_l, @object
	.size	cp_l, 8
cp_l:
	.word	341508597
	.word	-1103220768
	.align	3
	.type	ivln2, @object
	.size	ivln2, 8
ivln2:
	.word	1697350398
	.word	1073157447
	.align	3
	.type	ivln2_h, @object
	.size	ivln2_h, 8
ivln2_h:
	.word	1610612736
	.word	1073157447
	.align	3
	.type	ivln2_l, @object
	.size	ivln2_l, 8
ivln2_l:
	.word	-128065724
	.word	1045736971
	.text
	.align	1
	.globl	libmin_pow
	.type	libmin_pow, @function
libmin_pow:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-256
	.cfi_def_cfa_offset 256
	sd	ra,248(sp)
	sd	s0,240(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,256
	.cfi_def_cfa 8, 0
	fsd	fa0,-248(s0)
	fsd	fa1,-256(s0)
	fld	fa5,-248(s0)
	fsd	fa5,-192(s0)
	ld	a5,-192(s0)
	srli	a5,a5,32
	sw	a5,-220(s0)
	ld	a5,-192(s0)
	sw	a5,-216(s0)
	fld	fa5,-256(s0)
	fsd	fa5,-192(s0)
	ld	a5,-192(s0)
	srli	a5,a5,32
	sw	a5,-212(s0)
	ld	a5,-192(s0)
	sw	a5,-208(s0)
	lw	a5,-220(s0)
	mv	a4,a5
	li	a5,-2147483648
	xori	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-224(s0)
	lw	a5,-212(s0)
	mv	a4,a5
	li	a5,-2147483648
	xori	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-204(s0)
	lw	a5,-204(s0)
	lw	a4,-208(s0)
	or	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L2
	lla	a5,.LC0
	fld	fa5,0(a5)
	j	.L3
.L2:
	lw	a5,-220(s0)
	sext.w	a4,a5
	li	a5,1072693248
	bne	a4,a5,.L4
	lw	a5,-216(s0)
	sext.w	a5,a5
	bne	a5,zero,.L4
	lla	a5,.LC0
	fld	fa5,0(a5)
	j	.L3
.L4:
	lw	a5,-224(s0)
	sext.w	a4,a5
	li	a5,2146435072
	bgt	a4,a5,.L5
	lw	a5,-224(s0)
	sext.w	a4,a5
	li	a5,2146435072
	bne	a4,a5,.L6
	lw	a5,-216(s0)
	sext.w	a5,a5
	bne	a5,zero,.L5
.L6:
	lw	a5,-204(s0)
	sext.w	a4,a5
	li	a5,2146435072
	bgt	a4,a5,.L5
	lw	a5,-204(s0)
	sext.w	a4,a5
	li	a5,2146435072
	bne	a4,a5,.L7
	lw	a5,-208(s0)
	sext.w	a5,a5
	beq	a5,zero,.L7
.L5:
	fld	fa4,-248(s0)
	fld	fa5,-256(s0)
	fadd.d	fa5,fa4,fa5
	j	.L3
.L7:
	sw	zero,-232(s0)
	lw	a5,-220(s0)
	sext.w	a5,a5
	bge	a5,zero,.L8
	lw	a5,-204(s0)
	sext.w	a4,a5
	li	a5,1128267776
	blt	a4,a5,.L9
	li	a5,2
	sw	a5,-232(s0)
	j	.L8
.L9:
	lw	a5,-204(s0)
	sext.w	a4,a5
	li	a5,1072693248
	blt	a4,a5,.L8
	lw	a5,-204(s0)
	sraiw	a5,a5,20
	sext.w	a5,a5
	addiw	a5,a5,-1023
	sw	a5,-236(s0)
	lw	a5,-236(s0)
	sext.w	a4,a5
	li	a5,20
	ble	a4,a5,.L10
	li	a5,52
	lw	a4,-236(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	lw	a4,-208(s0)
	srlw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-200(s0)
	li	a5,52
	lw	a4,-236(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	lw	a4,-200(s0)
	sllw	a5,a4,a5
	sext.w	a5,a5
	sext.w	a4,a5
	lw	a5,-208(s0)
	sext.w	a5,a5
	bne	a5,a4,.L8
	lw	a5,-200(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	li	a4,2
	subw	a5,a4,a5
	sw	a5,-232(s0)
	j	.L8
.L10:
	lw	a5,-208(s0)
	sext.w	a5,a5
	bne	a5,zero,.L8
	li	a5,20
	lw	a4,-236(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	lw	a4,-204(s0)
	sraw	a5,a4,a5
	sw	a5,-200(s0)
	li	a5,20
	lw	a4,-236(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	lw	a4,-200(s0)
	sllw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-204(s0)
	sext.w	a5,a5
	bne	a5,a4,.L8
	lw	a5,-200(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	li	a4,2
	subw	a5,a4,a5
	sw	a5,-232(s0)
.L8:
	lw	a5,-208(s0)
	sext.w	a5,a5
	bne	a5,zero,.L11
	lw	a5,-204(s0)
	sext.w	a4,a5
	li	a5,2146435072
	bne	a4,a5,.L12
	lw	a5,-224(s0)
	mv	a4,a5
	li	a5,-1072693248
	addw	a5,a4,a5
	sext.w	a5,a5
	sext.w	a5,a5
	lw	a4,-216(s0)
	or	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L13
	lla	a5,.LC0
	fld	fa5,0(a5)
	j	.L3
.L13:
	lw	a5,-224(s0)
	sext.w	a4,a5
	li	a5,1072693248
	blt	a4,a5,.L14
	lw	a5,-212(s0)
	sext.w	a5,a5
	blt	a5,zero,.L15
	fld	fa5,-256(s0)
	j	.L3
.L15:
	fmv.d.x	fa5,zero
	j	.L3
.L14:
	lw	a5,-212(s0)
	sext.w	a5,a5
	bge	a5,zero,.L17
	fld	fa5,-256(s0)
	fneg.d	fa5,fa5
	j	.L3
.L17:
	fmv.d.x	fa5,zero
	j	.L3
.L12:
	lw	a5,-204(s0)
	sext.w	a4,a5
	li	a5,1072693248
	bne	a4,a5,.L19
	lw	a5,-212(s0)
	sext.w	a5,a5
	bge	a5,zero,.L20
	lla	a5,.LC0
	fld	fa4,0(a5)
	fld	fa5,-248(s0)
	fdiv.d	fa5,fa4,fa5
	j	.L3
.L20:
	fld	fa5,-248(s0)
	j	.L3
.L19:
	lw	a5,-212(s0)
	sext.w	a4,a5
	li	a5,1073741824
	bne	a4,a5,.L22
	fld	fa5,-248(s0)
	fmul.d	fa5,fa5,fa5
	j	.L3
.L22:
	lw	a5,-212(s0)
	sext.w	a4,a5
	li	a5,1071644672
	bne	a4,a5,.L11
	lw	a5,-220(s0)
	sext.w	a5,a5
	blt	a5,zero,.L11
	fld	fa0,-248(s0)
	call	libmin_sqrt@plt
	fmv.d	fa5,fa0
	j	.L3
.L11:
	fld	fa0,-248(s0)
	call	libmin_fabs@plt
	fsd	fa0,-176(s0)
	lw	a5,-216(s0)
	sext.w	a5,a5
	bne	a5,zero,.L23
	lw	a5,-224(s0)
	sext.w	a4,a5
	li	a5,2146435072
	beq	a4,a5,.L24
	lw	a5,-224(s0)
	sext.w	a5,a5
	beq	a5,zero,.L24
	lw	a5,-224(s0)
	sext.w	a4,a5
	li	a5,1072693248
	bne	a4,a5,.L23
.L24:
	fld	fa5,-176(s0)
	fsd	fa5,-184(s0)
	lw	a5,-212(s0)
	sext.w	a5,a5
	bge	a5,zero,.L25
	lla	a5,.LC0
	fld	fa4,0(a5)
	fld	fa5,-184(s0)
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-184(s0)
.L25:
	lw	a5,-220(s0)
	sext.w	a5,a5
	bge	a5,zero,.L26
	lw	a5,-224(s0)
	mv	a4,a5
	li	a5,-1072693248
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-232(s0)
	or	a5,a5,a4
	sext.w	a5,a5
	bne	a5,zero,.L27
	fld	fa5,-184(s0)
	fsub.d	fa4,fa5,fa5
	fld	fa5,-184(s0)
	fsub.d	fa5,fa5,fa5
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-184(s0)
	j	.L26
.L27:
	lw	a5,-232(s0)
	sext.w	a4,a5
	li	a5,1
	bne	a4,a5,.L26
	fld	fa5,-184(s0)
	fneg.d	fa5,fa5
	fsd	fa5,-184(s0)
.L26:
	fld	fa5,-184(s0)
	j	.L3
.L23:
	lla	a5,.LC0
	fld	fa5,0(a5)
	fsd	fa5,-144(s0)
	lw	a5,-220(s0)
	sext.w	a5,a5
	bge	a5,zero,.L28
	lw	a5,-232(s0)
	sext.w	a5,a5
	bne	a5,zero,.L29
	fld	fa5,-248(s0)
	fsub.d	fa4,fa5,fa5
	fld	fa5,-248(s0)
	fsub.d	fa5,fa5,fa5
	fdiv.d	fa5,fa4,fa5
	j	.L3
.L29:
	lw	a5,-232(s0)
	sext.w	a4,a5
	li	a5,1
	bne	a4,a5,.L28
	lla	a5,.LC1
	fld	fa5,0(a5)
	fsd	fa5,-144(s0)
.L28:
	lw	a5,-204(s0)
	sext.w	a4,a5
	li	a5,1105199104
	ble	a4,a5,.L30
	lw	a5,-204(s0)
	sext.w	a4,a5
	li	a5,1139802112
	ble	a4,a5,.L31
	lw	a5,-224(s0)
	sext.w	a4,a5
	li	a5,1072693248
	bge	a4,a5,.L32
	lw	a5,-212(s0)
	sext.w	a5,a5
	bge	a5,zero,.L33
	lla	a5,.LC2
	fld	fa4,0(a5)
	lla	a5,.LC2
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	j	.L3
.L33:
	lla	a5,.LC3
	fld	fa4,0(a5)
	lla	a5,.LC3
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	j	.L3
.L32:
	lw	a5,-224(s0)
	sext.w	a4,a5
	li	a5,1072693248
	blt	a4,a5,.L31
	lw	a5,-212(s0)
	sext.w	a5,a5
	ble	a5,zero,.L35
	lla	a5,.LC2
	fld	fa4,0(a5)
	lla	a5,.LC2
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	j	.L3
.L35:
	lla	a5,.LC3
	fld	fa4,0(a5)
	lla	a5,.LC3
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	j	.L3
.L31:
	lw	a5,-224(s0)
	sext.w	a4,a5
	li	a5,1072693248
	addi	a5,a5,-2
	bgt	a4,a5,.L37
	lw	a5,-212(s0)
	sext.w	a5,a5
	bge	a5,zero,.L38
	lla	a5,.LC2
	fld	fa4,0(a5)
	fld	fa5,-144(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC2
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	j	.L3
.L38:
	lla	a5,.LC3
	fld	fa4,0(a5)
	fld	fa5,-144(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC3
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	j	.L3
.L37:
	lw	a5,-224(s0)
	sext.w	a4,a5
	li	a5,1072693248
	ble	a4,a5,.L40
	lw	a5,-212(s0)
	sext.w	a5,a5
	ble	a5,zero,.L41
	lla	a5,.LC2
	fld	fa4,0(a5)
	fld	fa5,-144(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC2
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	j	.L3
.L41:
	lla	a5,.LC3
	fld	fa4,0(a5)
	fld	fa5,-144(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC3
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	j	.L3
.L40:
	fld	fa4,-176(s0)
	lla	a5,.LC0
	fld	fa5,0(a5)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
	fld	fa5,-40(s0)
	fmul.d	fa4,fa5,fa5
	fld	fa3,-40(s0)
	lla	a5,.LC4
	fld	fa5,0(a5)
	fmul.d	fa5,fa3,fa5
	lla	a5,.LC5
	fld	fa3,0(a5)
	fsub.d	fa3,fa3,fa5
	fld	fa5,-40(s0)
	fmul.d	fa5,fa3,fa5
	lla	a5,.LC6
	fld	fa3,0(a5)
	fsub.d	fa5,fa3,fa5
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-32(s0)
	lla	a5,.LC7
	fld	fa5,0(a5)
	fld	fa4,-40(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-136(s0)
	lla	a5,.LC8
	fld	fa4,0(a5)
	fld	fa5,-40(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC9
	fld	fa3,0(a5)
	fld	fa5,-32(s0)
	fmul.d	fa5,fa3,fa5
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-128(s0)
	fld	fa4,-136(s0)
	fld	fa5,-128(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-160(s0)
	fld	fa5,-160(s0)
	fsd	fa5,-192(s0)
	ld	a4,-192(s0)
	li	a5,-1
	slli	a5,a5,32
	and	a5,a4,a5
	sd	a5,-192(s0)
	ld	a5,-192(s0)
	sd	a5,-192(s0)
	fld	fa5,-192(s0)
	fsd	fa5,-160(s0)
	fld	fa4,-160(s0)
	fld	fa5,-136(s0)
	fsub.d	fa5,fa4,fa5
	fld	fa4,-128(s0)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-152(s0)
	j	.L43
.L30:
	sw	zero,-228(s0)
	lw	a5,-224(s0)
	sext.w	a4,a5
	li	a5,1048576
	bge	a4,a5,.L44
	lla	a5,.LC10
	fld	fa5,0(a5)
	fld	fa4,-176(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-176(s0)
	lw	a5,-228(s0)
	addiw	a5,a5,-53
	sw	a5,-228(s0)
	fld	fa5,-176(s0)
	fsd	fa5,-192(s0)
	ld	a5,-192(s0)
	srli	a5,a5,32
	sw	a5,-224(s0)
.L44:
	lw	a5,-224(s0)
	sraiw	a5,a5,20
	sext.w	a5,a5
	addiw	a5,a5,-1023
	sext.w	a5,a5
	lw	a4,-228(s0)
	addw	a5,a4,a5
	sw	a5,-228(s0)
	lw	a5,-224(s0)
	mv	a4,a5
	li	a5,1048576
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-200(s0)
	lw	a5,-200(s0)
	mv	a4,a5
	li	a5,1072693248
	or	a5,a4,a5
	sw	a5,-224(s0)
	lw	a5,-200(s0)
	sext.w	a4,a5
	li	a5,237568
	addi	a5,a5,-1906
	bgt	a4,a5,.L45
	sw	zero,-236(s0)
	j	.L46
.L45:
	lw	a5,-200(s0)
	sext.w	a4,a5
	li	a5,765952
	addi	a5,a5,1657
	bgt	a4,a5,.L47
	li	a5,1
	sw	a5,-236(s0)
	j	.L46
.L47:
	sw	zero,-236(s0)
	lw	a5,-228(s0)
	addiw	a5,a5,1
	sw	a5,-228(s0)
	lw	a5,-224(s0)
	mv	a4,a5
	li	a5,-1048576
	addw	a5,a4,a5
	sw	a5,-224(s0)
.L46:
	fld	fa5,-176(s0)
	fsd	fa5,-192(s0)
	ld	a4,-192(s0)
	li	a5,-1
	srli	a5,a5,32
	and	a5,a4,a5
	sd	a5,-192(s0)
	ld	a4,-192(s0)
	lw	a5,-224(s0)
	slli	a5,a5,32
	or	a5,a4,a5
	sd	a5,-192(s0)
	fld	fa5,-192(s0)
	fsd	fa5,-176(s0)
	lla	a4,bp
	lw	a5,-236(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	fld	fa5,0(a5)
	fld	fa4,-176(s0)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-136(s0)
	lla	a4,bp
	lw	a5,-236(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	fld	fa4,0(a5)
	fld	fa5,-176(s0)
	fadd.d	fa5,fa4,fa5
	lla	a5,.LC0
	fld	fa4,0(a5)
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-128(s0)
	fld	fa4,-136(s0)
	fld	fa5,-128(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-120(s0)
	fld	fa5,-120(s0)
	fsd	fa5,-112(s0)
	fld	fa5,-112(s0)
	fsd	fa5,-192(s0)
	ld	a4,-192(s0)
	li	a5,-1
	slli	a5,a5,32
	and	a5,a4,a5
	sd	a5,-192(s0)
	ld	a5,-192(s0)
	sd	a5,-192(s0)
	fld	fa5,-192(s0)
	fsd	fa5,-112(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-104(s0)
	fld	fa5,-104(s0)
	fsd	fa5,-192(s0)
	ld	a4,-192(s0)
	li	a5,-1
	srli	a5,a5,32
	and	a5,a4,a5
	sd	a5,-192(s0)
	ld	a4,-192(s0)
	lw	a5,-224(s0)
	sraiw	a5,a5,1
	sext.w	a3,a5
	li	a5,536870912
	or	a5,a3,a5
	sext.w	a3,a5
	li	a5,524288
	addw	a5,a3,a5
	sext.w	a3,a5
	lw	a5,-236(s0)
	slliw	a5,a5,18
	sext.w	a5,a5
	addw	a5,a3,a5
	sext.w	a5,a5
	slli	a5,a5,32
	or	a5,a4,a5
	sd	a5,-192(s0)
	fld	fa5,-192(s0)
	fsd	fa5,-104(s0)
	lla	a4,bp
	lw	a5,-236(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	fld	fa5,0(a5)
	fld	fa4,-104(s0)
	fsub.d	fa5,fa4,fa5
	fld	fa4,-176(s0)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-96(s0)
	fld	fa4,-112(s0)
	fld	fa5,-104(s0)
	fmul.d	fa5,fa4,fa5
	fld	fa4,-136(s0)
	fsub.d	fa4,fa4,fa5
	fld	fa3,-112(s0)
	fld	fa5,-96(s0)
	fmul.d	fa5,fa3,fa5
	fsub.d	fa5,fa4,fa5
	fld	fa4,-128(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-88(s0)
	fld	fa5,-120(s0)
	fmul.d	fa5,fa5,fa5
	fsd	fa5,-80(s0)
	fld	fa5,-80(s0)
	fmul.d	fa4,fa5,fa5
	lla	a5,.LC11
	fld	fa3,0(a5)
	fld	fa5,-80(s0)
	fmul.d	fa3,fa3,fa5
	lla	a5,.LC12
	fld	fa5,0(a5)
	fadd.d	fa3,fa3,fa5
	fld	fa5,-80(s0)
	fmul.d	fa3,fa3,fa5
	lla	a5,.LC13
	fld	fa5,0(a5)
	fadd.d	fa3,fa3,fa5
	fld	fa5,-80(s0)
	fmul.d	fa3,fa3,fa5
	lla	a5,.LC14
	fld	fa5,0(a5)
	fadd.d	fa3,fa3,fa5
	fld	fa5,-80(s0)
	fmul.d	fa3,fa3,fa5
	lla	a5,.LC15
	fld	fa5,0(a5)
	fadd.d	fa3,fa3,fa5
	fld	fa5,-80(s0)
	fmul.d	fa3,fa3,fa5
	lla	a5,.LC16
	fld	fa5,0(a5)
	fadd.d	fa5,fa3,fa5
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-72(s0)
	fld	fa4,-112(s0)
	fld	fa5,-120(s0)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-88(s0)
	fmul.d	fa5,fa4,fa5
	fld	fa4,-72(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-72(s0)
	fld	fa5,-112(s0)
	fmul.d	fa5,fa5,fa5
	fsd	fa5,-80(s0)
	fld	fa4,-80(s0)
	lla	a5,.LC17
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	fld	fa4,-72(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-104(s0)
	fld	fa5,-104(s0)
	fsd	fa5,-192(s0)
	ld	a4,-192(s0)
	li	a5,-1
	slli	a5,a5,32
	and	a5,a4,a5
	sd	a5,-192(s0)
	ld	a5,-192(s0)
	sd	a5,-192(s0)
	fld	fa5,-192(s0)
	fsd	fa5,-104(s0)
	fld	fa4,-104(s0)
	lla	a5,.LC17
	fld	fa5,0(a5)
	fsub.d	fa4,fa4,fa5
	fld	fa5,-80(s0)
	fsub.d	fa5,fa4,fa5
	fld	fa4,-72(s0)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-96(s0)
	fld	fa4,-112(s0)
	fld	fa5,-104(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-136(s0)
	fld	fa4,-88(s0)
	fld	fa5,-104(s0)
	fmul.d	fa4,fa4,fa5
	fld	fa3,-96(s0)
	fld	fa5,-120(s0)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-128(s0)
	fld	fa4,-136(s0)
	fld	fa5,-128(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-168(s0)
	fld	fa5,-168(s0)
	fsd	fa5,-192(s0)
	ld	a4,-192(s0)
	li	a5,-1
	slli	a5,a5,32
	and	a5,a4,a5
	sd	a5,-192(s0)
	ld	a5,-192(s0)
	sd	a5,-192(s0)
	fld	fa5,-192(s0)
	fsd	fa5,-168(s0)
	fld	fa4,-168(s0)
	fld	fa5,-136(s0)
	fsub.d	fa5,fa4,fa5
	fld	fa4,-128(s0)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-64(s0)
	lla	a5,.LC18
	fld	fa5,0(a5)
	fld	fa4,-168(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-56(s0)
	lla	a5,.LC19
	fld	fa4,0(a5)
	fld	fa5,-168(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC20
	fld	fa3,0(a5)
	fld	fa5,-64(s0)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa4,fa4,fa5
	lla	a4,dp_l
	lw	a5,-236(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-48(s0)
	lw	a5,-228(s0)
	fcvt.d.w	fa5,a5
	fsd	fa5,-40(s0)
	fld	fa4,-56(s0)
	fld	fa5,-48(s0)
	fadd.d	fa4,fa4,fa5
	lla	a4,dp_h
	lw	a5,-236(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	fld	fa4,-40(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-160(s0)
	fld	fa5,-160(s0)
	fsd	fa5,-192(s0)
	ld	a4,-192(s0)
	li	a5,-1
	slli	a5,a5,32
	and	a5,a4,a5
	sd	a5,-192(s0)
	ld	a5,-192(s0)
	sd	a5,-192(s0)
	fld	fa5,-192(s0)
	fsd	fa5,-160(s0)
	fld	fa4,-160(s0)
	fld	fa5,-40(s0)
	fsub.d	fa4,fa4,fa5
	lla	a4,dp_h
	lw	a5,-236(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	fld	fa5,0(a5)
	fsub.d	fa4,fa4,fa5
	fld	fa5,-56(s0)
	fsub.d	fa5,fa4,fa5
	fld	fa4,-48(s0)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-152(s0)
.L43:
	fld	fa5,-256(s0)
	fsd	fa5,-24(s0)
	fld	fa5,-24(s0)
	fsd	fa5,-192(s0)
	ld	a4,-192(s0)
	li	a5,-1
	slli	a5,a5,32
	and	a5,a4,a5
	sd	a5,-192(s0)
	ld	a5,-192(s0)
	sd	a5,-192(s0)
	fld	fa5,-192(s0)
	fsd	fa5,-24(s0)
	fld	fa4,-256(s0)
	fld	fa5,-24(s0)
	fsub.d	fa4,fa4,fa5
	fld	fa5,-160(s0)
	fmul.d	fa4,fa4,fa5
	fld	fa3,-256(s0)
	fld	fa5,-152(s0)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-64(s0)
	fld	fa4,-24(s0)
	fld	fa5,-160(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-168(s0)
	fld	fa4,-64(s0)
	fld	fa5,-168(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-184(s0)
	fld	fa5,-184(s0)
	fsd	fa5,-192(s0)
	ld	a5,-192(s0)
	srli	a5,a5,32
	sw	a5,-200(s0)
	ld	a5,-192(s0)
	sw	a5,-196(s0)
	lw	a5,-200(s0)
	sext.w	a4,a5
	li	a5,1083179008
	blt	a4,a5,.L48
	lw	a5,-200(s0)
	mv	a4,a5
	li	a5,-1083179008
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-196(s0)
	or	a5,a5,a4
	sext.w	a5,a5
	beq	a5,zero,.L49
	lla	a5,.LC2
	fld	fa4,0(a5)
	fld	fa5,-144(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC2
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	j	.L3
.L49:
	lla	a5,.LC21
	fld	fa4,0(a5)
	fld	fa5,-64(s0)
	fadd.d	fa4,fa4,fa5
	fld	fa3,-184(s0)
	fld	fa5,-168(s0)
	fsub.d	fa5,fa3,fa5
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L50
	lla	a5,.LC2
	fld	fa4,0(a5)
	fld	fa5,-144(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC2
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	j	.L3
.L48:
	lw	a5,-200(s0)
	mv	a4,a5
	li	a5,-2147483648
	xori	a5,a5,-1
	and	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,1083232256
	addi	a5,a5,-1025
	ble	a4,a5,.L50
	lw	a4,-200(s0)
	li	a5,1064251392
	addiw	a5,a5,1024
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-196(s0)
	or	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L52
	lla	a5,.LC3
	fld	fa4,0(a5)
	fld	fa5,-144(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC3
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	j	.L3
.L52:
	fld	fa4,-184(s0)
	fld	fa5,-168(s0)
	fsub.d	fa5,fa4,fa5
	fld	fa4,-64(s0)
	fle.d	a5,fa4,fa5
	beq	a5,zero,.L50
	lla	a5,.LC3
	fld	fa4,0(a5)
	fld	fa5,-144(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC3
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	j	.L3
.L50:
	lw	a5,-200(s0)
	mv	a4,a5
	li	a5,-2147483648
	xori	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-196(s0)
	lw	a5,-196(s0)
	sraiw	a5,a5,20
	sext.w	a5,a5
	addiw	a5,a5,-1023
	sw	a5,-236(s0)
	sw	zero,-228(s0)
	lw	a5,-196(s0)
	sext.w	a4,a5
	li	a5,1071644672
	ble	a4,a5,.L54
	lw	a5,-236(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	li	a4,1048576
	sraw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-200(s0)
	addw	a5,a4,a5
	sw	a5,-228(s0)
	lw	a5,-228(s0)
	sraiw	a5,a5,20
	sext.w	a5,a5
	andi	a5,a5,2047
	sext.w	a5,a5
	addiw	a5,a5,-1023
	sw	a5,-236(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-40(s0)
	fld	fa5,-40(s0)
	fsd	fa5,-192(s0)
	ld	a4,-192(s0)
	li	a5,-1
	srli	a5,a5,32
	and	a5,a4,a5
	sd	a5,-192(s0)
	ld	a4,-192(s0)
	lw	a5,-236(s0)
	mv	a3,a5
	li	a5,-1048576
	sraw	a5,a5,a3
	sext.w	a5,a5
	lw	a3,-228(s0)
	and	a5,a5,a3
	sext.w	a5,a5
	slli	a5,a5,32
	or	a5,a4,a5
	sd	a5,-192(s0)
	fld	fa5,-192(s0)
	fsd	fa5,-40(s0)
	lw	a5,-228(s0)
	mv	a4,a5
	li	a5,1048576
	addi	a5,a5,-1
	and	a5,a4,a5
	sext.w	a4,a5
	li	a5,1048576
	or	a5,a4,a5
	sext.w	a4,a5
	li	a5,20
	lw	a3,-236(s0)
	subw	a5,a5,a3
	sext.w	a5,a5
	sraw	a5,a4,a5
	sw	a5,-228(s0)
	lw	a5,-200(s0)
	sext.w	a5,a5
	bge	a5,zero,.L55
	lw	a5,-228(s0)
	negw	a5,a5
	sw	a5,-228(s0)
.L55:
	fld	fa4,-168(s0)
	fld	fa5,-40(s0)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-168(s0)
.L54:
	fld	fa4,-64(s0)
	fld	fa5,-168(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
	fld	fa5,-40(s0)
	fsd	fa5,-192(s0)
	ld	a4,-192(s0)
	li	a5,-1
	slli	a5,a5,32
	and	a5,a4,a5
	sd	a5,-192(s0)
	ld	a5,-192(s0)
	sd	a5,-192(s0)
	fld	fa5,-192(s0)
	fsd	fa5,-40(s0)
	lla	a5,.LC22
	fld	fa5,0(a5)
	fld	fa4,-40(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-136(s0)
	fld	fa4,-40(s0)
	fld	fa5,-168(s0)
	fsub.d	fa5,fa4,fa5
	fld	fa4,-64(s0)
	fsub.d	fa4,fa4,fa5
	lla	a5,.LC23
	fld	fa5,0(a5)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC24
	fld	fa3,0(a5)
	fld	fa5,-40(s0)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-128(s0)
	fld	fa4,-136(s0)
	fld	fa5,-128(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-184(s0)
	fld	fa4,-184(s0)
	fld	fa5,-136(s0)
	fsub.d	fa5,fa4,fa5
	fld	fa4,-128(s0)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-32(s0)
	fld	fa5,-184(s0)
	fmul.d	fa5,fa5,fa5
	fsd	fa5,-40(s0)
	lla	a5,.LC25
	fld	fa4,0(a5)
	fld	fa5,-40(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC26
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-40(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC27
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-40(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC28
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-40(s0)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC29
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-40(s0)
	fmul.d	fa5,fa4,fa5
	fld	fa4,-184(s0)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-160(s0)
	fld	fa4,-184(s0)
	fld	fa5,-160(s0)
	fmul.d	fa4,fa4,fa5
	fld	fa3,-160(s0)
	lla	a5,.LC30
	fld	fa5,0(a5)
	fsub.d	fa5,fa3,fa5
	fdiv.d	fa4,fa4,fa5
	fld	fa3,-184(s0)
	fld	fa5,-32(s0)
	fmul.d	fa3,fa3,fa5
	fld	fa5,-32(s0)
	fadd.d	fa5,fa3,fa5
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-72(s0)
	fld	fa4,-72(s0)
	fld	fa5,-184(s0)
	fsub.d	fa5,fa4,fa5
	lla	a5,.LC0
	fld	fa4,0(a5)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-184(s0)
	fld	fa5,-184(s0)
	fsd	fa5,-192(s0)
	ld	a5,-192(s0)
	srli	a5,a5,32
	sw	a5,-200(s0)
	lw	a5,-228(s0)
	slliw	a5,a5,20
	sext.w	a5,a5
	lw	a4,-200(s0)
	addw	a5,a4,a5
	sw	a5,-200(s0)
	lw	a5,-200(s0)
	sraiw	a5,a5,20
	sext.w	a5,a5
	bgt	a5,zero,.L56
	lw	a5,-228(s0)
	mv	a0,a5
	fld	fa0,-184(s0)
	call	libmin_scalbn@plt
	fsd	fa0,-184(s0)
	j	.L57
.L56:
	fld	fa5,-184(s0)
	fsd	fa5,-192(s0)
	ld	a4,-192(s0)
	li	a5,-1
	srli	a5,a5,32
	and	a5,a4,a5
	sd	a5,-192(s0)
	ld	a4,-192(s0)
	lw	a5,-200(s0)
	slli	a5,a5,32
	or	a5,a4,a5
	sd	a5,-192(s0)
	fld	fa5,-192(s0)
	fsd	fa5,-184(s0)
.L57:
	fld	fa4,-144(s0)
	fld	fa5,-184(s0)
	fmul.d	fa5,fa4,fa5
.L3:
	fmv.d	fa0,fa5
	ld	ra,248(sp)
	.cfi_restore 1
	ld	s0,240(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 256
	addi	sp,sp,256
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	libmin_pow, .-libmin_pow
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	1072693248
	.align	3
.LC1:
	.word	0
	.word	-1074790400
	.align	3
.LC2:
	.word	-2013235812
	.word	2117592124
	.align	3
.LC3:
	.word	-1023872167
	.word	27618847
	.align	3
.LC4:
	.word	0
	.word	1070596096
	.align	3
.LC5:
	.word	1431655765
	.word	1070945621
	.align	3
.LC6:
	.word	0
	.word	1071644672
	.align	3
.LC7:
	.word	1610612736
	.word	1073157447
	.align	3
.LC8:
	.word	-128065724
	.word	1045736971
	.align	3
.LC9:
	.word	1697350398
	.word	1073157447
	.align	3
.LC10:
	.word	0
	.word	1128267776
	.align	3
.LC11:
	.word	1246056175
	.word	1070235176
	.align	3
.LC12:
	.word	-1815487643
	.word	1070433866
	.align	3
.LC13:
	.word	-1457700607
	.word	1070691424
	.align	3
.LC14:
	.word	1368335949
	.word	1070945621
	.align	3
.LC15:
	.word	-613438465
	.word	1071345078
	.align	3
.LC16:
	.word	858993411
	.word	1071854387
	.align	3
.LC17:
	.word	0
	.word	1074266112
	.align	3
.LC18:
	.word	-536870912
	.word	1072613129
	.align	3
.LC19:
	.word	341508597
	.word	-1103220768
	.align	3
.LC20:
	.word	-600177667
	.word	1072613129
	.align	3
.LC21:
	.word	1697350398
	.word	1016534343
	.align	3
.LC22:
	.word	0
	.word	1072049731
	.align	3
.LC23:
	.word	-17155601
	.word	1072049730
	.align	3
.LC24:
	.word	212364345
	.word	-1105175455
	.align	3
.LC25:
	.word	1925096656
	.word	1046886249
	.align	3
.LC26:
	.word	-976065551
	.word	-1094992575
	.align	3
.LC27:
	.word	-1356472788
	.word	1058100842
	.align	3
.LC28:
	.word	381599123
	.word	-1083784852
	.align	3
.LC29:
	.word	1431655742
	.word	1069897045
	.align	3
.LC30:
	.word	0
	.word	1073741824
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
