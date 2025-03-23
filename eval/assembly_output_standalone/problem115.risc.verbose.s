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
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# nums, nums
	mv	a5,a1	# tmp144, size
	sw	a5,-60(s0)	# tmp145, size
# eval/problem115//code.c:4:     long long current = nums[0];
	ld	a5,-56(s0)		# tmp146, nums
	ld	a5,0(a5)		# tmp147, *nums_14(D)
	sd	a5,-32(s0)	# tmp147, current
# eval/problem115//code.c:5:     long long min = nums[0];
	ld	a5,-56(s0)		# tmp148, nums
	ld	a5,0(a5)		# tmp149, *nums_14(D)
	sd	a5,-24(s0)	# tmp149, min
# eval/problem115//code.c:6:     for (int i = 1; i < size; i++) {
	li	a5,1		# tmp150,
	sw	a5,-36(s0)	# tmp150, i
# eval/problem115//code.c:6:     for (int i = 1; i < size; i++) {
	j	.L2		#
.L6:
# eval/problem115//code.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	ld	a5,-32(s0)		# tmp151, current
	bge	a5,zero,.L3	#, tmp151,,
# eval/problem115//code.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	lw	a5,-36(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-56(s0)		# tmp152, nums
	add	a5,a4,a5	# _2, _3, tmp152
	ld	a4,0(a5)		# _4, *_3
# eval/problem115//code.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	ld	a5,-32(s0)		# tmp153, current
	add	a5,a4,a5	# tmp153, iftmp.0_12, _4
	j	.L4		#
.L3:
# eval/problem115//code.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	lw	a5,-36(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-56(s0)		# tmp154, nums
	add	a5,a4,a5	# _6, _7, tmp154
# eval/problem115//code.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	ld	a5,0(a5)		# iftmp.0_12, *_7
.L4:
# eval/problem115//code.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	sd	a5,-32(s0)	# iftmp.0_12, current
# eval/problem115//code.c:8:         if (current < min) min = current;
	ld	a4,-32(s0)		# tmp155, current
	ld	a5,-24(s0)		# tmp156, min
	bge	a4,a5,.L5	#, tmp155, tmp156,
# eval/problem115//code.c:8:         if (current < min) min = current;
	ld	a5,-32(s0)		# tmp157, current
	sd	a5,-24(s0)	# tmp157, min
.L5:
# eval/problem115//code.c:6:     for (int i = 1; i < size; i++) {
	lw	a5,-36(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-36(s0)	# tmp158, i
.L2:
# eval/problem115//code.c:6:     for (int i = 1; i < size; i++) {
	lw	a5,-36(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-60(s0)		# tmp164, size
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L6	#, tmp165, tmp166,
# eval/problem115//code.c:10:     return min;
	ld	a5,-24(s0)		# _19, min
# eval/problem115//code.c:11: }
	mv	a0,a5	#, <retval>
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
