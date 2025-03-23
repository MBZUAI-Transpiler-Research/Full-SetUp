	.file	"problem7.c"
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
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
# problem7.c:13:   unsigned count = 0;
	sw	zero,-56(s0)	#, count
# problem7.c:14:   size_t n = 1000000;
	li	a5,999424		# tmp78,
	addi	a5,a5,576	#, tmp77, tmp78
	sd	a5,-32(s0)	# tmp77, n
# problem7.c:15:   const unsigned target = 10001;
	li	a5,8192		# tmp80,
	addi	a5,a5,1809	#, tmp79, tmp80
	sw	a5,-52(s0)	# tmp79, target
# problem7.c:17:   sieve = calloc(n, sizeof *sieve);
	li	a1,1		#,
	ld	a0,-32(s0)		#, n
	call	calloc@plt	#
	mv	a5,a0	# tmp81,
	sd	a5,-24(s0)	# tmp81, sieve
# problem7.c:18:   for (i = 2; i < n; i++) {
	li	a5,2		# tmp82,
	sd	a5,-48(s0)	# tmp82, i
# problem7.c:18:   for (i = 2; i < n; i++) {
	j	.L2		#
.L8:
# problem7.c:19:     if (!sieve[i]) {
	ld	a4,-24(s0)		# tmp83, sieve
	ld	a5,-48(s0)		# tmp84, i
	add	a5,a4,a5	# tmp84, _1, tmp83
	lbu	a5,0(a5)	# _2, *_1
# problem7.c:19:     if (!sieve[i]) {
	bne	a5,zero,.L3	#, _2,,
# problem7.c:22:       count++;
	lw	a5,-56(s0)		# tmp87, count
	addiw	a5,a5,1	#, tmp85, tmp86
	sw	a5,-56(s0)	# tmp85, count
# problem7.c:23:       if (count == target) {
	lw	a5,-56(s0)		# tmp89, count
	mv	a4,a5	# tmp88, tmp89
	lw	a5,-52(s0)		# tmp91, target
	sext.w	a4,a4	# tmp92, tmp88
	sext.w	a5,a5	# tmp93, tmp90
	bne	a4,a5,.L4	#, tmp92, tmp93,
# problem7.c:24:         printf("%lu\n", i);
	ld	a1,-48(s0)		#, i
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem7.c:25:         break;
	j	.L5		#
.L4:
# problem7.c:27:       for (j = i*2; j < n; j += i) {
	ld	a5,-48(s0)		# tmp95, i
	slli	a5,a5,1	#, tmp94, tmp95
	sd	a5,-40(s0)	# tmp94, j
# problem7.c:27:       for (j = i*2; j < n; j += i) {
	j	.L6		#
.L7:
# problem7.c:28:         sieve[j] = 1;
	ld	a4,-24(s0)		# tmp96, sieve
	ld	a5,-40(s0)		# tmp97, j
	add	a5,a4,a5	# tmp97, _3, tmp96
# problem7.c:28:         sieve[j] = 1;
	li	a4,1		# tmp98,
	sb	a4,0(a5)	# tmp98, *_3
# problem7.c:27:       for (j = i*2; j < n; j += i) {
	ld	a4,-40(s0)		# tmp100, j
	ld	a5,-48(s0)		# tmp101, i
	add	a5,a4,a5	# tmp101, tmp99, tmp100
	sd	a5,-40(s0)	# tmp99, j
.L6:
# problem7.c:27:       for (j = i*2; j < n; j += i) {
	ld	a4,-40(s0)		# tmp102, j
	ld	a5,-32(s0)		# tmp103, n
	bltu	a4,a5,.L7	#, tmp102, tmp103,
.L3:
# problem7.c:18:   for (i = 2; i < n; i++) {
	ld	a5,-48(s0)		# tmp105, i
	addi	a5,a5,1	#, tmp104, tmp105
	sd	a5,-48(s0)	# tmp104, i
.L2:
# problem7.c:18:   for (i = 2; i < n; i++) {
	ld	a4,-48(s0)		# tmp106, i
	ld	a5,-32(s0)		# tmp107, n
	bltu	a4,a5,.L8	#, tmp106, tmp107,
.L5:
# problem7.c:32:   free(sieve);
	ld	a0,-24(s0)		#, sieve
	call	free@plt	#
# problem7.c:34:   return 0;
	li	a5,0		# _26,
# problem7.c:35: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
