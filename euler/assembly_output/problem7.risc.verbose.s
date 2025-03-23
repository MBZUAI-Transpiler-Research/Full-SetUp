	.file	"problem7.c"
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
	.string	"%lu\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
# problem7.c:13:   unsigned count = 0;
	sw	zero,-56(s0)	#, count
# problem7.c:14:   size_t n = 1000000;
	li	a5,999424		# tmp140,
	addi	a5,a5,576	#, tmp139, tmp140
	sd	a5,-32(s0)	# tmp139, n
# problem7.c:15:   const unsigned target = 10001;
	li	a5,8192		# tmp142,
	addi	a5,a5,1809	#, tmp141, tmp142
	sw	a5,-52(s0)	# tmp141, target
# problem7.c:17:   sieve = calloc(n, sizeof *sieve);
	li	a1,1		#,
	ld	a0,-32(s0)		#, n
	call	calloc@plt	#
	mv	a5,a0	# tmp143,
	sd	a5,-24(s0)	# tmp143, sieve
# problem7.c:18:   for (i = 2; i < n; i++) {
	li	a5,2		# tmp144,
	sd	a5,-48(s0)	# tmp144, i
# problem7.c:18:   for (i = 2; i < n; i++) {
	j	.L2		#
.L8:
# problem7.c:19:     if (!sieve[i]) {
	ld	a4,-24(s0)		# tmp145, sieve
	ld	a5,-48(s0)		# tmp146, i
	add	a5,a4,a5	# tmp146, _1, tmp145
	lbu	a5,0(a5)	# _2, *_1
# problem7.c:19:     if (!sieve[i]) {
	bne	a5,zero,.L3	#, _2,,
# problem7.c:22:       count++;
	lw	a5,-56(s0)		# tmp149, count
	addiw	a5,a5,1	#, tmp147, tmp148
	sw	a5,-56(s0)	# tmp147, count
# problem7.c:23:       if (count == target) {
	lw	a5,-56(s0)		# tmp151, count
	mv	a4,a5	# tmp150, tmp151
	lw	a5,-52(s0)		# tmp153, target
	sext.w	a4,a4	# tmp154, tmp150
	sext.w	a5,a5	# tmp155, tmp152
	bne	a4,a5,.L4	#, tmp154, tmp155,
# problem7.c:24:         printf("%lu\n", i);
	ld	a1,-48(s0)		#, i
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem7.c:25:         break;
	j	.L5		#
.L4:
# problem7.c:27:       for (j = i*2; j < n; j += i) {
	ld	a5,-48(s0)		# tmp157, i
	slli	a5,a5,1	#, tmp156, tmp157
	sd	a5,-40(s0)	# tmp156, j
# problem7.c:27:       for (j = i*2; j < n; j += i) {
	j	.L6		#
.L7:
# problem7.c:28:         sieve[j] = 1;
	ld	a4,-24(s0)		# tmp158, sieve
	ld	a5,-40(s0)		# tmp159, j
	add	a5,a4,a5	# tmp159, _3, tmp158
# problem7.c:28:         sieve[j] = 1;
	li	a4,1		# tmp160,
	sb	a4,0(a5)	# tmp160, *_3
# problem7.c:27:       for (j = i*2; j < n; j += i) {
	ld	a4,-40(s0)		# tmp162, j
	ld	a5,-48(s0)		# tmp163, i
	add	a5,a4,a5	# tmp163, tmp161, tmp162
	sd	a5,-40(s0)	# tmp161, j
.L6:
# problem7.c:27:       for (j = i*2; j < n; j += i) {
	ld	a4,-40(s0)		# tmp164, j
	ld	a5,-32(s0)		# tmp165, n
	bltu	a4,a5,.L7	#, tmp164, tmp165,
.L3:
# problem7.c:18:   for (i = 2; i < n; i++) {
	ld	a5,-48(s0)		# tmp167, i
	addi	a5,a5,1	#, tmp166, tmp167
	sd	a5,-48(s0)	# tmp166, i
.L2:
# problem7.c:18:   for (i = 2; i < n; i++) {
	ld	a4,-48(s0)		# tmp168, i
	ld	a5,-32(s0)		# tmp169, n
	bltu	a4,a5,.L8	#, tmp168, tmp169,
.L5:
# problem7.c:32:   free(sieve);
	ld	a0,-24(s0)		#, sieve
	call	free@plt	#
# problem7.c:34:   return 0;
	li	a5,0		# _26,
# problem7.c:35: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
