	.file	"problem72.c"
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
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	fsw	fa0,-36(s0)	# a, a
	fsw	fa1,-40(s0)	# b, b
	fsw	fa2,-44(s0)	# c, c
# problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	flw	fa4,-36(s0)	# tmp149, a
	flw	fa5,-40(s0)	# tmp150, b
	fadd.s	fa5,fa4,fa5	# _1, tmp149, tmp150
# problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	flw	fa4,-44(s0)	# tmp151, c
	fge.s	a5,fa4,fa5	#, tmp152, tmp151, _1
	bne	a5,zero,.L2	#, tmp152,,
# problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	flw	fa4,-36(s0)	# tmp153, a
	flw	fa5,-44(s0)	# tmp154, c
	fadd.s	fa5,fa4,fa5	# _2, tmp153, tmp154
# problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	flw	fa4,-40(s0)	# tmp155, b
	fge.s	a5,fa4,fa5	#, tmp156, tmp155, _2
	bne	a5,zero,.L2	#, tmp156,,
# problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	flw	fa4,-40(s0)	# tmp157, b
	flw	fa5,-44(s0)	# tmp158, c
	fadd.s	fa5,fa4,fa5	# _3, tmp157, tmp158
# problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	flw	fa4,-36(s0)	# tmp159, a
	fge.s	a5,fa4,fa5	#, tmp160, tmp159, _3
	beq	a5,zero,.L6	#, tmp160,,
.L2:
# problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	lla	a5,.LC0	# tmp161,
	flw	fa5,0(a5)	# _14,
# problem72.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	j	.L5		#
.L6:
# problem72.c:6: float s = (a + b + c) / 2;
	flw	fa4,-36(s0)	# tmp162, a
	flw	fa5,-40(s0)	# tmp163, b
	fadd.s	fa4,fa4,fa5	# _4, tmp162, tmp163
# problem72.c:6: float s = (a + b + c) / 2;
	flw	fa5,-44(s0)	# tmp164, c
	fadd.s	fa4,fa4,fa5	# _5, _4, tmp164
# problem72.c:6: float s = (a + b + c) / 2;
	lla	a5,.LC1	# tmp167,
	flw	fa5,0(a5)	# tmp166,
	fdiv.s	fa5,fa4,fa5	# tmp165, _5, tmp166
	fsw	fa5,-24(s0)	# tmp165, s
# problem72.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	flw	fa4,-24(s0)	# tmp168, s
	flw	fa5,-36(s0)	# tmp169, a
	fsub.s	fa4,fa4,fa5	# _6, tmp168, tmp169
# problem72.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	flw	fa5,-24(s0)	# tmp170, s
	fmul.s	fa4,fa4,fa5	# _7, _6, tmp170
# problem72.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	flw	fa3,-24(s0)	# tmp171, s
	flw	fa5,-40(s0)	# tmp172, b
	fsub.s	fa5,fa3,fa5	# _8, tmp171, tmp172
# problem72.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	fmul.s	fa4,fa4,fa5	# _9, _7, _8
# problem72.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	flw	fa3,-24(s0)	# tmp173, s
	flw	fa5,-44(s0)	# tmp174, c
	fsub.s	fa5,fa3,fa5	# _10, tmp173, tmp174
# problem72.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	fmul.s	fa5,fa4,fa5	# _11, _9, _10
	fmv.s	fa0,fa5	#, _11
	call	sqrtf@plt	#
	fsw	fa0,-20(s0)	#, area
# problem72.c:8: return roundf(area * 100) / 100;
	flw	fa4,-20(s0)	# tmp175, area
	lla	a5,.LC2	# tmp177,
	flw	fa5,0(a5)	# tmp176,
	fmul.s	fa5,fa4,fa5	# _12, tmp175, tmp176
	fmv.s	fa0,fa5	#, _12
	call	roundf@plt	#
	fmv.s	fa4,fa0	# _13,
# problem72.c:8: return roundf(area * 100) / 100;
	lla	a5,.LC2	# tmp179,
	flw	fa5,0(a5)	# tmp178,
	fdiv.s	fa5,fa4,fa5	# _14, _13, tmp178
