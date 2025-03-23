	.file	"problem72.c"
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
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	fsw	fa0,-36(s0)	# a, a
	fsw	fa1,-40(s0)	# b, b
	fsw	fa2,-44(s0)	# c, c
# problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	flw	fa4,-36(s0)	# tmp87, a
	flw	fa5,-40(s0)	# tmp88, b
	fadd.s	fa5,fa4,fa5	# _1, tmp87, tmp88
# problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	flw	fa4,-44(s0)	# tmp89, c
	fge.s	a5,fa4,fa5	#, tmp90, tmp89, _1
	bne	a5,zero,.L2	#, tmp90,,
# problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	flw	fa4,-36(s0)	# tmp91, a
	flw	fa5,-44(s0)	# tmp92, c
	fadd.s	fa5,fa4,fa5	# _2, tmp91, tmp92
# problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	flw	fa4,-40(s0)	# tmp93, b
	fge.s	a5,fa4,fa5	#, tmp94, tmp93, _2
	bne	a5,zero,.L2	#, tmp94,,
# problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	flw	fa4,-40(s0)	# tmp95, b
	flw	fa5,-44(s0)	# tmp96, c
	fadd.s	fa5,fa4,fa5	# _3, tmp95, tmp96
# problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	flw	fa4,-36(s0)	# tmp97, a
	fge.s	a5,fa4,fa5	#, tmp98, tmp97, _3
	beq	a5,zero,.L6	#, tmp98,,
.L2:
# problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	lla	a5,.LC0	# tmp99,
	flw	fa5,0(a5)	# _14,
	j	.L5		#
.L6:
# problem72.c:6: float s = (a + b + c) / 2;
	flw	fa4,-36(s0)	# tmp100, a
	flw	fa5,-40(s0)	# tmp101, b
	fadd.s	fa4,fa4,fa5	# _4, tmp100, tmp101
# problem72.c:6: float s = (a + b + c) / 2;
	flw	fa5,-44(s0)	# tmp102, c
	fadd.s	fa4,fa4,fa5	# _5, _4, tmp102
# problem72.c:6: float s = (a + b + c) / 2;
	lla	a5,.LC1	# tmp105,
	flw	fa5,0(a5)	# tmp104,
	fdiv.s	fa5,fa4,fa5	# tmp103, _5, tmp104
	fsw	fa5,-24(s0)	# tmp103, s
# problem72.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	flw	fa4,-24(s0)	# tmp106, s
	flw	fa5,-36(s0)	# tmp107, a
	fsub.s	fa4,fa4,fa5	# _6, tmp106, tmp107
# problem72.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	flw	fa5,-24(s0)	# tmp108, s
	fmul.s	fa4,fa4,fa5	# _7, _6, tmp108
# problem72.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	flw	fa3,-24(s0)	# tmp109, s
	flw	fa5,-40(s0)	# tmp110, b
	fsub.s	fa5,fa3,fa5	# _8, tmp109, tmp110
# problem72.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	fmul.s	fa4,fa4,fa5	# _9, _7, _8
# problem72.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	flw	fa3,-24(s0)	# tmp111, s
	flw	fa5,-44(s0)	# tmp112, c
	fsub.s	fa5,fa3,fa5	# _10, tmp111, tmp112
# problem72.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	fmul.s	fa5,fa4,fa5	# _11, _9, _10
	fmv.s	fa0,fa5	#, _11
	call	sqrtf@plt	#
	fsw	fa0,-20(s0)	#, area
# problem72.c:8: return roundf(area * 100) / 100;
	flw	fa4,-20(s0)	# tmp113, area
	lla	a5,.LC2	# tmp115,
	flw	fa5,0(a5)	# tmp114,
	fmul.s	fa5,fa4,fa5	# _12, tmp113, tmp114
	fmv.s	fa0,fa5	#, _12
	call	roundf@plt	#
	fmv.s	fa4,fa0	# _13,
# problem72.c:8: return roundf(area * 100) / 100;
	lla	a5,.LC2	# tmp117,
	flw	fa5,0(a5)	# tmp116,
	fdiv.s	fa5,fa4,fa5	# _14, _13, tmp116
.L5:
# problem72.c:9: }
	fmv.s	fa0,fa5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC8:
	.string	"problem72.c"
	.align	3
.LC9:
	.string	"fabs(func0(3, 4, 5) - 6.00) < 0.01"
	.align	3
.LC12:
	.string	"fabs(func0(1, 2, 10) + 1) < 0.01"
	.align	3
.LC15:
	.string	"fabs(func0(4, 8, 5) - 8.18) < 0.01"
	.align	3
