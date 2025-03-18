	.file	"problem93.c"
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
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	fsw	fa0,-20(s0)	# a, a
	fsw	fa1,-24(s0)	# b, b
	fsw	fa2,-28(s0)	# c, c
# problem93.c:5:     if (roundf(a) != a) return 0;
	flw	fa0,-20(s0)	#, a
	call	roundf@plt	#
	fmv.s	fa4,fa0	# _1,
# problem93.c:5:     if (roundf(a) != a) return 0;
	flw	fa5,-20(s0)	# tmp142, a
	feq.s	a5,fa5,fa4	#, tmp143, tmp142, _1
	bne	a5,zero,.L2	#, tmp143,,
# problem93.c:5:     if (roundf(a) != a) return 0;
	li	a5,0		# _7,
# problem93.c:5:     if (roundf(a) != a) return 0;
	j	.L3		#
.L2:
# problem93.c:6:     if (roundf(b) != b) return 0;
	flw	fa0,-24(s0)	#, b
	call	roundf@plt	#
	fmv.s	fa4,fa0	# _2,
# problem93.c:6:     if (roundf(b) != b) return 0;
	flw	fa5,-24(s0)	# tmp144, b
	feq.s	a5,fa5,fa4	#, tmp145, tmp144, _2
	bne	a5,zero,.L4	#, tmp145,,
# problem93.c:6:     if (roundf(b) != b) return 0;
	li	a5,0		# _7,
# problem93.c:6:     if (roundf(b) != b) return 0;
	j	.L3		#
.L4:
# problem93.c:7:     if (roundf(c) != c) return 0;
	flw	fa0,-28(s0)	#, c
	call	roundf@plt	#
	fmv.s	fa4,fa0	# _3,
# problem93.c:7:     if (roundf(c) != c) return 0;
	flw	fa5,-28(s0)	# tmp146, c
	feq.s	a5,fa5,fa4	#, tmp147, tmp146, _3
	bne	a5,zero,.L5	#, tmp147,,
# problem93.c:7:     if (roundf(c) != c) return 0;
	li	a5,0		# _7,
# problem93.c:7:     if (roundf(c) != c) return 0;
	j	.L3		#
.L5:
# problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	flw	fa4,-20(s0)	# tmp148, a
	flw	fa5,-24(s0)	# tmp149, b
	fadd.s	fa5,fa4,fa5	# _4, tmp148, tmp149
# problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	flw	fa4,-28(s0)	# tmp150, c
	feq.s	a5,fa4,fa5	#, tmp151, tmp150, _4
	bne	a5,zero,.L6	#, tmp151,,
# problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	flw	fa4,-20(s0)	# tmp152, a
	flw	fa5,-28(s0)	# tmp153, c
	fadd.s	fa5,fa4,fa5	# _5, tmp152, tmp153
# problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	flw	fa4,-24(s0)	# tmp154, b
	feq.s	a5,fa4,fa5	#, tmp155, tmp154, _5
	bne	a5,zero,.L6	#, tmp155,,
# problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	flw	fa4,-24(s0)	# tmp156, b
	flw	fa5,-28(s0)	# tmp157, c
	fadd.s	fa5,fa4,fa5	# _6, tmp156, tmp157
# problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	flw	fa4,-20(s0)	# tmp158, a
	feq.s	a5,fa4,fa5	#, tmp159, tmp158, _6
	beq	a5,zero,.L7	#, tmp159,,
.L6:
# problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	li	a5,1		# _7,
# problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	j	.L3		#
.L7:
# problem93.c:9:     return 0;
	li	a5,0		# _7,
.L3:
# problem93.c:10: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	.cfi_restore 1
	ld	s0,16(sp)		#,
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
.LC3:
	.string	"problem93.c"
	.align	3
.LC4:
	.string	"func0(2, 3, 1) == 1"
	.align	3
.LC6:
	.string	"func0(2.5, 2, 3) == 0"
	.align	3
.LC10:
	.string	"func0(1.5, 5, 3.5) == 0"
	.align	3
.LC12:
	.string	"func0(2, 6, 2) == 0"
	.align	3
.LC14:
	.string	"func0(4, 2, 2) == 1"
	.align	3
.LC16:
	.string	"func0(2.2, 2.2, 2.2) == 0"
	.align	3
.LC18:
	.string	"func0(-4, 6, 2) == 1"
	.align	3
.LC19:
	.string	"func0(2, 1, 1) == 1"
	.align	3
.LC21:
	.string	"func0(3, 4, 7) == 1"
	.align	3
