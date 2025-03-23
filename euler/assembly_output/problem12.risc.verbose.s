	.file	"problem12.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%lu\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
# problem12.c:12:   unsigned long i = 1, n = 1;
	li	a5,1		# tmp76,
	sd	a5,-32(s0)	# tmp76, i
# problem12.c:12:   unsigned long i = 1, n = 1;
	li	a5,1		# tmp77,
	sd	a5,-24(s0)	# tmp77, n
# problem12.c:14:   while (divisor_count(n) < 500) {
	j	.L2		#
.L3:
# problem12.c:15:     n += ++i;
	ld	a5,-32(s0)		# tmp79, i
	addi	a5,a5,1	#, tmp78, tmp79
	sd	a5,-32(s0)	# tmp78, i
	ld	a5,-32(s0)		# i.0_12, i
# problem12.c:15:     n += ++i;
	ld	a4,-24(s0)		# tmp81, n
	add	a5,a4,a5	# i.0_12, tmp80, tmp81
	sd	a5,-24(s0)	# tmp80, n
.L2:
# problem12.c:14:   while (divisor_count(n) < 500) {
	ld	a0,-24(s0)		#, n
	call	divisor_count		#
	mv	a5,a0	# tmp82,
	sext.w	a5,a5	# _1, tmp82
# problem12.c:14:   while (divisor_count(n) < 500) {
	mv	a4,a5	# tmp83, _1
	li	a5,499		# tmp84,
	bleu	a4,a5,.L3	#, tmp83, tmp84,
# problem12.c:17:   printf("%lu\n", n);
	ld	a1,-24(s0)		#, n
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem12.c:18:   return 0;
	li	a5,0		# _10,
# problem12.c:19: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	main, .-main
	.align	1
	.type	divisor_count, @function
divisor_count:
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# n, n
# problem12.c:23:   unsigned ret = 1;
	li	a5,1		# tmp76,
	sw	a5,-32(s0)	# tmp76, ret
# problem12.c:26:   for (i = 2; i <= n; i++) {
	li	a5,2		# tmp77,
	sd	a5,-24(s0)	# tmp77, i
# problem12.c:26:   for (i = 2; i <= n; i++) {
	j	.L6		#
.L9:
# problem12.c:27:     unsigned c = 0;
	sw	zero,-28(s0)	#, c
# problem12.c:28:     while (n % i == 0) {
	j	.L7		#
.L8:
# problem12.c:29:       c++;
	lw	a5,-28(s0)		# tmp80, c
	addiw	a5,a5,1	#, tmp78, tmp79
	sw	a5,-28(s0)	# tmp78, c
# problem12.c:30:       n /= i;
	ld	a4,-40(s0)		# tmp83, n
	ld	a5,-24(s0)		# tmp84, i
	divu	a5,a4,a5	# tmp84, tmp82, tmp83
	sd	a5,-40(s0)	# tmp82, n
.L7:
# problem12.c:28:     while (n % i == 0) {
	ld	a4,-40(s0)		# tmp85, n
	ld	a5,-24(s0)		# tmp86, i
	remu	a5,a4,a5	# tmp86, _1, tmp85
# problem12.c:28:     while (n % i == 0) {
	beq	a5,zero,.L8	#, _1,,
# problem12.c:32:     ret *= c+1;
	lw	a5,-28(s0)		# tmp89, c
	addiw	a5,a5,1	#, tmp87, tmp88
	sext.w	a5,a5	# _2, tmp87
# problem12.c:32:     ret *= c+1;
	lw	a4,-32(s0)		# tmp92, ret
	mulw	a5,a4,a5	# tmp90, tmp91, _2
	sw	a5,-32(s0)	# tmp90, ret
# problem12.c:26:   for (i = 2; i <= n; i++) {
	ld	a5,-24(s0)		# tmp94, i
	addi	a5,a5,1	#, tmp93, tmp94
	sd	a5,-24(s0)	# tmp93, i
.L6:
# problem12.c:26:   for (i = 2; i <= n; i++) {
	ld	a4,-24(s0)		# tmp95, i
	ld	a5,-40(s0)		# tmp96, n
	bleu	a4,a5,.L9	#, tmp95, tmp96,
# problem12.c:34:   return ret;
	lw	a5,-32(s0)		# _11, ret
# problem12.c:35: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	divisor_count, .-divisor_count
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
