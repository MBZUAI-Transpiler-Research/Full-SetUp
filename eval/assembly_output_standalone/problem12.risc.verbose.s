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
# eval/problem12//code.c:6:     int len_a = strlen(a);
	ld	a0,-56(s0)		#, a
	call	strlen@plt	#
	mv	a5,a0	# _1,
# eval/problem12//code.c:6:     int len_a = strlen(a);
	sw	a5,-36(s0)	# _1, len_a
# eval/problem12//code.c:7:     int len_b = strlen(b);
	ld	a0,-64(s0)		#, b
	call	strlen@plt	#
	mv	a5,a0	# _2,
# eval/problem12//code.c:7:     int len_b = strlen(b);
	sw	a5,-32(s0)	# _2, len_b
# eval/problem12//code.c:8:     int min_len = len_a < len_b ? len_a : len_b;
	lw	a5,-36(s0)		# tmp91, len_a
	mv	a2,a5	# tmp90, tmp91
	lw	a5,-32(s0)		# tmp92, len_b
	sext.w	a3,a5	# tmp93, tmp89
	sext.w	a4,a2	# tmp94, tmp90
	ble	a3,a4,.L2	#, tmp93, tmp94,
	mv	a5,a2	# tmp89, tmp90
.L2:
	sw	a5,-28(s0)	# tmp89, min_len
# eval/problem12//code.c:9:     char *output = malloc((min_len + 1) * sizeof(char));
	lw	a5,-28(s0)		# tmp97, min_len
	addiw	a5,a5,1	#, tmp95, tmp96
	sext.w	a5,a5	# _3, tmp95
# eval/problem12//code.c:9:     char *output = malloc((min_len + 1) * sizeof(char));
	mv	a0,a5	#, _4
	call	malloc@plt	#
	mv	a5,a0	# tmp98,
	sd	a5,-24(s0)	# tmp98, output
# eval/problem12//code.c:10:     if (!output) return NULL;
	ld	a5,-24(s0)		# tmp99, output
	bne	a5,zero,.L3	#, tmp99,,
# eval/problem12//code.c:10:     if (!output) return NULL;
	li	a5,0		# _16,
	j	.L4		#
.L3:
# eval/problem12//code.c:12:     for (int i = 0; i < min_len; i++) {
	sw	zero,-40(s0)	#, i
# eval/problem12//code.c:12:     for (int i = 0; i < min_len; i++) {
	j	.L5		#
.L8:
# eval/problem12//code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	lw	a5,-40(s0)		# _5, i
	ld	a4,-56(s0)		# tmp100, a
	add	a5,a4,a5	# _5, _6, tmp100
	lbu	a3,0(a5)	# _7, *_6
# eval/problem12//code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	lw	a5,-40(s0)		# _8, i
	ld	a4,-64(s0)		# tmp101, b
	add	a5,a4,a5	# _8, _9, tmp101
	lbu	a5,0(a5)	# _10, *_9
# eval/problem12//code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	mv	a4,a3	# tmp102, _7
	bne	a4,a5,.L6	#, tmp102, tmp103,
# eval/problem12//code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	li	a5,48		# iftmp.0_17,
	j	.L7		#
.L6:
# eval/problem12//code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	li	a5,49		# iftmp.0_17,
.L7:
# eval/problem12//code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	lw	a4,-40(s0)		# _11, i
	ld	a3,-24(s0)		# tmp104, output
	add	a4,a3,a4	# _11, _12, tmp104
# eval/problem12//code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	sb	a5,0(a4)	# iftmp.0_17, *_12
# eval/problem12//code.c:12:     for (int i = 0; i < min_len; i++) {
	lw	a5,-40(s0)		# tmp107, i
	addiw	a5,a5,1	#, tmp105, tmp106
	sw	a5,-40(s0)	# tmp105, i
.L5:
# eval/problem12//code.c:12:     for (int i = 0; i < min_len; i++) {
	lw	a5,-40(s0)		# tmp109, i
	mv	a4,a5	# tmp108, tmp109
	lw	a5,-28(s0)		# tmp111, min_len
	sext.w	a4,a4	# tmp112, tmp108
	sext.w	a5,a5	# tmp113, tmp110
	blt	a4,a5,.L8	#, tmp112, tmp113,
# eval/problem12//code.c:15:     output[min_len] = '\0';
	lw	a5,-28(s0)		# _13, min_len
	ld	a4,-24(s0)		# tmp114, output
	add	a5,a4,a5	# _13, _14, tmp114
# eval/problem12//code.c:15:     output[min_len] = '\0';
	sb	zero,0(a5)	#, *_14
# eval/problem12//code.c:16:     return output;
	ld	a5,-24(s0)		# _16, output
.L4:
# eval/problem12//code.c:17: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
