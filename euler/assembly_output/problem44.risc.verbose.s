	.file	"problem44.c"
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
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
# problem44.c:19:   unsigned min = UINT_MAX;
	li	a5,-1		# tmp79,
	sw	a5,-28(s0)	# tmp79, min
# problem44.c:20:   for (i = 1; i < N; i++) {
	li	a5,1		# tmp80,
	sw	a5,-36(s0)	# tmp80, i
# problem44.c:20:   for (i = 1; i < N; i++) {
	j	.L2		#
.L6:
# problem44.c:21:     for (j = i; j < N; j++) {
	lw	a5,-36(s0)		# tmp81, i
	sw	a5,-32(s0)	# tmp81, j
# problem44.c:21:     for (j = i; j < N; j++) {
	j	.L3		#
.L5:
# problem44.c:22:       unsigned k = pentagonal(i);
	lw	a5,-36(s0)		# tmp82, i
	mv	a0,a5	#, tmp82
	call	pentagonal		#
	mv	a5,a0	# tmp83,
	sw	a5,-24(s0)	# tmp83, k
# problem44.c:23:       unsigned l = pentagonal(j);
	lw	a5,-32(s0)		# tmp84, j
	mv	a0,a5	#, tmp84
	call	pentagonal		#
	mv	a5,a0	# tmp85,
	sw	a5,-20(s0)	# tmp85, l
# problem44.c:24:       if (is_pentagonal(k+l) && is_pentagonal(l-k)) {
	lw	a5,-24(s0)		# tmp88, k
	mv	a4,a5	# tmp87, tmp88
	lw	a5,-20(s0)		# tmp90, l
	addw	a5,a4,a5	# tmp89, tmp86, tmp87
	sext.w	a5,a5	# _1, tmp86
	mv	a0,a5	#, _1
	call	is_pentagonal		#
	mv	a5,a0	# tmp91,
# problem44.c:24:       if (is_pentagonal(k+l) && is_pentagonal(l-k)) {
	beq	a5,zero,.L4	#, _2,,
# problem44.c:24:       if (is_pentagonal(k+l) && is_pentagonal(l-k)) {
	lw	a5,-20(s0)		# tmp94, l
	mv	a4,a5	# tmp93, tmp94
	lw	a5,-24(s0)		# tmp96, k
	subw	a5,a4,a5	# tmp92, tmp93, tmp95
	sext.w	a5,a5	# _3, tmp92
	mv	a0,a5	#, _3
	call	is_pentagonal		#
	mv	a5,a0	# tmp97,
# problem44.c:24:       if (is_pentagonal(k+l) && is_pentagonal(l-k)) {
	beq	a5,zero,.L4	#, _4,,
# problem44.c:25:         if (l-k < min) {
	lw	a5,-20(s0)		# tmp100, l
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-24(s0)		# tmp102, k
	subw	a5,a4,a5	# tmp98, tmp99, tmp101
	sext.w	a4,a5	# _5, tmp98
# problem44.c:25:         if (l-k < min) {
	lw	a5,-28(s0)		# tmp104, min
	sext.w	a5,a5	# tmp105, tmp103
	bleu	a5,a4,.L4	#, tmp105, tmp106,
# problem44.c:26:           min = l-k;
	lw	a5,-20(s0)		# tmp109, l
	mv	a4,a5	# tmp108, tmp109
	lw	a5,-24(s0)		# tmp111, k
	subw	a5,a4,a5	# tmp107, tmp108, tmp110
	sw	a5,-28(s0)	# tmp107, min
.L4:
# problem44.c:21:     for (j = i; j < N; j++) {
	lw	a5,-32(s0)		# tmp114, j
	addiw	a5,a5,1	#, tmp112, tmp113
	sw	a5,-32(s0)	# tmp112, j
.L3:
# problem44.c:21:     for (j = i; j < N; j++) {
	lw	a5,-32(s0)		# tmp118, j
	sext.w	a4,a5	# tmp119, tmp117
	li	a5,8192		# tmp121,
	addi	a5,a5,1807	#, tmp120, tmp121
	bleu	a4,a5,.L5	#, tmp119, tmp120,
# problem44.c:20:   for (i = 1; i < N; i++) {
	lw	a5,-36(s0)		# tmp124, i
	addiw	a5,a5,1	#, tmp122, tmp123
	sw	a5,-36(s0)	# tmp122, i
