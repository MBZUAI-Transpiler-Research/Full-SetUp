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
	mv	a5,a0	# tmp76, n
	mv	a3,a1	# tmp78, x
	mv	a4,a2	# tmp80, y
	sw	a5,-36(s0)	# tmp77, n
	mv	a5,a3	# tmp79, tmp78
	sw	a5,-40(s0)	# tmp79, x
	mv	a5,a4	# tmp81, tmp80
	sw	a5,-44(s0)	# tmp81, y
# eval/problem151//code.c:4:     int isp = 1;
	li	a5,1		# tmp82,
	sw	a5,-24(s0)	# tmp82, isp
# eval/problem151//code.c:5:     if (n < 2) isp = 0;
	lw	a5,-36(s0)		# tmp84, n
	sext.w	a4,a5	# tmp85, tmp83
	li	a5,1		# tmp86,
	bgt	a4,a5,.L2	#, tmp85, tmp86,
# eval/problem151//code.c:5:     if (n < 2) isp = 0;
	sw	zero,-24(s0)	#, isp
.L2:
# eval/problem151//code.c:6:     for (int i = 2; i * i <= n; i++) {
	li	a5,2		# tmp87,
	sw	a5,-20(s0)	# tmp87, i
# eval/problem151//code.c:6:     for (int i = 2; i * i <= n; i++) {
	j	.L3		#
.L5:
# eval/problem151//code.c:7:         if (n % i == 0) isp = 0;
	lw	a5,-36(s0)		# tmp90, n
	mv	a4,a5	# tmp89, tmp90
	lw	a5,-20(s0)		# tmp93, i
	remw	a5,a4,a5	# tmp92, tmp91, tmp89
	sext.w	a5,a5	# _1, tmp91
# eval/problem151//code.c:7:         if (n % i == 0) isp = 0;
	bne	a5,zero,.L4	#, _1,,
# eval/problem151//code.c:7:         if (n % i == 0) isp = 0;
	sw	zero,-24(s0)	#, isp
.L4:
# eval/problem151//code.c:6:     for (int i = 2; i * i <= n; i++) {
	lw	a5,-20(s0)		# tmp96, i
	addiw	a5,a5,1	#, tmp94, tmp95
	sw	a5,-20(s0)	# tmp94, i
.L3:
# eval/problem151//code.c:6:     for (int i = 2; i * i <= n; i++) {
	lw	a5,-20(s0)		# tmp99, i
	mulw	a5,a5,a5	# tmp97, tmp98, tmp98
	sext.w	a4,a5	# _2, tmp97
# eval/problem151//code.c:6:     for (int i = 2; i * i <= n; i++) {
	lw	a5,-36(s0)		# tmp101, n
	sext.w	a5,a5	# tmp102, tmp100
	bge	a5,a4,.L5	#, tmp102, tmp103,
# eval/problem151//code.c:9:     if (isp) return x;
	lw	a5,-24(s0)		# tmp105, isp
	sext.w	a5,a5	# tmp106, tmp104
	beq	a5,zero,.L6	#, tmp106,,
# eval/problem151//code.c:9:     if (isp) return x;
	lw	a5,-40(s0)		# _7, x
	j	.L7		#
.L6:
# eval/problem151//code.c:10:     return y;
	lw	a5,-44(s0)		# _7, y
.L7:
# eval/problem151//code.c:11: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
