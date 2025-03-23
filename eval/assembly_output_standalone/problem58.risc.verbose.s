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
	mv	a5,a1	# tmp93, size
	sw	a5,-44(s0)	# tmp94, size
# eval/problem58//code.c:6:     incr = decr = 0;
	sw	zero,-24(s0)	#, decr
# eval/problem58//code.c:6:     incr = decr = 0;
	lw	a5,-24(s0)		# tmp95, decr
	sw	a5,-28(s0)	# tmp95, incr
# eval/problem58//code.c:8:     for (int i = 1; i < size; i++) {
	li	a5,1		# tmp96,
	sw	a5,-20(s0)	# tmp96, i
# eval/problem58//code.c:8:     for (int i = 1; i < size; i++) {
	j	.L2		#
.L7:
# eval/problem58//code.c:9:         if (l[i] > l[i - 1]) incr = 1;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp97, l
	add	a5,a4,a5	# _2, _3, tmp97
	flw	fa4,0(a5)	# _4, *_3
# eval/problem58//code.c:9:         if (l[i] > l[i - 1]) incr = 1;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	addi	a5,a5,-4	#, _7, _6
	ld	a4,-40(s0)		# tmp98, l
	add	a5,a4,a5	# _7, _8, tmp98
	flw	fa5,0(a5)	# _9, *_8
# eval/problem58//code.c:9:         if (l[i] > l[i - 1]) incr = 1;
	fgt.s	a5,fa4,fa5	#, tmp99, _4, _9
	beq	a5,zero,.L3	#, tmp99,,
# eval/problem58//code.c:9:         if (l[i] > l[i - 1]) incr = 1;
	li	a5,1		# tmp100,
	sw	a5,-28(s0)	# tmp100, incr
.L3:
# eval/problem58//code.c:10:         if (l[i] < l[i - 1]) decr = 1;
	lw	a5,-20(s0)		# _10, i
	slli	a5,a5,2	#, _11, _10
	ld	a4,-40(s0)		# tmp101, l
	add	a5,a4,a5	# _11, _12, tmp101
	flw	fa4,0(a5)	# _13, *_12
# eval/problem58//code.c:10:         if (l[i] < l[i - 1]) decr = 1;
	lw	a5,-20(s0)		# _14, i
	slli	a5,a5,2	#, _15, _14
	addi	a5,a5,-4	#, _16, _15
	ld	a4,-40(s0)		# tmp102, l
	add	a5,a4,a5	# _16, _17, tmp102
	flw	fa5,0(a5)	# _18, *_17
# eval/problem58//code.c:10:         if (l[i] < l[i - 1]) decr = 1;
	flt.s	a5,fa4,fa5	#, tmp103, _13, _18
	beq	a5,zero,.L5	#, tmp103,,
# eval/problem58//code.c:10:         if (l[i] < l[i - 1]) decr = 1;
	li	a5,1		# tmp104,
	sw	a5,-24(s0)	# tmp104, decr
.L5:
# eval/problem58//code.c:8:     for (int i = 1; i < size; i++) {
	lw	a5,-20(s0)		# tmp107, i
	addiw	a5,a5,1	#, tmp105, tmp106
	sw	a5,-20(s0)	# tmp105, i
.L2:
# eval/problem58//code.c:8:     for (int i = 1; i < size; i++) {
	lw	a5,-20(s0)		# tmp109, i
	mv	a4,a5	# tmp108, tmp109
	lw	a5,-44(s0)		# tmp111, size
	sext.w	a4,a4	# tmp112, tmp108
	sext.w	a5,a5	# tmp113, tmp110
	blt	a4,a5,.L7	#, tmp112, tmp113,
# eval/problem58//code.c:12:     if (incr + decr == 2) return false;
	lw	a5,-28(s0)		# tmp116, incr
	mv	a4,a5	# tmp115, tmp116
	lw	a5,-24(s0)		# tmp118, decr
	addw	a5,a4,a5	# tmp117, tmp114, tmp115
	sext.w	a5,a5	# _19, tmp114
# eval/problem58//code.c:12:     if (incr + decr == 2) return false;
	mv	a4,a5	# tmp119, _19
	li	a5,2		# tmp120,
	bne	a4,a5,.L8	#, tmp119, tmp120,
# eval/problem58//code.c:12:     if (incr + decr == 2) return false;
	li	a5,0		# _25,
	j	.L9		#
.L8:
# eval/problem58//code.c:13:     return true;
	li	a5,1		# _25,
.L9:
# eval/problem58//code.c:14: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