.LC23:
	.string	"func0(3.01, 4, 7) == 0"
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
# problem93.c:17:     assert(func0(2, 3, 1) == 1);
	lla	a5,.LC0	# tmp147,
	flw	fa3,0(a5)	# tmp146,
	lla	a5,.LC1	# tmp149,
	flw	fa4,0(a5)	# tmp148,
	lla	a5,.LC2	# tmp151,
	flw	fa5,0(a5)	# tmp150,
	fmv.s	fa2,fa3	#, tmp146
	fmv.s	fa1,fa4	#, tmp148
	fmv.s	fa0,fa5	#, tmp150
	call	func0		#
	mv	a5,a0	# tmp152,
# problem93.c:17:     assert(func0(2, 3, 1) == 1);
	mv	a4,a5	# tmp153, _1
	li	a5,1		# tmp154,
	beq	a4,a5,.L9	#, tmp153, tmp154,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC3	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L9:
# problem93.c:18:     assert(func0(2.5, 2, 3) == 0);
	lla	a5,.LC1	# tmp156,
	flw	fa3,0(a5)	# tmp155,
	lla	a5,.LC2	# tmp158,
	flw	fa4,0(a5)	# tmp157,
	lla	a5,.LC5	# tmp160,
	flw	fa5,0(a5)	# tmp159,
	fmv.s	fa2,fa3	#, tmp155
	fmv.s	fa1,fa4	#, tmp157
	fmv.s	fa0,fa5	#, tmp159
	call	func0		#
	mv	a5,a0	# tmp161,
# problem93.c:18:     assert(func0(2.5, 2, 3) == 0);
	beq	a5,zero,.L10	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC3	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L10:
# problem93.c:19:     assert(func0(1.5, 5, 3.5) == 0);
	lla	a5,.LC7	# tmp163,
	flw	fa3,0(a5)	# tmp162,
	lla	a5,.LC8	# tmp165,
	flw	fa4,0(a5)	# tmp164,
	lla	a5,.LC9	# tmp167,
	flw	fa5,0(a5)	# tmp166,
	fmv.s	fa2,fa3	#, tmp162
	fmv.s	fa1,fa4	#, tmp164
	fmv.s	fa0,fa5	#, tmp166
	call	func0		#
	mv	a5,a0	# tmp168,
# problem93.c:19:     assert(func0(1.5, 5, 3.5) == 0);
	beq	a5,zero,.L11	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC3	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L11:
# problem93.c:20:     assert(func0(2, 6, 2) == 0);
	lla	a5,.LC2	# tmp170,
	flw	fa3,0(a5)	# tmp169,
	lla	a5,.LC11	# tmp172,
	flw	fa4,0(a5)	# tmp171,
	lla	a5,.LC2	# tmp174,
	flw	fa5,0(a5)	# tmp173,
	fmv.s	fa2,fa3	#, tmp169
	fmv.s	fa1,fa4	#, tmp171
	fmv.s	fa0,fa5	#, tmp173
	call	func0		#
	mv	a5,a0	# tmp175,
# problem93.c:20:     assert(func0(2, 6, 2) == 0);
	beq	a5,zero,.L12	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC3	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L12:
# problem93.c:21:     assert(func0(4, 2, 2) == 1);
	lla	a5,.LC2	# tmp177,
	flw	fa3,0(a5)	# tmp176,
	lla	a5,.LC2	# tmp179,
	flw	fa4,0(a5)	# tmp178,
	lla	a5,.LC13	# tmp181,
	flw	fa5,0(a5)	# tmp180,
	fmv.s	fa2,fa3	#, tmp176
	fmv.s	fa1,fa4	#, tmp178
	fmv.s	fa0,fa5	#, tmp180
	call	func0		#
	mv	a5,a0	# tmp182,
# problem93.c:21:     assert(func0(4, 2, 2) == 1);
	mv	a4,a5	# tmp183, _5
	li	a5,1		# tmp184,
	beq	a4,a5,.L13	#, tmp183, tmp184,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC3	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L13:
# problem93.c:22:     assert(func0(2.2, 2.2, 2.2) == 0);
	lla	a5,.LC15	# tmp186,
	flw	fa3,0(a5)	# tmp185,
	lla	a5,.LC15	# tmp188,
	flw	fa4,0(a5)	# tmp187,
	lla	a5,.LC15	# tmp190,
	flw	fa5,0(a5)	# tmp189,
	fmv.s	fa2,fa3	#, tmp185
	fmv.s	fa1,fa4	#, tmp187
	fmv.s	fa0,fa5	#, tmp189
	call	func0		#
	mv	a5,a0	# tmp191,
