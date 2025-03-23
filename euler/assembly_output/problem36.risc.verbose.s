	.file	"problem36.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
# problem36.c:15:   int sum = 0;
	sw	zero,-20(s0)	#, sum
# problem36.c:17:   for (i = 1; i < N; i++) {
	li	a5,1		# tmp76,
	sw	a5,-24(s0)	# tmp76, i
# problem36.c:17:   for (i = 1; i < N; i++) {
	j	.L2		#
.L4:
# problem36.c:18:     if (palindromic_base(i, 10) && palindromic_base(i, 2)) {
	lw	a5,-24(s0)		# tmp77, i
	li	a1,10		#,
	mv	a0,a5	#, tmp77
	call	palindromic_base		#
	mv	a5,a0	# tmp78,
# problem36.c:18:     if (palindromic_base(i, 10) && palindromic_base(i, 2)) {
	beq	a5,zero,.L3	#, _1,,
# problem36.c:18:     if (palindromic_base(i, 10) && palindromic_base(i, 2)) {
	lw	a5,-24(s0)		# tmp79, i
	li	a1,2		#,
	mv	a0,a5	#, tmp79
	call	palindromic_base		#
	mv	a5,a0	# tmp80,
# problem36.c:18:     if (palindromic_base(i, 10) && palindromic_base(i, 2)) {
	beq	a5,zero,.L3	#, _2,,
# problem36.c:19:       sum += i;
	lw	a5,-20(s0)		# tmp83, sum
	mv	a4,a5	# tmp82, tmp83
	lw	a5,-24(s0)		# tmp85, i
	addw	a5,a4,a5	# tmp84, tmp81, tmp82
	sw	a5,-20(s0)	# tmp81, sum
.L3:
# problem36.c:17:   for (i = 1; i < N; i++) {
	lw	a5,-24(s0)		# tmp88, i
	addiw	a5,a5,1	#, tmp86, tmp87
	sw	a5,-24(s0)	# tmp86, i
.L2:
# problem36.c:17:   for (i = 1; i < N; i++) {
	lw	a5,-24(s0)		# tmp92, i
	sext.w	a4,a5	# tmp93, tmp91
	li	a5,999424		# tmp95,
	addi	a5,a5,575	#, tmp94, tmp95
	ble	a4,a5,.L4	#, tmp93, tmp94,
# problem36.c:22:   printf("%d\n", sum);
	lw	a5,-20(s0)		# tmp96, sum
	mv	a1,a5	#, tmp96
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem36.c:24:   return 0;
	li	a5,0		# _12,
# problem36.c:25: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	main, .-main
	.align	1
	.type	palindromic_base, @function
palindromic_base:
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp77, n
	mv	a4,a1	# tmp79, base
	sw	a5,-36(s0)	# tmp78, n
	mv	a5,a4	# tmp80, tmp79
	sw	a5,-40(s0)	# tmp80, base
# problem36.c:29:   int reversed = 0;
	sw	zero,-24(s0)	#, reversed
# problem36.c:30:   const int orig = n;
	lw	a5,-36(s0)		# tmp81, n
	sw	a5,-20(s0)	# tmp81, orig
# problem36.c:32:   while (n) {
	j	.L7		#
.L8:
# problem36.c:33:     reversed = base*reversed + n%base;
	lw	a5,-40(s0)		# tmp84, base
	mv	a4,a5	# tmp83, tmp84
	lw	a5,-24(s0)		# tmp86, reversed
	mulw	a5,a4,a5	# tmp82, tmp83, tmp85
	sext.w	a4,a5	# _1, tmp82
# problem36.c:33:     reversed = base*reversed + n%base;
	lw	a5,-36(s0)		# tmp89, n
	mv	a3,a5	# tmp88, tmp89
	lw	a5,-40(s0)		# tmp92, base
	remw	a5,a3,a5	# tmp91, tmp90, tmp88
	sext.w	a5,a5	# _2, tmp90
# problem36.c:33:     reversed = base*reversed + n%base;
	addw	a5,a4,a5	# _2, tmp93, _1
	sw	a5,-24(s0)	# tmp93, reversed
# problem36.c:34:     n /= base;
	lw	a5,-36(s0)		# tmp97, n
	mv	a4,a5	# tmp96, tmp97
	lw	a5,-40(s0)		# tmp99, base
	divw	a5,a4,a5	# tmp98, tmp95, tmp96
	sw	a5,-36(s0)	# tmp95, n
.L7:
# problem36.c:32:   while (n) {
	lw	a5,-36(s0)		# tmp101, n
	sext.w	a5,a5	# tmp102, tmp100
	bne	a5,zero,.L8	#, tmp102,,
# problem36.c:36:   return orig == reversed;
	lw	a5,-20(s0)		# tmp105, orig
	mv	a4,a5	# tmp104, tmp105
	lw	a5,-24(s0)		# tmp107, reversed
	sext.w	a4,a4	# tmp109, tmp104
	sext.w	a5,a5	# tmp111, tmp106
	sub	a5,a4,a5	# tmp110, tmp109, tmp111
	seqz	a5,a5	# tmp108, tmp110
	andi	a5,a5,0xff	# _3, tmp103
	sext.w	a5,a5	# _9, _3
# problem36.c:37: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	palindromic_base, .-palindromic_base
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
