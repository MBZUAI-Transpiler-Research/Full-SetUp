	.file	"problem100.c"
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
	sd	a0,-40(s0)	# value, value
# problem100.c:7:     w = atof(value);
	ld	a0,-40(s0)		#, value
	call	atof@plt	#
	fsd	fa0,-24(s0)	#, w
# problem100.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fld	fa5,-24(s0)	# tmp78, w
	fmv.d.x	fa4,zero	# tmp79,
	flt.d	a5,fa5,fa4	#, tmp80, tmp78, tmp79
	beq	a5,zero,.L7	#, tmp80,,
# problem100.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fld	fa4,-24(s0)	# tmp81, w
	lla	a5,.LC0	# tmp83,
	fld	fa5,0(a5)	# tmp82,
	fsub.d	fa5,fa4,fa5	# _1, tmp81, tmp82
	fmv.d	fa0,fa5	#, _1
	call	ceil@plt	#
	fmv.d	fa5,fa0	# _2,
# problem100.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fcvt.w.d a5,fa5,rtz	# tmp84, _2
	sext.w	a5,a5	# iftmp.0_5, tmp84
	j	.L4		#
.L7:
# problem100.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fld	fa4,-24(s0)	# tmp85, w
	lla	a5,.LC0	# tmp87,
	fld	fa5,0(a5)	# tmp86,
	fadd.d	fa5,fa4,fa5	# _3, tmp85, tmp86
	fmv.d	fa0,fa5	#, _3
	call	floor@plt	#
	fmv.d	fa5,fa0	# _4,
# problem100.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fcvt.w.d a5,fa5,rtz	# tmp88, _4
	sext.w	a5,a5	# iftmp.0_5, tmp88
.L4:
# problem100.c:9: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"10"
	.align	3
.LC2:
	.string	"problem100.c"
	.align	3
.LC3:
	.string	"func0(\"10\") == 10"
	.align	3
.LC4:
	.string	"14.5"
	.align	3
.LC5:
	.string	"func0(\"14.5\") == 15"
	.align	3
.LC6:
	.string	"-15.5"
	.align	3
.LC7:
	.string	"func0(\"-15.5\") == -16"
	.align	3
.LC8:
	.string	"15.3"
	.align	3
.LC9:
	.string	"func0(\"15.3\") == 15"
	.align	3
.LC10:
	.string	"0"
	.align	3
.LC11:
	.string	"func0(\"0\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem100.c:16:     assert(func0("10") == 10);
	lla	a0,.LC1	#,
	call	func0		#
	mv	a5,a0	# tmp79,
	mv	a4,a5	# tmp80, _1
	li	a5,10		# tmp81,
	beq	a4,a5,.L9	#, tmp80, tmp81,
# problem100.c:16:     assert(func0("10") == 10);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L9:
# problem100.c:17:     assert(func0("14.5") == 15);
	lla	a0,.LC4	#,
	call	func0		#
	mv	a5,a0	# tmp82,
	mv	a4,a5	# tmp83, _2
	li	a5,15		# tmp84,
	beq	a4,a5,.L10	#, tmp83, tmp84,
# problem100.c:17:     assert(func0("14.5") == 15);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC2	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L10:
# problem100.c:18:     assert(func0("-15.5") == -16);
	lla	a0,.LC6	#,
	call	func0		#
	mv	a5,a0	# tmp85,
	mv	a4,a5	# tmp86, _3
	li	a5,-16		# tmp87,
	beq	a4,a5,.L11	#, tmp86, tmp87,
# problem100.c:18:     assert(func0("-15.5") == -16);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC2	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L11:
# problem100.c:19:     assert(func0("15.3") == 15);
	lla	a0,.LC8	#,
	call	func0		#
	mv	a5,a0	# tmp88,
	mv	a4,a5	# tmp89, _4
	li	a5,15		# tmp90,
	beq	a4,a5,.L12	#, tmp89, tmp90,
# problem100.c:19:     assert(func0("15.3") == 15);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC2	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L12:
# problem100.c:20:     assert(func0("0") == 0);
	lla	a0,.LC10	#,
	call	func0		#
	mv	a5,a0	# tmp91,
	beq	a5,zero,.L13	#, _5,,
# problem100.c:20:     assert(func0("0") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC2	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L13:
# problem100.c:22:     return 0;
	li	a5,0		# _17,
# problem100.c:23: }
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
	.word	0
	.word	1071644672
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