.L5:
# problem72.c:9: }
	fmv.s	fa0,fa5	#, <retval>
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
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
# problem72.c:18:     assert(fabs(func0(3, 4, 5) - 6.00) < 0.01);
	lla	a5,.LC3	# tmp173,
	flw	fa3,0(a5)	# tmp172,
	lla	a5,.LC4	# tmp175,
	flw	fa4,0(a5)	# tmp174,
	lla	a5,.LC5	# tmp177,
	flw	fa5,0(a5)	# tmp176,
	fmv.s	fa2,fa3	#, tmp172
	fmv.s	fa1,fa4	#, tmp174
	fmv.s	fa0,fa5	#, tmp176
	call	func0		#
	fmv.s	fa5,fa0	# _1,
# problem72.c:18:     assert(fabs(func0(3, 4, 5) - 6.00) < 0.01);
	fcvt.d.s	fa4,fa5	# _2, _1
	lla	a5,.LC6	# tmp179,
	fld	fa5,0(a5)	# tmp178,
	fsub.d	fa5,fa4,fa5	# _3, _2, tmp178
	fabs.d	fa4,fa5	# _4, _3
	lla	a5,.LC7	# tmp181,
	fld	fa5,0(a5)	# tmp180,
	flt.d	a5,fa4,fa5	#, tmp182, _4, tmp180
	bne	a5,zero,.L8	#, tmp182,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC8	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L8:
# problem72.c:19:     assert(fabs(func0(1, 2, 10) + 1) < 0.01);
	lla	a5,.LC10	# tmp184,
	flw	fa3,0(a5)	# tmp183,
	lla	a5,.LC1	# tmp186,
	flw	fa4,0(a5)	# tmp185,
	lla	a5,.LC11	# tmp188,
	flw	fa5,0(a5)	# tmp187,
	fmv.s	fa2,fa3	#, tmp183
	fmv.s	fa1,fa4	#, tmp185
	fmv.s	fa0,fa5	#, tmp187
	call	func0		#
	fmv.s	fa4,fa0	# _5,
# problem72.c:19:     assert(fabs(func0(1, 2, 10) + 1) < 0.01);
	lla	a5,.LC11	# tmp190,
	flw	fa5,0(a5)	# tmp189,
	fadd.s	fa5,fa4,fa5	# _6, _5, tmp189
	fabs.s	fa5,fa5	# _7, _6
	fcvt.d.s	fa4,fa5	# _8, _7
	lla	a5,.LC7	# tmp192,
	fld	fa5,0(a5)	# tmp191,
	flt.d	a5,fa4,fa5	#, tmp193, _8, tmp191
	bne	a5,zero,.L9	#, tmp193,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC8	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L9:
# problem72.c:20:     assert(fabs(func0(4, 8, 5) - 8.18) < 0.01);
	lla	a5,.LC3	# tmp195,
	flw	fa3,0(a5)	# tmp194,
	lla	a5,.LC13	# tmp197,
	flw	fa4,0(a5)	# tmp196,
	lla	a5,.LC4	# tmp199,
	flw	fa5,0(a5)	# tmp198,
	fmv.s	fa2,fa3	#, tmp194
	fmv.s	fa1,fa4	#, tmp196
	fmv.s	fa0,fa5	#, tmp198
	call	func0		#
	fmv.s	fa5,fa0	# _9,
# problem72.c:20:     assert(fabs(func0(4, 8, 5) - 8.18) < 0.01);
	fcvt.d.s	fa4,fa5	# _10, _9
	lla	a5,.LC14	# tmp201,
	fld	fa5,0(a5)	# tmp200,
	fsub.d	fa5,fa4,fa5	# _11, _10, tmp200
	fabs.d	fa4,fa5	# _12, _11
	lla	a5,.LC7	# tmp203,
	fld	fa5,0(a5)	# tmp202,
	flt.d	a5,fa4,fa5	#, tmp204, _12, tmp202
	bne	a5,zero,.L10	#, tmp204,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC8	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L10:
