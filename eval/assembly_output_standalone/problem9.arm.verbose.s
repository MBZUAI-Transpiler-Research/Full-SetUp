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
	str	x0, [sp, 24]	// numbers, numbers
	str	w1, [sp, 20]	// size, size
	str	x2, [sp, 8]	// result, result
// eval/problem9//code.c:4:     int sum = 0, product = 1;
	str	wzr, [sp, 36]	//, sum
// eval/problem9//code.c:4:     int sum = 0, product = 1;
	mov	w0, 1	// tmp101,
	str	w0, [sp, 40]	// tmp101, product
// eval/problem9//code.c:5:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 44]	//, i
// eval/problem9//code.c:5:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L3:
// eval/problem9//code.c:6:         sum += numbers[i];
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp102, numbers
	add	x0, x1, x0	// _3, tmp102, _2
	ldr	w0, [x0]	// _4, *_3
// eval/problem9//code.c:6:         sum += numbers[i];
	ldr	w1, [sp, 36]	// tmp104, sum
	add	w0, w1, w0	// tmp103, tmp104, _4
	str	w0, [sp, 36]	// tmp103, sum
// eval/problem9//code.c:7:         product *= numbers[i];
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 24]	// tmp105, numbers
	add	x0, x1, x0	// _7, tmp105, _6
	ldr	w0, [x0]	// _8, *_7
// eval/problem9//code.c:7:         product *= numbers[i];
	ldr	w1, [sp, 40]	// tmp107, product
	mul	w0, w1, w0	// tmp106, tmp107, _8
	str	w0, [sp, 40]	// tmp106, product
// eval/problem9//code.c:5:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 44]	// tmp109, i
	add	w0, w0, 1	// tmp108, tmp109,
	str	w0, [sp, 44]	// tmp108, i
.L2:
// eval/problem9//code.c:5:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 44]	// tmp110, i
	ldr	w0, [sp, 20]	// tmp111, size
	cmp	w1, w0	// tmp110, tmp111
	blt	.L3		//,
// eval/problem9//code.c:9:     result[0] = sum;
	ldr	x0, [sp, 8]	// tmp112, result
	ldr	w1, [sp, 36]	// tmp113, sum
	str	w1, [x0]	// tmp113, *result_18(D)
// eval/problem9//code.c:10:     result[1] = product;
	ldr	x0, [sp, 8]	// tmp114, result
	add	x0, x0, 4	// _9, tmp114,
// eval/problem9//code.c:10:     result[1] = product;
	ldr	w1, [sp, 40]	// tmp115, product
	str	w1, [x0]	// tmp115, *_9
// eval/problem9//code.c:11: }
	nop	
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
