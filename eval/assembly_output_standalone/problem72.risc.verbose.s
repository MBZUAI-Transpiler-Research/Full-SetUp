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
	fsw	fa0,-36(s0)	# a, a
	fsw	fa1,-40(s0)	# b, b
	fsw	fa2,-44(s0)	# c, c
# eval/problem72//code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	flw	fa4,-36(s0)	# tmp87, a
	flw	fa5,-40(s0)	# tmp88, b
	fadd.s	fa5,fa4,fa5	# _1, tmp87, tmp88
# eval/problem72//code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	flw	fa4,-44(s0)	# tmp89, c
	fge.s	a5,fa4,fa5	#, tmp90, tmp89, _1
	bne	a5,zero,.L2	#, tmp90,,
# eval/problem72//code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	flw	fa4,-36(s0)	# tmp91, a
	flw	fa5,-44(s0)	# tmp92, c
	fadd.s	fa5,fa4,fa5	# _2, tmp91, tmp92
# eval/problem72//code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	flw	fa4,-40(s0)	# tmp93, b
	fge.s	a5,fa4,fa5	#, tmp94, tmp93, _2
	bne	a5,zero,.L2	#, tmp94,,
# eval/problem72//code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	flw	fa4,-40(s0)	# tmp95, b
	flw	fa5,-44(s0)	# tmp96, c
	fadd.s	fa5,fa4,fa5	# _3, tmp95, tmp96
# eval/problem72//code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	flw	fa4,-36(s0)	# tmp97, a
	fge.s	a5,fa4,fa5	#, tmp98, tmp97, _3
	beq	a5,zero,.L6	#, tmp98,,
.L2:
# eval/problem72//code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	lla	a5,.LC0	# tmp99,
	flw	fa5,0(a5)	# _14,
	j	.L5		#
.L6:
# eval/problem72//code.c:6: float s = (a + b + c) / 2;
	flw	fa4,-36(s0)	# tmp100, a
	flw	fa5,-40(s0)	# tmp101, b
	fadd.s	fa4,fa4,fa5	# _4, tmp100, tmp101
# eval/problem72//code.c:6: float s = (a + b + c) / 2;
	flw	fa5,-44(s0)	# tmp102, c
	fadd.s	fa4,fa4,fa5	# _5, _4, tmp102
# eval/problem72//code.c:6: float s = (a + b + c) / 2;
	lla	a5,.LC1	# tmp105,
	flw	fa5,0(a5)	# tmp104,
	fdiv.s	fa5,fa4,fa5	# tmp103, _5, tmp104
	fsw	fa5,-24(s0)	# tmp103, s
# eval/problem72//code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	flw	fa4,-24(s0)	# tmp106, s
	flw	fa5,-36(s0)	# tmp107, a
	fsub.s	fa4,fa4,fa5	# _6, tmp106, tmp107
# eval/problem72//code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	flw	fa5,-24(s0)	# tmp108, s
	fmul.s	fa4,fa4,fa5	# _7, _6, tmp108
# eval/problem72//code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	flw	fa3,-24(s0)	# tmp109, s
	flw	fa5,-40(s0)	# tmp110, b
	fsub.s	fa5,fa3,fa5	# _8, tmp109, tmp110
# eval/problem72//code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	fmul.s	fa4,fa4,fa5	# _9, _7, _8
# eval/problem72//code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	flw	fa3,-24(s0)	# tmp111, s
	flw	fa5,-44(s0)	# tmp112, c
	fsub.s	fa5,fa3,fa5	# _10, tmp111, tmp112
# eval/problem72//code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	fmul.s	fa5,fa4,fa5	# _11, _9, _10
	fmv.s	fa0,fa5	#, _11
	call	sqrtf@plt	#
	fsw	fa0,-20(s0)	#, area
# eval/problem72//code.c:8: return roundf(area * 100) / 100;
	flw	fa4,-20(s0)	# tmp113, area
	lla	a5,.LC2	# tmp115,
	flw	fa5,0(a5)	# tmp114,
	fmul.s	fa5,fa4,fa5	# _12, tmp113, tmp114
	fmv.s	fa0,fa5	#, _12
	call	roundf@plt	#
	fmv.s	fa4,fa0	# _13,
# eval/problem72//code.c:8: return roundf(area * 100) / 100;
	lla	a5,.LC2	# tmp117,
	flw	fa5,0(a5)	# tmp116,
	fdiv.s	fa5,fa4,fa5	# _14, _13, tmp116
.L5:
# eval/problem72//code.c:9: }
	fmv.s	fa0,fa5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	2
.LC0:
	.word	-1082130432
	.align	2
.LC1:
	.word	1073741824
	.align	2
.LC2:
	.word	1120403456
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