# problem72.c:21:     assert(fabs(func0(2, 2, 2) - 1.73) < 0.01);
	lla	a5,.LC1	# tmp206,
	flw	fa3,0(a5)	# tmp205,
	lla	a5,.LC1	# tmp208,
	flw	fa4,0(a5)	# tmp207,
	lla	a5,.LC1	# tmp210,
	flw	fa5,0(a5)	# tmp209,
	fmv.s	fa2,fa3	#, tmp205
	fmv.s	fa1,fa4	#, tmp207
	fmv.s	fa0,fa5	#, tmp209
	call	func0		#
	fmv.s	fa5,fa0	# _13,
# problem72.c:21:     assert(fabs(func0(2, 2, 2) - 1.73) < 0.01);
	fcvt.d.s	fa4,fa5	# _14, _13
	lla	a5,.LC16	# tmp212,
	fld	fa5,0(a5)	# tmp211,
	fsub.d	fa5,fa4,fa5	# _15, _14, tmp211
	fabs.d	fa4,fa5	# _16, _15
	lla	a5,.LC7	# tmp214,
	fld	fa5,0(a5)	# tmp213,
	flt.d	a5,fa4,fa5	#, tmp215, _16, tmp213
	bne	a5,zero,.L11	#, tmp215,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC8	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L11:
# problem72.c:22:     assert(fabs(func0(1, 2, 3) + 1) < 0.01);
	lla	a5,.LC5	# tmp217,
	flw	fa3,0(a5)	# tmp216,
	lla	a5,.LC1	# tmp219,
	flw	fa4,0(a5)	# tmp218,
	lla	a5,.LC11	# tmp221,
	flw	fa5,0(a5)	# tmp220,
	fmv.s	fa2,fa3	#, tmp216
	fmv.s	fa1,fa4	#, tmp218
	fmv.s	fa0,fa5	#, tmp220
	call	func0		#
	fmv.s	fa4,fa0	# _17,
# problem72.c:22:     assert(fabs(func0(1, 2, 3) + 1) < 0.01);
	lla	a5,.LC11	# tmp223,
	flw	fa5,0(a5)	# tmp222,
	fadd.s	fa5,fa4,fa5	# _18, _17, tmp222
	fabs.s	fa5,fa5	# _19, _18
	fcvt.d.s	fa4,fa5	# _20, _19
	lla	a5,.LC7	# tmp225,
	fld	fa5,0(a5)	# tmp224,
	flt.d	a5,fa4,fa5	#, tmp226, _20, tmp224
	bne	a5,zero,.L12	#, tmp226,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC8	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L12:
# problem72.c:23:     assert(fabs(func0(10, 5, 7) - 16.25) < 0.01);
	lla	a5,.LC19	# tmp228,
	flw	fa3,0(a5)	# tmp227,
	lla	a5,.LC3	# tmp230,
	flw	fa4,0(a5)	# tmp229,
	lla	a5,.LC10	# tmp232,
	flw	fa5,0(a5)	# tmp231,
	fmv.s	fa2,fa3	#, tmp227
	fmv.s	fa1,fa4	#, tmp229
	fmv.s	fa0,fa5	#, tmp231
	call	func0		#
	fmv.s	fa5,fa0	# _21,
# problem72.c:23:     assert(fabs(func0(10, 5, 7) - 16.25) < 0.01);
	fcvt.d.s	fa4,fa5	# _22, _21
	lla	a5,.LC20	# tmp234,
	fld	fa5,0(a5)	# tmp233,
	fsub.d	fa5,fa4,fa5	# _23, _22, tmp233
	fabs.d	fa4,fa5	# _24, _23
	lla	a5,.LC7	# tmp236,
	fld	fa5,0(a5)	# tmp235,
	flt.d	a5,fa4,fa5	#, tmp237, _24, tmp235
	bne	a5,zero,.L13	#, tmp237,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC8	#,
	lla	a0,.LC21	#,
	call	__assert_fail@plt	#
