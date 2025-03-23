	.file	"problem10.c"
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
# problem10.c:13:   size_t n = 2000000;
	li	a5,1998848		# tmp83,
	addi	a5,a5,1152	#, tmp82, tmp83
	sd	a5,-32(s0)	# tmp82, n
# problem10.c:14:   unsigned long long sum = 0ULL;
	sd	zero,-40(s0)	#, sum
# problem10.c:16:   sieve = calloc(n, sizeof *sieve);
	li	a1,1		#,
	ld	a0,-32(s0)		#, n
	call	calloc@plt	#
	mv	a5,a0	# tmp84,
	sd	a5,-24(s0)	# tmp84, sieve
# problem10.c:17:   for (i = 2; i < n; i++) {
	li	a5,2		# tmp85,
	sw	a5,-48(s0)	# tmp85, i
# problem10.c:17:   for (i = 2; i < n; i++) {
	j	.L2		#
.L6:
# problem10.c:18:     if (!sieve[i]) {
	lwu	a5,-48(s0)	# _1, i
	ld	a4,-24(s0)		# tmp86, sieve
	add	a5,a4,a5	# _1, _2, tmp86
	lbu	a5,0(a5)	# _3, *_2
# problem10.c:18:     if (!sieve[i]) {
	bne	a5,zero,.L3	#, _3,,
# problem10.c:19:       sum += i;
	lwu	a5,-48(s0)	# _4, i
	ld	a4,-40(s0)		# tmp88, sum
	add	a5,a4,a5	# _4, tmp87, tmp88
	sd	a5,-40(s0)	# tmp87, sum
# problem10.c:20:       for (j = i*2; j < n; j += i) {
	lw	a5,-48(s0)		# tmp91, i
	slliw	a5,a5,1	#, tmp89, tmp90
	sw	a5,-44(s0)	# tmp89, j
# problem10.c:20:       for (j = i*2; j < n; j += i) {
	j	.L4		#
.L5:
# problem10.c:21:         sieve[j] = 1;
	lwu	a5,-44(s0)	# _5, j
	ld	a4,-24(s0)		# tmp92, sieve
	add	a5,a4,a5	# _5, _6, tmp92
# problem10.c:21:         sieve[j] = 1;
	li	a4,1		# tmp93,
	sb	a4,0(a5)	# tmp93, *_6
# problem10.c:20:       for (j = i*2; j < n; j += i) {
	lw	a5,-44(s0)		# tmp96, j
	mv	a4,a5	# tmp95, tmp96
	lw	a5,-48(s0)		# tmp98, i
	addw	a5,a4,a5	# tmp97, tmp94, tmp95
	sw	a5,-44(s0)	# tmp94, j
.L4:
# problem10.c:20:       for (j = i*2; j < n; j += i) {
	lwu	a5,-44(s0)	# _7, j
	ld	a4,-32(s0)		# tmp99, n
	bgtu	a4,a5,.L5	#, tmp99, _7,
.L3:
# problem10.c:17:   for (i = 2; i < n; i++) {
	lw	a5,-48(s0)		# tmp102, i
	addiw	a5,a5,1	#, tmp100, tmp101
	sw	a5,-48(s0)	# tmp100, i
.L2:
# problem10.c:17:   for (i = 2; i < n; i++) {
	lwu	a5,-48(s0)	# _8, i
	ld	a4,-32(s0)		# tmp103, n
	bgtu	a4,a5,.L6	#, tmp103, _8,
# problem10.c:25:   free(sieve);
	ld	a0,-24(s0)		#, sieve
	call	free@plt	#
# problem10.c:27:   printf("%llu\n", sum);
	ld	a1,-40(s0)		#, sum
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem10.c:29:   return 0;
	li	a5,0		# _24,
# problem10.c:30: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
