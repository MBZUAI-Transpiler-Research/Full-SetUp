	.file	"problem93.c"
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
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
	fsw	fa0,-20(s0)	# a, a
	fsw	fa1,-24(s0)	# b, b
	fsw	fa2,-28(s0)	# c, c
# problem93.c:5:     if (roundf(a) != a) return 0;
	flw	fa0,-20(s0)	#, a
	call	roundf@plt	#
	fmv.s	fa4,fa0	# _1,
# problem93.c:5:     if (roundf(a) != a) return 0;
	flw	fa5,-20(s0)	# tmp80, a
	feq.s	a5,fa5,fa4	#, tmp81, tmp80, _1
	bne	a5,zero,.L2	#, tmp81,,
# problem93.c:5:     if (roundf(a) != a) return 0;
	li	a5,0		# _7,
	j	.L3		#
.L2:
# problem93.c:6:     if (roundf(b) != b) return 0;
	flw	fa0,-24(s0)	#, b
	call	roundf@plt	#
	fmv.s	fa4,fa0	# _2,
# problem93.c:6:     if (roundf(b) != b) return 0;
	flw	fa5,-24(s0)	# tmp82, b
	feq.s	a5,fa5,fa4	#, tmp83, tmp82, _2
	bne	a5,zero,.L4	#, tmp83,,
# problem93.c:6:     if (roundf(b) != b) return 0;
	li	a5,0		# _7,
	j	.L3		#
.L4:
# problem93.c:7:     if (roundf(c) != c) return 0;
	flw	fa0,-28(s0)	#, c
	call	roundf@plt	#
	fmv.s	fa4,fa0	# _3,
# problem93.c:7:     if (roundf(c) != c) return 0;
	flw	fa5,-28(s0)	# tmp84, c
	feq.s	a5,fa5,fa4	#, tmp85, tmp84, _3
	bne	a5,zero,.L5	#, tmp85,,
# problem93.c:7:     if (roundf(c) != c) return 0;
	li	a5,0		# _7,
	j	.L3		#
.L5:
# problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	flw	fa4,-20(s0)	# tmp86, a
	flw	fa5,-24(s0)	# tmp87, b
	fadd.s	fa5,fa4,fa5	# _4, tmp86, tmp87
# problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	flw	fa4,-28(s0)	# tmp88, c
	feq.s	a5,fa4,fa5	#, tmp89, tmp88, _4
	bne	a5,zero,.L6	#, tmp89,,
# problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	flw	fa4,-20(s0)	# tmp90, a
	flw	fa5,-28(s0)	# tmp91, c
	fadd.s	fa5,fa4,fa5	# _5, tmp90, tmp91
# problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	flw	fa4,-24(s0)	# tmp92, b
	feq.s	a5,fa4,fa5	#, tmp93, tmp92, _5
	bne	a5,zero,.L6	#, tmp93,,
# problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	flw	fa4,-24(s0)	# tmp94, b
	flw	fa5,-28(s0)	# tmp95, c
	fadd.s	fa5,fa4,fa5	# _6, tmp94, tmp95
# problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	flw	fa4,-20(s0)	# tmp96, a
	feq.s	a5,fa4,fa5	#, tmp97, tmp96, _6
	beq	a5,zero,.L7	#, tmp97,,
.L6:
# problem93.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	li	a5,1		# _7,
	j	.L3		#
.L7:
# problem93.c:9:     return 0;
	li	a5,0		# _7,
.L3:
# problem93.c:10: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
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
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem93.c:17:     assert(func0(2, 3, 1) == 1);
	lla	a5,.LC0	# tmp85,
	flw	fa3,0(a5)	# tmp84,
	lla	a5,.LC1	# tmp87,
	flw	fa4,0(a5)	# tmp86,
	lla	a5,.LC2	# tmp89,
	flw	fa5,0(a5)	# tmp88,
	fmv.s	fa2,fa3	#, tmp84
	fmv.s	fa1,fa4	#, tmp86
	fmv.s	fa0,fa5	#, tmp88
	call	func0		#
	mv	a5,a0	# tmp90,
	mv	a4,a5	# tmp91, _1
	li	a5,1		# tmp92,
	beq	a4,a5,.L9	#, tmp91, tmp92,
