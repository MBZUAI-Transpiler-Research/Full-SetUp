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
	addi	sp,sp,-80	#,,
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	sd	s1,56(sp)	#,
	addi	s0,sp,80	#,,
	sd	a0,-72(s0)	# str, str
	sd	a1,-80(s0)	# count, count
# eval/problem15//code.c:6:     int len = strlen(str);
	ld	a0,-72(s0)		#, str
	call	strlen@plt	#
	mv	a5,a0	# _1,
# eval/problem15//code.c:6:     int len = strlen(str);
	sw	a5,-60(s0)	# _1, len
# eval/problem15//code.c:7:     char **out = malloc(len * sizeof(char *));
	lw	a5,-60(s0)		# _2, len
	slli	a5,a5,3	#, _3, _2
	mv	a0,a5	#, _3
	call	malloc@plt	#
	mv	a5,a0	# tmp96,
	sd	a5,-48(s0)	# tmp96, out
# eval/problem15//code.c:9:     char *current = malloc(len + 1);
	lw	a5,-60(s0)		# tmp99, len
	addiw	a5,a5,1	#, tmp97, tmp98
	sext.w	a5,a5	# _4, tmp97
# eval/problem15//code.c:9:     char *current = malloc(len + 1);
	mv	a0,a5	#, _5
	call	malloc@plt	#
	mv	a5,a0	# tmp100,
	sd	a5,-56(s0)	# tmp100, current
# eval/problem15//code.c:10:     current[0] = '\0';
	ld	a5,-56(s0)		# tmp101, current
	sb	zero,0(a5)	#, *current_32
# eval/problem15//code.c:12:     for (int i = 0; i < len; ++i) {
	sw	zero,-64(s0)	#, i
# eval/problem15//code.c:12:     for (int i = 0; i < len; ++i) {
	j	.L2		#
.L3:
# eval/problem15//code.c:13:         size_t current_len = strlen(current);
	ld	a0,-56(s0)		#, current
	call	strlen@plt	#
	sd	a0,-40(s0)	#, current_len
# eval/problem15//code.c:14:         current = realloc(current, current_len + 2);
	ld	a5,-40(s0)		# tmp102, current_len
	addi	a5,a5,2	#, _6, tmp102
	mv	a1,a5	#, _6
	ld	a0,-56(s0)		#, current
	call	realloc@plt	#
	sd	a0,-56(s0)	#, current
# eval/problem15//code.c:15:         current[current_len] = str[i];
	lw	a5,-64(s0)		# _7, i
	ld	a4,-72(s0)		# tmp103, str
	add	a4,a4,a5	# _7, _8, tmp103
# eval/problem15//code.c:15:         current[current_len] = str[i];
	ld	a3,-56(s0)		# tmp104, current
	ld	a5,-40(s0)		# tmp105, current_len
	add	a5,a3,a5	# tmp105, _9, tmp104
# eval/problem15//code.c:15:         current[current_len] = str[i];
	lbu	a4,0(a4)	# _10, *_8
# eval/problem15//code.c:15:         current[current_len] = str[i];
	sb	a4,0(a5)	# _10, *_9
# eval/problem15//code.c:16:         current[current_len + 1] = '\0';
	ld	a5,-40(s0)		# tmp106, current_len
	addi	a5,a5,1	#, _11, tmp106
	ld	a4,-56(s0)		# tmp107, current
	add	a5,a4,a5	# _11, _12, tmp107
# eval/problem15//code.c:16:         current[current_len + 1] = '\0';
	sb	zero,0(a5)	#, *_12
# eval/problem15//code.c:18:         out[i] = malloc(strlen(current) + 1);
	ld	a0,-56(s0)		#, current
	call	strlen@plt	#
	mv	a5,a0	# _13,
# eval/problem15//code.c:18:         out[i] = malloc(strlen(current) + 1);
	addi	a3,a5,1	#, _14, _13
# eval/problem15//code.c:18:         out[i] = malloc(strlen(current) + 1);
	lw	a5,-64(s0)		# _15, i
	slli	a5,a5,3	#, _16, _15
	ld	a4,-48(s0)		# tmp108, out
	add	s1,a4,a5	# _16, _17, tmp108
# eval/problem15//code.c:18:         out[i] = malloc(strlen(current) + 1);
	mv	a0,a3	#, _14
	call	malloc@plt	#
	mv	a5,a0	# tmp109,
# eval/problem15//code.c:18:         out[i] = malloc(strlen(current) + 1);
	sd	a5,0(s1)	# _18, *_17
# eval/problem15//code.c:19:         strcpy(out[i], current);
	lw	a5,-64(s0)		# _19, i
	slli	a5,a5,3	#, _20, _19
	ld	a4,-48(s0)		# tmp110, out
	add	a5,a4,a5	# _20, _21, tmp110
# eval/problem15//code.c:19:         strcpy(out[i], current);
	ld	a5,0(a5)		# _22, *_21
	ld	a1,-56(s0)		#, current
	mv	a0,a5	#, _22
	call	strcpy@plt	#
# eval/problem15//code.c:12:     for (int i = 0; i < len; ++i) {
	lw	a5,-64(s0)		# tmp113, i
	addiw	a5,a5,1	#, tmp111, tmp112
	sw	a5,-64(s0)	# tmp111, i
.L2:
# eval/problem15//code.c:12:     for (int i = 0; i < len; ++i) {
	lw	a5,-64(s0)		# tmp115, i
	mv	a4,a5	# tmp114, tmp115
	lw	a5,-60(s0)		# tmp117, len
	sext.w	a4,a4	# tmp118, tmp114
	sext.w	a5,a5	# tmp119, tmp116
	blt	a4,a5,.L3	#, tmp118, tmp119,
# eval/problem15//code.c:21:     free(current);
	ld	a0,-56(s0)		#, current
	call	free@plt	#
# eval/problem15//code.c:23:     *count = len;
	ld	a5,-80(s0)		# tmp120, count
	lw	a4,-60(s0)		# tmp121, len
	sw	a4,0(a5)	# tmp121, *count_36(D)
# eval/problem15//code.c:24:     return out;
	ld	a5,-48(s0)		# _38, out
# eval/problem15//code.c:25: }
	mv	a0,a5	#, <retval>
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	ld	s1,56(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
