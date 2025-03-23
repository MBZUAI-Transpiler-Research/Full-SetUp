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
	mv	a5,a1	# tmp89, size
	sd	a2,-56(s0)	# substring, substring
	sd	a3,-64(s0)	# out_size, out_size
	sw	a5,-44(s0)	# tmp90, size
# eval/problem8//code.c:6:     char **out = NULL;
	sd	zero,-24(s0)	#, out
# eval/problem8//code.c:7:     int count = 0;
	sw	zero,-32(s0)	#, count
# eval/problem8//code.c:8:     for (int i = 0; i < size; i++) {
	sw	zero,-28(s0)	#, i
# eval/problem8//code.c:8:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L4:
# eval/problem8//code.c:9:         if (strstr(strings[i], substring) != NULL) {
	lw	a5,-28(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp91, strings
	add	a5,a4,a5	# _2, _3, tmp91
# eval/problem8//code.c:9:         if (strstr(strings[i], substring) != NULL) {
	ld	a5,0(a5)		# _4, *_3
	ld	a1,-56(s0)		#, substring
	mv	a0,a5	#, _4
	call	strstr@plt	#
	mv	a5,a0	# _5,
# eval/problem8//code.c:9:         if (strstr(strings[i], substring) != NULL) {
	beq	a5,zero,.L3	#, _5,,
# eval/problem8//code.c:10:             out = (char **)realloc(out, sizeof(char *) * (count + 1));
	lw	a5,-32(s0)		# tmp94, count
	addiw	a5,a5,1	#, tmp92, tmp93
	sext.w	a5,a5	# _6, tmp92
# eval/problem8//code.c:10:             out = (char **)realloc(out, sizeof(char *) * (count + 1));
	slli	a5,a5,3	#, _8, _7
	mv	a1,a5	#, _8
	ld	a0,-24(s0)		#, out
	call	realloc@plt	#
	sd	a0,-24(s0)	#, out
# eval/problem8//code.c:11:             out[count] = strings[i];
	lw	a5,-28(s0)		# _9, i
	slli	a5,a5,3	#, _10, _9
	ld	a4,-40(s0)		# tmp95, strings
	add	a4,a4,a5	# _10, _11, tmp95
# eval/problem8//code.c:11:             out[count] = strings[i];
	lw	a5,-32(s0)		# _12, count
	slli	a5,a5,3	#, _13, _12
	ld	a3,-24(s0)		# tmp96, out
	add	a5,a3,a5	# _13, _14, tmp96
# eval/problem8//code.c:11:             out[count] = strings[i];
	ld	a4,0(a4)		# _15, *_11
# eval/problem8//code.c:11:             out[count] = strings[i];
	sd	a4,0(a5)	# _15, *_14
# eval/problem8//code.c:12:             count++;
	lw	a5,-32(s0)		# tmp99, count
	addiw	a5,a5,1	#, tmp97, tmp98
	sw	a5,-32(s0)	# tmp97, count
.L3:
# eval/problem8//code.c:8:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp102, i
	addiw	a5,a5,1	#, tmp100, tmp101
	sw	a5,-28(s0)	# tmp100, i
.L2:
# eval/problem8//code.c:8:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp104, i
	mv	a4,a5	# tmp103, tmp104
	lw	a5,-44(s0)		# tmp106, size
	sext.w	a4,a4	# tmp107, tmp103
	sext.w	a5,a5	# tmp108, tmp105
	blt	a4,a5,.L4	#, tmp107, tmp108,
# eval/problem8//code.c:15:     *out_size = count;
	ld	a5,-64(s0)		# tmp109, out_size
	lw	a4,-32(s0)		# tmp110, count
	sw	a4,0(a5)	# tmp110, *out_size_28(D)
# eval/problem8//code.c:16:     return out;
	ld	a5,-24(s0)		# _30, out
# eval/problem8//code.c:17: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
