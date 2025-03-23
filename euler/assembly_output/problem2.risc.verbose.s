	.file	"problem2.c"
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
# problem2.c:10:   unsigned int a1 = 1, a2 = 1, a3 = 2, sum = 0;
	li	a5,1		# tmp78,
	sw	a5,-32(s0)	# tmp78, a1
# problem2.c:10:   unsigned int a1 = 1, a2 = 1, a3 = 2, sum = 0;
	li	a5,1		# tmp79,
	sw	a5,-28(s0)	# tmp79, a2
# problem2.c:10:   unsigned int a1 = 1, a2 = 1, a3 = 2, sum = 0;
	li	a5,2		# tmp80,
	sw	a5,-24(s0)	# tmp80, a3
# problem2.c:10:   unsigned int a1 = 1, a2 = 1, a3 = 2, sum = 0;
	sw	zero,-20(s0)	#, sum
# problem2.c:12:   while (a3 < 4000000) {
	j	.L2		#
.L3:
# problem2.c:13:     a3 = a1 + a2;
	lw	a5,-32(s0)		# tmp83, a1
	mv	a4,a5	# tmp82, tmp83
	lw	a5,-28(s0)		# tmp85, a2
	addw	a5,a4,a5	# tmp84, tmp81, tmp82
	sw	a5,-24(s0)	# tmp81, a3
# problem2.c:14:     sum += a3 * !(a3%2);
	lw	a5,-24(s0)		# tmp87, a3
	andi	a5,a5,1	#, tmp88, tmp86
	sext.w	a5,a5	# _1, tmp88
# problem2.c:14:     sum += a3 * !(a3%2);
	seqz	a5,a5	# tmp90, tmp91
	andi	a5,a5,0xff	# _2, tmp89
	sext.w	a5,a5	# _3, _2
# problem2.c:14:     sum += a3 * !(a3%2);
	lw	a4,-24(s0)		# tmp94, a3
	mulw	a5,a4,a5	# tmp92, tmp93, _3
	sext.w	a5,a5	# _4, tmp92
# problem2.c:14:     sum += a3 * !(a3%2);
	lw	a4,-20(s0)		# tmp97, sum
	addw	a5,a4,a5	# _4, tmp95, tmp96
	sw	a5,-20(s0)	# tmp95, sum
# problem2.c:15:     a1 = a2;
	lw	a5,-28(s0)		# tmp98, a2
	sw	a5,-32(s0)	# tmp98, a1
# problem2.c:16:     a2 = a3;
	lw	a5,-24(s0)		# tmp99, a3
	sw	a5,-28(s0)	# tmp99, a2
.L2:
# problem2.c:12:   while (a3 < 4000000) {
	lw	a5,-24(s0)		# tmp103, a3
	sext.w	a4,a5	# tmp104, tmp102
	li	a5,4001792		# tmp106,
	addi	a5,a5,-1793	#, tmp105, tmp106
	bleu	a4,a5,.L3	#, tmp104, tmp105,
# problem2.c:19:   printf("%u\n", sum);
	lw	a5,-20(s0)		# tmp107, sum
	mv	a1,a5	#, tmp107
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem2.c:21:   return 0;
	li	a5,0		# _15,
# problem2.c:22: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
