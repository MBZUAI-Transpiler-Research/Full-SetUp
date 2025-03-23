	.file	"problem28.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
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
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
# problem28.c:12:   int sum = 1, i;
	li	a5,1		# tmp80,
	sw	a5,-24(s0)	# tmp80, sum
# problem28.c:13:   for (i = 3; i <= N; i += 2) {
	li	a5,3		# tmp81,
	sw	a5,-20(s0)	# tmp81, i
# problem28.c:13:   for (i = 3; i <= N; i += 2) {
	j	.L2		#
.L3:
# problem28.c:14:     sum += 2*(2*i*i - 3*i + 3);
	lw	a5,-20(s0)		# tmp84, i
	mulw	a5,a5,a5	# tmp82, tmp83, tmp83
	sext.w	a5,a5	# _1, tmp82
	slliw	a5,a5,1	#, tmp85, _1
	sext.w	a4,a5	# _2, tmp85
# problem28.c:14:     sum += 2*(2*i*i - 3*i + 3);
	lw	a5,-20(s0)		# tmp87, i
	mv	a3,a5	# tmp86, tmp87
	mv	a5,a3	# tmp88, tmp86
	slliw	a3,a3,2	#, tmp89, tmp86
	subw	a5,a5,a3	# tmp88, tmp88, tmp89
	sext.w	a5,a5	# _3, tmp88
# problem28.c:14:     sum += 2*(2*i*i - 3*i + 3);
	addw	a5,a4,a5	# _3, tmp90, _2
	sext.w	a5,a5	# _4, tmp90
# problem28.c:14:     sum += 2*(2*i*i - 3*i + 3);
	addiw	a5,a5,3	#, tmp91, _4
	sext.w	a5,a5	# _5, tmp91
# problem28.c:14:     sum += 2*(2*i*i - 3*i + 3);
	slliw	a5,a5,1	#, tmp92, _5
	sext.w	a5,a5	# _6, tmp92
# problem28.c:14:     sum += 2*(2*i*i - 3*i + 3);
	lw	a4,-24(s0)		# tmp95, sum
	addw	a5,a4,a5	# _6, tmp93, tmp94
	sw	a5,-24(s0)	# tmp93, sum
# problem28.c:13:   for (i = 3; i <= N; i += 2) {
	lw	a5,-20(s0)		# tmp98, i
	addiw	a5,a5,2	#, tmp96, tmp97
	sw	a5,-20(s0)	# tmp96, i
.L2:
# problem28.c:13:   for (i = 3; i <= N; i += 2) {
	lw	a5,-20(s0)		# tmp100, i
	sext.w	a4,a5	# tmp101, tmp99
	li	a5,1001		# tmp102,
	ble	a4,a5,.L3	#, tmp101, tmp102,
# problem28.c:16:   printf("%d\n", sum);
	lw	a5,-24(s0)		# tmp103, sum
	mv	a1,a5	#, tmp103
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem28.c:17:   return 0;
	li	a5,0		# _13,
# problem28.c:18: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
