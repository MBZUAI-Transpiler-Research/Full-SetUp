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
	sd	a0,-40(s0)	# strings, strings
	mv	a5,a1	# tmp93, count
	sd	a2,-56(s0)	# prefix, prefix
	sd	a3,-64(s0)	# out, out
	sw	a5,-44(s0)	# tmp94, count
# eval/problem30//code.c:6:     int prefix_length = strlen(prefix);
	ld	a0,-56(s0)		#, prefix
	call	strlen@plt	#
	mv	a5,a0	# _1,
# eval/problem30//code.c:6:     int prefix_length = strlen(prefix);
	sw	a5,-20(s0)	# _1, prefix_length
# eval/problem30//code.c:7:     *out = (char**)malloc(count * sizeof(char*));
	lw	a5,-44(s0)		# _2, count
	slli	a5,a5,3	#, _3, _2
	mv	a0,a5	#, _3
	call	malloc@plt	#
	mv	a5,a0	# tmp95,
	mv	a4,a5	# _4, tmp95
# eval/problem30//code.c:7:     *out = (char**)malloc(count * sizeof(char*));
	ld	a5,-64(s0)		# tmp96, out
	sd	a4,0(a5)	# _4, *out_30(D)
# eval/problem30//code.c:8:     int out_count = 0;
	sw	zero,-28(s0)	#, out_count
# eval/problem30//code.c:10:     for (int i = 0; i < count; i++) {
	sw	zero,-24(s0)	#, i
# eval/problem30//code.c:10:     for (int i = 0; i < count; i++) {
	j	.L2		#
.L4:
# eval/problem30//code.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	lw	a5,-24(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-40(s0)		# tmp97, strings
	add	a5,a4,a5	# _6, _7, tmp97
# eval/problem30//code.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	ld	a5,0(a5)		# _8, *_7
	lw	a4,-20(s0)		# _9, prefix_length
	mv	a2,a4	#, _9
	ld	a1,-56(s0)		#, prefix
	mv	a0,a5	#, _8
	call	strncmp@plt	#
	mv	a5,a0	# tmp98,
# eval/problem30//code.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	bne	a5,zero,.L3	#, _10,,
# eval/problem30//code.c:12:             (*out)[out_count++] = strings[i];
	lw	a5,-24(s0)		# _11, i
	slli	a5,a5,3	#, _12, _11
	ld	a4,-40(s0)		# tmp99, strings
	add	a4,a4,a5	# _12, _13, tmp99
# eval/problem30//code.c:12:             (*out)[out_count++] = strings[i];
	ld	a5,-64(s0)		# tmp100, out
	ld	a3,0(a5)		# _14, *out_30(D)
# eval/problem30//code.c:12:             (*out)[out_count++] = strings[i];
	lw	a5,-28(s0)		# out_count.0_15, out_count
	addiw	a2,a5,1	#, tmp101, out_count.0_15
	sw	a2,-28(s0)	# tmp101, out_count
# eval/problem30//code.c:12:             (*out)[out_count++] = strings[i];
	slli	a5,a5,3	#, _17, _16
	add	a5,a3,a5	# _17, _18, _14
# eval/problem30//code.c:12:             (*out)[out_count++] = strings[i];
	ld	a4,0(a4)		# _19, *_13
# eval/problem30//code.c:12:             (*out)[out_count++] = strings[i];
	sd	a4,0(a5)	# _19, *_18
.L3:
# eval/problem30//code.c:10:     for (int i = 0; i < count; i++) {
	lw	a5,-24(s0)		# tmp104, i
	addiw	a5,a5,1	#, tmp102, tmp103
	sw	a5,-24(s0)	# tmp102, i
.L2:
# eval/problem30//code.c:10:     for (int i = 0; i < count; i++) {
	lw	a5,-24(s0)		# tmp106, i
	mv	a4,a5	# tmp105, tmp106
	lw	a5,-44(s0)		# tmp108, count
	sext.w	a4,a4	# tmp109, tmp105
	sext.w	a5,a5	# tmp110, tmp107
	blt	a4,a5,.L4	#, tmp109, tmp110,
# eval/problem30//code.c:16:     return out_count;
	lw	a5,-28(s0)		# _34, out_count
# eval/problem30//code.c:17: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
