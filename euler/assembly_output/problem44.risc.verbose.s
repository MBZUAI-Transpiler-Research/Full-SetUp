	.file	"problem44.c"
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
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
# problem44.c:19:   unsigned min = UINT_MAX;
	li	a5,-1		# tmp141,
	sw	a5,-28(s0)	# tmp141, min
# problem44.c:20:   for (i = 1; i < N; i++) {
	li	a5,1		# tmp142,
	sw	a5,-36(s0)	# tmp142, i
# problem44.c:20:   for (i = 1; i < N; i++) {
	j	.L2		#
.L6:
# problem44.c:21:     for (j = i; j < N; j++) {
	lw	a5,-36(s0)		# tmp143, i
	sw	a5,-32(s0)	# tmp143, j
# problem44.c:21:     for (j = i; j < N; j++) {
	j	.L3		#
.L5:
# problem44.c:22:       unsigned k = pentagonal(i);
	lw	a5,-36(s0)		# tmp144, i
	mv	a0,a5	#, tmp144
	call	pentagonal		#
	mv	a5,a0	# tmp145,
	sw	a5,-24(s0)	# tmp145, k
# problem44.c:23:       unsigned l = pentagonal(j);
	lw	a5,-32(s0)		# tmp146, j
	mv	a0,a5	#, tmp146
	call	pentagonal		#
	mv	a5,a0	# tmp147,
	sw	a5,-20(s0)	# tmp147, l
# problem44.c:24:       if (is_pentagonal(k+l) && is_pentagonal(l-k)) {
	lw	a5,-24(s0)		# tmp150, k
	mv	a4,a5	# tmp149, tmp150
	lw	a5,-20(s0)		# tmp152, l
	addw	a5,a4,a5	# tmp151, tmp148, tmp149
	sext.w	a5,a5	# _1, tmp148
	mv	a0,a5	#, _1
	call	is_pentagonal		#
	mv	a5,a0	# tmp153,
# problem44.c:24:       if (is_pentagonal(k+l) && is_pentagonal(l-k)) {
	beq	a5,zero,.L4	#, _2,,
# problem44.c:24:       if (is_pentagonal(k+l) && is_pentagonal(l-k)) {
	lw	a5,-20(s0)		# tmp156, l
	mv	a4,a5	# tmp155, tmp156
	lw	a5,-24(s0)		# tmp158, k
	subw	a5,a4,a5	# tmp154, tmp155, tmp157
	sext.w	a5,a5	# _3, tmp154
	mv	a0,a5	#, _3
	call	is_pentagonal		#
	mv	a5,a0	# tmp159,
# problem44.c:24:       if (is_pentagonal(k+l) && is_pentagonal(l-k)) {
	beq	a5,zero,.L4	#, _4,,
# problem44.c:25:         if (l-k < min) {
	lw	a5,-20(s0)		# tmp162, l
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-24(s0)		# tmp164, k
	subw	a5,a4,a5	# tmp160, tmp161, tmp163
	sext.w	a4,a5	# _5, tmp160
# problem44.c:25:         if (l-k < min) {
	lw	a5,-28(s0)		# tmp166, min
	sext.w	a5,a5	# tmp167, tmp165
	bleu	a5,a4,.L4	#, tmp167, tmp168,
# problem44.c:26:           min = l-k;
	lw	a5,-20(s0)		# tmp171, l
	mv	a4,a5	# tmp170, tmp171
	lw	a5,-24(s0)		# tmp173, k
	subw	a5,a4,a5	# tmp169, tmp170, tmp172
	sw	a5,-28(s0)	# tmp169, min
.L4:
# problem44.c:21:     for (j = i; j < N; j++) {
	lw	a5,-32(s0)		# tmp176, j
	addiw	a5,a5,1	#, tmp174, tmp175
	sw	a5,-32(s0)	# tmp174, j
.L3:
# problem44.c:21:     for (j = i; j < N; j++) {
	lw	a5,-32(s0)		# tmp180, j
	sext.w	a4,a5	# tmp181, tmp179
	li	a5,8192		# tmp183,
	addi	a5,a5,1807	#, tmp182, tmp183
	bleu	a4,a5,.L5	#, tmp181, tmp182,
# problem44.c:20:   for (i = 1; i < N; i++) {
	lw	a5,-36(s0)		# tmp186, i
	addiw	a5,a5,1	#, tmp184, tmp185
	sw	a5,-36(s0)	# tmp184, i
