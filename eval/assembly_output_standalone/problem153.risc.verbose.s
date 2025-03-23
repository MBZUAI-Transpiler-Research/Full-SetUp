	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# game, game
	sd	a1,-48(s0)	# guess, guess
	sd	a2,-56(s0)	# out, out
	mv	a5,a3	# tmp147, length
	sw	a5,-60(s0)	# tmp148, length
# eval/problem153//code.c:5:     for (int i = 0; i < length; i++) {
	sw	zero,-20(s0)	#, i
# eval/problem153//code.c:5:     for (int i = 0; i < length; i++) {
	j	.L2		#
.L3:
# eval/problem153//code.c:6:         out[i] = abs(game[i] - guess[i]);
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp149, game
	add	a5,a4,a5	# _2, _3, tmp149
	lw	a4,0(a5)		# _4, *_3
# eval/problem153//code.c:6:         out[i] = abs(game[i] - guess[i]);
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a3,-48(s0)		# tmp150, guess
	add	a5,a3,a5	# _6, _7, tmp150
	lw	a5,0(a5)		# _8, *_7
# eval/problem153//code.c:6:         out[i] = abs(game[i] - guess[i]);
	subw	a5,a4,a5	# tmp151, _4, _8
	sext.w	a4,a5	# _9, tmp151
# eval/problem153//code.c:6:         out[i] = abs(game[i] - guess[i]);
	lw	a5,-20(s0)		# _10, i
	slli	a5,a5,2	#, _11, _10
	ld	a3,-56(s0)		# tmp152, out
	add	a3,a3,a5	# _11, _12, tmp152
# eval/problem153//code.c:6:         out[i] = abs(game[i] - guess[i]);
	sraiw	a5,a4,31	#, tmp153, _9
	xor	a4,a4,a5	# tmp153, tmp154, _9
	subw	a5,a4,a5	# tmp155, tmp154, tmp153
	sext.w	a5,a5	# _13, tmp155
# eval/problem153//code.c:6:         out[i] = abs(game[i] - guess[i]);
	sw	a5,0(a3)	# _13, *_12
# eval/problem153//code.c:5:     for (int i = 0; i < length; i++) {
	lw	a5,-20(s0)		# tmp158, i
	addiw	a5,a5,1	#, tmp156, tmp157
	sw	a5,-20(s0)	# tmp156, i
.L2:
# eval/problem153//code.c:5:     for (int i = 0; i < length; i++) {
	lw	a5,-20(s0)		# tmp160, i
	mv	a4,a5	# tmp159, tmp160
	lw	a5,-60(s0)		# tmp162, length
	sext.w	a4,a4	# tmp163, tmp159
	sext.w	a5,a5	# tmp164, tmp161
	blt	a4,a5,.L3	#, tmp163, tmp164,
# eval/problem153//code.c:8: }
	nop	
	nop	
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
