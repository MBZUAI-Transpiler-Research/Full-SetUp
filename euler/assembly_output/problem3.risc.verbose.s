	.file	"problem3.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"%llu\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
# problem3.c:10:   unsigned long long n = 600851475143ULL;
	lla	a5,.LC0	# tmp75,
	ld	a5,0(a5)		# tmp76,
	sd	a5,-32(s0)	# tmp76, n
# problem3.c:13:   for (i = 2ULL; i < n; i++) {
	li	a5,2		# tmp77,
	sd	a5,-24(s0)	# tmp77, i
# problem3.c:13:   for (i = 2ULL; i < n; i++) {
	j	.L2		#
.L4:
# problem3.c:15:       n /= i;
	ld	a4,-32(s0)		# tmp80, n
	ld	a5,-24(s0)		# tmp81, i
	divu	a5,a4,a5	# tmp81, tmp79, tmp80
	sd	a5,-32(s0)	# tmp79, n
.L3:
# problem3.c:14:     while (n % i == 0) {
	ld	a4,-32(s0)		# tmp82, n
	ld	a5,-24(s0)		# tmp83, i
	remu	a5,a4,a5	# tmp83, _1, tmp82
# problem3.c:14:     while (n % i == 0) {
	beq	a5,zero,.L4	#, _1,,
# problem3.c:13:   for (i = 2ULL; i < n; i++) {
	ld	a5,-24(s0)		# tmp85, i
	addi	a5,a5,1	#, tmp84, tmp85
	sd	a5,-24(s0)	# tmp84, i
.L2:
# problem3.c:13:   for (i = 2ULL; i < n; i++) {
	ld	a4,-24(s0)		# tmp86, i
	ld	a5,-32(s0)		# tmp87, n
	bltu	a4,a5,.L3	#, tmp86, tmp87,
# problem3.c:18:   printf("%llu\n", n);
	ld	a1,-32(s0)		#, n
	lla	a0,.LC1	#,
	call	printf@plt	#
# problem3.c:20:   return 0;
	li	a5,0		# _9,
# problem3.c:21: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.dword	600851475143
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
