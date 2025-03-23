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
	sd	a0,-40(s0)	# arr, arr
	mv	a5,a1	# tmp85, size
	sw	a5,-44(s0)	# tmp86, size
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
	ld	a4,-40(s0)		# tmp87, arr
	add	a5,a4,a5	# _2, _3, tmp87
	lw	a3,0(a5)		# _4, *_3
# eval/problem74//code.c:6:         if (arr[i] != arr[size - 1 - i]) {
	lw	a5,-44(s0)		# tmp90, size
	addiw	a5,a5,-1	#, tmp88, tmp89
	sext.w	a5,a5	# _5, tmp88
# eval/problem74//code.c:6:         if (arr[i] != arr[size - 1 - i]) {
	lw	a4,-20(s0)		# tmp93, i
	subw	a5,a5,a4	# tmp91, _5, tmp92
	sext.w	a5,a5	# _6, tmp91
# eval/problem74//code.c:6:         if (arr[i] != arr[size - 1 - i]) {
	slli	a5,a5,2	#, _8, _7
	ld	a4,-40(s0)		# tmp94, arr
	add	a5,a4,a5	# _8, _9, tmp94
	lw	a5,0(a5)		# _10, *_9
# eval/problem74//code.c:6:         if (arr[i] != arr[size - 1 - i]) {
	mv	a4,a3	# tmp95, _4
	beq	a4,a5,.L3	#, tmp95, tmp96,
# eval/problem74//code.c:7:             out++;
	lw	a5,-24(s0)		# tmp99, out
	addiw	a5,a5,1	#, tmp97, tmp98
	sw	a5,-24(s0)	# tmp97, out
.L3:
# eval/problem74//code.c:5:     for (int i = 0; i < size / 2; i++) {
	lw	a5,-20(s0)		# tmp102, i
	addiw	a5,a5,1	#, tmp100, tmp101
	sw	a5,-20(s0)	# tmp100, i
.L2:
# eval/problem74//code.c:5:     for (int i = 0; i < size / 2; i++) {
	lw	a5,-44(s0)		# tmp105, size
	srliw	a4,a5,31	#, tmp106, tmp104
	addw	a5,a4,a5	# tmp104, tmp107, tmp106
	sraiw	a5,a5,1	#, tmp108, tmp107
	sext.w	a4,a5	# _11, tmp108
# eval/problem74//code.c:5:     for (int i = 0; i < size / 2; i++) {
	lw	a5,-20(s0)		# tmp110, i
	sext.w	a5,a5	# tmp111, tmp109
	blt	a5,a4,.L4	#, tmp111, tmp112,
# eval/problem74//code.c:10:     return out;
	lw	a5,-24(s0)		# _18, out
# eval/problem74//code.c:11: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
