	.file	"problem158.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-32	#,,
	sd	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	fsw	fa0,-20(s0)	# a, a
	fsw	fa1,-24(s0)	# b, b
	fsw	fa2,-28(s0)	# c, c
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-20(s0)	# tmp95, a
	fmul.s	fa4,fa5,fa5	# _1, tmp95, tmp95
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-24(s0)	# tmp96, b
	fmul.s	fa5,fa5,fa5	# _2, tmp96, tmp96
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fadd.s	fa4,fa4,fa5	# _3, _1, _2
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-28(s0)	# tmp97, c
	fmul.s	fa5,fa5,fa5	# _4, tmp97, tmp97
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fsub.s	fa5,fa4,fa5	# _5, _3, _4
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fabs.s	fa5,fa5	# _6, _5
	fcvt.d.s	fa4,fa5	# _7, _6
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	lla	a5,.LC0	# tmp99,
	fld	fa5,0(a5)	# tmp98,
	flt.d	a5,fa4,fa5	#, tmp100, _7, tmp98
	bne	a5,zero,.L2	#, tmp100,,
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-20(s0)	# tmp101, a
	fmul.s	fa4,fa5,fa5	# _8, tmp101, tmp101
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-28(s0)	# tmp102, c
	fmul.s	fa5,fa5,fa5	# _9, tmp102, tmp102
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fadd.s	fa4,fa4,fa5	# _10, _8, _9
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-24(s0)	# tmp103, b
	fmul.s	fa5,fa5,fa5	# _11, tmp103, tmp103
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fsub.s	fa5,fa4,fa5	# _12, _10, _11
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fabs.s	fa5,fa5	# _13, _12
	fcvt.d.s	fa4,fa5	# _14, _13
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	lla	a5,.LC0	# tmp105,
	fld	fa5,0(a5)	# tmp104,
	flt.d	a5,fa4,fa5	#, tmp106, _14, tmp104
	bne	a5,zero,.L2	#, tmp106,,
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-24(s0)	# tmp107, b
	fmul.s	fa4,fa5,fa5	# _15, tmp107, tmp107
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-28(s0)	# tmp108, c
	fmul.s	fa5,fa5,fa5	# _16, tmp108, tmp108
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fadd.s	fa4,fa4,fa5	# _17, _15, _16
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-20(s0)	# tmp109, a
	fmul.s	fa5,fa5,fa5	# _18, tmp109, tmp109
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fsub.s	fa5,fa4,fa5	# _19, _17, _18
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fabs.s	fa5,fa5	# _20, _19
	fcvt.d.s	fa4,fa5	# _21, _20
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	lla	a5,.LC0	# tmp111,
	fld	fa5,0(a5)	# tmp110,
	flt.d	a5,fa4,fa5	#, tmp112, _21, tmp110
	beq	a5,zero,.L6	#, tmp112,,
.L2:
# problem158.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	li	a5,1		# _22,
	j	.L5		#
.L6:
# problem158.c:6:     return 0;
	li	a5,0		# _22,
.L5:
# problem158.c:7: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
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
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem158.c:14:     assert(func0(3, 4, 5) == 1);
	lla	a5,.LC1	# tmp86,
	flw	fa3,0(a5)	# tmp85,
	lla	a5,.LC2	# tmp88,
	flw	fa4,0(a5)	# tmp87,
	lla	a5,.LC3	# tmp90,
	flw	fa5,0(a5)	# tmp89,
	fmv.s	fa2,fa3	#, tmp85
	fmv.s	fa1,fa4	#, tmp87
	fmv.s	fa0,fa5	#, tmp89
	call	func0		#
	mv	a5,a0	# tmp91,
	mv	a4,a5	# tmp92, _1
	li	a5,1		# tmp93,
	beq	a4,a5,.L8	#, tmp92, tmp93,
# problem158.c:14:     assert(func0(3, 4, 5) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,14		#,
	lla	a1,.LC4	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L8:
