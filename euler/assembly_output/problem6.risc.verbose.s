	.file	"problem6.c"
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
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
# problem6.c:10:   unsigned s1 = 0, s2 = 0, i;
	sw	zero,-28(s0)	#, s1
# problem6.c:10:   unsigned s1 = 0, s2 = 0, i;
	sw	zero,-24(s0)	#, s2
# problem6.c:12:   for (i = 1; i <= 100; i++) {
	li	a5,1		# tmp77,
	sw	a5,-20(s0)	# tmp77, i
# problem6.c:12:   for (i = 1; i <= 100; i++) {
	j	.L2		#
.L3:
# problem6.c:13:     s1 += i*i;
	lw	a5,-20(s0)		# tmp80, i
	mulw	a5,a5,a5	# tmp78, tmp79, tmp79
	sext.w	a5,a5	# _1, tmp78
# problem6.c:13:     s1 += i*i;
	lw	a4,-28(s0)		# tmp83, s1
	addw	a5,a4,a5	# _1, tmp81, tmp82
	sw	a5,-28(s0)	# tmp81, s1
# problem6.c:14:     s2 += i;
	lw	a5,-24(s0)		# tmp86, s2
	mv	a4,a5	# tmp85, tmp86
	lw	a5,-20(s0)		# tmp88, i
	addw	a5,a4,a5	# tmp87, tmp84, tmp85
	sw	a5,-24(s0)	# tmp84, s2
# problem6.c:12:   for (i = 1; i <= 100; i++) {
	lw	a5,-20(s0)		# tmp91, i
	addiw	a5,a5,1	#, tmp89, tmp90
	sw	a5,-20(s0)	# tmp89, i
.L2:
# problem6.c:12:   for (i = 1; i <= 100; i++) {
	lw	a5,-20(s0)		# tmp93, i
	sext.w	a4,a5	# tmp94, tmp92
	li	a5,100		# tmp95,
	bleu	a4,a5,.L3	#, tmp94, tmp95,
# problem6.c:16:   printf("%u\n", s2*s2 - s1);
	lw	a5,-24(s0)		# tmp98, s2
	mulw	a5,a5,a5	# tmp96, tmp97, tmp97
	sext.w	a5,a5	# _2, tmp96
# problem6.c:16:   printf("%u\n", s2*s2 - s1);
	lw	a4,-28(s0)		# tmp101, s1
	subw	a5,a5,a4	# tmp99, _2, tmp100
	sext.w	a5,a5	# _3, tmp99
	mv	a1,a5	#, _3
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem6.c:17:   return 0;
	li	a5,0		# _12,
# problem6.c:18: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
