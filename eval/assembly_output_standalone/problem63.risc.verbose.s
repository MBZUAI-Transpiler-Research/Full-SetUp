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
	sd	a0,-40(s0)	# xs, xs
	mv	a5,a1	# tmp82, xs_size
	sd	a2,-56(s0)	# out, out
	sw	a5,-44(s0)	# tmp83, xs_size
# eval/problem63//code.c:4:     for (int i = 1; i < xs_size; i++) {
	li	a5,1		# tmp84,
	sw	a5,-20(s0)	# tmp84, i
# eval/problem63//code.c:4:     for (int i = 1; i < xs_size; i++) {
	j	.L2		#
.L3:
# eval/problem63//code.c:5:         out[i - 1] = i * xs[i];
	lw	a5,-20(s0)		# tmp86, i
	fcvt.s.w	fa4,a5	# _1, tmp85
# eval/problem63//code.c:5:         out[i - 1] = i * xs[i];
	lw	a5,-20(s0)		# _2, i
	slli	a5,a5,2	#, _3, _2
	ld	a4,-40(s0)		# tmp87, xs
	add	a5,a4,a5	# _3, _4, tmp87
	flw	fa5,0(a5)	# _5, *_4
# eval/problem63//code.c:5:         out[i - 1] = i * xs[i];
	lw	a5,-20(s0)		# _6, i
	slli	a5,a5,2	#, _7, _6
	addi	a5,a5,-4	#, _8, _7
	ld	a4,-56(s0)		# tmp88, out
	add	a5,a4,a5	# _8, _9, tmp88
# eval/problem63//code.c:5:         out[i - 1] = i * xs[i];
	fmul.s	fa5,fa4,fa5	# _10, _1, _5
# eval/problem63//code.c:5:         out[i - 1] = i * xs[i];
	fsw	fa5,0(a5)	# _10, *_9
# eval/problem63//code.c:4:     for (int i = 1; i < xs_size; i++) {
	lw	a5,-20(s0)		# tmp91, i
	addiw	a5,a5,1	#, tmp89, tmp90
	sw	a5,-20(s0)	# tmp89, i
.L2:
# eval/problem63//code.c:4:     for (int i = 1; i < xs_size; i++) {
	lw	a5,-20(s0)		# tmp93, i
	mv	a4,a5	# tmp92, tmp93
	lw	a5,-44(s0)		# tmp95, xs_size
	sext.w	a4,a4	# tmp96, tmp92
	sext.w	a5,a5	# tmp97, tmp94
	blt	a4,a5,.L3	#, tmp96, tmp97,
# eval/problem63//code.c:7: }
	nop	
	nop	
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