# problem158.c:15:     assert(func0(1, 2, 3) == 0);
	lla	a5,.LC3	# tmp95,
	flw	fa3,0(a5)	# tmp94,
	lla	a5,.LC6	# tmp97,
	flw	fa4,0(a5)	# tmp96,
	lla	a5,.LC7	# tmp99,
	flw	fa5,0(a5)	# tmp98,
	fmv.s	fa2,fa3	#, tmp94
	fmv.s	fa1,fa4	#, tmp96
	fmv.s	fa0,fa5	#, tmp98
	call	func0		#
	mv	a5,a0	# tmp100,
	beq	a5,zero,.L9	#, _2,,
# problem158.c:15:     assert(func0(1, 2, 3) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,15		#,
	lla	a1,.LC4	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L9:
# problem158.c:16:     assert(func0(10, 6, 8) == 1);
	lla	a5,.LC9	# tmp102,
	flw	fa3,0(a5)	# tmp101,
	lla	a5,.LC10	# tmp104,
	flw	fa4,0(a5)	# tmp103,
	lla	a5,.LC11	# tmp106,
	flw	fa5,0(a5)	# tmp105,
	fmv.s	fa2,fa3	#, tmp101
	fmv.s	fa1,fa4	#, tmp103
	fmv.s	fa0,fa5	#, tmp105
	call	func0		#
	mv	a5,a0	# tmp107,
	mv	a4,a5	# tmp108, _3
	li	a5,1		# tmp109,
	beq	a4,a5,.L10	#, tmp108, tmp109,
# problem158.c:16:     assert(func0(10, 6, 8) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC4	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L10:
# problem158.c:17:     assert(func0(2, 2, 2) == 0);
	lla	a5,.LC6	# tmp111,
	flw	fa3,0(a5)	# tmp110,
	lla	a5,.LC6	# tmp113,
	flw	fa4,0(a5)	# tmp112,
	lla	a5,.LC6	# tmp115,
	flw	fa5,0(a5)	# tmp114,
	fmv.s	fa2,fa3	#, tmp110
	fmv.s	fa1,fa4	#, tmp112
	fmv.s	fa0,fa5	#, tmp114
	call	func0		#
	mv	a5,a0	# tmp116,
	beq	a5,zero,.L11	#, _4,,
# problem158.c:17:     assert(func0(2, 2, 2) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC4	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L11:
# problem158.c:18:     assert(func0(7, 24, 25) == 1);
	lla	a5,.LC14	# tmp118,
	flw	fa3,0(a5)	# tmp117,
	lla	a5,.LC15	# tmp120,
	flw	fa4,0(a5)	# tmp119,
	lla	a5,.LC16	# tmp122,
	flw	fa5,0(a5)	# tmp121,
	fmv.s	fa2,fa3	#, tmp117
	fmv.s	fa1,fa4	#, tmp119
	fmv.s	fa0,fa5	#, tmp121
	call	func0		#
	mv	a5,a0	# tmp123,
	mv	a4,a5	# tmp124, _5
	li	a5,1		# tmp125,
	beq	a4,a5,.L12	#, tmp124, tmp125,
# problem158.c:18:     assert(func0(7, 24, 25) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC4	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L12:
# problem158.c:19:     assert(func0(10, 5, 7) == 0);
	lla	a5,.LC16	# tmp127,
	flw	fa3,0(a5)	# tmp126,
	lla	a5,.LC1	# tmp129,
	flw	fa4,0(a5)	# tmp128,
	lla	a5,.LC11	# tmp131,
	flw	fa5,0(a5)	# tmp130,
	fmv.s	fa2,fa3	#, tmp126
	fmv.s	fa1,fa4	#, tmp128
	fmv.s	fa0,fa5	#, tmp130
	call	func0		#
	mv	a5,a0	# tmp132,
	beq	a5,zero,.L13	#, _6,,
