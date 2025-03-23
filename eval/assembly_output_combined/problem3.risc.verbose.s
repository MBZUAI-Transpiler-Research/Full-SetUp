	.file	"problem3.c"
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
	fsw	fa0,-20(s0)	# number, number
# problem3.c:5:     return number - (int)number;
	flw	fa5,-20(s0)	# tmp77, number
	fcvt.w.s a5,fa5,rtz	# tmp76, tmp77
	sext.w	a5,a5	# _1, tmp76
# problem3.c:5:     return number - (int)number;
	fcvt.s.w	fa5,a5	# _2, _1
	flw	fa4,-20(s0)	# tmp78, number
	fsub.s	fa5,fa4,fa5	# _4, tmp78, _2
# problem3.c:6: }
	fmv.s	fa0,fa5	#, <retval>
	ld	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"Testing problem 3"
	.align	3
.LC3:
	.string	"problem3.c"
	.align	3
.LC4:
	.string	"func0(3.5f) == 0.5f"
	.align	3
.LC8:
	.string	"fabs(func0(1.33f) - 0.33f) < 1e-4"
	.align	3
.LC11:
	.string	"fabs(func0(123.456f) - 0.456f) < 1e-4"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem3.c:15:     printf("Testing problem 3\n");
	lla	a0,.LC0	#,
	call	puts@plt	#
# problem3.c:16:     assert(func0(3.5f) == 0.5f);
	lla	a5,.LC1	# tmp84,
	flw	fa5,0(a5)	# tmp83,
	fmv.s	fa0,fa5	#, tmp83
	call	func0		#
	fmv.s	fa4,fa0	# _1,
	lla	a5,.LC2	# tmp86,
	flw	fa5,0(a5)	# tmp85,
	feq.s	a5,fa4,fa5	#, tmp87, _1, tmp85
	bne	a5,zero,.L4	#, tmp87,,
# problem3.c:16:     assert(func0(3.5f) == 0.5f);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC3	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L4:
# problem3.c:17:     assert(fabs(func0(1.33f) - 0.33f) < 1e-4);
	lla	a5,.LC5	# tmp89,
	flw	fa5,0(a5)	# tmp88,
	fmv.s	fa0,fa5	#, tmp88
	call	func0		#
	fmv.s	fa4,fa0	# _2,
	lla	a5,.LC6	# tmp91,
	flw	fa5,0(a5)	# tmp90,
	fsub.s	fa5,fa4,fa5	# _3, _2, tmp90
	fabs.s	fa5,fa5	# _4, _3
	fcvt.d.s	fa4,fa5	# _5, _4
	lla	a5,.LC7	# tmp93,
	fld	fa5,0(a5)	# tmp92,
	flt.d	a5,fa4,fa5	#, tmp94, _5, tmp92
	bne	a5,zero,.L5	#, tmp94,,
# problem3.c:17:     assert(fabs(func0(1.33f) - 0.33f) < 1e-4);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC3	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L5:
# problem3.c:18:     assert(fabs(func0(123.456f) - 0.456f) < 1e-4);
	lla	a5,.LC9	# tmp96,
	flw	fa5,0(a5)	# tmp95,
	fmv.s	fa0,fa5	#, tmp95
	call	func0		#
	fmv.s	fa4,fa0	# _6,
	lla	a5,.LC10	# tmp98,
	flw	fa5,0(a5)	# tmp97,
	fsub.s	fa5,fa4,fa5	# _7, _6, tmp97
	fabs.s	fa5,fa5	# _8, _7
	fcvt.d.s	fa4,fa5	# _9, _8
	lla	a5,.LC7	# tmp100,
	fld	fa5,0(a5)	# tmp99,
	flt.d	a5,fa4,fa5	#, tmp101, _9, tmp99
	bne	a5,zero,.L6	#, tmp101,,
# problem3.c:18:     assert(fabs(func0(123.456f) - 0.456f) < 1e-4);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC3	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L6:
# problem3.c:20:     return 0;
	li	a5,0		# _18,
# problem3.c:21: }
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
.LC1:
	.word	1080033280
	.align	2
.LC2:
	.word	1056964608
	.align	2
.LC5:
	.word	1068121457
	.align	2
.LC6:
	.word	1051260355
	.align	3
.LC7:
	.word	-350469331
	.word	1058682594
	.align	2
.LC9:
	.word	1123477881
	.align	2
.LC10:
	.word	1055488213
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
