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
	sd	a0,-56(s0)	# strings, strings
	mv	a5,a1	# tmp88, count
	sw	a5,-60(s0)	# tmp89, count
# eval/problem29//code.c:6:     int length = 0;
	sw	zero,-36(s0)	#, length
# eval/problem29//code.c:7:     for (int i = 0; i < count; i++) {
	sw	zero,-32(s0)	#, i
# eval/problem29//code.c:7:     for (int i = 0; i < count; i++) {
	j	.L2		#
.L3:
# eval/problem29//code.c:8:         length += strlen(strings[i]);
	lw	a5,-32(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-56(s0)		# tmp90, strings
	add	a5,a4,a5	# _2, _3, tmp90
# eval/problem29//code.c:8:         length += strlen(strings[i]);
	ld	a5,0(a5)		# _4, *_3
	mv	a0,a5	#, _4
	call	strlen@plt	#
	mv	a5,a0	# _5,
# eval/problem29//code.c:8:         length += strlen(strings[i]);
	sext.w	a4,a5	# _6, _5
	lw	a5,-36(s0)		# length.0_7, length
	addw	a5,a4,a5	# length.0_7, tmp91, _6
	sext.w	a5,a5	# _8, tmp91
	sw	a5,-36(s0)	# _8, length
# eval/problem29//code.c:7:     for (int i = 0; i < count; i++) {
	lw	a5,-32(s0)		# tmp94, i
	addiw	a5,a5,1	#, tmp92, tmp93
	sw	a5,-32(s0)	# tmp92, i
.L2:
# eval/problem29//code.c:7:     for (int i = 0; i < count; i++) {
	lw	a5,-32(s0)		# tmp96, i
	mv	a4,a5	# tmp95, tmp96
	lw	a5,-60(s0)		# tmp98, count
	sext.w	a4,a4	# tmp99, tmp95
	sext.w	a5,a5	# tmp100, tmp97
	blt	a4,a5,.L3	#, tmp99, tmp100,
# eval/problem29//code.c:11:     char* out = (char*)malloc(length + 1);
	lw	a5,-36(s0)		# tmp103, length
	addiw	a5,a5,1	#, tmp101, tmp102
	sext.w	a5,a5	# _9, tmp101
# eval/problem29//code.c:11:     char* out = (char*)malloc(length + 1);
	mv	a0,a5	#, _10
	call	malloc@plt	#
	mv	a5,a0	# tmp104,
	sd	a5,-24(s0)	# tmp104, out
# eval/problem29//code.c:12:     if (!out) {
	ld	a5,-24(s0)		# tmp105, out
	bne	a5,zero,.L4	#, tmp105,,
# eval/problem29//code.c:13:         return NULL; 
	li	a5,0		# _18,
	j	.L5		#
.L4:
# eval/problem29//code.c:16:     out[0] = '\0';
	ld	a5,-24(s0)		# tmp106, out
	sb	zero,0(a5)	#, *out_26
# eval/problem29//code.c:18:     for (int i = 0; i < count; i++) {
	sw	zero,-28(s0)	#, i
# eval/problem29//code.c:18:     for (int i = 0; i < count; i++) {
	j	.L6		#
.L7:
# eval/problem29//code.c:19:         strcat(out, strings[i]);
	lw	a5,-28(s0)		# _11, i
	slli	a5,a5,3	#, _12, _11
	ld	a4,-56(s0)		# tmp107, strings
	add	a5,a4,a5	# _12, _13, tmp107
# eval/problem29//code.c:19:         strcat(out, strings[i]);
	ld	a5,0(a5)		# _14, *_13
	mv	a1,a5	#, _14
	ld	a0,-24(s0)		#, out
	call	strcat@plt	#
# eval/problem29//code.c:18:     for (int i = 0; i < count; i++) {
	lw	a5,-28(s0)		# tmp110, i
	addiw	a5,a5,1	#, tmp108, tmp109
	sw	a5,-28(s0)	# tmp108, i
.L6:
# eval/problem29//code.c:18:     for (int i = 0; i < count; i++) {
	lw	a5,-28(s0)		# tmp112, i
	mv	a4,a5	# tmp111, tmp112
	lw	a5,-60(s0)		# tmp114, count
	sext.w	a4,a4	# tmp115, tmp111
	sext.w	a5,a5	# tmp116, tmp113
	blt	a4,a5,.L7	#, tmp115, tmp116,
# eval/problem29//code.c:22:     return out;
	ld	a5,-24(s0)		# _18, out
.L5:
# eval/problem29//code.c:23: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
