	.file	"problem158.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	fsw	fa0,-20(s0)	# a, a
	fsw	fa1,-24(s0)	# b, b
	fsw	fa2,-28(s0)	# c, c
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-20(s0)	# tmp157, a
	fmul.s	fa4,fa5,fa5	# _1, tmp157, tmp157
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-24(s0)	# tmp158, b
	fmul.s	fa5,fa5,fa5	# _2, tmp158, tmp158
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fadd.s	fa4,fa4,fa5	# _3, _1, _2
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-28(s0)	# tmp159, c
	fmul.s	fa5,fa5,fa5	# _4, tmp159, tmp159
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fsub.s	fa5,fa4,fa5	# _5, _3, _4
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fabs.s	fa5,fa5	# _6, _5
	fcvt.d.s	fa4,fa5	# _7, _6
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	lla	a5,.LC0	# tmp161,
	fld	fa5,0(a5)	# tmp160,
	flt.d	a5,fa4,fa5	#, tmp162, _7, tmp160
	bne	a5,zero,.L2	#, tmp162,,
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-20(s0)	# tmp163, a
	fmul.s	fa4,fa5,fa5	# _8, tmp163, tmp163
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-28(s0)	# tmp164, c
	fmul.s	fa5,fa5,fa5	# _9, tmp164, tmp164
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fadd.s	fa4,fa4,fa5	# _10, _8, _9
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-24(s0)	# tmp165, b
	fmul.s	fa5,fa5,fa5	# _11, tmp165, tmp165
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fsub.s	fa5,fa4,fa5	# _12, _10, _11
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fabs.s	fa5,fa5	# _13, _12
	fcvt.d.s	fa4,fa5	# _14, _13
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	lla	a5,.LC0	# tmp167,
	fld	fa5,0(a5)	# tmp166,
	flt.d	a5,fa4,fa5	#, tmp168, _14, tmp166
	bne	a5,zero,.L2	#, tmp168,,
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-24(s0)	# tmp169, b
	fmul.s	fa4,fa5,fa5	# _15, tmp169, tmp169
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-28(s0)	# tmp170, c
	fmul.s	fa5,fa5,fa5	# _16, tmp170, tmp170
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fadd.s	fa4,fa4,fa5	# _17, _15, _16
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-20(s0)	# tmp171, a
	fmul.s	fa5,fa5,fa5	# _18, tmp171, tmp171
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fsub.s	fa5,fa4,fa5	# _19, _17, _18
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fabs.s	fa5,fa5	# _20, _19
	fcvt.d.s	fa4,fa5	# _21, _20
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	lla	a5,.LC0	# tmp173,
	fld	fa5,0(a5)	# tmp172,
	flt.d	a5,fa4,fa5	#, tmp174, _21, tmp172
	beq	a5,zero,.L6	#, tmp174,,
.L2:
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	li	a5,1		# _22,
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	j	.L5		#
.L6:
# problem158.c:6:     return 0;
	li	a5,0		# _22,
.L5:
# problem158.c:7: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC4:
	.string	"problem158.c"
	.align	3
.LC5:
	.string	"func0(3, 4, 5) == 1"
	.align	3
.LC8:
	.string	"func0(1, 2, 3) == 0"
	.align	3
.LC12:
	.string	"func0(10, 6, 8) == 1"
	.align	3
.LC13:
	.string	"func0(2, 2, 2) == 0"
	.align	3
.LC17:
	.string	"func0(7, 24, 25) == 1"
	.align	3
.LC18:
	.string	"func0(10, 5, 7) == 0"
	.align	3
.LC21:
	.string	"func0(5, 12, 13) == 1"
	.align	3
.LC24:
	.string	"func0(15, 8, 17) == 1"
	.align	3
.LC28:
	.string	"func0(48, 55, 73) == 1"
	.align	3
.LC29:
	.string	"func0(1, 1, 1) == 0"
	.align	3
.LC30:
	.string	"func0(2, 2, 10) == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
# problem158.c:14:     assert(func0(3, 4, 5) == 1);
	lla	a5,.LC1	# tmp148,
	flw	fa3,0(a5)	# tmp147,
	lla	a5,.LC2	# tmp150,
	flw	fa4,0(a5)	# tmp149,
	lla	a5,.LC3	# tmp152,
	flw	fa5,0(a5)	# tmp151,
	fmv.s	fa2,fa3	#, tmp147
	fmv.s	fa1,fa4	#, tmp149
	fmv.s	fa0,fa5	#, tmp151
	call	func0		#
	mv	a5,a0	# tmp153,
# problem158.c:14:     assert(func0(3, 4, 5) == 1);
	mv	a4,a5	# tmp154, _1
	li	a5,1		# tmp155,
	beq	a4,a5,.L8	#, tmp154, tmp155,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,14		#,
	lla	a1,.LC4	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L8:
# problem158.c:15:     assert(func0(1, 2, 3) == 0);
	lla	a5,.LC3	# tmp157,
	flw	fa3,0(a5)	# tmp156,
	lla	a5,.LC6	# tmp159,
	flw	fa4,0(a5)	# tmp158,
	lla	a5,.LC7	# tmp161,
	flw	fa5,0(a5)	# tmp160,
	fmv.s	fa2,fa3	#, tmp156
	fmv.s	fa1,fa4	#, tmp158
	fmv.s	fa0,fa5	#, tmp160
	call	func0		#
	mv	a5,a0	# tmp162,
# problem158.c:15:     assert(func0(1, 2, 3) == 0);
	beq	a5,zero,.L9	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,15		#,
	lla	a1,.LC4	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L9:
# problem158.c:16:     assert(func0(10, 6, 8) == 1);
	lla	a5,.LC9	# tmp164,
	flw	fa3,0(a5)	# tmp163,
	lla	a5,.LC10	# tmp166,
	flw	fa4,0(a5)	# tmp165,
	lla	a5,.LC11	# tmp168,
	flw	fa5,0(a5)	# tmp167,
	fmv.s	fa2,fa3	#, tmp163
	fmv.s	fa1,fa4	#, tmp165
	fmv.s	fa0,fa5	#, tmp167
	call	func0		#
	mv	a5,a0	# tmp169,
# problem158.c:16:     assert(func0(10, 6, 8) == 1);
	mv	a4,a5	# tmp170, _3
	li	a5,1		# tmp171,
	beq	a4,a5,.L10	#, tmp170, tmp171,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC4	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L10:
# problem158.c:17:     assert(func0(2, 2, 2) == 0);
	lla	a5,.LC6	# tmp173,
	flw	fa3,0(a5)	# tmp172,
	lla	a5,.LC6	# tmp175,
	flw	fa4,0(a5)	# tmp174,
	lla	a5,.LC6	# tmp177,
	flw	fa5,0(a5)	# tmp176,
	fmv.s	fa2,fa3	#, tmp172
	fmv.s	fa1,fa4	#, tmp174
	fmv.s	fa0,fa5	#, tmp176
	call	func0		#
	mv	a5,a0	# tmp178,
# problem158.c:17:     assert(func0(2, 2, 2) == 0);
	beq	a5,zero,.L11	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC4	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L11:
# problem158.c:18:     assert(func0(7, 24, 25) == 1);
	lla	a5,.LC14	# tmp180,
	flw	fa3,0(a5)	# tmp179,
	lla	a5,.LC15	# tmp182,
	flw	fa4,0(a5)	# tmp181,
	lla	a5,.LC16	# tmp184,
	flw	fa5,0(a5)	# tmp183,
	fmv.s	fa2,fa3	#, tmp179
	fmv.s	fa1,fa4	#, tmp181
	fmv.s	fa0,fa5	#, tmp183
	call	func0		#
	mv	a5,a0	# tmp185,
# problem158.c:18:     assert(func0(7, 24, 25) == 1);
	mv	a4,a5	# tmp186, _5
	li	a5,1		# tmp187,
	beq	a4,a5,.L12	#, tmp186, tmp187,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC4	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L12:
# problem158.c:19:     assert(func0(10, 5, 7) == 0);
	lla	a5,.LC16	# tmp189,
	flw	fa3,0(a5)	# tmp188,
	lla	a5,.LC1	# tmp191,
	flw	fa4,0(a5)	# tmp190,
	lla	a5,.LC11	# tmp193,
	flw	fa5,0(a5)	# tmp192,
	fmv.s	fa2,fa3	#, tmp188
	fmv.s	fa1,fa4	#, tmp190
	fmv.s	fa0,fa5	#, tmp192
	call	func0		#
	mv	a5,a0	# tmp194,
# problem158.c:19:     assert(func0(10, 5, 7) == 0);
	beq	a5,zero,.L13	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC4	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L13:
# problem158.c:20:     assert(func0(5, 12, 13) == 1);
	lla	a5,.LC19	# tmp196,
	flw	fa3,0(a5)	# tmp195,
	lla	a5,.LC20	# tmp198,
	flw	fa4,0(a5)	# tmp197,
	lla	a5,.LC1	# tmp200,
	flw	fa5,0(a5)	# tmp199,
	fmv.s	fa2,fa3	#, tmp195
	fmv.s	fa1,fa4	#, tmp197
	fmv.s	fa0,fa5	#, tmp199
	call	func0		#
	mv	a5,a0	# tmp201,
# problem158.c:20:     assert(func0(5, 12, 13) == 1);
	mv	a4,a5	# tmp202, _7
	li	a5,1		# tmp203,
	beq	a4,a5,.L14	#, tmp202, tmp203,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC4	#,
	lla	a0,.LC21	#,
	call	__assert_fail@plt	#
