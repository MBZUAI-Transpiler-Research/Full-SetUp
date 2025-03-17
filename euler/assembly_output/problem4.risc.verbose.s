	.file	"problem4.c"
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
	.string	"%u\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
# problem4.c:12:   unsigned int i, j, max = 0;
	sw	zero,-24(s0)	#, max
# problem4.c:13:   for (i = 100; i <= 999; i++) {
	li	a5,100		# tmp137,
	sw	a5,-32(s0)	# tmp137, i
# problem4.c:13:   for (i = 100; i <= 999; i++) {
	j	.L2		#
.L6:
# problem4.c:14:     for (j = 100; j <= 999; j++) {
	li	a5,100		# tmp138,
	sw	a5,-28(s0)	# tmp138, j
# problem4.c:14:     for (j = 100; j <= 999; j++) {
	j	.L3		#
.L5:
# problem4.c:15:       unsigned int p = i*j;
	lw	a5,-32(s0)		# tmp141, i
	mv	a4,a5	# tmp140, tmp141
	lw	a5,-28(s0)		# tmp143, j
	mulw	a5,a4,a5	# tmp139, tmp140, tmp142
	sw	a5,-20(s0)	# tmp139, p
# problem4.c:16:       if (is_palindromic(p) && p > max) {
	lw	a5,-20(s0)		# tmp144, p
	mv	a0,a5	#, tmp144
	call	is_palindromic		#
	mv	a5,a0	# tmp145,
# problem4.c:16:       if (is_palindromic(p) && p > max) {
	beq	a5,zero,.L4	#, _1,,
# problem4.c:16:       if (is_palindromic(p) && p > max) {
	lw	a5,-20(s0)		# tmp147, p
	mv	a4,a5	# tmp146, tmp147
	lw	a5,-24(s0)		# tmp149, max
	sext.w	a4,a4	# tmp150, tmp146
	sext.w	a5,a5	# tmp151, tmp148
	bleu	a4,a5,.L4	#, tmp150, tmp151,
# problem4.c:17:         max = p;
	lw	a5,-20(s0)		# tmp152, p
	sw	a5,-24(s0)	# tmp152, max
.L4:
# problem4.c:14:     for (j = 100; j <= 999; j++) {
	lw	a5,-28(s0)		# tmp155, j
	addiw	a5,a5,1	#, tmp153, tmp154
	sw	a5,-28(s0)	# tmp153, j
.L3:
# problem4.c:14:     for (j = 100; j <= 999; j++) {
	lw	a5,-28(s0)		# tmp157, j
	sext.w	a4,a5	# tmp158, tmp156
	li	a5,999		# tmp159,
	bleu	a4,a5,.L5	#, tmp158, tmp159,
# problem4.c:13:   for (i = 100; i <= 999; i++) {
	lw	a5,-32(s0)		# tmp162, i
	addiw	a5,a5,1	#, tmp160, tmp161
	sw	a5,-32(s0)	# tmp160, i
.L2:
# problem4.c:13:   for (i = 100; i <= 999; i++) {
	lw	a5,-32(s0)		# tmp164, i
	sext.w	a4,a5	# tmp165, tmp163
	li	a5,999		# tmp166,
	bleu	a4,a5,.L6	#, tmp165, tmp166,
# problem4.c:21:   printf("%u\n", max);
	lw	a5,-24(s0)		# tmp167, max
	mv	a1,a5	#, tmp167
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem4.c:22:   return 0;
	li	a5,0		# _13,
# problem4.c:23: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	.cfi_restore 1
	ld	s0,16(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	1
	.type	is_palindromic, @function
is_palindromic:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp139, n
	sw	a5,-36(s0)	# tmp140, n
# problem4.c:27:   unsigned int reversed = 0, t = n;
	sw	zero,-24(s0)	#, reversed
# problem4.c:27:   unsigned int reversed = 0, t = n;
	lw	a5,-36(s0)		# tmp141, n
	sw	a5,-20(s0)	# tmp141, t
# problem4.c:29:   while (t) {
	j	.L9		#
.L10:
# problem4.c:30:     reversed = 10*reversed + (t % 10);
	lw	a5,-24(s0)		# tmp143, reversed
	mv	a4,a5	# tmp142, tmp143
	mv	a5,a4	# tmp144, tmp142
	slliw	a5,a5,2	#, tmp145, tmp144
	addw	a5,a5,a4	# tmp142, tmp144, tmp144
	slliw	a5,a5,1	#, tmp146, tmp144
	sext.w	a4,a5	# _1, tmp144
# problem4.c:30:     reversed = 10*reversed + (t % 10);
	lw	a5,-20(s0)		# tmp149, t
	mv	a3,a5	# tmp148, tmp149
	li	a5,10		# tmp151,
	remuw	a5,a3,a5	# tmp151, tmp150, tmp148
	sext.w	a5,a5	# _2, tmp150
# problem4.c:30:     reversed = 10*reversed + (t % 10);
	addw	a5,a4,a5	# _2, tmp152, _1
	sw	a5,-24(s0)	# tmp152, reversed
# problem4.c:31:     t /= 10;
	lw	a5,-20(s0)		# tmp155, t
	mv	a4,a5	# tmp154, tmp155
	li	a5,10		# tmp157,
	divuw	a5,a4,a5	# tmp157, tmp156, tmp154
	sw	a5,-20(s0)	# tmp156, t
.L9:
# problem4.c:29:   while (t) {
	lw	a5,-20(s0)		# tmp159, t
	sext.w	a5,a5	# tmp160, tmp158
	bne	a5,zero,.L10	#, tmp160,,
# problem4.c:33:   return reversed == n;
	lw	a5,-24(s0)		# tmp163, reversed
	mv	a4,a5	# tmp162, tmp163
	lw	a5,-36(s0)		# tmp165, n
	sext.w	a4,a4	# tmp167, tmp162
	sext.w	a5,a5	# tmp169, tmp164
	sub	a5,a4,a5	# tmp168, tmp167, tmp169
	seqz	a5,a5	# tmp166, tmp168
	andi	a5,a5,0xff	# _3, tmp161
	sext.w	a5,a5	# _9, _3
# problem4.c:34: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	is_palindromic, .-is_palindromic
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