# problem93.c:22:     assert(func0(2.2, 2.2, 2.2) == 0);
	beq	a5,zero,.L14	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC3	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L14:
# problem93.c:23:     assert(func0(-4, 6, 2) == 1);
	lla	a5,.LC2	# tmp193,
	flw	fa3,0(a5)	# tmp192,
	lla	a5,.LC11	# tmp195,
	flw	fa4,0(a5)	# tmp194,
	lla	a5,.LC17	# tmp197,
	flw	fa5,0(a5)	# tmp196,
	fmv.s	fa2,fa3	#, tmp192
	fmv.s	fa1,fa4	#, tmp194
	fmv.s	fa0,fa5	#, tmp196
	call	func0		#
	mv	a5,a0	# tmp198,
# problem93.c:23:     assert(func0(-4, 6, 2) == 1);
	mv	a4,a5	# tmp199, _7
	li	a5,1		# tmp200,
	beq	a4,a5,.L15	#, tmp199, tmp200,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC3	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L15:
# problem93.c:24:     assert(func0(2, 1, 1) == 1);
	lla	a5,.LC0	# tmp202,
	flw	fa3,0(a5)	# tmp201,
	lla	a5,.LC0	# tmp204,
	flw	fa4,0(a5)	# tmp203,
	lla	a5,.LC2	# tmp206,
	flw	fa5,0(a5)	# tmp205,
	fmv.s	fa2,fa3	#, tmp201
	fmv.s	fa1,fa4	#, tmp203
	fmv.s	fa0,fa5	#, tmp205
	call	func0		#
	mv	a5,a0	# tmp207,
# problem93.c:24:     assert(func0(2, 1, 1) == 1);
	mv	a4,a5	# tmp208, _8
	li	a5,1		# tmp209,
	beq	a4,a5,.L16	#, tmp208, tmp209,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC3	#,
	lla	a0,.LC19	#,
	call	__assert_fail@plt	#
.L16:
# problem93.c:25:     assert(func0(3, 4, 7) == 1);
	lla	a5,.LC20	# tmp211,
	flw	fa3,0(a5)	# tmp210,
	lla	a5,.LC13	# tmp213,
	flw	fa4,0(a5)	# tmp212,
	lla	a5,.LC1	# tmp215,
	flw	fa5,0(a5)	# tmp214,
	fmv.s	fa2,fa3	#, tmp210
	fmv.s	fa1,fa4	#, tmp212
	fmv.s	fa0,fa5	#, tmp214
	call	func0		#
	mv	a5,a0	# tmp216,
# problem93.c:25:     assert(func0(3, 4, 7) == 1);
	mv	a4,a5	# tmp217, _9
	li	a5,1		# tmp218,
	beq	a4,a5,.L17	#, tmp217, tmp218,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC3	#,
	lla	a0,.LC21	#,
	call	__assert_fail@plt	#
.L17:
# problem93.c:26:     assert(func0(3.01, 4, 7) == 0);
	lla	a5,.LC20	# tmp220,
	flw	fa3,0(a5)	# tmp219,
	lla	a5,.LC13	# tmp222,
	flw	fa4,0(a5)	# tmp221,
	lla	a5,.LC22	# tmp224,
	flw	fa5,0(a5)	# tmp223,
	fmv.s	fa2,fa3	#, tmp219
	fmv.s	fa1,fa4	#, tmp221
	fmv.s	fa0,fa5	#, tmp223
	call	func0		#
	mv	a5,a0	# tmp225,
# problem93.c:26:     assert(func0(3.01, 4, 7) == 0);
	beq	a5,zero,.L18	#, _10,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC3	#,
	lla	a0,.LC23	#,
	call	__assert_fail@plt	#
.L18:
# problem93.c:28:     return 0;
	li	a5,0		# _32,
# problem93.c:29: }
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
	.word	1065353216
	.align	2
.LC1:
	.word	1077936128
	.align	2
.LC2:
	.word	1073741824
	.align	2
.LC5:
	.word	1075838976
	.align	2
.LC7:
	.word	1080033280
	.align	2
.LC8:
	.word	1084227584
	.align	2
.LC9:
	.word	1069547520
	.align	2
.LC11:
	.word	1086324736
	.align	2
.LC13:
	.word	1082130432
	.align	2
.LC15:
	.word	1074580685
	.align	2
.LC17:
	.word	-1065353216
	.align	2
.LC20:
	.word	1088421888
	.align	2
.LC22:
	.word	1077978071
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
