	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -O0 -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# xs, xs
	mv	a5,a1	# tmp144, xs_size
	sd	a2,-56(s0)	# out, out
	sw	a5,-44(s0)	# tmp145, xs_size
# code.c:4:     for (int i = 1; i < xs_size; i++) {
	li	a5,1		# tmp146,
	sw	a5,-20(s0)	# tmp146, i
# code.c:4:     for (int i = 1; i < xs_size; i++) {
	j	.L2		#
.L3:
# code.c:5:         out[i - 1] = i * xs[i];
	lw	a5,-20(s0)		# tmp148, i
	fcvt.s.w	fa4,a5	# _1, tmp147
# code.c:5:         out[i - 1] = i * xs[i];
	lw	a5,-20(s0)		# _2, i
	slli	a5,a5,2	#, _3, _2
	ld	a4,-40(s0)		# tmp149, xs
	add	a5,a4,a5	# _3, _4, tmp149
	flw	fa5,0(a5)	# _5, *_4
# code.c:5:         out[i - 1] = i * xs[i];
	lw	a5,-20(s0)		# _6, i
	slli	a5,a5,2	#, _7, _6
	addi	a5,a5,-4	#, _8, _7
	ld	a4,-56(s0)		# tmp150, out
	add	a5,a4,a5	# _8, _9, tmp150
# code.c:5:         out[i - 1] = i * xs[i];
	fmul.s	fa5,fa4,fa5	# _10, _1, _5
# code.c:5:         out[i - 1] = i * xs[i];
	fsw	fa5,0(a5)	# _10, *_9
# code.c:4:     for (int i = 1; i < xs_size; i++) {
	lw	a5,-20(s0)		# tmp153, i
	addiw	a5,a5,1	#, tmp151, tmp152
	sw	a5,-20(s0)	# tmp151, i
.L2:
# code.c:4:     for (int i = 1; i < xs_size; i++) {
	lw	a5,-20(s0)		# tmp155, i
	mv	a4,a5	# tmp154, tmp155
	lw	a5,-44(s0)		# tmp157, xs_size
	sext.w	a4,a4	# tmp158, tmp154
	sext.w	a5,a5	# tmp159, tmp156
	blt	a4,a5,.L3	#, tmp158, tmp159,
# code.c:7: }
	nop	
	nop	
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