.LC17:
	.string	"fabs(func0(2, 2, 2) - 1.73) < 0.01"
	.align	3
.LC18:
	.string	"fabs(func0(1, 2, 3) + 1) < 0.01"
	.align	3
.LC21:
	.string	"fabs(func0(10, 5, 7) - 16.25) < 0.01"
	.align	3
.LC23:
	.string	"fabs(func0(2, 6, 3) + 1) < 0.01"
	.align	3
.LC25:
	.string	"fabs(func0(1, 1, 1) - 0.43) < 0.01"
	.align	3
.LC26:
	.string	"fabs(func0(2, 2, 10) + 1) < 0.01"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem72.c:18:     assert(fabs(func0(3, 4, 5) - 6.00) < 0.01);
	lla	a5,.LC3	# tmp111,
	flw	fa3,0(a5)	# tmp110,
	lla	a5,.LC4	# tmp113,
	flw	fa4,0(a5)	# tmp112,
	lla	a5,.LC5	# tmp115,
	flw	fa5,0(a5)	# tmp114,
	fmv.s	fa2,fa3	#, tmp110
	fmv.s	fa1,fa4	#, tmp112
	fmv.s	fa0,fa5	#, tmp114
	call	func0		#
	fmv.s	fa5,fa0	# _1,
	fcvt.d.s	fa4,fa5	# _2, _1
	lla	a5,.LC6	# tmp117,
	fld	fa5,0(a5)	# tmp116,
	fsub.d	fa5,fa4,fa5	# _3, _2, tmp116
	fabs.d	fa4,fa5	# _4, _3
	lla	a5,.LC7	# tmp119,
	fld	fa5,0(a5)	# tmp118,
	flt.d	a5,fa4,fa5	#, tmp120, _4, tmp118
	bne	a5,zero,.L8	#, tmp120,,
# problem72.c:18:     assert(fabs(func0(3, 4, 5) - 6.00) < 0.01);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC8	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L8:
# problem72.c:19:     assert(fabs(func0(1, 2, 10) + 1) < 0.01);
	lla	a5,.LC10	# tmp122,
	flw	fa3,0(a5)	# tmp121,
	lla	a5,.LC1	# tmp124,
	flw	fa4,0(a5)	# tmp123,
	lla	a5,.LC11	# tmp126,
	flw	fa5,0(a5)	# tmp125,
	fmv.s	fa2,fa3	#, tmp121
	fmv.s	fa1,fa4	#, tmp123
	fmv.s	fa0,fa5	#, tmp125
	call	func0		#
	fmv.s	fa4,fa0	# _5,
	lla	a5,.LC11	# tmp128,
	flw	fa5,0(a5)	# tmp127,
	fadd.s	fa5,fa4,fa5	# _6, _5, tmp127
	fabs.s	fa5,fa5	# _7, _6
	fcvt.d.s	fa4,fa5	# _8, _7
	lla	a5,.LC7	# tmp130,
	fld	fa5,0(a5)	# tmp129,
	flt.d	a5,fa4,fa5	#, tmp131, _8, tmp129
	bne	a5,zero,.L9	#, tmp131,,
# problem72.c:19:     assert(fabs(func0(1, 2, 10) + 1) < 0.01);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC8	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L9:
# problem72.c:20:     assert(fabs(func0(4, 8, 5) - 8.18) < 0.01);
	lla	a5,.LC3	# tmp133,
	flw	fa3,0(a5)	# tmp132,
	lla	a5,.LC13	# tmp135,
	flw	fa4,0(a5)	# tmp134,
	lla	a5,.LC4	# tmp137,
	flw	fa5,0(a5)	# tmp136,
	fmv.s	fa2,fa3	#, tmp132
	fmv.s	fa1,fa4	#, tmp134
	fmv.s	fa0,fa5	#, tmp136
	call	func0		#
	fmv.s	fa5,fa0	# _9,
	fcvt.d.s	fa4,fa5	# _10, _9
	lla	a5,.LC14	# tmp139,
	fld	fa5,0(a5)	# tmp138,
	fsub.d	fa5,fa4,fa5	# _11, _10, tmp138
	fabs.d	fa4,fa5	# _12, _11
	lla	a5,.LC7	# tmp141,
	fld	fa5,0(a5)	# tmp140,
	flt.d	a5,fa4,fa5	#, tmp142, _12, tmp140
	bne	a5,zero,.L10	#, tmp142,,
