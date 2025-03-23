	.file	"problem46.c"
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
	fsw	fa1,-24(s0)	# h, h
# problem46.c:5:     return (a * h) * 0.5;
	flw	fa4,-20(s0)	# tmp75, a
	flw	fa5,-24(s0)	# tmp76, h
	fmul.s	fa4,fa4,fa5	# _1, tmp75, tmp76
# problem46.c:5:     return (a * h) * 0.5;
	lla	a5,.LC0	# tmp78,
	flw	fa5,0(a5)	# tmp77,
	fmul.s	fa5,fa4,fa5	# _4, _1, tmp77
# problem46.c:6: }
	fmv.s	fa0,fa5	#, <retval>
	ld	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC5:
	.string	"problem46.c"
	.align	3
.LC6:
	.string	"fabs(func0(5, 3) - 7.5) < 1e-4"
	.align	3
.LC9:
	.string	"fabs(func0(2, 2) - 2.0) < 1e-4"
	.align	3
.LC13:
	.string	"fabs(func0(10, 8) - 40.0) < 1e-4"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem46.c:15:     assert(fabs(func0(5, 3) - 7.5) < 1e-4);
	lla	a5,.LC1	# tmp87,
	flw	fa4,0(a5)	# tmp86,
	lla	a5,.LC2	# tmp89,
	flw	fa5,0(a5)	# tmp88,
	fmv.s	fa1,fa4	#, tmp86
	fmv.s	fa0,fa5	#, tmp88
	call	func0		#
	fmv.s	fa5,fa0	# _1,
	fcvt.d.s	fa4,fa5	# _2, _1
	lla	a5,.LC3	# tmp91,
	fld	fa5,0(a5)	# tmp90,
	fsub.d	fa5,fa4,fa5	# _3, _2, tmp90
	fabs.d	fa4,fa5	# _4, _3
	lla	a5,.LC4	# tmp93,
	fld	fa5,0(a5)	# tmp92,
	flt.d	a5,fa4,fa5	#, tmp94, _4, tmp92
	bne	a5,zero,.L4	#, tmp94,,
# problem46.c:15:     assert(fabs(func0(5, 3) - 7.5) < 1e-4);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,15		#,
	lla	a1,.LC5	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L4:
# problem46.c:16:     assert(fabs(func0(2, 2) - 2.0) < 1e-4);
	lla	a5,.LC7	# tmp96,
	flw	fa4,0(a5)	# tmp95,
	lla	a5,.LC7	# tmp98,
	flw	fa5,0(a5)	# tmp97,
	fmv.s	fa1,fa4	#, tmp95
	fmv.s	fa0,fa5	#, tmp97
	call	func0		#
	fmv.s	fa5,fa0	# _5,
	fcvt.d.s	fa4,fa5	# _6, _5
	lla	a5,.LC8	# tmp100,
	fld	fa5,0(a5)	# tmp99,
	fsub.d	fa5,fa4,fa5	# _7, _6, tmp99
	fabs.d	fa4,fa5	# _8, _7
	lla	a5,.LC4	# tmp102,
	fld	fa5,0(a5)	# tmp101,
	flt.d	a5,fa4,fa5	#, tmp103, _8, tmp101
	bne	a5,zero,.L5	#, tmp103,,
# problem46.c:16:     assert(fabs(func0(2, 2) - 2.0) < 1e-4);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC5	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L5:
# problem46.c:17:     assert(fabs(func0(10, 8) - 40.0) < 1e-4);
	lla	a5,.LC10	# tmp105,
	flw	fa4,0(a5)	# tmp104,
	lla	a5,.LC11	# tmp107,
	flw	fa5,0(a5)	# tmp106,
	fmv.s	fa1,fa4	#, tmp104
	fmv.s	fa0,fa5	#, tmp106
	call	func0		#
	fmv.s	fa5,fa0	# _9,
	fcvt.d.s	fa4,fa5	# _10, _9
	lla	a5,.LC12	# tmp109,
	fld	fa5,0(a5)	# tmp108,
	fsub.d	fa5,fa4,fa5	# _11, _10, tmp108
	fabs.d	fa4,fa5	# _12, _11
	lla	a5,.LC4	# tmp111,
	fld	fa5,0(a5)	# tmp110,
	flt.d	a5,fa4,fa5	#, tmp112, _12, tmp110
	bne	a5,zero,.L6	#, tmp112,,
# problem46.c:17:     assert(fabs(func0(10, 8) - 40.0) < 1e-4);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC5	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L6:
# problem46.c:19:     return 0;
	li	a5,0		# _20,
# problem46.c:20: }
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
	.word	1056964608
	.align	2
.LC1:
	.word	1077936128
	.align	2
.LC2:
	.word	1084227584
	.align	3
.LC3:
	.word	0
	.word	1075707904
	.align	3
.LC4:
	.word	-350469331
	.word	1058682594
	.align	2
.LC7:
	.word	1073741824
	.align	3
.LC8:
	.word	0
	.word	1073741824
	.align	2
.LC10:
	.word	1090519040
	.align	2
.LC11:
	.word	1092616192
	.align	3
.LC12:
	.word	0
	.word	1078198272
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
