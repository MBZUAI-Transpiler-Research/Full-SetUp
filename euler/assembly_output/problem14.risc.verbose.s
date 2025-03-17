	.file	"problem14.c"
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
# problem14.c:12:   unsigned i, max_c = 0, max_i = 0;
	sw	zero,-28(s0)	#, max_c
# problem14.c:12:   unsigned i, max_c = 0, max_i = 0;
	sw	zero,-24(s0)	#, max_i
# problem14.c:14:   for (i = 1; i < 1000000; i++) {
	li	a5,1		# tmp136,
	sw	a5,-32(s0)	# tmp136, i
# problem14.c:14:   for (i = 1; i < 1000000; i++) {
	j	.L2		#
.L4:
# problem14.c:15:     unsigned c = collatz_count(i);
	lw	a5,-32(s0)		# tmp137, i
	mv	a0,a5	#, tmp137
	call	collatz_count		#
	mv	a5,a0	# tmp138,
	sw	a5,-20(s0)	# tmp138, c
# problem14.c:16:     if (c > max_c) {
	lw	a5,-20(s0)		# tmp140, c
	mv	a4,a5	# tmp139, tmp140
	lw	a5,-28(s0)		# tmp142, max_c
	sext.w	a4,a4	# tmp143, tmp139
	sext.w	a5,a5	# tmp144, tmp141
	bleu	a4,a5,.L3	#, tmp143, tmp144,
# problem14.c:17:       max_c = c;
	lw	a5,-20(s0)		# tmp145, c
	sw	a5,-28(s0)	# tmp145, max_c
# problem14.c:18:       max_i = i;
	lw	a5,-32(s0)		# tmp146, i
	sw	a5,-24(s0)	# tmp146, max_i
.L3:
# problem14.c:14:   for (i = 1; i < 1000000; i++) {
	lw	a5,-32(s0)		# tmp149, i
	addiw	a5,a5,1	#, tmp147, tmp148
	sw	a5,-32(s0)	# tmp147, i
.L2:
# problem14.c:14:   for (i = 1; i < 1000000; i++) {
	lw	a5,-32(s0)		# tmp153, i
	sext.w	a4,a5	# tmp154, tmp152
	li	a5,999424		# tmp156,
	addi	a5,a5,575	#, tmp155, tmp156
	bleu	a4,a5,.L4	#, tmp154, tmp155,
# problem14.c:21:   printf("%u\n", max_i);
	lw	a5,-24(s0)		# tmp157, max_i
	mv	a1,a5	#, tmp157
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem14.c:22:   return 0;
	li	a5,0		# _12,
# problem14.c:23: }
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
	.type	collatz_count, @function
collatz_count:
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
# problem14.c:27:   unsigned c = 0;
	sw	zero,-20(s0)	#, c
# problem14.c:28:   while (n > 1) {
	j	.L7		#
.L10:
# problem14.c:29:     n = n%2==0 ? n/2 : 3*n+1;
	lw	a5,-36(s0)		# tmp142, n
	andi	a5,a5,1	#, tmp143, tmp141
	sext.w	a5,a5	# _1, tmp143
# problem14.c:29:     n = n%2==0 ? n/2 : 3*n+1;
	bne	a5,zero,.L8	#, _1,,
# problem14.c:29:     n = n%2==0 ? n/2 : 3*n+1;
	lw	a5,-36(s0)		# tmp146, n
	srliw	a5,a5,1	#, tmp144, tmp145
	sext.w	a5,a5	# iftmp.0_5, tmp144
	j	.L9		#
.L8:
# problem14.c:29:     n = n%2==0 ? n/2 : 3*n+1;
	lw	a5,-36(s0)		# tmp148, n
	mv	a4,a5	# tmp147, tmp148
	mv	a5,a4	# tmp149, tmp147
	slliw	a5,a5,1	#, tmp150, tmp149
	addw	a5,a5,a4	# tmp147, tmp149, tmp149
	sext.w	a5,a5	# _2, tmp149
# problem14.c:29:     n = n%2==0 ? n/2 : 3*n+1;
	addiw	a5,a5,1	#, tmp151, _2
	sext.w	a5,a5	# iftmp.0_5, tmp151
.L9:
# problem14.c:29:     n = n%2==0 ? n/2 : 3*n+1;
	sw	a5,-36(s0)	# iftmp.0_5, n
# problem14.c:30:     c++;
	lw	a5,-20(s0)		# tmp154, c
	addiw	a5,a5,1	#, tmp152, tmp153
	sw	a5,-20(s0)	# tmp152, c
.L7:
# problem14.c:28:   while (n > 1) {
	lw	a5,-36(s0)		# tmp156, n
	sext.w	a4,a5	# tmp157, tmp155
	li	a5,1		# tmp158,
	bgtu	a4,a5,.L10	#, tmp157, tmp158,
# problem14.c:32:   return c+1;
	lw	a5,-20(s0)		# tmp161, c
	addiw	a5,a5,1	#, tmp159, tmp160
	sext.w	a5,a5	# _8, tmp159
# problem14.c:33: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	collatz_count, .-collatz_count
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
