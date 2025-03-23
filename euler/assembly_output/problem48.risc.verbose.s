	.file	"problem48.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%llu\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
# problem48.c:13:   unsigned long long rem = 0;
	sd	zero,-32(s0)	#, rem
# problem48.c:15:   for (i = 1; i < N; i++) {
	li	a5,1		# tmp77,
	sw	a5,-40(s0)	# tmp77, i
# problem48.c:15:   for (i = 1; i < N; i++) {
	j	.L2		#
.L5:
# problem48.c:16:     unsigned long long r = 1;
	li	a5,1		# tmp78,
	sd	a5,-24(s0)	# tmp78, r
# problem48.c:18:     for (j = 0; j < i; j++) {
	sw	zero,-36(s0)	#, j
# problem48.c:18:     for (j = 0; j < i; j++) {
	j	.L3		#
.L4:
# problem48.c:19:       r = (r * i) % Q;
	lwu	a4,-40(s0)	# _1, i
	ld	a5,-24(s0)		# tmp79, r
	mul	a4,a4,a5	# _2, _1, tmp79
# problem48.c:19:       r = (r * i) % Q;
	li	a5,9764864		# tmp82,
	addi	a5,a5,761	#, tmp83, tmp82
	slli	a5,a5,10	#, tmp81, tmp83
	remu	a5,a4,a5	# tmp81, tmp80, _2
	sd	a5,-24(s0)	# tmp80, r
# problem48.c:18:     for (j = 0; j < i; j++) {
	lw	a5,-36(s0)		# tmp86, j
	addiw	a5,a5,1	#, tmp84, tmp85
	sw	a5,-36(s0)	# tmp84, j
.L3:
# problem48.c:18:     for (j = 0; j < i; j++) {
	lw	a5,-36(s0)		# tmp88, j
	mv	a4,a5	# tmp87, tmp88
	lw	a5,-40(s0)		# tmp90, i
	sext.w	a4,a4	# tmp91, tmp87
	sext.w	a5,a5	# tmp92, tmp89
	bltu	a4,a5,.L4	#, tmp91, tmp92,
# problem48.c:21:     rem = (rem + r) % Q;
	ld	a4,-32(s0)		# tmp93, rem
	ld	a5,-24(s0)		# tmp94, r
	add	a4,a4,a5	# tmp94, _3, tmp93
# problem48.c:21:     rem = (rem + r) % Q;
	li	a5,9764864		# tmp97,
	addi	a5,a5,761	#, tmp98, tmp97
	slli	a5,a5,10	#, tmp96, tmp98
	remu	a5,a4,a5	# tmp96, tmp95, _3
	sd	a5,-32(s0)	# tmp95, rem
# problem48.c:15:   for (i = 1; i < N; i++) {
	lw	a5,-40(s0)		# tmp101, i
	addiw	a5,a5,1	#, tmp99, tmp100
	sw	a5,-40(s0)	# tmp99, i
.L2:
# problem48.c:15:   for (i = 1; i < N; i++) {
	lw	a5,-40(s0)		# tmp103, i
	sext.w	a4,a5	# tmp104, tmp102
	li	a5,999		# tmp105,
	bleu	a4,a5,.L5	#, tmp104, tmp105,
# problem48.c:23:   printf("%llu\n", rem);
	ld	a1,-32(s0)		#, rem
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem48.c:25:   return 0;
	li	a5,0		# _12,
# problem48.c:26: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
