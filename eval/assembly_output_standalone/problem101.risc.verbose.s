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
	mv	a5,a0	# tmp85, n
	sw	a5,-36(s0)	# tmp86, n
# eval/problem101//code.c:5:     int* out = (int*)malloc(n * sizeof(int));
	lw	a5,-36(s0)		# _1, n
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp87,
	sd	a5,-24(s0)	# tmp87, out
# eval/problem101//code.c:6:     *out = n;
	ld	a5,-24(s0)		# tmp88, out
	lw	a4,-36(s0)		# tmp89, n
	sw	a4,0(a5)	# tmp89, *out_17
# eval/problem101//code.c:7:     for (int i = 1; i < n; i++)
	li	a5,1		# tmp90,
	sw	a5,-28(s0)	# tmp90, i
# eval/problem101//code.c:7:     for (int i = 1; i < n; i++)
	j	.L2		#
.L3:
# eval/problem101//code.c:8:         *(out + i) = *(out + i - 1) + 2;
	lw	a5,-28(s0)		# _3, i
	slli	a5,a5,2	#, _4, _3
# eval/problem101//code.c:8:         *(out + i) = *(out + i - 1) + 2;
	addi	a5,a5,-4	#, _5, _4
	ld	a4,-24(s0)		# tmp91, out
	add	a5,a4,a5	# _5, _6, tmp91
# eval/problem101//code.c:8:         *(out + i) = *(out + i - 1) + 2;
	lw	a4,0(a5)		# _7, *_6
# eval/problem101//code.c:8:         *(out + i) = *(out + i - 1) + 2;
	lw	a5,-28(s0)		# _8, i
	slli	a5,a5,2	#, _9, _8
	ld	a3,-24(s0)		# tmp92, out
	add	a5,a3,a5	# _9, _10, tmp92
# eval/problem101//code.c:8:         *(out + i) = *(out + i - 1) + 2;
	addiw	a4,a4,2	#, tmp93, _7
	sext.w	a4,a4	# _11, tmp93
# eval/problem101//code.c:8:         *(out + i) = *(out + i - 1) + 2;
	sw	a4,0(a5)	# _11, *_10
# eval/problem101//code.c:7:     for (int i = 1; i < n; i++)
	lw	a5,-28(s0)		# tmp96, i
	addiw	a5,a5,1	#, tmp94, tmp95
	sw	a5,-28(s0)	# tmp94, i
.L2:
# eval/problem101//code.c:7:     for (int i = 1; i < n; i++)
	lw	a5,-28(s0)		# tmp98, i
	mv	a4,a5	# tmp97, tmp98
	lw	a5,-36(s0)		# tmp100, n
	sext.w	a4,a4	# tmp101, tmp97
	sext.w	a5,a5	# tmp102, tmp99
	blt	a4,a5,.L3	#, tmp101, tmp102,
# eval/problem101//code.c:9:     return out;
	ld	a5,-24(s0)		# _20, out
# eval/problem101//code.c:10: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
