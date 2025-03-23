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
	sd	a0,-40(s0)	# numbers, numbers
	mv	a5,a1	# tmp81, size
	sd	a2,-56(s0)	# result, result
	sw	a5,-44(s0)	# tmp82, size
# eval/problem9//code.c:4:     int sum = 0, product = 1;
	sw	zero,-28(s0)	#, sum
# eval/problem9//code.c:4:     int sum = 0, product = 1;
	li	a5,1		# tmp83,
	sw	a5,-24(s0)	# tmp83, product
# eval/problem9//code.c:5:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# eval/problem9//code.c:5:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L3:
# eval/problem9//code.c:6:         sum += numbers[i];
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp84, numbers
	add	a5,a4,a5	# _2, _3, tmp84
	lw	a5,0(a5)		# _4, *_3
# eval/problem9//code.c:6:         sum += numbers[i];
	lw	a4,-28(s0)		# tmp87, sum
	addw	a5,a4,a5	# _4, tmp85, tmp86
	sw	a5,-28(s0)	# tmp85, sum
# eval/problem9//code.c:7:         product *= numbers[i];
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp88, numbers
	add	a5,a4,a5	# _6, _7, tmp88
	lw	a5,0(a5)		# _8, *_7
# eval/problem9//code.c:7:         product *= numbers[i];
	lw	a4,-24(s0)		# tmp91, product
	mulw	a5,a4,a5	# tmp89, tmp90, _8
	sw	a5,-24(s0)	# tmp89, product
# eval/problem9//code.c:5:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp94, i
	addiw	a5,a5,1	#, tmp92, tmp93
	sw	a5,-20(s0)	# tmp92, i
.L2:
# eval/problem9//code.c:5:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp96, i
	mv	a4,a5	# tmp95, tmp96
	lw	a5,-44(s0)		# tmp98, size
	sext.w	a4,a4	# tmp99, tmp95
	sext.w	a5,a5	# tmp100, tmp97
	blt	a4,a5,.L3	#, tmp99, tmp100,
# eval/problem9//code.c:9:     result[0] = sum;
	ld	a5,-56(s0)		# tmp101, result
	lw	a4,-28(s0)		# tmp102, sum
	sw	a4,0(a5)	# tmp102, *result_18(D)
# eval/problem9//code.c:10:     result[1] = product;
	ld	a5,-56(s0)		# tmp103, result
	addi	a5,a5,4	#, _9, tmp103
# eval/problem9//code.c:10:     result[1] = product;
	lw	a4,-24(s0)		# tmp104, product
	sw	a4,0(a5)	# tmp104, *_9
# eval/problem9//code.c:11: }
	nop	
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
