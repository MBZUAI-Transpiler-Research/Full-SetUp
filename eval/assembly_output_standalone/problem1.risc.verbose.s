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
	sd	a0,-40(s0)	# numbers, numbers
	mv	a5,a1	# tmp84, size
	fsw	fa0,-48(s0)	# threshold, threshold
	sw	a5,-44(s0)	# tmp85, size
# eval/problem1//code.c:7:     for (i = 0; i < size; i++) {
	sw	zero,-24(s0)	#, i
# eval/problem1//code.c:7:     for (i = 0; i < size; i++) {
	j	.L2		#
.L8:
# eval/problem1//code.c:8:         for (j = i + 1; j < size; j++) {
	lw	a5,-24(s0)		# tmp88, i
	addiw	a5,a5,1	#, tmp86, tmp87
	sw	a5,-20(s0)	# tmp86, j
# eval/problem1//code.c:8:         for (j = i + 1; j < size; j++) {
	j	.L3		#
.L7:
# eval/problem1//code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	lw	a5,-24(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp89, numbers
	add	a5,a4,a5	# _2, _3, tmp89
	flw	fa4,0(a5)	# _4, *_3
# eval/problem1//code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	lw	a5,-20(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp90, numbers
	add	a5,a4,a5	# _6, _7, tmp90
	flw	fa5,0(a5)	# _8, *_7
# eval/problem1//code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	fsub.s	fa5,fa4,fa5	# _9, _4, _8
# eval/problem1//code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	fabs.s	fa5,fa5	# _10, _9
# eval/problem1//code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	flw	fa4,-48(s0)	# tmp91, threshold
	fgt.s	a5,fa4,fa5	#, tmp92, tmp91, _10
	beq	a5,zero,.L10	#, tmp92,,
# eval/problem1//code.c:10:                 return 1;
	li	a5,1		# _13,
	j	.L6		#
.L10:
# eval/problem1//code.c:8:         for (j = i + 1; j < size; j++) {
	lw	a5,-20(s0)		# tmp95, j
	addiw	a5,a5,1	#, tmp93, tmp94
	sw	a5,-20(s0)	# tmp93, j
.L3:
# eval/problem1//code.c:8:         for (j = i + 1; j < size; j++) {
	lw	a5,-20(s0)		# tmp97, j
	mv	a4,a5	# tmp96, tmp97
	lw	a5,-44(s0)		# tmp99, size
	sext.w	a4,a4	# tmp100, tmp96
	sext.w	a5,a5	# tmp101, tmp98
	blt	a4,a5,.L7	#, tmp100, tmp101,
# eval/problem1//code.c:7:     for (i = 0; i < size; i++) {
	lw	a5,-24(s0)		# tmp104, i
	addiw	a5,a5,1	#, tmp102, tmp103
	sw	a5,-24(s0)	# tmp102, i
.L2:
# eval/problem1//code.c:7:     for (i = 0; i < size; i++) {
	lw	a5,-24(s0)		# tmp106, i
	mv	a4,a5	# tmp105, tmp106
	lw	a5,-44(s0)		# tmp108, size
	sext.w	a4,a4	# tmp109, tmp105
	sext.w	a5,a5	# tmp110, tmp107
	blt	a4,a5,.L8	#, tmp109, tmp110,
# eval/problem1//code.c:14:     return 0;
	li	a5,0		# _13,
.L6:
# eval/problem1//code.c:15: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
