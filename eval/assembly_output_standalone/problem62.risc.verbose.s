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
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	sd	s1,40(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-56(s0)	# brackets, brackets
# eval/problem62//code.c:6:     int level = 0;
	sw	zero,-40(s0)	#, level
# eval/problem62//code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	sw	zero,-36(s0)	#, i
# eval/problem62//code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	j	.L2		#
.L7:
# eval/problem62//code.c:8:         if (brackets[i] == '(') level += 1;
	lw	a5,-36(s0)		# _1, i
	ld	a4,-56(s0)		# tmp82, brackets
	add	a5,a4,a5	# _1, _2, tmp82
	lbu	a5,0(a5)	# _3, *_2
# eval/problem62//code.c:8:         if (brackets[i] == '(') level += 1;
	mv	a4,a5	# tmp83, _3
	li	a5,40		# tmp84,
	bne	a4,a5,.L3	#, tmp83, tmp84,
# eval/problem62//code.c:8:         if (brackets[i] == '(') level += 1;
	lw	a5,-40(s0)		# tmp87, level
	addiw	a5,a5,1	#, tmp85, tmp86
	sw	a5,-40(s0)	# tmp85, level
.L3:
# eval/problem62//code.c:9:         if (brackets[i] == ')') level -= 1;
	lw	a5,-36(s0)		# _4, i
	ld	a4,-56(s0)		# tmp88, brackets
	add	a5,a4,a5	# _4, _5, tmp88
	lbu	a5,0(a5)	# _6, *_5
# eval/problem62//code.c:9:         if (brackets[i] == ')') level -= 1;
	mv	a4,a5	# tmp89, _6
	li	a5,41		# tmp90,
	bne	a4,a5,.L4	#, tmp89, tmp90,
# eval/problem62//code.c:9:         if (brackets[i] == ')') level -= 1;
	lw	a5,-40(s0)		# tmp93, level
	addiw	a5,a5,-1	#, tmp91, tmp92
	sw	a5,-40(s0)	# tmp91, level
.L4:
# eval/problem62//code.c:10:         if (level < 0) return false;
	lw	a5,-40(s0)		# tmp95, level
	sext.w	a5,a5	# tmp96, tmp94
	bge	a5,zero,.L5	#, tmp96,,
# eval/problem62//code.c:10:         if (level < 0) return false;
	li	a5,0		# _13,
	j	.L6		#
.L5:
# eval/problem62//code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	lw	a5,-36(s0)		# tmp99, i
	addiw	a5,a5,1	#, tmp97, tmp98
	sw	a5,-36(s0)	# tmp97, i
.L2:
# eval/problem62//code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	lw	s1,-36(s0)		# _7, i
# eval/problem62//code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	ld	a0,-56(s0)		#, brackets
	call	strlen@plt	#
	mv	a5,a0	# _8,
# eval/problem62//code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	bltu	s1,a5,.L7	#, _7, _8,
# eval/problem62//code.c:12:     return level == 0;
	lw	a5,-40(s0)		# tmp102, level
	sext.w	a5,a5	# tmp104, tmp101
	seqz	a5,a5	# tmp103, tmp104
	andi	a5,a5,0xff	# _13, tmp100
.L6:
# eval/problem62//code.c:13: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	ld	s1,40(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
