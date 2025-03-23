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
	sd	a0,-56(s0)	# s, s
	mv	a5,a1	# tmp81, encode
	sw	a5,-60(s0)	# tmp82, encode
# eval/problem51//code.c:6:     int shift = encode ? 5 : 21;
	lw	a5,-60(s0)		# tmp84, encode
	sext.w	a5,a5	# tmp85, tmp83
	beq	a5,zero,.L2	#, tmp85,,
# eval/problem51//code.c:6:     int shift = encode ? 5 : 21;
	li	a5,5		# iftmp.0_10,
	j	.L3		#
.L2:
# eval/problem51//code.c:6:     int shift = encode ? 5 : 21;
	li	a5,21		# iftmp.0_10,
.L3:
# eval/problem51//code.c:6:     int shift = encode ? 5 : 21;
	sw	a5,-40(s0)	# iftmp.0_10, shift
# eval/problem51//code.c:7:     size_t len = strlen(s);
	ld	a0,-56(s0)		#, s
	call	strlen@plt	#
	sd	a0,-24(s0)	#, len
# eval/problem51//code.c:8:     for (size_t i = 0; i < len; i++) {
	sd	zero,-32(s0)	#, i
# eval/problem51//code.c:8:     for (size_t i = 0; i < len; i++) {
	j	.L4		#
.L5:
# eval/problem51//code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	ld	a4,-56(s0)		# tmp86, s
	ld	a5,-32(s0)		# tmp87, i
	add	a5,a4,a5	# tmp87, _1, tmp86
	lbu	a5,0(a5)	# _2, *_1
	sext.w	a5,a5	# _3, _2
# eval/problem51//code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	addiw	a5,a5,-97	#, tmp88, _3
	sext.w	a5,a5	# _4, tmp88
# eval/problem51//code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	lw	a4,-40(s0)		# tmp91, shift
	addw	a5,a4,a5	# _4, tmp89, tmp90
	sext.w	a5,a5	# _5, tmp89
# eval/problem51//code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	mv	a4,a5	# tmp93, _5
	li	a5,26		# tmp95,
	remw	a5,a4,a5	# tmp95, tmp94, tmp93
	sext.w	a5,a5	# _6, tmp94
# eval/problem51//code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	addiw	a5,a5,97	#, tmp96, _6
	sw	a5,-36(s0)	# tmp96, w
# eval/problem51//code.c:10:         s[i] = (char)w;
	ld	a4,-56(s0)		# tmp97, s
	ld	a5,-32(s0)		# tmp98, i
	add	a5,a4,a5	# tmp98, _7, tmp97
# eval/problem51//code.c:10:         s[i] = (char)w;
	lw	a4,-36(s0)		# tmp100, w
	andi	a4,a4,0xff	# _8, tmp99
# eval/problem51//code.c:10:         s[i] = (char)w;
	sb	a4,0(a5)	# _8, *_7
# eval/problem51//code.c:8:     for (size_t i = 0; i < len; i++) {
	ld	a5,-32(s0)		# tmp102, i
	addi	a5,a5,1	#, tmp101, tmp102
	sd	a5,-32(s0)	# tmp101, i
.L4:
# eval/problem51//code.c:8:     for (size_t i = 0; i < len; i++) {
	ld	a4,-32(s0)		# tmp103, i
	ld	a5,-24(s0)		# tmp104, len
	bltu	a4,a5,.L5	#, tmp103, tmp104,
# eval/problem51//code.c:12: }
	nop	
	nop	
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
