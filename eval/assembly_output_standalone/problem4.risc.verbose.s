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
	sd	a0,-40(s0)	# operations, operations
	mv	a5,a1	# tmp78, size
	sw	a5,-44(s0)	# tmp79, size
# eval/problem4//code.c:4:     int num = 0;
	sw	zero,-24(s0)	#, num
# eval/problem4//code.c:5:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# eval/problem4//code.c:5:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L5:
# eval/problem4//code.c:6:         num += operations[i];
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp80, operations
	add	a5,a4,a5	# _2, _3, tmp80
	lw	a5,0(a5)		# _4, *_3
# eval/problem4//code.c:6:         num += operations[i];
	lw	a4,-24(s0)		# tmp83, num
	addw	a5,a4,a5	# _4, tmp81, tmp82
	sw	a5,-24(s0)	# tmp81, num
# eval/problem4//code.c:7:         if (num < 0) return 1;
	lw	a5,-24(s0)		# tmp85, num
	sext.w	a5,a5	# tmp86, tmp84
	bge	a5,zero,.L3	#, tmp86,,
# eval/problem4//code.c:7:         if (num < 0) return 1;
	li	a5,1		# _7,
	j	.L4		#
.L3:
# eval/problem4//code.c:5:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp89, i
	addiw	a5,a5,1	#, tmp87, tmp88
	sw	a5,-20(s0)	# tmp87, i
.L2:
# eval/problem4//code.c:5:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp91, i
	mv	a4,a5	# tmp90, tmp91
	lw	a5,-44(s0)		# tmp93, size
	sext.w	a4,a4	# tmp94, tmp90
	sext.w	a5,a5	# tmp95, tmp92
	blt	a4,a5,.L5	#, tmp94, tmp95,
# eval/problem4//code.c:9:     return 0;
	li	a5,0		# _7,
.L4:
# eval/problem4//code.c:10: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
