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
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# numbers, numbers
	mv	a5,a1	# tmp146, size
	fsw	fa0,-48(s0)	# threshold, threshold
	sw	a5,-44(s0)	# tmp147, size
# eval/problem1//code.c:7:     for (i = 0; i < size; i++) {
	sw	zero,-24(s0)	#, i
# eval/problem1//code.c:7:     for (i = 0; i < size; i++) {
	j	.L2		#
.L8:
# eval/problem1//code.c:8:         for (j = i + 1; j < size; j++) {
	lw	a5,-24(s0)		# tmp150, i
	addiw	a5,a5,1	#, tmp148, tmp149
	sw	a5,-20(s0)	# tmp148, j
# eval/problem1//code.c:8:         for (j = i + 1; j < size; j++) {
	j	.L3		#
.L7:
# eval/problem1//code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	lw	a5,-24(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp151, numbers
	add	a5,a4,a5	# _2, _3, tmp151
	flw	fa4,0(a5)	# _4, *_3
# eval/problem1//code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	lw	a5,-20(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp152, numbers
	add	a5,a4,a5	# _6, _7, tmp152
	flw	fa5,0(a5)	# _8, *_7
# eval/problem1//code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	fsub.s	fa5,fa4,fa5	# _9, _4, _8
# eval/problem1//code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	fabs.s	fa5,fa5	# _10, _9
# eval/problem1//code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	flw	fa4,-48(s0)	# tmp153, threshold
	fgt.s	a5,fa4,fa5	#, tmp154, tmp153, _10
	beq	a5,zero,.L10	#, tmp154,,
# eval/problem1//code.c:10:                 return 1;
	li	a5,1		# _13,
	j	.L6		#
.L10:
# eval/problem1//code.c:8:         for (j = i + 1; j < size; j++) {
	lw	a5,-20(s0)		# tmp157, j
	addiw	a5,a5,1	#, tmp155, tmp156
	sw	a5,-20(s0)	# tmp155, j
.L3:
# eval/problem1//code.c:8:         for (j = i + 1; j < size; j++) {
	lw	a5,-20(s0)		# tmp159, j
	mv	a4,a5	# tmp158, tmp159
	lw	a5,-44(s0)		# tmp161, size
	sext.w	a4,a4	# tmp162, tmp158
	sext.w	a5,a5	# tmp163, tmp160
	blt	a4,a5,.L7	#, tmp162, tmp163,
# eval/problem1//code.c:7:     for (i = 0; i < size; i++) {
	lw	a5,-24(s0)		# tmp166, i
	addiw	a5,a5,1	#, tmp164, tmp165
	sw	a5,-24(s0)	# tmp164, i
.L2:
# eval/problem1//code.c:7:     for (i = 0; i < size; i++) {
	lw	a5,-24(s0)		# tmp168, i
	mv	a4,a5	# tmp167, tmp168
	lw	a5,-44(s0)		# tmp170, size
	sext.w	a4,a4	# tmp171, tmp167
	sext.w	a5,a5	# tmp172, tmp169
	blt	a4,a5,.L8	#, tmp171, tmp172,
# eval/problem1//code.c:14:     return 0;
	li	a5,0		# _13,
.L6:
# eval/problem1//code.c:15: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
