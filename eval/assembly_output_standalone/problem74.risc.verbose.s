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
	mv	a5,a1	# tmp147, size
	sw	a5,-44(s0)	# tmp148, size
# eval/problem74//code.c:4:     int out = 0;
	sw	zero,-24(s0)	#, out
# eval/problem74//code.c:5:     for (int i = 0; i < size / 2; i++) {
	sw	zero,-20(s0)	#, i
# eval/problem74//code.c:5:     for (int i = 0; i < size / 2; i++) {
	j	.L2		#
.L4:
# eval/problem74//code.c:6:         if (arr[i] != arr[size - 1 - i]) {
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp149, arr
	add	a5,a4,a5	# _2, _3, tmp149
	lw	a3,0(a5)		# _4, *_3
# eval/problem74//code.c:6:         if (arr[i] != arr[size - 1 - i]) {
	lw	a5,-44(s0)		# tmp152, size
	addiw	a5,a5,-1	#, tmp150, tmp151
	sext.w	a5,a5	# _5, tmp150
# eval/problem74//code.c:6:         if (arr[i] != arr[size - 1 - i]) {
	lw	a4,-20(s0)		# tmp155, i
	subw	a5,a5,a4	# tmp153, _5, tmp154
	sext.w	a5,a5	# _6, tmp153
# eval/problem74//code.c:6:         if (arr[i] != arr[size - 1 - i]) {
	slli	a5,a5,2	#, _8, _7
	ld	a4,-40(s0)		# tmp156, arr
	add	a5,a4,a5	# _8, _9, tmp156
	lw	a5,0(a5)		# _10, *_9
# eval/problem74//code.c:6:         if (arr[i] != arr[size - 1 - i]) {
	mv	a4,a3	# tmp157, _4
	beq	a4,a5,.L3	#, tmp157, tmp158,
# eval/problem74//code.c:7:             out++;
	lw	a5,-24(s0)		# tmp161, out
	addiw	a5,a5,1	#, tmp159, tmp160
	sw	a5,-24(s0)	# tmp159, out
.L3:
# eval/problem74//code.c:5:     for (int i = 0; i < size / 2; i++) {
	lw	a5,-20(s0)		# tmp164, i
	addiw	a5,a5,1	#, tmp162, tmp163
	sw	a5,-20(s0)	# tmp162, i
.L2:
# eval/problem74//code.c:5:     for (int i = 0; i < size / 2; i++) {
	lw	a5,-44(s0)		# tmp167, size
	srliw	a4,a5,31	#, tmp168, tmp166
	addw	a5,a4,a5	# tmp166, tmp169, tmp168
	sraiw	a5,a5,1	#, tmp170, tmp169
	sext.w	a4,a5	# _11, tmp170
# eval/problem74//code.c:5:     for (int i = 0; i < size / 2; i++) {
	lw	a5,-20(s0)		# tmp172, i
	sext.w	a5,a5	# tmp173, tmp171
	blt	a5,a4,.L4	#, tmp173, tmp174,
# eval/problem74//code.c:10:     return out;
	lw	a5,-24(s0)		# _18, out
# eval/problem74//code.c:11: }
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
