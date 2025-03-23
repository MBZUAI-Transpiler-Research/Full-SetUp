	.file	"problem14.c"
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
# problem14.c:12:   unsigned i, max_c = 0, max_i = 0;
	sw	zero,-28(s0)	#, max_c
# problem14.c:12:   unsigned i, max_c = 0, max_i = 0;
	sw	zero,-24(s0)	#, max_i
# problem14.c:14:   for (i = 1; i < 1000000; i++) {
	li	a5,1		# tmp74,
	sw	a5,-32(s0)	# tmp74, i
# problem14.c:14:   for (i = 1; i < 1000000; i++) {
	j	.L2		#
.L4:
# problem14.c:15:     unsigned c = collatz_count(i);
	lw	a5,-32(s0)		# tmp75, i
	mv	a0,a5	#, tmp75
	call	collatz_count		#
	mv	a5,a0	# tmp76,
	sw	a5,-20(s0)	# tmp76, c
# problem14.c:16:     if (c > max_c) {
	lw	a5,-20(s0)		# tmp78, c
	mv	a4,a5	# tmp77, tmp78
	lw	a5,-28(s0)		# tmp80, max_c
	sext.w	a4,a4	# tmp81, tmp77
	sext.w	a5,a5	# tmp82, tmp79
	bleu	a4,a5,.L3	#, tmp81, tmp82,
# problem14.c:17:       max_c = c;
	lw	a5,-20(s0)		# tmp83, c
	sw	a5,-28(s0)	# tmp83, max_c
# problem14.c:18:       max_i = i;
	lw	a5,-32(s0)		# tmp84, i
	sw	a5,-24(s0)	# tmp84, max_i
.L3:
# problem14.c:14:   for (i = 1; i < 1000000; i++) {
	lw	a5,-32(s0)		# tmp87, i
	addiw	a5,a5,1	#, tmp85, tmp86
	sw	a5,-32(s0)	# tmp85, i
.L2:
# problem14.c:14:   for (i = 1; i < 1000000; i++) {
	lw	a5,-32(s0)		# tmp91, i
	sext.w	a4,a5	# tmp92, tmp90
	li	a5,999424		# tmp94,
	addi	a5,a5,575	#, tmp93, tmp94
	bleu	a4,a5,.L4	#, tmp92, tmp93,
# problem14.c:21:   printf("%u\n", max_i);
	lw	a5,-24(s0)		# tmp95, max_i
	mv	a1,a5	#, tmp95
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem14.c:22:   return 0;
	li	a5,0		# _12,
# problem14.c:23: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	main, .-main
	.align	1
	.type	collatz_count, @function
collatz_count:
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp77, n
	sw	a5,-36(s0)	# tmp78, n
# problem14.c:27:   unsigned c = 0;
	sw	zero,-20(s0)	#, c
# problem14.c:28:   while (n > 1) {
	j	.L7		#
.L10:
# problem14.c:29:     n = n%2==0 ? n/2 : 3*n+1;
	lw	a5,-36(s0)		# tmp80, n
	andi	a5,a5,1	#, tmp81, tmp79
	sext.w	a5,a5	# _1, tmp81
# problem14.c:29:     n = n%2==0 ? n/2 : 3*n+1;
	bne	a5,zero,.L8	#, _1,,
# problem14.c:29:     n = n%2==0 ? n/2 : 3*n+1;
	lw	a5,-36(s0)		# tmp84, n
	srliw	a5,a5,1	#, tmp82, tmp83
	sext.w	a5,a5	# iftmp.0_5, tmp82
	j	.L9		#
.L8:
# problem14.c:29:     n = n%2==0 ? n/2 : 3*n+1;
	lw	a5,-36(s0)		# tmp86, n
	mv	a4,a5	# tmp85, tmp86
	mv	a5,a4	# tmp87, tmp85
	slliw	a5,a5,1	#, tmp88, tmp87
	addw	a5,a5,a4	# tmp85, tmp87, tmp87
	sext.w	a5,a5	# _2, tmp87
# problem14.c:29:     n = n%2==0 ? n/2 : 3*n+1;
	addiw	a5,a5,1	#, tmp89, _2
	sext.w	a5,a5	# iftmp.0_5, tmp89
.L9:
# problem14.c:29:     n = n%2==0 ? n/2 : 3*n+1;
	sw	a5,-36(s0)	# iftmp.0_5, n
# problem14.c:30:     c++;
	lw	a5,-20(s0)		# tmp92, c
	addiw	a5,a5,1	#, tmp90, tmp91
	sw	a5,-20(s0)	# tmp90, c
.L7:
# problem14.c:28:   while (n > 1) {
	lw	a5,-36(s0)		# tmp94, n
	sext.w	a4,a5	# tmp95, tmp93
	li	a5,1		# tmp96,
	bgtu	a4,a5,.L10	#, tmp95, tmp96,
# problem14.c:32:   return c+1;
	lw	a5,-20(s0)		# tmp99, c
	addiw	a5,a5,1	#, tmp97, tmp98
	sext.w	a5,a5	# _8, tmp97
# problem14.c:33: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	collatz_count, .-collatz_count
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
