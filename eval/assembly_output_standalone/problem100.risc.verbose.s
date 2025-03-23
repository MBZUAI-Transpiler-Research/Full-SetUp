	.file	"code.c"
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
# eval/problem100//code.c:7:     w = atof(value);
	ld	a0,-40(s0)		#, value
	call	atof@plt	#
	fsd	fa0,-24(s0)	#, w
# eval/problem100//code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fld	fa5,-24(s0)	# tmp78, w
	fmv.d.x	fa4,zero	# tmp79,
	flt.d	a5,fa5,fa4	#, tmp80, tmp78, tmp79
	beq	a5,zero,.L7	#, tmp80,,
# eval/problem100//code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fld	fa4,-24(s0)	# tmp81, w
	lla	a5,.LC0	# tmp83,
	fld	fa5,0(a5)	# tmp82,
	fsub.d	fa5,fa4,fa5	# _1, tmp81, tmp82
	fmv.d	fa0,fa5	#, _1
	call	ceil@plt	#
	fmv.d	fa5,fa0	# _2,
# eval/problem100//code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fcvt.w.d a5,fa5,rtz	# tmp84, _2
	sext.w	a5,a5	# iftmp.0_5, tmp84
	j	.L4		#
.L7:
# eval/problem100//code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fld	fa4,-24(s0)	# tmp85, w
	lla	a5,.LC0	# tmp87,
	fld	fa5,0(a5)	# tmp86,
	fadd.d	fa5,fa4,fa5	# _3, tmp85, tmp86
	fmv.d	fa0,fa5	#, _3
	call	floor@plt	#
	fmv.d	fa5,fa0	# _4,
# eval/problem100//code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	fcvt.w.d a5,fa5,rtz	# tmp88, _4
	sext.w	a5,a5	# iftmp.0_5, tmp88
.L4:
# eval/problem100//code.c:9: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	1071644672
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