.L2:
# problem44.c:20:   for (i = 1; i < N; i++) {
	lw	a5,-36(s0)		# tmp128, i
	sext.w	a4,a5	# tmp129, tmp127
	li	a5,8192		# tmp131,
	addi	a5,a5,1807	#, tmp130, tmp131
	bleu	a4,a5,.L6	#, tmp129, tmp130,
# problem44.c:31:   printf("%u\n", min);
	lw	a5,-28(s0)		# tmp132, min
	mv	a1,a5	#, tmp132
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem44.c:33:   return 0;
	li	a5,0		# _18,
# problem44.c:34: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	main, .-main
	.align	1
	.type	pentagonal, @function
pentagonal:
	addi	sp,sp,-32	#,,
	sd	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	mv	a5,a0	# tmp77, n
	sw	a5,-20(s0)	# tmp78, n
# problem44.c:38:   return n*(3*n-1)/2;
	lw	a5,-20(s0)		# tmp80, n
	mv	a4,a5	# tmp79, tmp80
	mv	a5,a4	# tmp81, tmp79
	slliw	a5,a5,1	#, tmp82, tmp81
	addw	a5,a5,a4	# tmp79, tmp81, tmp81
	sext.w	a5,a5	# _1, tmp81
# problem44.c:38:   return n*(3*n-1)/2;
	addiw	a5,a5,-1	#, tmp83, _1
	sext.w	a5,a5	# _2, tmp83
# problem44.c:38:   return n*(3*n-1)/2;
	lw	a4,-20(s0)		# tmp86, n
	mulw	a5,a4,a5	# tmp84, tmp85, _2
	sext.w	a5,a5	# _3, tmp84
# problem44.c:38:   return n*(3*n-1)/2;
	srliw	a5,a5,1	#, tmp87, tmp88
	sext.w	a5,a5	# _5, tmp87
# problem44.c:39: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	pentagonal, .-pentagonal
	.align	1
	.type	is_pentagonal, @function
is_pentagonal:
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp83, n
	sw	a5,-36(s0)	# tmp84, n
# problem44.c:43:   unsigned sq = sqrt(1+24*n);
	lw	a5,-36(s0)		# tmp86, n
	mv	a4,a5	# tmp85, tmp86
	mv	a5,a4	# tmp87, tmp85
	slliw	a5,a5,1	#, tmp88, tmp87
	addw	a5,a5,a4	# tmp85, tmp87, tmp87
	slliw	a5,a5,3	#, tmp89, tmp87
	sext.w	a5,a5	# _1, tmp87
# problem44.c:43:   unsigned sq = sqrt(1+24*n);
	addiw	a5,a5,1	#, tmp90, _1
	sext.w	a5,a5	# _2, tmp90
# problem44.c:43:   unsigned sq = sqrt(1+24*n);
	fcvt.d.wu	fa5,a5	# _3, _2
	fmv.d	fa0,fa5	#, _3
	call	sqrt@plt	#
	fmv.d	fa5,fa0	# _4,
# problem44.c:43:   unsigned sq = sqrt(1+24*n);
	fcvt.wu.d a5,fa5,rtz	# tmp91, _4
	sw	a5,-20(s0)	# tmp91, sq
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	lw	a5,-20(s0)		# tmp94, sq
	mulw	a5,a5,a5	# tmp92, tmp93, tmp93
	sext.w	a3,a5	# _5, tmp92
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	lw	a5,-36(s0)		# tmp96, n
	mv	a4,a5	# tmp95, tmp96
	mv	a5,a4	# tmp97, tmp95
	slliw	a5,a5,1	#, tmp98, tmp97
	addw	a5,a5,a4	# tmp95, tmp97, tmp97
	slliw	a5,a5,3	#, tmp99, tmp97
	sext.w	a5,a5	# _6, tmp97
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	addiw	a5,a5,1	#, tmp100, _6
	sext.w	a5,a5	# _7, tmp100
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	mv	a4,a3	# tmp101, _5
	bne	a4,a5,.L11	#, tmp101, tmp102,
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	lw	a5,-20(s0)		# tmp105, sq
	addiw	a5,a5,1	#, tmp103, tmp104
	sext.w	a5,a5	# _8, tmp103
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	mv	a4,a5	# tmp107, _8
	li	a5,6		# tmp109,
	remuw	a5,a4,a5	# tmp109, tmp108, tmp107
	sext.w	a5,a5	# _9, tmp108
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	bne	a5,zero,.L11	#, _9,,
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	li	a5,1		# iftmp.0_10,
	j	.L12		#
.L11:
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	li	a5,0		# iftmp.0_10,
.L12:
# problem44.c:45: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	is_pentagonal, .-is_pentagonal
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
