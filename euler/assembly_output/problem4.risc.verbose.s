	.file	"problem4.c"
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
# problem4.c:12:   unsigned int i, j, max = 0;
	sw	zero,-24(s0)	#, max
# problem4.c:13:   for (i = 100; i <= 999; i++) {
	li	a5,100		# tmp75,
	sw	a5,-32(s0)	# tmp75, i
# problem4.c:13:   for (i = 100; i <= 999; i++) {
	j	.L2		#
.L6:
# problem4.c:14:     for (j = 100; j <= 999; j++) {
	li	a5,100		# tmp76,
	sw	a5,-28(s0)	# tmp76, j
# problem4.c:14:     for (j = 100; j <= 999; j++) {
	j	.L3		#
.L5:
# problem4.c:15:       unsigned int p = i*j;
	lw	a5,-32(s0)		# tmp79, i
	mv	a4,a5	# tmp78, tmp79
	lw	a5,-28(s0)		# tmp81, j
	mulw	a5,a4,a5	# tmp77, tmp78, tmp80
	sw	a5,-20(s0)	# tmp77, p
# problem4.c:16:       if (is_palindromic(p) && p > max) {
	lw	a5,-20(s0)		# tmp82, p
	mv	a0,a5	#, tmp82
	call	is_palindromic		#
	mv	a5,a0	# tmp83,
# problem4.c:16:       if (is_palindromic(p) && p > max) {
	beq	a5,zero,.L4	#, _1,,
# problem4.c:16:       if (is_palindromic(p) && p > max) {
	lw	a5,-20(s0)		# tmp85, p
	mv	a4,a5	# tmp84, tmp85
	lw	a5,-24(s0)		# tmp87, max
	sext.w	a4,a4	# tmp88, tmp84
	sext.w	a5,a5	# tmp89, tmp86
	bleu	a4,a5,.L4	#, tmp88, tmp89,
# problem4.c:17:         max = p;
	lw	a5,-20(s0)		# tmp90, p
	sw	a5,-24(s0)	# tmp90, max
.L4:
# problem4.c:14:     for (j = 100; j <= 999; j++) {
	lw	a5,-28(s0)		# tmp93, j
	addiw	a5,a5,1	#, tmp91, tmp92
	sw	a5,-28(s0)	# tmp91, j
.L3:
# problem4.c:14:     for (j = 100; j <= 999; j++) {
	lw	a5,-28(s0)		# tmp95, j
	sext.w	a4,a5	# tmp96, tmp94
	li	a5,999		# tmp97,
	bleu	a4,a5,.L5	#, tmp96, tmp97,
# problem4.c:13:   for (i = 100; i <= 999; i++) {
	lw	a5,-32(s0)		# tmp100, i
	addiw	a5,a5,1	#, tmp98, tmp99
	sw	a5,-32(s0)	# tmp98, i
.L2:
# problem4.c:13:   for (i = 100; i <= 999; i++) {
	lw	a5,-32(s0)		# tmp102, i
	sext.w	a4,a5	# tmp103, tmp101
	li	a5,999		# tmp104,
	bleu	a4,a5,.L6	#, tmp103, tmp104,
# problem4.c:21:   printf("%u\n", max);
	lw	a5,-24(s0)		# tmp105, max
	mv	a1,a5	#, tmp105
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem4.c:22:   return 0;
	li	a5,0		# _13,
# problem4.c:23: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	main, .-main
	.align	1
	.type	is_palindromic, @function
is_palindromic:
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp77, n
	sw	a5,-36(s0)	# tmp78, n
# problem4.c:27:   unsigned int reversed = 0, t = n;
	sw	zero,-24(s0)	#, reversed
# problem4.c:27:   unsigned int reversed = 0, t = n;
	lw	a5,-36(s0)		# tmp79, n
	sw	a5,-20(s0)	# tmp79, t
# problem4.c:29:   while (t) {
	j	.L9		#
.L10:
# problem4.c:30:     reversed = 10*reversed + (t % 10);
	lw	a5,-24(s0)		# tmp81, reversed
	mv	a4,a5	# tmp80, tmp81
	mv	a5,a4	# tmp82, tmp80
	slliw	a5,a5,2	#, tmp83, tmp82
	addw	a5,a5,a4	# tmp80, tmp82, tmp82
	slliw	a5,a5,1	#, tmp84, tmp82
	sext.w	a4,a5	# _1, tmp82
# problem4.c:30:     reversed = 10*reversed + (t % 10);
	lw	a5,-20(s0)		# tmp87, t
	mv	a3,a5	# tmp86, tmp87
	li	a5,10		# tmp89,
	remuw	a5,a3,a5	# tmp89, tmp88, tmp86
	sext.w	a5,a5	# _2, tmp88
# problem4.c:30:     reversed = 10*reversed + (t % 10);
	addw	a5,a4,a5	# _2, tmp90, _1
	sw	a5,-24(s0)	# tmp90, reversed
# problem4.c:31:     t /= 10;
	lw	a5,-20(s0)		# tmp93, t
	mv	a4,a5	# tmp92, tmp93
	li	a5,10		# tmp95,
	divuw	a5,a4,a5	# tmp95, tmp94, tmp92
	sw	a5,-20(s0)	# tmp94, t
.L9:
# problem4.c:29:   while (t) {
	lw	a5,-20(s0)		# tmp97, t
	sext.w	a5,a5	# tmp98, tmp96
	bne	a5,zero,.L10	#, tmp98,,
# problem4.c:33:   return reversed == n;
	lw	a5,-24(s0)		# tmp101, reversed
	mv	a4,a5	# tmp100, tmp101
	lw	a5,-36(s0)		# tmp103, n
	sext.w	a4,a4	# tmp105, tmp100
	sext.w	a5,a5	# tmp107, tmp102
	sub	a5,a4,a5	# tmp106, tmp105, tmp107
	seqz	a5,a5	# tmp104, tmp106
	andi	a5,a5,0xff	# _3, tmp99
	sext.w	a5,a5	# _9, _3
# problem4.c:34: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	is_palindromic, .-is_palindromic
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