# problem93.c:17:     assert(func0(2, 3, 1) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC3	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L9:
# problem93.c:18:     assert(func0(2.5, 2, 3) == 0);
	lla	a5,.LC1	# tmp94,
	flw	fa3,0(a5)	# tmp93,
	lla	a5,.LC2	# tmp96,
	flw	fa4,0(a5)	# tmp95,
	lla	a5,.LC5	# tmp98,
	flw	fa5,0(a5)	# tmp97,
	fmv.s	fa2,fa3	#, tmp93
	fmv.s	fa1,fa4	#, tmp95
	fmv.s	fa0,fa5	#, tmp97
	call	func0		#
	mv	a5,a0	# tmp99,
	beq	a5,zero,.L10	#, _2,,
# problem93.c:18:     assert(func0(2.5, 2, 3) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC3	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L10:
# problem93.c:19:     assert(func0(1.5, 5, 3.5) == 0);
	lla	a5,.LC7	# tmp101,
	flw	fa3,0(a5)	# tmp100,
	lla	a5,.LC8	# tmp103,
	flw	fa4,0(a5)	# tmp102,
	lla	a5,.LC9	# tmp105,
	flw	fa5,0(a5)	# tmp104,
	fmv.s	fa2,fa3	#, tmp100
	fmv.s	fa1,fa4	#, tmp102
	fmv.s	fa0,fa5	#, tmp104
	call	func0		#
	mv	a5,a0	# tmp106,
	beq	a5,zero,.L11	#, _3,,
# problem93.c:19:     assert(func0(1.5, 5, 3.5) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC3	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L11:
# problem93.c:20:     assert(func0(2, 6, 2) == 0);
	lla	a5,.LC2	# tmp108,
	flw	fa3,0(a5)	# tmp107,
	lla	a5,.LC11	# tmp110,
	flw	fa4,0(a5)	# tmp109,
	lla	a5,.LC2	# tmp112,
	flw	fa5,0(a5)	# tmp111,
	fmv.s	fa2,fa3	#, tmp107
	fmv.s	fa1,fa4	#, tmp109
	fmv.s	fa0,fa5	#, tmp111
	call	func0		#
	mv	a5,a0	# tmp113,
	beq	a5,zero,.L12	#, _4,,
# problem93.c:20:     assert(func0(2, 6, 2) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC3	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L12:
# problem93.c:21:     assert(func0(4, 2, 2) == 1);
	lla	a5,.LC2	# tmp115,
	flw	fa3,0(a5)	# tmp114,
	lla	a5,.LC2	# tmp117,
	flw	fa4,0(a5)	# tmp116,
	lla	a5,.LC13	# tmp119,
	flw	fa5,0(a5)	# tmp118,
	fmv.s	fa2,fa3	#, tmp114
	fmv.s	fa1,fa4	#, tmp116
	fmv.s	fa0,fa5	#, tmp118
	call	func0		#
	mv	a5,a0	# tmp120,
	mv	a4,a5	# tmp121, _5
	li	a5,1		# tmp122,
	beq	a4,a5,.L13	#, tmp121, tmp122,
# problem93.c:21:     assert(func0(4, 2, 2) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC3	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L13:
# problem93.c:22:     assert(func0(2.2, 2.2, 2.2) == 0);
	lla	a5,.LC15	# tmp124,
	flw	fa3,0(a5)	# tmp123,
	lla	a5,.LC15	# tmp126,
	flw	fa4,0(a5)	# tmp125,
	lla	a5,.LC15	# tmp128,
	flw	fa5,0(a5)	# tmp127,
	fmv.s	fa2,fa3	#, tmp123
	fmv.s	fa1,fa4	#, tmp125
	fmv.s	fa0,fa5	#, tmp127
	call	func0		#
	mv	a5,a0	# tmp129,
	beq	a5,zero,.L14	#, _6,,
