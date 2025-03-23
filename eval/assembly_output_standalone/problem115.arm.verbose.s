	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 8]	// nums, nums
	str	w1, [sp, 4]	// size, size
// eval/problem115//code.c:4:     long long current = nums[0];
	ldr	x0, [sp, 8]	// tmp102, nums
	ldr	x0, [x0]	// tmp103, *nums_14(D)
	str	x0, [sp, 32]	// tmp103, current
// eval/problem115//code.c:5:     long long min = nums[0];
	ldr	x0, [sp, 8]	// tmp104, nums
	ldr	x0, [x0]	// tmp105, *nums_14(D)
	str	x0, [sp, 40]	// tmp105, min
// eval/problem115//code.c:6:     for (int i = 1; i < size; i++) {
	mov	w0, 1	// tmp106,
	str	w0, [sp, 28]	// tmp106, i
// eval/problem115//code.c:6:     for (int i = 1; i < size; i++) {
	b	.L2		//
.L6:
// eval/problem115//code.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	ldr	x0, [sp, 32]	// tmp107, current
	cmp	x0, 0	// tmp107,
	bge	.L3		//,
// eval/problem115//code.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 8]	// tmp108, nums
	add	x0, x1, x0	// _3, tmp108, _2
	ldr	x1, [x0]	// _4, *_3
// eval/problem115//code.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	ldr	x0, [sp, 32]	// tmp109, current
	add	x0, x1, x0	// iftmp.0_12, _4, tmp109
	b	.L4		//
.L3:
// eval/problem115//code.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	ldrsw	x0, [sp, 28]	// _5, i
	lsl	x0, x0, 3	// _6, _5,
	ldr	x1, [sp, 8]	// tmp110, nums
	add	x0, x1, x0	// _7, tmp110, _6
// eval/problem115//code.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	ldr	x0, [x0]	// iftmp.0_12, *_7
.L4:
// eval/problem115//code.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	str	x0, [sp, 32]	// iftmp.0_12, current
// eval/problem115//code.c:8:         if (current < min) min = current;
	ldr	x1, [sp, 32]	// tmp111, current
	ldr	x0, [sp, 40]	// tmp112, min
	cmp	x1, x0	// tmp111, tmp112
	bge	.L5		//,
// eval/problem115//code.c:8:         if (current < min) min = current;
	ldr	x0, [sp, 32]	// tmp113, current
	str	x0, [sp, 40]	// tmp113, min
.L5:
// eval/problem115//code.c:6:     for (int i = 1; i < size; i++) {
	ldr	w0, [sp, 28]	// tmp115, i
	add	w0, w0, 1	// tmp114, tmp115,
	str	w0, [sp, 28]	// tmp114, i
.L2:
// eval/problem115//code.c:6:     for (int i = 1; i < size; i++) {
	ldr	w1, [sp, 28]	// tmp116, i
	ldr	w0, [sp, 4]	// tmp117, size
	cmp	w1, w0	// tmp116, tmp117
	blt	.L6		//,
// eval/problem115//code.c:10:     return min;
	ldr	x0, [sp, 40]	// _19, min
// eval/problem115//code.c:11: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
