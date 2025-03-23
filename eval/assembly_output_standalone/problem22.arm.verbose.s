	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]	// numbers, numbers
	str	w1, [sp, 4]	// size, size
// eval/problem22//code.c:5:     float min = numbers[0], max = numbers[0];
	ldr	x0, [sp, 8]	// tmp116, numbers
	ldr	s0, [x0]	// tmp117, *numbers_33(D)
	str	s0, [sp, 16]	// tmp117, min
// eval/problem22//code.c:5:     float min = numbers[0], max = numbers[0];
	ldr	x0, [sp, 8]	// tmp118, numbers
	ldr	s0, [x0]	// tmp119, *numbers_33(D)
	str	s0, [sp, 20]	// tmp119, max
// eval/problem22//code.c:6:     for (int i = 1; i < size; i++) {
	mov	w0, 1	// tmp120,
	str	w0, [sp, 24]	// tmp120, i
// eval/problem22//code.c:6:     for (int i = 1; i < size; i++) {
	b	.L2		//
.L7:
// eval/problem22//code.c:7:         if (numbers[i] < min) min = numbers[i];
	ldrsw	x0, [sp, 24]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp121, numbers
	add	x0, x1, x0	// _3, tmp121, _2
	ldr	s0, [x0]	// _4, *_3
// eval/problem22//code.c:7:         if (numbers[i] < min) min = numbers[i];
	ldr	s1, [sp, 16]	// tmp122, min
	fcmpe	s1, s0	// tmp122, _4
	bgt	.L10		//,
	b	.L3		//
.L10:
// eval/problem22//code.c:7:         if (numbers[i] < min) min = numbers[i];
	ldrsw	x0, [sp, 24]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 8]	// tmp123, numbers
	add	x0, x1, x0	// _7, tmp123, _6
// eval/problem22//code.c:7:         if (numbers[i] < min) min = numbers[i];
	ldr	s0, [x0]	// tmp124, *_7
	str	s0, [sp, 16]	// tmp124, min
.L3:
// eval/problem22//code.c:8:         if (numbers[i] > max) max = numbers[i];
	ldrsw	x0, [sp, 24]	// _8, i
	lsl	x0, x0, 2	// _9, _8,
	ldr	x1, [sp, 8]	// tmp125, numbers
	add	x0, x1, x0	// _10, tmp125, _9
	ldr	s0, [x0]	// _11, *_10
// eval/problem22//code.c:8:         if (numbers[i] > max) max = numbers[i];
	ldr	s1, [sp, 20]	// tmp126, max
	fcmpe	s1, s0	// tmp126, _11
	bmi	.L11		//,
	b	.L5		//
.L11:
// eval/problem22//code.c:8:         if (numbers[i] > max) max = numbers[i];
	ldrsw	x0, [sp, 24]	// _12, i
	lsl	x0, x0, 2	// _13, _12,
	ldr	x1, [sp, 8]	// tmp127, numbers
	add	x0, x1, x0	// _14, tmp127, _13
// eval/problem22//code.c:8:         if (numbers[i] > max) max = numbers[i];
	ldr	s0, [x0]	// tmp128, *_14
	str	s0, [sp, 20]	// tmp128, max
.L5:
// eval/problem22//code.c:6:     for (int i = 1; i < size; i++) {
	ldr	w0, [sp, 24]	// tmp130, i
	add	w0, w0, 1	// tmp129, tmp130,
	str	w0, [sp, 24]	// tmp129, i
.L2:
// eval/problem22//code.c:6:     for (int i = 1; i < size; i++) {
	ldr	w1, [sp, 24]	// tmp131, i
	ldr	w0, [sp, 4]	// tmp132, size
	cmp	w1, w0	// tmp131, tmp132
	blt	.L7		//,
// eval/problem22//code.c:10:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 28]	//, i
// eval/problem22//code.c:10:     for (int i = 0; i < size; i++) {
	b	.L8		//
.L9:
// eval/problem22//code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	ldrsw	x0, [sp, 28]	// _15, i
	lsl	x0, x0, 2	// _16, _15,
	ldr	x1, [sp, 8]	// tmp133, numbers
	add	x0, x1, x0	// _17, tmp133, _16
	ldr	s1, [x0]	// _18, *_17
// eval/problem22//code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	ldr	s0, [sp, 16]	// tmp134, min
	fsub	s1, s1, s0	// _19, _18, tmp134
// eval/problem22//code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	ldr	s2, [sp, 20]	// tmp135, max
	ldr	s0, [sp, 16]	// tmp136, min
	fsub	s0, s2, s0	// _20, tmp135, tmp136
// eval/problem22//code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	ldrsw	x0, [sp, 28]	// _21, i
	lsl	x0, x0, 2	// _22, _21,
	ldr	x1, [sp, 8]	// tmp137, numbers
	add	x0, x1, x0	// _23, tmp137, _22
// eval/problem22//code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	fdiv	s0, s1, s0	// _24, _19, _20
// eval/problem22//code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	str	s0, [x0]	// _24, *_23
// eval/problem22//code.c:10:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 28]	// tmp139, i
	add	w0, w0, 1	// tmp138, tmp139,
	str	w0, [sp, 28]	// tmp138, i
.L8:
// eval/problem22//code.c:10:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 28]	// tmp140, i
	ldr	w0, [sp, 4]	// tmp141, size
	cmp	w1, w0	// tmp140, tmp141
	blt	.L9		//,
// eval/problem22//code.c:13: }
	nop	
	nop	
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