.L13:
# problem72.c:24:     assert(fabs(func0(2, 6, 3) + 1) < 0.01);
	lla	a5,.LC5	# tmp239,
	flw	fa3,0(a5)	# tmp238,
	lla	a5,.LC22	# tmp241,
	flw	fa4,0(a5)	# tmp240,
	lla	a5,.LC1	# tmp243,
	flw	fa5,0(a5)	# tmp242,
	fmv.s	fa2,fa3	#, tmp238
	fmv.s	fa1,fa4	#, tmp240
	fmv.s	fa0,fa5	#, tmp242
	call	func0		#
	fmv.s	fa4,fa0	# _25,
# problem72.c:24:     assert(fabs(func0(2, 6, 3) + 1) < 0.01);
	lla	a5,.LC11	# tmp245,
	flw	fa5,0(a5)	# tmp244,
	fadd.s	fa5,fa4,fa5	# _26, _25, tmp244
	fabs.s	fa5,fa5	# _27, _26
	fcvt.d.s	fa4,fa5	# _28, _27
	lla	a5,.LC7	# tmp247,
	fld	fa5,0(a5)	# tmp246,
	flt.d	a5,fa4,fa5	#, tmp248, _28, tmp246
	bne	a5,zero,.L14	#, tmp248,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC8	#,
	lla	a0,.LC23	#,
	call	__assert_fail@plt	#
.L14:
# problem72.c:25:     assert(fabs(func0(1, 1, 1) - 0.43) < 0.01);
	lla	a5,.LC11	# tmp250,
	flw	fa3,0(a5)	# tmp249,
	lla	a5,.LC11	# tmp252,
	flw	fa4,0(a5)	# tmp251,
	lla	a5,.LC11	# tmp254,
	flw	fa5,0(a5)	# tmp253,
	fmv.s	fa2,fa3	#, tmp249
	fmv.s	fa1,fa4	#, tmp251
	fmv.s	fa0,fa5	#, tmp253
	call	func0		#
	fmv.s	fa5,fa0	# _29,
# problem72.c:25:     assert(fabs(func0(1, 1, 1) - 0.43) < 0.01);
	fcvt.d.s	fa4,fa5	# _30, _29
	lla	a5,.LC24	# tmp256,
	fld	fa5,0(a5)	# tmp255,
	fsub.d	fa5,fa4,fa5	# _31, _30, tmp255
	fabs.d	fa4,fa5	# _32, _31
	lla	a5,.LC7	# tmp258,
	fld	fa5,0(a5)	# tmp257,
	flt.d	a5,fa4,fa5	#, tmp259, _32, tmp257
	bne	a5,zero,.L15	#, tmp259,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC8	#,
	lla	a0,.LC25	#,
	call	__assert_fail@plt	#
.L15:
# problem72.c:26:     assert(fabs(func0(2, 2, 10) + 1) < 0.01);
	lla	a5,.LC10	# tmp261,
	flw	fa3,0(a5)	# tmp260,
	lla	a5,.LC1	# tmp263,
	flw	fa4,0(a5)	# tmp262,
	lla	a5,.LC1	# tmp265,
	flw	fa5,0(a5)	# tmp264,
	fmv.s	fa2,fa3	#, tmp260
	fmv.s	fa1,fa4	#, tmp262
	fmv.s	fa0,fa5	#, tmp264
	call	func0		#
	fmv.s	fa4,fa0	# _33,
# problem72.c:26:     assert(fabs(func0(2, 2, 10) + 1) < 0.01);
	lla	a5,.LC11	# tmp267,
	flw	fa5,0(a5)	# tmp266,
	fadd.s	fa5,fa4,fa5	# _34, _33, tmp266
	fabs.s	fa5,fa5	# _35, _34
	fcvt.d.s	fa4,fa5	# _36, _35
	lla	a5,.LC7	# tmp269,
	fld	fa5,0(a5)	# tmp268,
	flt.d	a5,fa4,fa5	#, tmp270, _36, tmp268
	bne	a5,zero,.L16	#, tmp270,,
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
