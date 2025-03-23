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
	mv	a5,a0	# tmp77, number
	mv	a4,a2	# tmp81, remaining
	sd	a3,-40(s0)	# result, result
	sw	a5,-20(s0)	# tmp78, number
	mv	a5,a1	# tmp80, tmp79
	sw	a5,-24(s0)	# tmp80, need
	mv	a5,a4	# tmp82, tmp81
	sw	a5,-28(s0)	# tmp82, remaining
# eval/problem160//code.c:4:     if (need > remaining) {
	lw	a5,-24(s0)		# tmp84, need
	mv	a4,a5	# tmp83, tmp84
	lw	a5,-28(s0)		# tmp86, remaining
	sext.w	a4,a4	# tmp87, tmp83
	sext.w	a5,a5	# tmp88, tmp85
	ble	a4,a5,.L2	#, tmp87, tmp88,
# eval/problem160//code.c:5:         result[0] = number + remaining;
	lw	a5,-20(s0)		# tmp91, number
	mv	a4,a5	# tmp90, tmp91
	lw	a5,-28(s0)		# tmp93, remaining
	addw	a5,a4,a5	# tmp92, tmp89, tmp90
	sext.w	a4,a5	# _1, tmp89
# eval/problem160//code.c:5:         result[0] = number + remaining;
	ld	a5,-40(s0)		# tmp94, result
	sw	a4,0(a5)	# _1, *result_11(D)
# eval/problem160//code.c:6:         result[1] = 0;
	ld	a5,-40(s0)		# tmp95, result
	addi	a5,a5,4	#, _2, tmp95
# eval/problem160//code.c:6:         result[1] = 0;
	sw	zero,0(a5)	#, *_2
# eval/problem160//code.c:11: }
	j	.L4		#
.L2:
# eval/problem160//code.c:8:         result[0] = number + need;
	lw	a5,-20(s0)		# tmp98, number
	mv	a4,a5	# tmp97, tmp98
	lw	a5,-24(s0)		# tmp100, need
	addw	a5,a4,a5	# tmp99, tmp96, tmp97
	sext.w	a4,a5	# _3, tmp96
# eval/problem160//code.c:8:         result[0] = number + need;
	ld	a5,-40(s0)		# tmp101, result
	sw	a4,0(a5)	# _3, *result_11(D)
# eval/problem160//code.c:9:         result[1] = remaining - need;
	ld	a5,-40(s0)		# tmp102, result
	addi	a5,a5,4	#, _4, tmp102
# eval/problem160//code.c:9:         result[1] = remaining - need;
	lw	a4,-28(s0)		# tmp105, remaining
	mv	a3,a4	# tmp104, tmp105
	lw	a4,-24(s0)		# tmp107, need
	subw	a4,a3,a4	# tmp103, tmp104, tmp106
	sext.w	a4,a4	# _5, tmp103
# eval/problem160//code.c:9:         result[1] = remaining - need;
	sw	a4,0(a5)	# _5, *_4
.L4:
# eval/problem160//code.c:11: }
	nop	
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
