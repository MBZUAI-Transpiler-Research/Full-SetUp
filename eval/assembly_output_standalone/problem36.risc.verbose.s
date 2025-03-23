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
	sd	a0,-40(s0)	# l, l
	mv	a5,a1	# tmp81, size
	sw	a5,-44(s0)	# tmp82, size
# eval/problem36//code.c:4:     float max = -10000;
	lla	a5,.LC0	# tmp83,
	flw	fa5,0(a5)	# tmp84,
	fsw	fa5,-24(s0)	# tmp84, max
# eval/problem36//code.c:5:     for (int i = 0; i < size; i++)
	sw	zero,-20(s0)	#, i
# eval/problem36//code.c:5:     for (int i = 0; i < size; i++)
	j	.L2		#
.L5:
# eval/problem36//code.c:6:         if (max < l[i]) max = l[i];
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp85, l
	add	a5,a4,a5	# _2, _3, tmp85
	flw	fa5,0(a5)	# _4, *_3
# eval/problem36//code.c:6:         if (max < l[i]) max = l[i];
	flw	fa4,-24(s0)	# tmp86, max
	flt.s	a5,fa4,fa5	#, tmp87, tmp86, _4
	beq	a5,zero,.L3	#, tmp87,,
# eval/problem36//code.c:6:         if (max < l[i]) max = l[i];
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp88, l
	add	a5,a4,a5	# _6, _7, tmp88
# eval/problem36//code.c:6:         if (max < l[i]) max = l[i];
	flw	fa5,0(a5)	# tmp89, *_7
	fsw	fa5,-24(s0)	# tmp89, max
.L3:
# eval/problem36//code.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-20(s0)		# tmp92, i
	addiw	a5,a5,1	#, tmp90, tmp91
	sw	a5,-20(s0)	# tmp90, i
.L2:
# eval/problem36//code.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-20(s0)		# tmp94, i
	mv	a4,a5	# tmp93, tmp94
	lw	a5,-44(s0)		# tmp96, size
	sext.w	a4,a4	# tmp97, tmp93
	sext.w	a5,a5	# tmp98, tmp95
	blt	a4,a5,.L5	#, tmp97, tmp98,
# eval/problem36//code.c:7:     return max;
	flw	fa5,-24(s0)	# _14, max
# eval/problem36//code.c:8: }
	fmv.s	fa0,fa5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	2
.LC0:
	.word	-971227136
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
