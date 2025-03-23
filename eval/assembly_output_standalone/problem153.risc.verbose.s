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
	sd	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# game, game
	sd	a1,-48(s0)	# guess, guess
	sd	a2,-56(s0)	# out, out
	mv	a5,a3	# tmp85, length
	sw	a5,-60(s0)	# tmp86, length
# eval/problem153//code.c:5:     for (int i = 0; i < length; i++) {
	sw	zero,-20(s0)	#, i
# eval/problem153//code.c:5:     for (int i = 0; i < length; i++) {
	j	.L2		#
.L3:
# eval/problem153//code.c:6:         out[i] = abs(game[i] - guess[i]);
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp87, game
	add	a5,a4,a5	# _2, _3, tmp87
	lw	a4,0(a5)		# _4, *_3
# eval/problem153//code.c:6:         out[i] = abs(game[i] - guess[i]);
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a3,-48(s0)		# tmp88, guess
	add	a5,a3,a5	# _6, _7, tmp88
	lw	a5,0(a5)		# _8, *_7
# eval/problem153//code.c:6:         out[i] = abs(game[i] - guess[i]);
	subw	a5,a4,a5	# tmp89, _4, _8
	sext.w	a4,a5	# _9, tmp89
# eval/problem153//code.c:6:         out[i] = abs(game[i] - guess[i]);
	lw	a5,-20(s0)		# _10, i
	slli	a5,a5,2	#, _11, _10
	ld	a3,-56(s0)		# tmp90, out
	add	a3,a3,a5	# _11, _12, tmp90
# eval/problem153//code.c:6:         out[i] = abs(game[i] - guess[i]);
	sraiw	a5,a4,31	#, tmp91, _9
	xor	a4,a4,a5	# tmp91, tmp92, _9
	subw	a5,a4,a5	# tmp93, tmp92, tmp91
	sext.w	a5,a5	# _13, tmp93
# eval/problem153//code.c:6:         out[i] = abs(game[i] - guess[i]);
	sw	a5,0(a3)	# _13, *_12
# eval/problem153//code.c:5:     for (int i = 0; i < length; i++) {
	lw	a5,-20(s0)		# tmp96, i
	addiw	a5,a5,1	#, tmp94, tmp95
	sw	a5,-20(s0)	# tmp94, i
.L2:
# eval/problem153//code.c:5:     for (int i = 0; i < length; i++) {
	lw	a5,-20(s0)		# tmp98, i
	mv	a4,a5	# tmp97, tmp98
	lw	a5,-60(s0)		# tmp100, length
	sext.w	a4,a4	# tmp101, tmp97
	sext.w	a5,a5	# tmp102, tmp99
	blt	a4,a5,.L3	#, tmp101, tmp102,
# eval/problem153//code.c:8: }
	nop	
	nop	
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