# problem72.c:20:     assert(fabs(func0(4, 8, 5) - 8.18) < 0.01);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC8	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L10:
# problem72.c:21:     assert(fabs(func0(2, 2, 2) - 1.73) < 0.01);
	lla	a5,.LC1	# tmp144,
	flw	fa3,0(a5)	# tmp143,
	lla	a5,.LC1	# tmp146,
	flw	fa4,0(a5)	# tmp145,
	lla	a5,.LC1	# tmp148,
	flw	fa5,0(a5)	# tmp147,
	fmv.s	fa2,fa3	#, tmp143
	fmv.s	fa1,fa4	#, tmp145
	fmv.s	fa0,fa5	#, tmp147
	call	func0		#
	fmv.s	fa5,fa0	# _13,
	fcvt.d.s	fa4,fa5	# _14, _13
	lla	a5,.LC16	# tmp150,
	fld	fa5,0(a5)	# tmp149,
	fsub.d	fa5,fa4,fa5	# _15, _14, tmp149
	fabs.d	fa4,fa5	# _16, _15
	lla	a5,.LC7	# tmp152,
	fld	fa5,0(a5)	# tmp151,
	flt.d	a5,fa4,fa5	#, tmp153, _16, tmp151
	bne	a5,zero,.L11	#, tmp153,,
# problem72.c:21:     assert(fabs(func0(2, 2, 2) - 1.73) < 0.01);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC8	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L11:
# problem72.c:22:     assert(fabs(func0(1, 2, 3) + 1) < 0.01);
	lla	a5,.LC5	# tmp155,
	flw	fa3,0(a5)	# tmp154,
	lla	a5,.LC1	# tmp157,
	flw	fa4,0(a5)	# tmp156,
	lla	a5,.LC11	# tmp159,
	flw	fa5,0(a5)	# tmp158,
	fmv.s	fa2,fa3	#, tmp154
	fmv.s	fa1,fa4	#, tmp156
	fmv.s	fa0,fa5	#, tmp158
	call	func0		#
	fmv.s	fa4,fa0	# _17,
	lla	a5,.LC11	# tmp161,
	flw	fa5,0(a5)	# tmp160,
	fadd.s	fa5,fa4,fa5	# _18, _17, tmp160
	fabs.s	fa5,fa5	# _19, _18
	fcvt.d.s	fa4,fa5	# _20, _19
	lla	a5,.LC7	# tmp163,
	fld	fa5,0(a5)	# tmp162,
	flt.d	a5,fa4,fa5	#, tmp164, _20, tmp162
	bne	a5,zero,.L12	#, tmp164,,
# problem72.c:22:     assert(fabs(func0(1, 2, 3) + 1) < 0.01);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC8	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L12:
# problem72.c:23:     assert(fabs(func0(10, 5, 7) - 16.25) < 0.01);
	lla	a5,.LC19	# tmp166,
	flw	fa3,0(a5)	# tmp165,
	lla	a5,.LC3	# tmp168,
	flw	fa4,0(a5)	# tmp167,
	lla	a5,.LC10	# tmp170,
	flw	fa5,0(a5)	# tmp169,
	fmv.s	fa2,fa3	#, tmp165
	fmv.s	fa1,fa4	#, tmp167
	fmv.s	fa0,fa5	#, tmp169
	call	func0		#
	fmv.s	fa5,fa0	# _21,
	fcvt.d.s	fa4,fa5	# _22, _21
	lla	a5,.LC20	# tmp172,
	fld	fa5,0(a5)	# tmp171,
	fsub.d	fa5,fa4,fa5	# _23, _22, tmp171
	fabs.d	fa4,fa5	# _24, _23
	lla	a5,.LC7	# tmp174,
	fld	fa5,0(a5)	# tmp173,
	flt.d	a5,fa4,fa5	#, tmp175, _24, tmp173
	bne	a5,zero,.L13	#, tmp175,,
# problem72.c:23:     assert(fabs(func0(10, 5, 7) - 16.25) < 0.01);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC8	#,
	lla	a0,.LC21	#,
	call	__assert_fail@plt	#
.L13:
# problem72.c:24:     assert(fabs(func0(2, 6, 3) + 1) < 0.01);
	lla	a5,.LC5	# tmp177,
	flw	fa3,0(a5)	# tmp176,
	lla	a5,.LC22	# tmp179,
	flw	fa4,0(a5)	# tmp178,
	lla	a5,.LC1	# tmp181,
	flw	fa5,0(a5)	# tmp180,
	fmv.s	fa2,fa3	#, tmp176
	fmv.s	fa1,fa4	#, tmp178
	fmv.s	fa0,fa5	#, tmp180
	call	func0		#
	fmv.s	fa4,fa0	# _25,
	lla	a5,.LC11	# tmp183,
	flw	fa5,0(a5)	# tmp182,
	fadd.s	fa5,fa4,fa5	# _26, _25, tmp182
	fabs.s	fa5,fa5	# _27, _26
	fcvt.d.s	fa4,fa5	# _28, _27
	lla	a5,.LC7	# tmp185,
	fld	fa5,0(a5)	# tmp184,
	flt.d	a5,fa4,fa5	#, tmp186, _28, tmp184
	bne	a5,zero,.L14	#, tmp186,,
