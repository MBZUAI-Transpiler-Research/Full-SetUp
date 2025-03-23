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
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp74, a
	mv	a4,a1	# tmp76, b
	sw	a5,-36(s0)	# tmp75, a
	mv	a5,a4	# tmp77, tmp76
	sw	a5,-40(s0)	# tmp77, b
# eval/problem14//code.c:4:     while (b != 0) {
	j	.L2		#
.L3:
# eval/problem14//code.c:5:         int m = a % b;
	lw	a5,-36(s0)		# tmp80, a
	mv	a4,a5	# tmp79, tmp80
	lw	a5,-40(s0)		# tmp83, b
	remw	a5,a4,a5	# tmp82, tmp81, tmp79
	sw	a5,-20(s0)	# tmp81, m
# eval/problem14//code.c:6:         a = b;
	lw	a5,-40(s0)		# tmp84, b
	sw	a5,-36(s0)	# tmp84, a
# eval/problem14//code.c:7:         b = m;
	lw	a5,-20(s0)		# tmp85, m
	sw	a5,-40(s0)	# tmp85, b
.L2:
# eval/problem14//code.c:4:     while (b != 0) {
	lw	a5,-40(s0)		# tmp87, b
	sext.w	a5,a5	# tmp88, tmp86
	bne	a5,zero,.L3	#, tmp88,,
# eval/problem14//code.c:9:     return a;
	lw	a5,-36(s0)		# _5, a
# eval/problem14//code.c:10: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
