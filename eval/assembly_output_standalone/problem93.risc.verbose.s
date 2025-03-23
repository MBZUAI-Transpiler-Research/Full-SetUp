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
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
	fsw	fa0,-20(s0)	# a, a
	fsw	fa1,-24(s0)	# b, b
	fsw	fa2,-28(s0)	# c, c
# eval/problem93//code.c:5:     if (roundf(a) != a) return 0;
	flw	fa0,-20(s0)	#, a
	call	roundf@plt	#
	fmv.s	fa4,fa0	# _1,
# eval/problem93//code.c:5:     if (roundf(a) != a) return 0;
	flw	fa5,-20(s0)	# tmp80, a
	feq.s	a5,fa5,fa4	#, tmp81, tmp80, _1
	bne	a5,zero,.L2	#, tmp81,,
# eval/problem93//code.c:5:     if (roundf(a) != a) return 0;
	li	a5,0		# _7,
	j	.L3		#
.L2:
# eval/problem93//code.c:6:     if (roundf(b) != b) return 0;
	flw	fa0,-24(s0)	#, b
	call	roundf@plt	#
	fmv.s	fa4,fa0	# _2,
# eval/problem93//code.c:6:     if (roundf(b) != b) return 0;
	flw	fa5,-24(s0)	# tmp82, b
	feq.s	a5,fa5,fa4	#, tmp83, tmp82, _2
	bne	a5,zero,.L4	#, tmp83,,
# eval/problem93//code.c:6:     if (roundf(b) != b) return 0;
	li	a5,0		# _7,
	j	.L3		#
.L4:
# eval/problem93//code.c:7:     if (roundf(c) != c) return 0;
	flw	fa0,-28(s0)	#, c
	call	roundf@plt	#
	fmv.s	fa4,fa0	# _3,
# eval/problem93//code.c:7:     if (roundf(c) != c) return 0;
	flw	fa5,-28(s0)	# tmp84, c
	feq.s	a5,fa5,fa4	#, tmp85, tmp84, _3
	bne	a5,zero,.L5	#, tmp85,,
# eval/problem93//code.c:7:     if (roundf(c) != c) return 0;
	li	a5,0		# _7,
	j	.L3		#
.L5:
# eval/problem93//code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	flw	fa4,-20(s0)	# tmp86, a
	flw	fa5,-24(s0)	# tmp87, b
	fadd.s	fa5,fa4,fa5	# _4, tmp86, tmp87
# eval/problem93//code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	flw	fa4,-28(s0)	# tmp88, c
	feq.s	a5,fa4,fa5	#, tmp89, tmp88, _4
	bne	a5,zero,.L6	#, tmp89,,
# eval/problem93//code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	flw	fa4,-20(s0)	# tmp90, a
	flw	fa5,-28(s0)	# tmp91, c
	fadd.s	fa5,fa4,fa5	# _5, tmp90, tmp91
# eval/problem93//code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	flw	fa4,-24(s0)	# tmp92, b
	feq.s	a5,fa4,fa5	#, tmp93, tmp92, _5
	bne	a5,zero,.L6	#, tmp93,,
# eval/problem93//code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	flw	fa4,-24(s0)	# tmp94, b
	flw	fa5,-28(s0)	# tmp95, c
	fadd.s	fa5,fa4,fa5	# _6, tmp94, tmp95
# eval/problem93//code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	flw	fa4,-20(s0)	# tmp96, a
	feq.s	a5,fa4,fa5	#, tmp97, tmp96, _6
	beq	a5,zero,.L7	#, tmp97,,
.L6:
# eval/problem93//code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	li	a5,1		# _7,
	j	.L3		#
.L7:
# eval/problem93//code.c:9:     return 0;
	li	a5,0		# _7,
.L3:
# eval/problem93//code.c:10: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
