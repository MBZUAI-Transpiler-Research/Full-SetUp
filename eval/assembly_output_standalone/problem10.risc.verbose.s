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
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# numbers, numbers
	mv	a5,a1	# tmp86, size
	sw	a5,-44(s0)	# tmp87, size
# eval/problem10//code.c:5:     if (size <= 0) {
	lw	a5,-44(s0)		# tmp89, size
	sext.w	a5,a5	# tmp90, tmp88
	bgt	a5,zero,.L2	#, tmp90,,
# eval/problem10//code.c:6:         return NULL;
	li	a5,0		# _16,
	j	.L3		#
.L2:
# eval/problem10//code.c:9:     int *out = malloc(size * sizeof(int));
	lw	a5,-44(s0)		# _1, size
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp91,
	sd	a5,-24(s0)	# tmp91, out
# eval/problem10//code.c:10:     if (!out) {
	ld	a5,-24(s0)		# tmp92, out
	bne	a5,zero,.L4	#, tmp92,,
# eval/problem10//code.c:11:         return NULL;
	li	a5,0		# _16,
	j	.L3		#
.L4:
# eval/problem10//code.c:14:     int max = numbers[0];
	ld	a5,-40(s0)		# tmp93, numbers
	lw	a5,0(a5)		# tmp94, *numbers_23(D)
	sw	a5,-32(s0)	# tmp94, max
# eval/problem10//code.c:15:     for (int i = 0; i < size; i++) {
	sw	zero,-28(s0)	#, i
# eval/problem10//code.c:15:     for (int i = 0; i < size; i++) {
	j	.L5		#
.L7:
# eval/problem10//code.c:16:         if (numbers[i] > max) max = numbers[i];
	lw	a5,-28(s0)		# _3, i
	slli	a5,a5,2	#, _4, _3
	ld	a4,-40(s0)		# tmp95, numbers
	add	a5,a4,a5	# _4, _5, tmp95
	lw	a4,0(a5)		# _6, *_5
# eval/problem10//code.c:16:         if (numbers[i] > max) max = numbers[i];
	lw	a5,-32(s0)		# tmp97, max
	sext.w	a5,a5	# tmp98, tmp96
	bge	a5,a4,.L6	#, tmp98, tmp99,
# eval/problem10//code.c:16:         if (numbers[i] > max) max = numbers[i];
	lw	a5,-28(s0)		# _7, i
	slli	a5,a5,2	#, _8, _7
	ld	a4,-40(s0)		# tmp100, numbers
	add	a5,a4,a5	# _8, _9, tmp100
# eval/problem10//code.c:16:         if (numbers[i] > max) max = numbers[i];
	lw	a5,0(a5)		# tmp101, *_9
	sw	a5,-32(s0)	# tmp101, max
.L6:
# eval/problem10//code.c:17:         out[i] = max;
	lw	a5,-28(s0)		# _10, i
	slli	a5,a5,2	#, _11, _10
	ld	a4,-24(s0)		# tmp102, out
	add	a5,a4,a5	# _11, _12, tmp102
# eval/problem10//code.c:17:         out[i] = max;
	lw	a4,-32(s0)		# tmp103, max
	sw	a4,0(a5)	# tmp103, *_12
# eval/problem10//code.c:15:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp106, i
	addiw	a5,a5,1	#, tmp104, tmp105
	sw	a5,-28(s0)	# tmp104, i
.L5:
# eval/problem10//code.c:15:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp108, i
	mv	a4,a5	# tmp107, tmp108
	lw	a5,-44(s0)		# tmp110, size
	sext.w	a4,a4	# tmp111, tmp107
	sext.w	a5,a5	# tmp112, tmp109
	blt	a4,a5,.L7	#, tmp111, tmp112,
# eval/problem10//code.c:19:     return out;
	ld	a5,-24(s0)		# _16, out
.L3:
# eval/problem10//code.c:20: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
