	.file	"code.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp74, x
	mv	a4,a1	# tmp76, n
	sw	a5,-36(s0)	# tmp75, x
	mv	a5,a4	# tmp77, tmp76
	sw	a5,-40(s0)	# tmp77, n
# eval/problem77//code.c:4:     int p = 1, count = 0;
	li	a5,1		# tmp78,
	sw	a5,-24(s0)	# tmp78, p
# eval/problem77//code.c:4:     int p = 1, count = 0;
	sw	zero,-20(s0)	#, count
# eval/problem77//code.c:5:     while (p <= x && count < 100) {
	j	.L2		#
.L6:
# eval/problem77//code.c:6:         if (p == x) return 1;
	lw	a5,-24(s0)		# tmp80, p
	mv	a4,a5	# tmp79, tmp80
	lw	a5,-36(s0)		# tmp82, x
	sext.w	a4,a4	# tmp83, tmp79
	sext.w	a5,a5	# tmp84, tmp81
	bne	a4,a5,.L3	#, tmp83, tmp84,
# eval/problem77//code.c:6:         if (p == x) return 1;
	li	a5,1		# _3,
	j	.L4		#
.L3:
# eval/problem77//code.c:7:         p = p * n; count += 1;
	lw	a5,-24(s0)		# tmp87, p
	mv	a4,a5	# tmp86, tmp87
	lw	a5,-40(s0)		# tmp89, n
	mulw	a5,a4,a5	# tmp85, tmp86, tmp88
	sw	a5,-24(s0)	# tmp85, p
# eval/problem77//code.c:7:         p = p * n; count += 1;
	lw	a5,-20(s0)		# tmp92, count
	addiw	a5,a5,1	#, tmp90, tmp91
	sw	a5,-20(s0)	# tmp90, count
.L2:
# eval/problem77//code.c:5:     while (p <= x && count < 100) {
	lw	a5,-24(s0)		# tmp94, p
	mv	a4,a5	# tmp93, tmp94
	lw	a5,-36(s0)		# tmp96, x
	sext.w	a4,a4	# tmp97, tmp93
	sext.w	a5,a5	# tmp98, tmp95
	bgt	a4,a5,.L5	#, tmp97, tmp98,
# eval/problem77//code.c:5:     while (p <= x && count < 100) {
	lw	a5,-20(s0)		# tmp100, count
	sext.w	a4,a5	# tmp101, tmp99
	li	a5,99		# tmp102,
	ble	a4,a5,.L6	#, tmp101, tmp102,
.L5:
# eval/problem77//code.c:9:     return 0;
	li	a5,0		# _3,
.L4:
# eval/problem77//code.c:10: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