# problem93.c:22:     assert(func0(2.2, 2.2, 2.2) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC3	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L14:
# problem93.c:23:     assert(func0(-4, 6, 2) == 1);
	lla	a5,.LC2	# tmp131,
	flw	fa3,0(a5)	# tmp130,
	lla	a5,.LC11	# tmp133,
	flw	fa4,0(a5)	# tmp132,
	lla	a5,.LC17	# tmp135,
	flw	fa5,0(a5)	# tmp134,
	fmv.s	fa2,fa3	#, tmp130
	fmv.s	fa1,fa4	#, tmp132
	fmv.s	fa0,fa5	#, tmp134
	call	func0		#
	mv	a5,a0	# tmp136,
	mv	a4,a5	# tmp137, _7
	li	a5,1		# tmp138,
	beq	a4,a5,.L15	#, tmp137, tmp138,
# problem93.c:23:     assert(func0(-4, 6, 2) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC3	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L15:
# problem93.c:24:     assert(func0(2, 1, 1) == 1);
	lla	a5,.LC0	# tmp140,
	flw	fa3,0(a5)	# tmp139,
	lla	a5,.LC0	# tmp142,
	flw	fa4,0(a5)	# tmp141,
	lla	a5,.LC2	# tmp144,
	flw	fa5,0(a5)	# tmp143,
	fmv.s	fa2,fa3	#, tmp139
	fmv.s	fa1,fa4	#, tmp141
	fmv.s	fa0,fa5	#, tmp143
	call	func0		#
	mv	a5,a0	# tmp145,
	mv	a4,a5	# tmp146, _8
	li	a5,1		# tmp147,
	beq	a4,a5,.L16	#, tmp146, tmp147,
# problem93.c:24:     assert(func0(2, 1, 1) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC3	#,
	lla	a0,.LC19	#,
	call	__assert_fail@plt	#
.L16:
# problem93.c:25:     assert(func0(3, 4, 7) == 1);
	lla	a5,.LC20	# tmp149,
	flw	fa3,0(a5)	# tmp148,
	lla	a5,.LC13	# tmp151,
	flw	fa4,0(a5)	# tmp150,
	lla	a5,.LC1	# tmp153,
	flw	fa5,0(a5)	# tmp152,
	fmv.s	fa2,fa3	#, tmp148
	fmv.s	fa1,fa4	#, tmp150
	fmv.s	fa0,fa5	#, tmp152
	call	func0		#
	mv	a5,a0	# tmp154,
	mv	a4,a5	# tmp155, _9
	li	a5,1		# tmp156,
	beq	a4,a5,.L17	#, tmp155, tmp156,
# problem93.c:25:     assert(func0(3, 4, 7) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC3	#,
	lla	a0,.LC21	#,
	call	__assert_fail@plt	#
.L17:
# problem93.c:26:     assert(func0(3.01, 4, 7) == 0);
	lla	a5,.LC20	# tmp158,
	flw	fa3,0(a5)	# tmp157,
	lla	a5,.LC13	# tmp160,
	flw	fa4,0(a5)	# tmp159,
	lla	a5,.LC22	# tmp162,
	flw	fa5,0(a5)	# tmp161,
	fmv.s	fa2,fa3	#, tmp157
	fmv.s	fa1,fa4	#, tmp159
	fmv.s	fa0,fa5	#, tmp161
	call	func0		#
	mv	a5,a0	# tmp163,
	beq	a5,zero,.L18	#, _10,,
# problem93.c:26:     assert(func0(3.01, 4, 7) == 0);
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
