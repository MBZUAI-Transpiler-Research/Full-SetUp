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
	addi	s0,sp,64	#,,
	sd	a0,-56(s0)	# a, a
	sd	a1,-64(s0)	# b, b
# eval/problem155//code.c:7:     int len_a = strlen(a);
	ld	a0,-56(s0)		#, a
	call	strlen@plt	#
	mv	a5,a0	# _1,
# eval/problem155//code.c:7:     int len_a = strlen(a);
	sw	a5,-32(s0)	# _1, len_a
# eval/problem155//code.c:8:     int len_b = strlen(b);
	ld	a0,-64(s0)		#, b
	call	strlen@plt	#
	mv	a5,a0	# _2,
# eval/problem155//code.c:8:     int len_b = strlen(b);
	sw	a5,-28(s0)	# _2, len_b
# eval/problem155//code.c:9:     char *temp = (char *)malloc(2 * len_b + 1);
	lw	a5,-28(s0)		# tmp93, len_b
	slliw	a5,a5,1	#, tmp91, tmp92
	sext.w	a5,a5	# _3, tmp91
# eval/problem155//code.c:9:     char *temp = (char *)malloc(2 * len_b + 1);
	addiw	a5,a5,1	#, tmp94, _3
	sext.w	a5,a5	# _4, tmp94
# eval/problem155//code.c:9:     char *temp = (char *)malloc(2 * len_b + 1);
	mv	a0,a5	#, _5
	call	malloc@plt	#
	mv	a5,a0	# tmp95,
	sd	a5,-24(s0)	# tmp95, temp
# eval/problem155//code.c:11:     for (int i = 0; i < len_b; i++) {
	sw	zero,-36(s0)	#, i
# eval/problem155//code.c:11:     for (int i = 0; i < len_b; i++) {
	j	.L2		#
.L5:
# eval/problem155//code.c:12:         strncpy(temp, b + i, len_b - i);
	lw	a5,-36(s0)		# _6, i
	ld	a4,-64(s0)		# tmp96, b
	add	a5,a4,a5	# _6, _7, tmp96
# eval/problem155//code.c:12:         strncpy(temp, b + i, len_b - i);
	lw	a4,-28(s0)		# tmp99, len_b
	mv	a3,a4	# tmp98, tmp99
	lw	a4,-36(s0)		# tmp101, i
	subw	a4,a3,a4	# tmp97, tmp98, tmp100
	sext.w	a4,a4	# _8, tmp97
# eval/problem155//code.c:12:         strncpy(temp, b + i, len_b - i);
	mv	a2,a4	#, _9
	mv	a1,a5	#, _7
	ld	a0,-24(s0)		#, temp
	call	strncpy@plt	#
# eval/problem155//code.c:13:         strncpy(temp + len_b - i, b, i);
	lw	a4,-28(s0)		# _10, len_b
	lw	a5,-36(s0)		# _11, i
	sub	a5,a4,a5	# _12, _10, _11
# eval/problem155//code.c:13:         strncpy(temp + len_b - i, b, i);
	ld	a4,-24(s0)		# tmp102, temp
	add	a5,a4,a5	# _12, _13, tmp102
	lw	a4,-36(s0)		# _14, i
	mv	a2,a4	#, _14
	ld	a1,-64(s0)		#, b
	mv	a0,a5	#, _13
	call	strncpy@plt	#
# eval/problem155//code.c:14:         temp[len_b] = '\0';
	lw	a5,-28(s0)		# _15, len_b
	ld	a4,-24(s0)		# tmp103, temp
	add	a5,a4,a5	# _15, _16, tmp103
# eval/problem155//code.c:14:         temp[len_b] = '\0';
	sb	zero,0(a5)	#, *_16
# eval/problem155//code.c:15:         if (strstr(a, temp)) {
	ld	a1,-24(s0)		#, temp
	ld	a0,-56(s0)		#, a
	call	strstr@plt	#
	mv	a5,a0	# _17,
# eval/problem155//code.c:15:         if (strstr(a, temp)) {
	beq	a5,zero,.L3	#, _17,,
# eval/problem155//code.c:16:             free(temp);
	ld	a0,-24(s0)		#, temp
	call	free@plt	#
# eval/problem155//code.c:17:             return true;
	li	a5,1		# _19,
	j	.L4		#
.L3:
# eval/problem155//code.c:11:     for (int i = 0; i < len_b; i++) {
	lw	a5,-36(s0)		# tmp106, i
	addiw	a5,a5,1	#, tmp104, tmp105
	sw	a5,-36(s0)	# tmp104, i
.L2:
# eval/problem155//code.c:11:     for (int i = 0; i < len_b; i++) {
	lw	a5,-36(s0)		# tmp108, i
	mv	a4,a5	# tmp107, tmp108
	lw	a5,-28(s0)		# tmp110, len_b
	sext.w	a4,a4	# tmp111, tmp107
	sext.w	a5,a5	# tmp112, tmp109
	blt	a4,a5,.L5	#, tmp111, tmp112,
# eval/problem155//code.c:21:     free(temp);
	ld	a0,-24(s0)		#, temp
	call	free@plt	#
# eval/problem155//code.c:22:     return false;
	li	a5,0		# _19,
.L4:
# eval/problem155//code.c:23: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
