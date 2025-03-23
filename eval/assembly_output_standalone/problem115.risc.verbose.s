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
	sd	a0,-56(s0)	# nums, nums
	mv	a5,a1	# tmp82, size
	sw	a5,-60(s0)	# tmp83, size
# eval/problem115//code.c:4:     long long current = nums[0];
	ld	a5,-56(s0)		# tmp84, nums
	ld	a5,0(a5)		# tmp85, *nums_14(D)
	sd	a5,-32(s0)	# tmp85, current
# eval/problem115//code.c:5:     long long min = nums[0];
	ld	a5,-56(s0)		# tmp86, nums
	ld	a5,0(a5)		# tmp87, *nums_14(D)
	sd	a5,-24(s0)	# tmp87, min
# eval/problem115//code.c:6:     for (int i = 1; i < size; i++) {
	li	a5,1		# tmp88,
	sw	a5,-36(s0)	# tmp88, i
# eval/problem115//code.c:6:     for (int i = 1; i < size; i++) {
	j	.L2		#
.L6:
# eval/problem115//code.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	ld	a5,-32(s0)		# tmp89, current
	bge	a5,zero,.L3	#, tmp89,,
# eval/problem115//code.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	lw	a5,-36(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-56(s0)		# tmp90, nums
	add	a5,a4,a5	# _2, _3, tmp90
	ld	a4,0(a5)		# _4, *_3
# eval/problem115//code.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	ld	a5,-32(s0)		# tmp91, current
	add	a5,a4,a5	# tmp91, iftmp.0_12, _4
	j	.L4		#
.L3:
# eval/problem115//code.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	lw	a5,-36(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-56(s0)		# tmp92, nums
	add	a5,a4,a5	# _6, _7, tmp92
# eval/problem115//code.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	ld	a5,0(a5)		# iftmp.0_12, *_7
.L4:
# eval/problem115//code.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	sd	a5,-32(s0)	# iftmp.0_12, current
# eval/problem115//code.c:8:         if (current < min) min = current;
	ld	a4,-32(s0)		# tmp93, current
	ld	a5,-24(s0)		# tmp94, min
	bge	a4,a5,.L5	#, tmp93, tmp94,
# eval/problem115//code.c:8:         if (current < min) min = current;
	ld	a5,-32(s0)		# tmp95, current
	sd	a5,-24(s0)	# tmp95, min
.L5:
# eval/problem115//code.c:6:     for (int i = 1; i < size; i++) {
	lw	a5,-36(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-36(s0)	# tmp96, i
.L2:
# eval/problem115//code.c:6:     for (int i = 1; i < size; i++) {
	lw	a5,-36(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-60(s0)		# tmp102, size
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L6	#, tmp103, tmp104,
# eval/problem115//code.c:10:     return min;
	ld	a5,-24(s0)		# _19, min
# eval/problem115//code.c:11: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
