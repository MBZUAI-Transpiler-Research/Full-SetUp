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
	sd	a0,-40(s0)	# brackets, brackets
# eval/problem57//code.c:6:     int level = 0;
	sw	zero,-24(s0)	#, level
# eval/problem57//code.c:7:     int i = 0;
	sw	zero,-20(s0)	#, i
# eval/problem57//code.c:8:     while (brackets[i]) {
	j	.L2		#
.L7:
# eval/problem57//code.c:9:         if (brackets[i] == '<') level++;
	lw	a5,-20(s0)		# _1, i
	ld	a4,-40(s0)		# tmp83, brackets
	add	a5,a4,a5	# _1, _2, tmp83
	lbu	a5,0(a5)	# _3, *_2
# eval/problem57//code.c:9:         if (brackets[i] == '<') level++;
	mv	a4,a5	# tmp84, _3
	li	a5,60		# tmp85,
	bne	a4,a5,.L3	#, tmp84, tmp85,
# eval/problem57//code.c:9:         if (brackets[i] == '<') level++;
	lw	a5,-24(s0)		# tmp88, level
	addiw	a5,a5,1	#, tmp86, tmp87
	sw	a5,-24(s0)	# tmp86, level
.L3:
# eval/problem57//code.c:10:         if (brackets[i] == '>') level--;
	lw	a5,-20(s0)		# _4, i
	ld	a4,-40(s0)		# tmp89, brackets
	add	a5,a4,a5	# _4, _5, tmp89
	lbu	a5,0(a5)	# _6, *_5
# eval/problem57//code.c:10:         if (brackets[i] == '>') level--;
	mv	a4,a5	# tmp90, _6
	li	a5,62		# tmp91,
	bne	a4,a5,.L4	#, tmp90, tmp91,
# eval/problem57//code.c:10:         if (brackets[i] == '>') level--;
	lw	a5,-24(s0)		# tmp94, level
	addiw	a5,a5,-1	#, tmp92, tmp93
	sw	a5,-24(s0)	# tmp92, level
.L4:
# eval/problem57//code.c:11:         if (level < 0) return false;
	lw	a5,-24(s0)		# tmp96, level
	sext.w	a5,a5	# tmp97, tmp95
	bge	a5,zero,.L5	#, tmp97,,
# eval/problem57//code.c:11:         if (level < 0) return false;
	li	a5,0		# _14,
	j	.L6		#
.L5:
# eval/problem57//code.c:12:         i++;
	lw	a5,-20(s0)		# tmp100, i
	addiw	a5,a5,1	#, tmp98, tmp99
	sw	a5,-20(s0)	# tmp98, i
.L2:
# eval/problem57//code.c:8:     while (brackets[i]) {
	lw	a5,-20(s0)		# _7, i
	ld	a4,-40(s0)		# tmp101, brackets
	add	a5,a4,a5	# _7, _8, tmp101
	lbu	a5,0(a5)	# _9, *_8
# eval/problem57//code.c:8:     while (brackets[i]) {
	bne	a5,zero,.L7	#, _9,,
# eval/problem57//code.c:14:     if (level != 0) return false;
	lw	a5,-24(s0)		# tmp103, level
	sext.w	a5,a5	# tmp104, tmp102
	beq	a5,zero,.L8	#, tmp104,,
# eval/problem57//code.c:14:     if (level != 0) return false;
	li	a5,0		# _14,
	j	.L6		#
.L8:
# eval/problem57//code.c:15:     return true;
	li	a5,1		# _14,
.L6:
# eval/problem57//code.c:16: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
