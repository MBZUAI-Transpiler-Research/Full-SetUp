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
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# str, str
# eval/problem83//code.c:6:     int l = strlen(str);
	ld	a0,-40(s0)		#, str
	call	strlen@plt	#
	mv	a5,a0	# _1,
# eval/problem83//code.c:6:     int l = strlen(str);
	sw	a5,-20(s0)	# _1, l
# eval/problem83//code.c:7:     if (l < 2) return false;
	lw	a5,-20(s0)		# tmp78, l
	sext.w	a4,a5	# tmp79, tmp77
	li	a5,1		# tmp80,
	bgt	a4,a5,.L2	#, tmp79, tmp80,
# eval/problem83//code.c:7:     if (l < 2) return false;
	li	a5,0		# _5,
	j	.L3		#
.L2:
# eval/problem83//code.c:8:     for (int i = 2; i * i <= l; i++) {
	li	a5,2		# tmp81,
	sw	a5,-24(s0)	# tmp81, i
# eval/problem83//code.c:8:     for (int i = 2; i * i <= l; i++) {
	j	.L4		#
.L6:
# eval/problem83//code.c:9:         if (l % i == 0) return false;
	lw	a5,-20(s0)		# tmp84, l
	mv	a4,a5	# tmp83, tmp84
	lw	a5,-24(s0)		# tmp87, i
	remw	a5,a4,a5	# tmp86, tmp85, tmp83
	sext.w	a5,a5	# _2, tmp85
# eval/problem83//code.c:9:         if (l % i == 0) return false;
	bne	a5,zero,.L5	#, _2,,
# eval/problem83//code.c:9:         if (l % i == 0) return false;
	li	a5,0		# _5,
	j	.L3		#
.L5:
# eval/problem83//code.c:8:     for (int i = 2; i * i <= l; i++) {
	lw	a5,-24(s0)		# tmp90, i
	addiw	a5,a5,1	#, tmp88, tmp89
	sw	a5,-24(s0)	# tmp88, i
.L4:
# eval/problem83//code.c:8:     for (int i = 2; i * i <= l; i++) {
	lw	a5,-24(s0)		# tmp93, i
	mulw	a5,a5,a5	# tmp91, tmp92, tmp92
	sext.w	a4,a5	# _3, tmp91
# eval/problem83//code.c:8:     for (int i = 2; i * i <= l; i++) {
	lw	a5,-20(s0)		# tmp95, l
	sext.w	a5,a5	# tmp96, tmp94
	bge	a5,a4,.L6	#, tmp96, tmp97,
# eval/problem83//code.c:11:     return true;
	li	a5,1		# _5,
.L3:
# eval/problem83//code.c:12: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
