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
	sd	a0,-40(s0)	# numbers, numbers
	mv	a5,a1	# tmp86, size
	sw	a5,-44(s0)	# tmp87, size
# eval/problem5//code.c:5:     float sum = 0;
	sw	zero,-32(s0)	#, sum
# eval/problem5//code.c:7:     int i = 0;
	sw	zero,-24(s0)	#, i
# eval/problem5//code.c:9:     for (i = 0; i < size; i++)
	sw	zero,-24(s0)	#, i
# eval/problem5//code.c:9:     for (i = 0; i < size; i++)
	j	.L2		#
.L3:
# eval/problem5//code.c:10:         sum += numbers[i];
	lw	a5,-24(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp88, numbers
	add	a5,a4,a5	# _2, _3, tmp88
	flw	fa5,0(a5)	# _4, *_3
# eval/problem5//code.c:10:         sum += numbers[i];
	flw	fa4,-32(s0)	# tmp90, sum
	fadd.s	fa5,fa4,fa5	# tmp89, tmp90, _4
	fsw	fa5,-32(s0)	# tmp89, sum
# eval/problem5//code.c:9:     for (i = 0; i < size; i++)
	lw	a5,-24(s0)		# tmp93, i
	addiw	a5,a5,1	#, tmp91, tmp92
	sw	a5,-24(s0)	# tmp91, i
.L2:
# eval/problem5//code.c:9:     for (i = 0; i < size; i++)
	lw	a5,-24(s0)		# tmp95, i
	mv	a4,a5	# tmp94, tmp95
	lw	a5,-44(s0)		# tmp97, size
	sext.w	a4,a4	# tmp98, tmp94
	sext.w	a5,a5	# tmp99, tmp96
	blt	a4,a5,.L3	#, tmp98, tmp99,
# eval/problem5//code.c:12:     avg = sum / size;
	lw	a5,-44(s0)		# tmp101, size
	fcvt.s.w	fa5,a5	# _5, tmp100
# eval/problem5//code.c:12:     avg = sum / size;
	flw	fa4,-32(s0)	# tmp103, sum
	fdiv.s	fa5,fa4,fa5	# tmp102, tmp103, _5
	fsw	fa5,-20(s0)	# tmp102, avg
# eval/problem5//code.c:13:     msum = 0;
	sw	zero,-28(s0)	#, msum
# eval/problem5//code.c:15:     for (i = 0; i < size; i++)
	sw	zero,-24(s0)	#, i
# eval/problem5//code.c:15:     for (i = 0; i < size; i++)
	j	.L4		#
.L5:
# eval/problem5//code.c:16:         msum += fabs(numbers[i] - avg);
	lw	a5,-24(s0)		# _6, i
	slli	a5,a5,2	#, _7, _6
	ld	a4,-40(s0)		# tmp104, numbers
	add	a5,a4,a5	# _7, _8, tmp104
	flw	fa4,0(a5)	# _9, *_8
# eval/problem5//code.c:16:         msum += fabs(numbers[i] - avg);
	flw	fa5,-20(s0)	# tmp105, avg
	fsub.s	fa5,fa4,fa5	# _10, _9, tmp105
# eval/problem5//code.c:16:         msum += fabs(numbers[i] - avg);
	fabs.s	fa5,fa5	# _11, _10
# eval/problem5//code.c:16:         msum += fabs(numbers[i] - avg);
	flw	fa4,-28(s0)	# tmp107, msum
	fadd.s	fa5,fa4,fa5	# tmp106, tmp107, _11
	fsw	fa5,-28(s0)	# tmp106, msum
# eval/problem5//code.c:15:     for (i = 0; i < size; i++)
	lw	a5,-24(s0)		# tmp110, i
	addiw	a5,a5,1	#, tmp108, tmp109
	sw	a5,-24(s0)	# tmp108, i
.L4:
# eval/problem5//code.c:15:     for (i = 0; i < size; i++)
	lw	a5,-24(s0)		# tmp112, i
	mv	a4,a5	# tmp111, tmp112
	lw	a5,-44(s0)		# tmp114, size
	sext.w	a4,a4	# tmp115, tmp111
	sext.w	a5,a5	# tmp116, tmp113
	blt	a4,a5,.L5	#, tmp115, tmp116,
# eval/problem5//code.c:18:     return msum / size;
	lw	a5,-44(s0)		# tmp118, size
	fcvt.s.w	fa5,a5	# _12, tmp117
	flw	fa4,-28(s0)	# tmp119, msum
	fdiv.s	fa5,fa4,fa5	# _24, tmp119, _12
# eval/problem5//code.c:19: }
	fmv.s	fa0,fa5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
