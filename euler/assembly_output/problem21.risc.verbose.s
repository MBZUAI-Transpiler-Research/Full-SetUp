	.file	"problem21.c"
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
# problem21.c:12:   int i, d, sum = 0;
	sw	zero,-24(s0)	#, sum
# problem21.c:14:   for (i = 2; i < 10000; i++) {
	li	a5,2		# tmp76,
	sw	a5,-28(s0)	# tmp76, i
# problem21.c:14:   for (i = 2; i < 10000; i++) {
	j	.L2		#
.L4:
# problem21.c:15:     d = divisors_sum(i);
	lw	a5,-28(s0)		# tmp77, i
	mv	a0,a5	#, tmp77
	call	divisors_sum		#
	mv	a5,a0	# tmp78,
	sw	a5,-20(s0)	# tmp78, d
# problem21.c:16:     if (i < d && i == divisors_sum(d)) {
	lw	a5,-28(s0)		# tmp80, i
	mv	a4,a5	# tmp79, tmp80
	lw	a5,-20(s0)		# tmp82, d
	sext.w	a4,a4	# tmp83, tmp79
	sext.w	a5,a5	# tmp84, tmp81
	bge	a4,a5,.L3	#, tmp83, tmp84,
# problem21.c:16:     if (i < d && i == divisors_sum(d)) {
	lw	a5,-20(s0)		# tmp85, d
	mv	a0,a5	#, tmp85
	call	divisors_sum		#
	mv	a5,a0	# tmp86,
	mv	a4,a5	# _1, tmp86
# problem21.c:16:     if (i < d && i == divisors_sum(d)) {
	lw	a5,-28(s0)		# tmp88, i
	sext.w	a5,a5	# tmp89, tmp87
	bne	a5,a4,.L3	#, tmp89, tmp90,
# problem21.c:17:       sum += i + d;
	lw	a5,-28(s0)		# tmp93, i
	mv	a4,a5	# tmp92, tmp93
	lw	a5,-20(s0)		# tmp95, d
	addw	a5,a4,a5	# tmp94, tmp91, tmp92
	sext.w	a5,a5	# _2, tmp91
# problem21.c:17:       sum += i + d;
	lw	a4,-24(s0)		# tmp98, sum
	addw	a5,a4,a5	# _2, tmp96, tmp97
	sw	a5,-24(s0)	# tmp96, sum
.L3:
# problem21.c:14:   for (i = 2; i < 10000; i++) {
	lw	a5,-28(s0)		# tmp101, i
	addiw	a5,a5,1	#, tmp99, tmp100
	sw	a5,-28(s0)	# tmp99, i
.L2:
# problem21.c:14:   for (i = 2; i < 10000; i++) {
	lw	a5,-28(s0)		# tmp105, i
	sext.w	a4,a5	# tmp106, tmp104
	li	a5,8192		# tmp108,
	addi	a5,a5,1807	#, tmp107, tmp108
	ble	a4,a5,.L4	#, tmp106, tmp107,
# problem21.c:20:   printf("%d\n", sum);
	lw	a5,-24(s0)		# tmp109, sum
	mv	a1,a5	#, tmp109
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem21.c:22:   return 0;
	li	a5,0		# _12,
# problem21.c:23: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	main, .-main
	.align	1
	.type	divisors_sum, @function
divisors_sum:
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp79, n
	sw	a5,-36(s0)	# tmp80, n
# problem21.c:27:   int sum= 1;
	li	a5,1		# tmp81,
	sw	a5,-32(s0)	# tmp81, sum
# problem21.c:28:   int i, k = n;
	lw	a5,-36(s0)		# tmp82, n
	sw	a5,-24(s0)	# tmp82, k
# problem21.c:30:   for (i = 2; i <= k; i++) {
	li	a5,2		# tmp83,
	sw	a5,-28(s0)	# tmp83, i
# problem21.c:30:   for (i = 2; i <= k; i++) {
	j	.L7		#
.L10:
# problem21.c:31:     int p = 1;
	li	a5,1		# tmp84,
	sw	a5,-20(s0)	# tmp84, p
# problem21.c:32:     while (k % i == 0) {
	j	.L8		#
.L9:
# problem21.c:33:       p *= i;
	lw	a5,-20(s0)		# tmp87, p
	mv	a4,a5	# tmp86, tmp87
	lw	a5,-28(s0)		# tmp89, i
	mulw	a5,a4,a5	# tmp85, tmp86, tmp88
	sw	a5,-20(s0)	# tmp85, p
# problem21.c:34:       k /= i;
	lw	a5,-24(s0)		# tmp93, k
	mv	a4,a5	# tmp92, tmp93
	lw	a5,-28(s0)		# tmp95, i
	divw	a5,a4,a5	# tmp94, tmp91, tmp92
	sw	a5,-24(s0)	# tmp91, k
.L8:
# problem21.c:32:     while (k % i == 0) {
	lw	a5,-24(s0)		# tmp98, k
	mv	a4,a5	# tmp97, tmp98
	lw	a5,-28(s0)		# tmp101, i
	remw	a5,a4,a5	# tmp100, tmp99, tmp97
	sext.w	a5,a5	# _1, tmp99
# problem21.c:32:     while (k % i == 0) {
	beq	a5,zero,.L9	#, _1,,
# problem21.c:36:     sum *= (p*i - 1)/(i-1);
	lw	a5,-20(s0)		# tmp104, p
	mv	a4,a5	# tmp103, tmp104
	lw	a5,-28(s0)		# tmp106, i
	mulw	a5,a4,a5	# tmp102, tmp103, tmp105
	sext.w	a5,a5	# _2, tmp102
# problem21.c:36:     sum *= (p*i - 1)/(i-1);
	addiw	a5,a5,-1	#, tmp107, _2
	sext.w	a4,a5	# _3, tmp107
# problem21.c:36:     sum *= (p*i - 1)/(i-1);
	lw	a5,-28(s0)		# tmp110, i
	addiw	a5,a5,-1	#, tmp108, tmp109
	sext.w	a5,a5	# _4, tmp108
# problem21.c:36:     sum *= (p*i - 1)/(i-1);
	divw	a5,a4,a5	# _4, tmp112, _3
	sext.w	a5,a5	# _5, tmp112
# problem21.c:36:     sum *= (p*i - 1)/(i-1);
	lw	a4,-32(s0)		# tmp115, sum
	mulw	a5,a4,a5	# tmp113, tmp114, _5
	sw	a5,-32(s0)	# tmp113, sum
# problem21.c:30:   for (i = 2; i <= k; i++) {
	lw	a5,-28(s0)		# tmp118, i
	addiw	a5,a5,1	#, tmp116, tmp117
	sw	a5,-28(s0)	# tmp116, i
.L7:
# problem21.c:30:   for (i = 2; i <= k; i++) {
	lw	a5,-28(s0)		# tmp120, i
	mv	a4,a5	# tmp119, tmp120
	lw	a5,-24(s0)		# tmp122, k
	sext.w	a4,a4	# tmp123, tmp119
	sext.w	a5,a5	# tmp124, tmp121
	ble	a4,a5,.L10	#, tmp123, tmp124,
# problem21.c:38:   return sum - n;
	lw	a5,-32(s0)		# tmp127, sum
	mv	a4,a5	# tmp126, tmp127
	lw	a5,-36(s0)		# tmp129, n
	subw	a5,a4,a5	# tmp125, tmp126, tmp128
	sext.w	a5,a5	# _15, tmp125
# problem21.c:39: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	divisors_sum, .-divisors_sum
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
