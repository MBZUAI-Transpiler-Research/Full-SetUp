	.file	"problem48.c"
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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
# problem48.c:13:   unsigned long long rem = 0;
	sd	zero,-32(s0)	#, rem
# problem48.c:15:   for (i = 1; i < N; i++) {
	li	a5,1		# tmp139,
	sw	a5,-40(s0)	# tmp139, i
# problem48.c:15:   for (i = 1; i < N; i++) {
	j	.L2		#
.L5:
# problem48.c:16:     unsigned long long r = 1;
	li	a5,1		# tmp140,
	sd	a5,-24(s0)	# tmp140, r
# problem48.c:18:     for (j = 0; j < i; j++) {
	sw	zero,-36(s0)	#, j
# problem48.c:18:     for (j = 0; j < i; j++) {
	j	.L3		#
.L4:
# problem48.c:19:       r = (r * i) % Q;
	lwu	a4,-40(s0)	# _1, i
	ld	a5,-24(s0)		# tmp141, r
	mul	a4,a4,a5	# _2, _1, tmp141
# problem48.c:19:       r = (r * i) % Q;
	li	a5,9764864		# tmp144,
	addi	a5,a5,761	#, tmp145, tmp144
	slli	a5,a5,10	#, tmp143, tmp145
	remu	a5,a4,a5	# tmp143, tmp142, _2
	sd	a5,-24(s0)	# tmp142, r
# problem48.c:18:     for (j = 0; j < i; j++) {
	lw	a5,-36(s0)		# tmp148, j
	addiw	a5,a5,1	#, tmp146, tmp147
	sw	a5,-36(s0)	# tmp146, j
.L3:
# problem48.c:18:     for (j = 0; j < i; j++) {
	lw	a5,-36(s0)		# tmp150, j
	mv	a4,a5	# tmp149, tmp150
	lw	a5,-40(s0)		# tmp152, i
	sext.w	a4,a4	# tmp153, tmp149
	sext.w	a5,a5	# tmp154, tmp151
	bltu	a4,a5,.L4	#, tmp153, tmp154,
# problem48.c:21:     rem = (rem + r) % Q;
	ld	a4,-32(s0)		# tmp155, rem
	ld	a5,-24(s0)		# tmp156, r
	add	a4,a4,a5	# tmp156, _3, tmp155
# problem48.c:21:     rem = (rem + r) % Q;
	li	a5,9764864		# tmp159,
	addi	a5,a5,761	#, tmp160, tmp159
	slli	a5,a5,10	#, tmp158, tmp160
	remu	a5,a4,a5	# tmp158, tmp157, _3
	sd	a5,-32(s0)	# tmp157, rem
# problem48.c:15:   for (i = 1; i < N; i++) {
	lw	a5,-40(s0)		# tmp163, i
	addiw	a5,a5,1	#, tmp161, tmp162
	sw	a5,-40(s0)	# tmp161, i
.L2:
# problem48.c:15:   for (i = 1; i < N; i++) {
	lw	a5,-40(s0)		# tmp165, i
	sext.w	a4,a5	# tmp166, tmp164
	li	a5,999		# tmp167,
	bleu	a4,a5,.L5	#, tmp166, tmp167,
# problem48.c:23:   printf("%llu\n", rem);
	ld	a1,-32(s0)		#, rem
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem48.c:25:   return 0;
	li	a5,0		# _12,
# problem48.c:26: }
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
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
