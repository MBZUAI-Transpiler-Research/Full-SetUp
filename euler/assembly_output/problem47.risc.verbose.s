	.file	"problem47.c"
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
# problem47.c:16:   unsigned i, j = 0;
	sw	zero,-20(s0)	#, j
# problem47.c:17:   for (i = 2; i < M && j < N; i++) {
	li	a5,2		# tmp139,
	sw	a5,-24(s0)	# tmp139, i
# problem47.c:17:   for (i = 2; i < M && j < N; i++) {
	j	.L2		#
.L7:
# problem47.c:18:     for (j = 0; j < N && distinct_factor_count(i+j) == 4; j++)
	sw	zero,-20(s0)	#, j
# problem47.c:18:     for (j = 0; j < N && distinct_factor_count(i+j) == 4; j++)
	j	.L3		#
.L5:
# problem47.c:18:     for (j = 0; j < N && distinct_factor_count(i+j) == 4; j++)
	lw	a5,-20(s0)		# tmp142, j
	addiw	a5,a5,1	#, tmp140, tmp141
	sw	a5,-20(s0)	# tmp140, j
.L3:
# problem47.c:18:     for (j = 0; j < N && distinct_factor_count(i+j) == 4; j++)
	lw	a5,-20(s0)		# tmp144, j
	sext.w	a4,a5	# tmp145, tmp143
	li	a5,3		# tmp146,
	bgtu	a4,a5,.L4	#, tmp145, tmp146,
# problem47.c:18:     for (j = 0; j < N && distinct_factor_count(i+j) == 4; j++)
	lw	a5,-24(s0)		# tmp149, i
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-20(s0)		# tmp151, j
	addw	a5,a4,a5	# tmp150, tmp147, tmp148
	sext.w	a5,a5	# _1, tmp147
	mv	a0,a5	#, _1
	call	distinct_factor_count		#
	mv	a5,a0	# tmp152,
# problem47.c:18:     for (j = 0; j < N && distinct_factor_count(i+j) == 4; j++)
	mv	a4,a5	# tmp153, _2
	li	a5,4		# tmp154,
	beq	a4,a5,.L5	#, tmp153, tmp154,
.L4:
# problem47.c:17:   for (i = 2; i < M && j < N; i++) {
	lw	a5,-24(s0)		# tmp157, i
	addiw	a5,a5,1	#, tmp155, tmp156
	sw	a5,-24(s0)	# tmp155, i
.L2:
# problem47.c:17:   for (i = 2; i < M && j < N; i++) {
	lw	a5,-24(s0)		# tmp161, i
	sext.w	a4,a5	# tmp162, tmp160
	li	a5,999424		# tmp164,
	addi	a5,a5,575	#, tmp163, tmp164
	bgtu	a4,a5,.L6	#, tmp162, tmp163,
# problem47.c:17:   for (i = 2; i < M && j < N; i++) {
	lw	a5,-20(s0)		# tmp166, j
	sext.w	a4,a5	# tmp167, tmp165
	li	a5,3		# tmp168,
	bleu	a4,a5,.L7	#, tmp167, tmp168,
.L6:
# problem47.c:21:   printf("%u\n", i-1);
	lw	a5,-24(s0)		# tmp171, i
	addiw	a5,a5,-1	#, tmp169, tmp170
	sext.w	a5,a5	# _3, tmp169
	mv	a1,a5	#, _3
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem47.c:23:   return 0;
	li	a5,0		# _18,
# problem47.c:24: }
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
	.type	distinct_factor_count, @function
distinct_factor_count:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp138, n
	sw	a5,-36(s0)	# tmp139, n
# problem47.c:28:   unsigned count = 0;
	sw	zero,-24(s0)	#, count
# problem47.c:30:   for (i = 2; i <= n; i++) {
	li	a5,2		# tmp140,
	sw	a5,-20(s0)	# tmp140, i
# problem47.c:30:   for (i = 2; i <= n; i++) {
	j	.L10		#
.L14:
# problem47.c:31:     if (n % i == 0) {
	lw	a5,-36(s0)		# tmp143, n
	mv	a4,a5	# tmp142, tmp143
	lw	a5,-20(s0)		# tmp146, i
	remuw	a5,a4,a5	# tmp145, tmp144, tmp142
	sext.w	a5,a5	# _1, tmp144
# problem47.c:31:     if (n % i == 0) {
	bne	a5,zero,.L11	#, _1,,
# problem47.c:32:       count++;
	lw	a5,-24(s0)		# tmp149, count
	addiw	a5,a5,1	#, tmp147, tmp148
	sw	a5,-24(s0)	# tmp147, count
# problem47.c:33:       n /= i;
	lw	a5,-36(s0)		# tmp153, n
	mv	a4,a5	# tmp152, tmp153
	lw	a5,-20(s0)		# tmp155, i
	divuw	a5,a4,a5	# tmp154, tmp151, tmp152
	sw	a5,-36(s0)	# tmp151, n
# problem47.c:34:       while (n % i == 0) {
	j	.L12		#
.L13:
# problem47.c:35:         n /= i;
	lw	a5,-36(s0)		# tmp159, n
	mv	a4,a5	# tmp158, tmp159
	lw	a5,-20(s0)		# tmp161, i
	divuw	a5,a4,a5	# tmp160, tmp157, tmp158
	sw	a5,-36(s0)	# tmp157, n
.L12:
# problem47.c:34:       while (n % i == 0) {
	lw	a5,-36(s0)		# tmp164, n
	mv	a4,a5	# tmp163, tmp164
	lw	a5,-20(s0)		# tmp167, i
	remuw	a5,a4,a5	# tmp166, tmp165, tmp163
	sext.w	a5,a5	# _2, tmp165
# problem47.c:34:       while (n % i == 0) {
	beq	a5,zero,.L13	#, _2,,
.L11:
# problem47.c:30:   for (i = 2; i <= n; i++) {
	lw	a5,-20(s0)		# tmp170, i
	addiw	a5,a5,1	#, tmp168, tmp169
	sw	a5,-20(s0)	# tmp168, i
.L10:
# problem47.c:30:   for (i = 2; i <= n; i++) {
	lw	a5,-20(s0)		# tmp172, i
	mv	a4,a5	# tmp171, tmp172
	lw	a5,-36(s0)		# tmp174, n
	sext.w	a4,a4	# tmp175, tmp171
	sext.w	a5,a5	# tmp176, tmp173
	bleu	a4,a5,.L14	#, tmp175, tmp176,
# problem47.c:39:   return count;
	lw	a5,-24(s0)		# _12, count
# problem47.c:40: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	distinct_factor_count, .-distinct_factor_count
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
