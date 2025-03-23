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
	mv	a5,a0	# tmp75, n
	sw	a5,-36(s0)	# tmp76, n
# eval/problem132//code.c:4:     int prod = 1, has_odd = 0, digit;
	li	a5,1		# tmp77,
	sw	a5,-28(s0)	# tmp77, prod
# eval/problem132//code.c:4:     int prod = 1, has_odd = 0, digit;
	sw	zero,-24(s0)	#, has_odd
# eval/problem132//code.c:5:     while (n > 0) {
	j	.L2		#
.L4:
# eval/problem132//code.c:6:         digit = n % 10;
	lw	a5,-36(s0)		# tmp80, n
	mv	a4,a5	# tmp79, tmp80
	li	a5,10		# tmp82,
	remw	a5,a4,a5	# tmp82, tmp81, tmp79
	sw	a5,-20(s0)	# tmp81, digit
# eval/problem132//code.c:7:         if (digit % 2 == 1) {
	lw	a5,-20(s0)		# tmp85, digit
	mv	a4,a5	# tmp84, tmp85
	sraiw	a5,a4,31	#, tmp86, tmp84
	srliw	a5,a5,31	#, tmp87, tmp86
	addw	a4,a4,a5	# tmp87, tmp88, tmp84
	andi	a4,a4,1	#, tmp89, tmp88
	subw	a5,a4,a5	# tmp90, tmp89, tmp87
	sext.w	a5,a5	# _1, tmp90
# eval/problem132//code.c:7:         if (digit % 2 == 1) {
	mv	a4,a5	# tmp91, _1
	li	a5,1		# tmp92,
	bne	a4,a5,.L3	#, tmp91, tmp92,
# eval/problem132//code.c:8:             has_odd = 1;
	li	a5,1		# tmp93,
	sw	a5,-24(s0)	# tmp93, has_odd
# eval/problem132//code.c:9:             prod *= digit;
	lw	a5,-28(s0)		# tmp96, prod
	mv	a4,a5	# tmp95, tmp96
	lw	a5,-20(s0)		# tmp98, digit
	mulw	a5,a4,a5	# tmp94, tmp95, tmp97
	sw	a5,-28(s0)	# tmp94, prod
.L3:
# eval/problem132//code.c:11:         n /= 10;
	lw	a5,-36(s0)		# tmp101, n
	mv	a4,a5	# tmp100, tmp101
	li	a5,10		# tmp103,
	divw	a5,a4,a5	# tmp103, tmp102, tmp100
	sw	a5,-36(s0)	# tmp102, n
.L2:
# eval/problem132//code.c:5:     while (n > 0) {
	lw	a5,-36(s0)		# tmp105, n
	sext.w	a5,a5	# tmp106, tmp104
	bgt	a5,zero,.L4	#, tmp106,,
# eval/problem132//code.c:13:     return has_odd ? prod : 0;
	lw	a5,-24(s0)		# tmp108, has_odd
	sext.w	a5,a5	# tmp109, tmp107
	beq	a5,zero,.L5	#, tmp109,,
# eval/problem132//code.c:13:     return has_odd ? prod : 0;
	lw	a5,-28(s0)		# iftmp.0_7, prod
	j	.L6		#
.L5:
# eval/problem132//code.c:13:     return has_odd ? prod : 0;
	li	a5,0		# iftmp.0_7,
.L6:
# eval/problem132//code.c:14: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
