	.file	"problem47.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%u\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
# problem47.c:16:   unsigned i, j = 0;
	sw	zero,-20(s0)	#, j
# problem47.c:17:   for (i = 2; i < M && j < N; i++) {
	li	a5,2		# tmp77,
	sw	a5,-24(s0)	# tmp77, i
# problem47.c:17:   for (i = 2; i < M && j < N; i++) {
	j	.L2		#
.L7:
# problem47.c:18:     for (j = 0; j < N && distinct_factor_count(i+j) == 4; j++)
	sw	zero,-20(s0)	#, j
# problem47.c:18:     for (j = 0; j < N && distinct_factor_count(i+j) == 4; j++)
	j	.L3		#
.L5:
# problem47.c:18:     for (j = 0; j < N && distinct_factor_count(i+j) == 4; j++)
	lw	a5,-20(s0)		# tmp80, j
	addiw	a5,a5,1	#, tmp78, tmp79
	sw	a5,-20(s0)	# tmp78, j
.L3:
# problem47.c:18:     for (j = 0; j < N && distinct_factor_count(i+j) == 4; j++)
	lw	a5,-20(s0)		# tmp82, j
	sext.w	a4,a5	# tmp83, tmp81
	li	a5,3		# tmp84,
	bgtu	a4,a5,.L4	#, tmp83, tmp84,
# problem47.c:18:     for (j = 0; j < N && distinct_factor_count(i+j) == 4; j++)
	lw	a5,-24(s0)		# tmp87, i
	mv	a4,a5	# tmp86, tmp87
	lw	a5,-20(s0)		# tmp89, j
	addw	a5,a4,a5	# tmp88, tmp85, tmp86
	sext.w	a5,a5	# _1, tmp85
	mv	a0,a5	#, _1
	call	distinct_factor_count		#
	mv	a5,a0	# tmp90,
# problem47.c:18:     for (j = 0; j < N && distinct_factor_count(i+j) == 4; j++)
	mv	a4,a5	# tmp91, _2
	li	a5,4		# tmp92,
	beq	a4,a5,.L5	#, tmp91, tmp92,
.L4:
# problem47.c:17:   for (i = 2; i < M && j < N; i++) {
	lw	a5,-24(s0)		# tmp95, i
	addiw	a5,a5,1	#, tmp93, tmp94
	sw	a5,-24(s0)	# tmp93, i
.L2:
# problem47.c:17:   for (i = 2; i < M && j < N; i++) {
	lw	a5,-24(s0)		# tmp99, i
	sext.w	a4,a5	# tmp100, tmp98
	li	a5,999424		# tmp102,
	addi	a5,a5,575	#, tmp101, tmp102
	bgtu	a4,a5,.L6	#, tmp100, tmp101,
# problem47.c:17:   for (i = 2; i < M && j < N; i++) {
	lw	a5,-20(s0)		# tmp104, j
	sext.w	a4,a5	# tmp105, tmp103
	li	a5,3		# tmp106,
	bleu	a4,a5,.L7	#, tmp105, tmp106,
.L6:
# problem47.c:21:   printf("%u\n", i-1);
	lw	a5,-24(s0)		# tmp109, i
	addiw	a5,a5,-1	#, tmp107, tmp108
	sext.w	a5,a5	# _3, tmp107
	mv	a1,a5	#, _3
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem47.c:23:   return 0;
	li	a5,0		# _18,
# problem47.c:24: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	main, .-main
	.align	1
	.type	distinct_factor_count, @function
distinct_factor_count:
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp76, n
	sw	a5,-36(s0)	# tmp77, n
# problem47.c:28:   unsigned count = 0;
	sw	zero,-24(s0)	#, count
# problem47.c:30:   for (i = 2; i <= n; i++) {
	li	a5,2		# tmp78,
	sw	a5,-20(s0)	# tmp78, i
# problem47.c:30:   for (i = 2; i <= n; i++) {
	j	.L10		#
.L14:
# problem47.c:31:     if (n % i == 0) {
	lw	a5,-36(s0)		# tmp81, n
	mv	a4,a5	# tmp80, tmp81
	lw	a5,-20(s0)		# tmp84, i
	remuw	a5,a4,a5	# tmp83, tmp82, tmp80
	sext.w	a5,a5	# _1, tmp82
# problem47.c:31:     if (n % i == 0) {
	bne	a5,zero,.L11	#, _1,,
# problem47.c:32:       count++;
	lw	a5,-24(s0)		# tmp87, count
	addiw	a5,a5,1	#, tmp85, tmp86
	sw	a5,-24(s0)	# tmp85, count
# problem47.c:33:       n /= i;
	lw	a5,-36(s0)		# tmp91, n
	mv	a4,a5	# tmp90, tmp91
	lw	a5,-20(s0)		# tmp93, i
	divuw	a5,a4,a5	# tmp92, tmp89, tmp90
	sw	a5,-36(s0)	# tmp89, n
# problem47.c:34:       while (n % i == 0) {
	j	.L12		#
.L13:
# problem47.c:35:         n /= i;
	lw	a5,-36(s0)		# tmp97, n
	mv	a4,a5	# tmp96, tmp97
	lw	a5,-20(s0)		# tmp99, i
	divuw	a5,a4,a5	# tmp98, tmp95, tmp96
	sw	a5,-36(s0)	# tmp95, n
.L12:
# problem47.c:34:       while (n % i == 0) {
	lw	a5,-36(s0)		# tmp102, n
	mv	a4,a5	# tmp101, tmp102
	lw	a5,-20(s0)		# tmp105, i
	remuw	a5,a4,a5	# tmp104, tmp103, tmp101
	sext.w	a5,a5	# _2, tmp103
# problem47.c:34:       while (n % i == 0) {
	beq	a5,zero,.L13	#, _2,,
.L11:
# problem47.c:30:   for (i = 2; i <= n; i++) {
	lw	a5,-20(s0)		# tmp108, i
	addiw	a5,a5,1	#, tmp106, tmp107
	sw	a5,-20(s0)	# tmp106, i
.L10:
# problem47.c:30:   for (i = 2; i <= n; i++) {
	lw	a5,-20(s0)		# tmp110, i
	mv	a4,a5	# tmp109, tmp110
	lw	a5,-36(s0)		# tmp112, n
	sext.w	a4,a4	# tmp113, tmp109
	sext.w	a5,a5	# tmp114, tmp111
	bleu	a4,a5,.L14	#, tmp113, tmp114,
# problem47.c:39:   return count;
	lw	a5,-24(s0)		# _12, count
# problem47.c:40: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	distinct_factor_count, .-distinct_factor_count
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