.L14:
# problem158.c:21:     assert(func0(15, 8, 17) == 1);
	lla	a5,.LC22	# tmp205,
	flw	fa3,0(a5)	# tmp204,
	lla	a5,.LC9	# tmp207,
	flw	fa4,0(a5)	# tmp206,
	lla	a5,.LC23	# tmp209,
	flw	fa5,0(a5)	# tmp208,
	fmv.s	fa2,fa3	#, tmp204
	fmv.s	fa1,fa4	#, tmp206
	fmv.s	fa0,fa5	#, tmp208
	call	func0		#
	mv	a5,a0	# tmp210,
# problem158.c:21:     assert(func0(15, 8, 17) == 1);
	mv	a4,a5	# tmp211, _8
	li	a5,1		# tmp212,
	beq	a4,a5,.L15	#, tmp211, tmp212,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC4	#,
	lla	a0,.LC24	#,
	call	__assert_fail@plt	#
.L15:
# problem158.c:22:     assert(func0(48, 55, 73) == 1);
	lla	a5,.LC25	# tmp214,
	flw	fa3,0(a5)	# tmp213,
	lla	a5,.LC26	# tmp216,
	flw	fa4,0(a5)	# tmp215,
	lla	a5,.LC27	# tmp218,
	flw	fa5,0(a5)	# tmp217,
	fmv.s	fa2,fa3	#, tmp213
	fmv.s	fa1,fa4	#, tmp215
	fmv.s	fa0,fa5	#, tmp217
	call	func0		#
	mv	a5,a0	# tmp219,
# problem158.c:22:     assert(func0(48, 55, 73) == 1);
	mv	a4,a5	# tmp220, _9
	li	a5,1		# tmp221,
	beq	a4,a5,.L16	#, tmp220, tmp221,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC4	#,
	lla	a0,.LC28	#,
	call	__assert_fail@plt	#
.L16:
# problem158.c:23:     assert(func0(1, 1, 1) == 0);
	lla	a5,.LC7	# tmp223,
	flw	fa3,0(a5)	# tmp222,
	lla	a5,.LC7	# tmp225,
	flw	fa4,0(a5)	# tmp224,
	lla	a5,.LC7	# tmp227,
	flw	fa5,0(a5)	# tmp226,
	fmv.s	fa2,fa3	#, tmp222
	fmv.s	fa1,fa4	#, tmp224
	fmv.s	fa0,fa5	#, tmp226
	call	func0		#
	mv	a5,a0	# tmp228,
# problem158.c:23:     assert(func0(1, 1, 1) == 0);
	beq	a5,zero,.L17	#, _10,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC4	#,
	lla	a0,.LC29	#,
	call	__assert_fail@plt	#
.L17:
# problem158.c:24:     assert(func0(2, 2, 10) == 0);
	lla	a5,.LC11	# tmp230,
	flw	fa3,0(a5)	# tmp229,
	lla	a5,.LC6	# tmp232,
	flw	fa4,0(a5)	# tmp231,
	lla	a5,.LC6	# tmp234,
	flw	fa5,0(a5)	# tmp233,
	fmv.s	fa2,fa3	#, tmp229
	fmv.s	fa1,fa4	#, tmp231
	fmv.s	fa0,fa5	#, tmp233
	call	func0		#
	mv	a5,a0	# tmp235,
# problem158.c:24:     assert(func0(2, 2, 10) == 0);
	beq	a5,zero,.L18	#, _11,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC4	#,
	lla	a0,.LC30	#,
	call	__assert_fail@plt	#
.L18:
# problem158.c:26:     return 0;
	li	a5,0		# _35,
# problem158.c:27: }
	mv	a0,a5	#, <retval>
	ld	ra,8(sp)		#,
	.cfi_restore 1
	ld	s0,0(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC0:
	.word	-350469331
	.word	1058682594
	.align	2
.LC1:
	.word	1084227584
	.align	2
.LC2:
	.word	1082130432
	.align	2
.LC3:
	.word	1077936128
	.align	2
.LC6:
	.word	1073741824
	.align	2
.LC7:
	.word	1065353216
	.align	2
.LC9:
	.word	1090519040
	.align	2
.LC10:
	.word	1086324736
	.align	2
.LC11:
	.word	1092616192
	.align	2
.LC14:
	.word	1103626240
	.align	2
.LC15:
	.word	1103101952
	.align	2
.LC16:
	.word	1088421888
	.align	2
.LC19:
	.word	1095761920
	.align	2
.LC20:
	.word	1094713344
	.align	2
.LC22:
	.word	1099431936
	.align	2
.LC23:
	.word	1097859072
	.align	2
.LC25:
	.word	1116864512
	.align	2
.LC26:
	.word	1113325568
	.align	2
.LC27:
	.word	1111490560
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
