	.file	"problem6.c"
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
# problem6.c:10:   unsigned s1 = 0, s2 = 0, i;
	sw	zero,-28(s0)	#, s1
# problem6.c:10:   unsigned s1 = 0, s2 = 0, i;
	sw	zero,-24(s0)	#, s2
# problem6.c:12:   for (i = 1; i <= 100; i++) {
	li	a5,1		# tmp139,
	sw	a5,-20(s0)	# tmp139, i
# problem6.c:12:   for (i = 1; i <= 100; i++) {
	j	.L2		#
.L3:
# problem6.c:13:     s1 += i*i;
	lw	a5,-20(s0)		# tmp142, i
	mulw	a5,a5,a5	# tmp140, tmp141, tmp141
	sext.w	a5,a5	# _1, tmp140
# problem6.c:13:     s1 += i*i;
	lw	a4,-28(s0)		# tmp145, s1
	addw	a5,a4,a5	# _1, tmp143, tmp144
	sw	a5,-28(s0)	# tmp143, s1
# problem6.c:14:     s2 += i;
	lw	a5,-24(s0)		# tmp148, s2
	mv	a4,a5	# tmp147, tmp148
	lw	a5,-20(s0)		# tmp150, i
	addw	a5,a4,a5	# tmp149, tmp146, tmp147
	sw	a5,-24(s0)	# tmp146, s2
# problem6.c:12:   for (i = 1; i <= 100; i++) {
	lw	a5,-20(s0)		# tmp153, i
	addiw	a5,a5,1	#, tmp151, tmp152
	sw	a5,-20(s0)	# tmp151, i
.L2:
# problem6.c:12:   for (i = 1; i <= 100; i++) {
	lw	a5,-20(s0)		# tmp155, i
	sext.w	a4,a5	# tmp156, tmp154
	li	a5,100		# tmp157,
	bleu	a4,a5,.L3	#, tmp156, tmp157,
# problem6.c:16:   printf("%u\n", s2*s2 - s1);
	lw	a5,-24(s0)		# tmp160, s2
	mulw	a5,a5,a5	# tmp158, tmp159, tmp159
	sext.w	a5,a5	# _2, tmp158
# problem6.c:16:   printf("%u\n", s2*s2 - s1);
	lw	a4,-28(s0)		# tmp163, s1
	subw	a5,a5,a4	# tmp161, _2, tmp162
	sext.w	a5,a5	# _3, tmp161
	mv	a1,a5	#, _3
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem6.c:17:   return 0;
	li	a5,0		# _12,
# problem6.c:18: }
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
