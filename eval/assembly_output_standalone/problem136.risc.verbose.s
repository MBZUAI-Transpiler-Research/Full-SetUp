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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# arr, arr
	mv	a5,a1	# tmp145, size
	sw	a5,-44(s0)	# tmp146, size
# eval/problem136//code.c:4:     int max = -1;
	li	a5,-1		# tmp147,
	sw	a5,-24(s0)	# tmp147, max
# eval/problem136//code.c:5:     for (int i = 1; i < size; ++i) {
	li	a5,1		# tmp148,
	sw	a5,-20(s0)	# tmp148, i
# eval/problem136//code.c:5:     for (int i = 1; i < size; ++i) {
	j	.L2		#
.L4:
# eval/problem136//code.c:6:         if (arr[i] < arr[i - 1]) max = i;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp149, arr
	add	a5,a4,a5	# _2, _3, tmp149
	lw	a3,0(a5)		# _4, *_3
# eval/problem136//code.c:6:         if (arr[i] < arr[i - 1]) max = i;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	addi	a5,a5,-4	#, _7, _6
	ld	a4,-40(s0)		# tmp150, arr
	add	a5,a4,a5	# _7, _8, tmp150
	lw	a5,0(a5)		# _9, *_8
# eval/problem136//code.c:6:         if (arr[i] < arr[i - 1]) max = i;
	mv	a4,a3	# tmp151, _4
	bge	a4,a5,.L3	#, tmp151, tmp152,
# eval/problem136//code.c:6:         if (arr[i] < arr[i - 1]) max = i;
	lw	a5,-20(s0)		# tmp153, i
	sw	a5,-24(s0)	# tmp153, max
.L3:
# eval/problem136//code.c:5:     for (int i = 1; i < size; ++i) {
	lw	a5,-20(s0)		# tmp156, i
	addiw	a5,a5,1	#, tmp154, tmp155
	sw	a5,-20(s0)	# tmp154, i
.L2:
# eval/problem136//code.c:5:     for (int i = 1; i < size; ++i) {
	lw	a5,-20(s0)		# tmp158, i
	mv	a4,a5	# tmp157, tmp158
	lw	a5,-44(s0)		# tmp160, size
	sext.w	a4,a4	# tmp161, tmp157
	sext.w	a5,a5	# tmp162, tmp159
	blt	a4,a5,.L4	#, tmp161, tmp162,
# eval/problem136//code.c:8:     return max;
	lw	a5,-24(s0)		# _16, max
# eval/problem136//code.c:9: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
