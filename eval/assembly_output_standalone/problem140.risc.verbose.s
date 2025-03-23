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
	addi	sp,sp,-64	#,,
	sd	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	mv	a5,a0	# tmp75, n
	sw	a5,-52(s0)	# tmp76, n
# eval/problem140//code.c:4:     long long fact = 1, bfact = 1;
	li	a5,1		# tmp77,
	sd	a5,-32(s0)	# tmp77, fact
# eval/problem140//code.c:4:     long long fact = 1, bfact = 1;
	li	a5,1		# tmp78,
	sd	a5,-24(s0)	# tmp78, bfact
# eval/problem140//code.c:5:     for (int i = 1; i <= n; i++) {
	li	a5,1		# tmp79,
	sw	a5,-36(s0)	# tmp79, i
# eval/problem140//code.c:5:     for (int i = 1; i <= n; i++) {
	j	.L2		#
.L3:
# eval/problem140//code.c:6:         fact = fact * i;
	lw	a5,-36(s0)		# _1, i
# eval/problem140//code.c:6:         fact = fact * i;
	ld	a4,-32(s0)		# tmp81, fact
	mul	a5,a4,a5	# tmp80, tmp81, _1
	sd	a5,-32(s0)	# tmp80, fact
# eval/problem140//code.c:7:         bfact = bfact * fact;
	ld	a4,-24(s0)		# tmp83, bfact
	ld	a5,-32(s0)		# tmp84, fact
	mul	a5,a4,a5	# tmp82, tmp83, tmp84
	sd	a5,-24(s0)	# tmp82, bfact
# eval/problem140//code.c:5:     for (int i = 1; i <= n; i++) {
	lw	a5,-36(s0)		# tmp87, i
	addiw	a5,a5,1	#, tmp85, tmp86
	sw	a5,-36(s0)	# tmp85, i
.L2:
# eval/problem140//code.c:5:     for (int i = 1; i <= n; i++) {
	lw	a5,-36(s0)		# tmp89, i
	mv	a4,a5	# tmp88, tmp89
	lw	a5,-52(s0)		# tmp91, n
	sext.w	a4,a4	# tmp92, tmp88
	sext.w	a5,a5	# tmp93, tmp90
	ble	a4,a5,.L3	#, tmp92, tmp93,
# eval/problem140//code.c:9:     return bfact;
	ld	a5,-24(s0)		# _9, bfact
# eval/problem140//code.c:10: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
