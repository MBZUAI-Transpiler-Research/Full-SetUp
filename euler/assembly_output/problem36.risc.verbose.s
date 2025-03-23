	.file	"problem36.c"
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
	.string	"%d\n"
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
# problem36.c:15:   int sum = 0;
	sw	zero,-20(s0)	#, sum
# problem36.c:17:   for (i = 1; i < N; i++) {
	li	a5,1		# tmp138,
	sw	a5,-24(s0)	# tmp138, i
# problem36.c:17:   for (i = 1; i < N; i++) {
	j	.L2		#
.L4:
# problem36.c:18:     if (palindromic_base(i, 10) && palindromic_base(i, 2)) {
	lw	a5,-24(s0)		# tmp139, i
	li	a1,10		#,
	mv	a0,a5	#, tmp139
	call	palindromic_base		#
	mv	a5,a0	# tmp140,
# problem36.c:18:     if (palindromic_base(i, 10) && palindromic_base(i, 2)) {
	beq	a5,zero,.L3	#, _1,,
# problem36.c:18:     if (palindromic_base(i, 10) && palindromic_base(i, 2)) {
	lw	a5,-24(s0)		# tmp141, i
	li	a1,2		#,
	mv	a0,a5	#, tmp141
	call	palindromic_base		#
	mv	a5,a0	# tmp142,
# problem36.c:18:     if (palindromic_base(i, 10) && palindromic_base(i, 2)) {
	beq	a5,zero,.L3	#, _2,,
# problem36.c:19:       sum += i;
	lw	a5,-20(s0)		# tmp145, sum
	mv	a4,a5	# tmp144, tmp145
	lw	a5,-24(s0)		# tmp147, i
	addw	a5,a4,a5	# tmp146, tmp143, tmp144
	sw	a5,-20(s0)	# tmp143, sum
.L3:
# problem36.c:17:   for (i = 1; i < N; i++) {
	lw	a5,-24(s0)		# tmp150, i
	addiw	a5,a5,1	#, tmp148, tmp149
	sw	a5,-24(s0)	# tmp148, i
.L2:
# problem36.c:17:   for (i = 1; i < N; i++) {
	lw	a5,-24(s0)		# tmp154, i
	sext.w	a4,a5	# tmp155, tmp153
	li	a5,999424		# tmp157,
	addi	a5,a5,575	#, tmp156, tmp157
	ble	a4,a5,.L4	#, tmp155, tmp156,
# problem36.c:22:   printf("%d\n", sum);
	lw	a5,-20(s0)		# tmp158, sum
	mv	a1,a5	#, tmp158
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem36.c:24:   return 0;
	li	a5,0		# _12,
# problem36.c:25: }
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
	.type	palindromic_base, @function
palindromic_base:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp139, n
	mv	a4,a1	# tmp141, base
	sw	a5,-36(s0)	# tmp140, n
	mv	a5,a4	# tmp142, tmp141
	sw	a5,-40(s0)	# tmp142, base
# problem36.c:29:   int reversed = 0;
	sw	zero,-24(s0)	#, reversed
# problem36.c:30:   const int orig = n;
	lw	a5,-36(s0)		# tmp143, n
	sw	a5,-20(s0)	# tmp143, orig
# problem36.c:32:   while (n) {
	j	.L7		#
.L8:
# problem36.c:33:     reversed = base*reversed + n%base;
	lw	a5,-40(s0)		# tmp146, base
	mv	a4,a5	# tmp145, tmp146
	lw	a5,-24(s0)		# tmp148, reversed
	mulw	a5,a4,a5	# tmp144, tmp145, tmp147
	sext.w	a4,a5	# _1, tmp144
# problem36.c:33:     reversed = base*reversed + n%base;
	lw	a5,-36(s0)		# tmp151, n
	mv	a3,a5	# tmp150, tmp151
	lw	a5,-40(s0)		# tmp154, base
	remw	a5,a3,a5	# tmp153, tmp152, tmp150
	sext.w	a5,a5	# _2, tmp152
# problem36.c:33:     reversed = base*reversed + n%base;
	addw	a5,a4,a5	# _2, tmp155, _1
	sw	a5,-24(s0)	# tmp155, reversed
# problem36.c:34:     n /= base;
	lw	a5,-36(s0)		# tmp159, n
	mv	a4,a5	# tmp158, tmp159
	lw	a5,-40(s0)		# tmp161, base
	divw	a5,a4,a5	# tmp160, tmp157, tmp158
	sw	a5,-36(s0)	# tmp157, n
.L7:
# problem36.c:32:   while (n) {
	lw	a5,-36(s0)		# tmp163, n
	sext.w	a5,a5	# tmp164, tmp162
	bne	a5,zero,.L8	#, tmp164,,
# problem36.c:36:   return orig == reversed;
	lw	a5,-20(s0)		# tmp167, orig
	mv	a4,a5	# tmp166, tmp167
	lw	a5,-24(s0)		# tmp169, reversed
	sext.w	a4,a4	# tmp171, tmp166
	sext.w	a5,a5	# tmp173, tmp168
	sub	a5,a4,a5	# tmp172, tmp171, tmp173
	seqz	a5,a5	# tmp170, tmp172
	andi	a5,a5,0xff	# _3, tmp165
	sext.w	a5,a5	# _9, _3
# problem36.c:37: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	palindromic_base, .-palindromic_base
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