# problem72.c:24:     assert(fabs(func0(2, 6, 3) + 1) < 0.01);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC8	#,
	lla	a0,.LC23	#,
	call	__assert_fail@plt	#
.L14:
# problem72.c:25:     assert(fabs(func0(1, 1, 1) - 0.43) < 0.01);
	lla	a5,.LC11	# tmp188,
	flw	fa3,0(a5)	# tmp187,
	lla	a5,.LC11	# tmp190,
	flw	fa4,0(a5)	# tmp189,
	lla	a5,.LC11	# tmp192,
	flw	fa5,0(a5)	# tmp191,
	fmv.s	fa2,fa3	#, tmp187
	fmv.s	fa1,fa4	#, tmp189
	fmv.s	fa0,fa5	#, tmp191
	call	func0		#
	fmv.s	fa5,fa0	# _29,
	fcvt.d.s	fa4,fa5	# _30, _29
	lla	a5,.LC24	# tmp194,
	fld	fa5,0(a5)	# tmp193,
	fsub.d	fa5,fa4,fa5	# _31, _30, tmp193
	fabs.d	fa4,fa5	# _32, _31
	lla	a5,.LC7	# tmp196,
	fld	fa5,0(a5)	# tmp195,
	flt.d	a5,fa4,fa5	#, tmp197, _32, tmp195
	bne	a5,zero,.L15	#, tmp197,,
# problem72.c:25:     assert(fabs(func0(1, 1, 1) - 0.43) < 0.01);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC8	#,
	lla	a0,.LC25	#,
	call	__assert_fail@plt	#
.L15:
# problem72.c:26:     assert(fabs(func0(2, 2, 10) + 1) < 0.01);
	lla	a5,.LC10	# tmp199,
	flw	fa3,0(a5)	# tmp198,
	lla	a5,.LC1	# tmp201,
	flw	fa4,0(a5)	# tmp200,
	lla	a5,.LC1	# tmp203,
	flw	fa5,0(a5)	# tmp202,
	fmv.s	fa2,fa3	#, tmp198
	fmv.s	fa1,fa4	#, tmp200
	fmv.s	fa0,fa5	#, tmp202
	call	func0		#
	fmv.s	fa4,fa0	# _33,
	lla	a5,.LC11	# tmp205,
	flw	fa5,0(a5)	# tmp204,
	fadd.s	fa5,fa4,fa5	# _34, _33, tmp204
	fabs.s	fa5,fa5	# _35, _34
	fcvt.d.s	fa4,fa5	# _36, _35
	lla	a5,.LC7	# tmp207,
	fld	fa5,0(a5)	# tmp206,
	flt.d	a5,fa4,fa5	#, tmp208, _36, tmp206
	bne	a5,zero,.L16	#, tmp208,,
# problem72.c:26:     assert(fabs(func0(2, 2, 10) + 1) < 0.01);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC8	#,
	lla	a0,.LC26	#,
	call	__assert_fail@plt	#
.L16:
# problem72.c:28:     return 0;
	li	a5,0		# _56,
# problem72.c:29: }
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
	.align	2
.LC0:
	.word	-1082130432
	.align	2
.LC1:
	.word	1073741824
	.align	2
.LC2:
	.word	1120403456
	.align	2
.LC3:
	.word	1084227584
	.align	2
.LC4:
	.word	1082130432
	.align	2
.LC5:
	.word	1077936128
	.align	3
.LC6:
	.word	0
	.word	1075314688
	.align	3
.LC7:
	.word	1202590843
	.word	1065646817
	.align	2
.LC10:
	.word	1092616192
	.align	2
.LC11:
	.word	1065353216
	.align	2
.LC13:
	.word	1090519040
	.align	3
.LC14:
	.word	-171798692
	.word	1075862568
	.align	3
.LC16:
	.word	2061584302
	.word	1073458708
	.align	2
.LC19:
	.word	1088421888
	.align	3
.LC20:
	.word	0
	.word	1076903936
	.align	2
.LC22:
	.word	1086324736
	.align	3
.LC24:
	.word	-1202590843
	.word	1071351070
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
