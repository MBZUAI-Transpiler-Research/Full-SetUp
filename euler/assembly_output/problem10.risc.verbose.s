	.file	"problem10.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
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
.LFB6:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
# problem10.c:13:   size_t n = 2000000;
	li	a5,1998848		# tmp145,
	addi	a5,a5,1152	#, tmp144, tmp145
	sd	a5,-32(s0)	# tmp144, n
# problem10.c:14:   unsigned long long sum = 0ULL;
	sd	zero,-40(s0)	#, sum
# problem10.c:16:   sieve = calloc(n, sizeof *sieve);
	li	a1,1		#,
	ld	a0,-32(s0)		#, n
	call	calloc@plt	#
	mv	a5,a0	# tmp146,
	sd	a5,-24(s0)	# tmp146, sieve
# problem10.c:17:   for (i = 2; i < n; i++) {
	li	a5,2		# tmp147,
	sw	a5,-48(s0)	# tmp147, i
# problem10.c:17:   for (i = 2; i < n; i++) {
	j	.L2		#
.L6:
# problem10.c:18:     if (!sieve[i]) {
	lwu	a5,-48(s0)	# _1, i
	ld	a4,-24(s0)		# tmp148, sieve
	add	a5,a4,a5	# _1, _2, tmp148
	lbu	a5,0(a5)	# _3, *_2
# problem10.c:18:     if (!sieve[i]) {
	bne	a5,zero,.L3	#, _3,,
# problem10.c:19:       sum += i;
	lwu	a5,-48(s0)	# _4, i
	ld	a4,-40(s0)		# tmp150, sum
	add	a5,a4,a5	# _4, tmp149, tmp150
	sd	a5,-40(s0)	# tmp149, sum
# problem10.c:20:       for (j = i*2; j < n; j += i) {
	lw	a5,-48(s0)		# tmp153, i
	slliw	a5,a5,1	#, tmp151, tmp152
	sw	a5,-44(s0)	# tmp151, j
# problem10.c:20:       for (j = i*2; j < n; j += i) {
	j	.L4		#
.L5:
# problem10.c:21:         sieve[j] = 1;
	lwu	a5,-44(s0)	# _5, j
	ld	a4,-24(s0)		# tmp154, sieve
	add	a5,a4,a5	# _5, _6, tmp154
# problem10.c:21:         sieve[j] = 1;
	li	a4,1		# tmp155,
	sb	a4,0(a5)	# tmp155, *_6
# problem10.c:20:       for (j = i*2; j < n; j += i) {
	lw	a5,-44(s0)		# tmp158, j
	mv	a4,a5	# tmp157, tmp158
	lw	a5,-48(s0)		# tmp160, i
	addw	a5,a4,a5	# tmp159, tmp156, tmp157
	sw	a5,-44(s0)	# tmp156, j
.L4:
# problem10.c:20:       for (j = i*2; j < n; j += i) {
	lwu	a5,-44(s0)	# _7, j
	ld	a4,-32(s0)		# tmp161, n
	bgtu	a4,a5,.L5	#, tmp161, _7,
.L3:
# problem10.c:17:   for (i = 2; i < n; i++) {
	lw	a5,-48(s0)		# tmp164, i
	addiw	a5,a5,1	#, tmp162, tmp163
	sw	a5,-48(s0)	# tmp162, i
.L2:
# problem10.c:17:   for (i = 2; i < n; i++) {
	lwu	a5,-48(s0)	# _8, i
	ld	a4,-32(s0)		# tmp165, n
	bgtu	a4,a5,.L6	#, tmp165, _8,
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
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