.L2:
# problem44.c:20:   for (i = 1; i < N; i++) {
	lw	a5,-36(s0)		# tmp190, i
	sext.w	a4,a5	# tmp191, tmp189
	li	a5,8192		# tmp193,
	addi	a5,a5,1807	#, tmp192, tmp193
	bleu	a4,a5,.L6	#, tmp191, tmp192,
# problem44.c:31:   printf("%u\n", min);
	lw	a5,-28(s0)		# tmp194, min
	mv	a1,a5	#, tmp194
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem44.c:33:   return 0;
	li	a5,0		# _18,
# problem44.c:34: }
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
	.align	1
	.type	pentagonal, @function
pentagonal:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp139, n
	sw	a5,-20(s0)	# tmp140, n
# problem44.c:38:   return n*(3*n-1)/2;
	lw	a5,-20(s0)		# tmp142, n
	mv	a4,a5	# tmp141, tmp142
	mv	a5,a4	# tmp143, tmp141
	slliw	a5,a5,1	#, tmp144, tmp143
	addw	a5,a5,a4	# tmp141, tmp143, tmp143
	sext.w	a5,a5	# _1, tmp143
# problem44.c:38:   return n*(3*n-1)/2;
	addiw	a5,a5,-1	#, tmp145, _1
	sext.w	a5,a5	# _2, tmp145
# problem44.c:38:   return n*(3*n-1)/2;
	lw	a4,-20(s0)		# tmp148, n
	mulw	a5,a4,a5	# tmp146, tmp147, _2
	sext.w	a5,a5	# _3, tmp146
# problem44.c:38:   return n*(3*n-1)/2;
	srliw	a5,a5,1	#, tmp149, tmp150
	sext.w	a5,a5	# _5, tmp149
# problem44.c:39: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	pentagonal, .-pentagonal
	.align	1
	.type	is_pentagonal, @function
is_pentagonal:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp145, n
	sw	a5,-36(s0)	# tmp146, n
# problem44.c:43:   unsigned sq = sqrt(1+24*n);
	lw	a5,-36(s0)		# tmp148, n
	mv	a4,a5	# tmp147, tmp148
	mv	a5,a4	# tmp149, tmp147
	slliw	a5,a5,1	#, tmp150, tmp149
	addw	a5,a5,a4	# tmp147, tmp149, tmp149
	slliw	a5,a5,3	#, tmp151, tmp149
	sext.w	a5,a5	# _1, tmp149
# problem44.c:43:   unsigned sq = sqrt(1+24*n);
	addiw	a5,a5,1	#, tmp152, _1
	sext.w	a5,a5	# _2, tmp152
# problem44.c:43:   unsigned sq = sqrt(1+24*n);
	fcvt.d.wu	fa5,a5	# _3, _2
	fmv.d	fa0,fa5	#, _3
	call	sqrt@plt	#
	fmv.d	fa5,fa0	# _4,
# problem44.c:43:   unsigned sq = sqrt(1+24*n);
	fcvt.wu.d a5,fa5,rtz	# tmp153, _4
	sw	a5,-20(s0)	# tmp153, sq
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	lw	a5,-20(s0)		# tmp156, sq
	mulw	a5,a5,a5	# tmp154, tmp155, tmp155
	sext.w	a3,a5	# _5, tmp154
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	lw	a5,-36(s0)		# tmp158, n
	mv	a4,a5	# tmp157, tmp158
	mv	a5,a4	# tmp159, tmp157
	slliw	a5,a5,1	#, tmp160, tmp159
	addw	a5,a5,a4	# tmp157, tmp159, tmp159
	slliw	a5,a5,3	#, tmp161, tmp159
	sext.w	a5,a5	# _6, tmp159
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	addiw	a5,a5,1	#, tmp162, _6
	sext.w	a5,a5	# _7, tmp162
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	mv	a4,a3	# tmp163, _5
	bne	a4,a5,.L11	#, tmp163, tmp164,
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	lw	a5,-20(s0)		# tmp167, sq
	addiw	a5,a5,1	#, tmp165, tmp166
	sext.w	a5,a5	# _8, tmp165
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	mv	a4,a5	# tmp169, _8
	li	a5,6		# tmp171,
	remuw	a5,a4,a5	# tmp171, tmp170, tmp169
	sext.w	a5,a5	# _9, tmp170
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	bne	a5,zero,.L11	#, _9,,
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	li	a5,1		# iftmp.0_10,
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	j	.L12		#
.L11:
# problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	li	a5,0		# iftmp.0_10,
.L12:
# problem44.c:45: }
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
.LFE2:
	.size	is_pentagonal, .-is_pentagonal
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