# problem158.c:19:     assert(func0(10, 5, 7) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC4	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L13:
# problem158.c:20:     assert(func0(5, 12, 13) == 1);
	lla	a5,.LC19	# tmp134,
	flw	fa3,0(a5)	# tmp133,
	lla	a5,.LC20	# tmp136,
	flw	fa4,0(a5)	# tmp135,
	lla	a5,.LC1	# tmp138,
	flw	fa5,0(a5)	# tmp137,
	fmv.s	fa2,fa3	#, tmp133
	fmv.s	fa1,fa4	#, tmp135
	fmv.s	fa0,fa5	#, tmp137
	call	func0		#
	mv	a5,a0	# tmp139,
	mv	a4,a5	# tmp140, _7
	li	a5,1		# tmp141,
	beq	a4,a5,.L14	#, tmp140, tmp141,
# problem158.c:20:     assert(func0(5, 12, 13) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC4	#,
	lla	a0,.LC21	#,
	call	__assert_fail@plt	#
.L14:
# problem158.c:21:     assert(func0(15, 8, 17) == 1);
	lla	a5,.LC22	# tmp143,
	flw	fa3,0(a5)	# tmp142,
	lla	a5,.LC9	# tmp145,
	flw	fa4,0(a5)	# tmp144,
	lla	a5,.LC23	# tmp147,
	flw	fa5,0(a5)	# tmp146,
	fmv.s	fa2,fa3	#, tmp142
	fmv.s	fa1,fa4	#, tmp144
	fmv.s	fa0,fa5	#, tmp146
	call	func0		#
	mv	a5,a0	# tmp148,
	mv	a4,a5	# tmp149, _8
	li	a5,1		# tmp150,
	beq	a4,a5,.L15	#, tmp149, tmp150,
# problem158.c:21:     assert(func0(15, 8, 17) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC4	#,
	lla	a0,.LC24	#,
	call	__assert_fail@plt	#
.L15:
# problem158.c:22:     assert(func0(48, 55, 73) == 1);
	lla	a5,.LC25	# tmp152,
	flw	fa3,0(a5)	# tmp151,
	lla	a5,.LC26	# tmp154,
	flw	fa4,0(a5)	# tmp153,
	lla	a5,.LC27	# tmp156,
	flw	fa5,0(a5)	# tmp155,
	fmv.s	fa2,fa3	#, tmp151
	fmv.s	fa1,fa4	#, tmp153
	fmv.s	fa0,fa5	#, tmp155
	call	func0		#
	mv	a5,a0	# tmp157,
	mv	a4,a5	# tmp158, _9
	li	a5,1		# tmp159,
	beq	a4,a5,.L16	#, tmp158, tmp159,
# problem158.c:22:     assert(func0(48, 55, 73) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC4	#,
	lla	a0,.LC28	#,
	call	__assert_fail@plt	#
.L16:
# problem158.c:23:     assert(func0(1, 1, 1) == 0);
	lla	a5,.LC7	# tmp161,
	flw	fa3,0(a5)	# tmp160,
	lla	a5,.LC7	# tmp163,
	flw	fa4,0(a5)	# tmp162,
	lla	a5,.LC7	# tmp165,
	flw	fa5,0(a5)	# tmp164,
	fmv.s	fa2,fa3	#, tmp160
	fmv.s	fa1,fa4	#, tmp162
	fmv.s	fa0,fa5	#, tmp164
	call	func0		#
	mv	a5,a0	# tmp166,
	beq	a5,zero,.L17	#, _10,,
# problem158.c:23:     assert(func0(1, 1, 1) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC4	#,
	lla	a0,.LC29	#,
	call	__assert_fail@plt	#
.L17:
# problem158.c:24:     assert(func0(2, 2, 10) == 0);
	lla	a5,.LC11	# tmp168,
	flw	fa3,0(a5)	# tmp167,
	lla	a5,.LC6	# tmp170,
	flw	fa4,0(a5)	# tmp169,
	lla	a5,.LC6	# tmp172,
	flw	fa5,0(a5)	# tmp171,
	fmv.s	fa2,fa3	#, tmp167
	fmv.s	fa1,fa4	#, tmp169
	fmv.s	fa0,fa5	#, tmp171
	call	func0		#
	mv	a5,a0	# tmp173,
	beq	a5,zero,.L18	#, _11,,
# problem158.c:24:     assert(func0(2, 2, 10) == 0);
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
	ld	s0,0(sp)		#,
	addi	sp,sp,16	#,,
	jr	ra		#
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
