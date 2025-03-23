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
	sd	a0,-40(s0)	# s, s
	sd	a1,-48(s0)	# out, out
# eval/problem90//code.c:6:     for (i = 0; s[i] != '\0'; i++) {
	sw	zero,-24(s0)	#, i
# eval/problem90//code.c:6:     for (i = 0; s[i] != '\0'; i++) {
	j	.L2		#
.L3:
# eval/problem90//code.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	lw	a5,-24(s0)		# _1, i
	ld	a4,-40(s0)		# tmp86, s
	add	a5,a4,a5	# _1, _2, tmp86
	lbu	a5,0(a5)	# _3, *_2
# eval/problem90//code.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	sext.w	a5,a5	# _4, _3
# eval/problem90//code.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	addiw	a5,a5,-93	#, tmp87, _4
	sext.w	a5,a5	# _5, tmp87
# eval/problem90//code.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	mv	a4,a5	# tmp89, _5
	li	a5,26		# tmp91,
	remw	a5,a4,a5	# tmp91, tmp90, tmp89
	sext.w	a5,a5	# _6, tmp90
# eval/problem90//code.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	addiw	a5,a5,97	#, tmp92, _6
	sw	a5,-20(s0)	# tmp92, w
# eval/problem90//code.c:8:         out[i] = (char)w;
	lw	a5,-24(s0)		# _7, i
	ld	a4,-48(s0)		# tmp93, out
	add	a5,a4,a5	# _7, _8, tmp93
# eval/problem90//code.c:8:         out[i] = (char)w;
	lw	a4,-20(s0)		# tmp95, w
	andi	a4,a4,0xff	# _9, tmp94
# eval/problem90//code.c:8:         out[i] = (char)w;
	sb	a4,0(a5)	# _9, *_8
# eval/problem90//code.c:6:     for (i = 0; s[i] != '\0'; i++) {
	lw	a5,-24(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-24(s0)	# tmp96, i
.L2:
# eval/problem90//code.c:6:     for (i = 0; s[i] != '\0'; i++) {
	lw	a5,-24(s0)		# _10, i
	ld	a4,-40(s0)		# tmp99, s
	add	a5,a4,a5	# _10, _11, tmp99
	lbu	a5,0(a5)	# _12, *_11
# eval/problem90//code.c:6:     for (i = 0; s[i] != '\0'; i++) {
	bne	a5,zero,.L3	#, _12,,
# eval/problem90//code.c:10:     out[i] = '\0';
	lw	a5,-24(s0)		# _13, i
	ld	a4,-48(s0)		# tmp100, out
	add	a5,a4,a5	# _13, _14, tmp100
# eval/problem90//code.c:10:     out[i] = '\0';
	sb	zero,0(a5)	#, *_14
# eval/problem90//code.c:11: }
	nop	
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
