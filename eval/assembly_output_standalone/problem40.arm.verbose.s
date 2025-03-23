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
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	w0, [sp, 12]	// n, n
// eval/problem40//code.c:4:     int f1 = 1, f2 = 2, m;
	mov	w0, 1	// tmp96,
	str	w0, [sp, 24]	// tmp96, f1
// eval/problem40//code.c:4:     int f1 = 1, f2 = 2, m;
	mov	w0, 2	// tmp97,
	str	w0, [sp, 28]	// tmp97, f2
// eval/problem40//code.c:5:     int count = 0;
	str	wzr, [sp, 32]	//, count
// eval/problem40//code.c:6:     while (count < n) {
	b	.L2		//
.L9:
// eval/problem40//code.c:7:         f1 = f1 + f2;
	ldr	w1, [sp, 24]	// tmp99, f1
	ldr	w0, [sp, 28]	// tmp100, f2
	add	w0, w1, w0	// tmp98, tmp99, tmp100
	str	w0, [sp, 24]	// tmp98, f1
// eval/problem40//code.c:8:         m = f1; f1 = f2; f2 = m;
	ldr	w0, [sp, 24]	// tmp101, f1
	str	w0, [sp, 44]	// tmp101, m
// eval/problem40//code.c:8:         m = f1; f1 = f2; f2 = m;
	ldr	w0, [sp, 28]	// tmp102, f2
	str	w0, [sp, 24]	// tmp102, f1
// eval/problem40//code.c:8:         m = f1; f1 = f2; f2 = m;
	ldr	w0, [sp, 44]	// tmp103, m
	str	w0, [sp, 28]	// tmp103, f2
// eval/problem40//code.c:9:         int isprime = 1;
	mov	w0, 1	// tmp104,
	str	w0, [sp, 36]	// tmp104, isprime
// eval/problem40//code.c:10:         for (int w = 2; w * w <= f1; w++) {
	mov	w0, 2	// tmp105,
	str	w0, [sp, 40]	// tmp105, w
// eval/problem40//code.c:10:         for (int w = 2; w * w <= f1; w++) {
	b	.L3		//
.L6:
// eval/problem40//code.c:11:             if (f1 % w == 0) {
	ldr	w0, [sp, 24]	// tmp106, f1
	ldr	w1, [sp, 40]	// tmp119, w
	sdiv	w2, w0, w1	// tmp118, tmp106, tmp119
	ldr	w1, [sp, 40]	// tmp121, w
	mul	w1, w2, w1	// tmp120, tmp118, tmp121
	sub	w0, w0, w1	// _1, tmp106, tmp120
// eval/problem40//code.c:11:             if (f1 % w == 0) {
	cmp	w0, 0	// _1,
	bne	.L4		//,
// eval/problem40//code.c:12:                 isprime = 0; break;
	str	wzr, [sp, 36]	//, isprime
// eval/problem40//code.c:12:                 isprime = 0; break;
	b	.L5		//
.L4:
// eval/problem40//code.c:10:         for (int w = 2; w * w <= f1; w++) {
	ldr	w0, [sp, 40]	// tmp123, w
	add	w0, w0, 1	// tmp122, tmp123,
	str	w0, [sp, 40]	// tmp122, w
.L3:
// eval/problem40//code.c:10:         for (int w = 2; w * w <= f1; w++) {
	ldr	w0, [sp, 40]	// tmp124, w
	mul	w0, w0, w0	// _2, tmp124, tmp124
// eval/problem40//code.c:10:         for (int w = 2; w * w <= f1; w++) {
	ldr	w1, [sp, 24]	// tmp125, f1
	cmp	w1, w0	// tmp125, _2
	bge	.L6		//,
.L5:
// eval/problem40//code.c:15:         if (isprime) count += 1;
	ldr	w0, [sp, 36]	// tmp126, isprime
	cmp	w0, 0	// tmp126,
	beq	.L7		//,
// eval/problem40//code.c:15:         if (isprime) count += 1;
	ldr	w0, [sp, 32]	// tmp128, count
	add	w0, w0, 1	// tmp127, tmp128,
	str	w0, [sp, 32]	// tmp127, count
.L7:
// eval/problem40//code.c:16:         if (count == n) return f1;
	ldr	w1, [sp, 32]	// tmp129, count
	ldr	w0, [sp, 12]	// tmp130, n
	cmp	w1, w0	// tmp129, tmp130
	bne	.L2		//,
// eval/problem40//code.c:16:         if (count == n) return f1;
	ldr	w0, [sp, 24]	// _9, f1
	b	.L8		//
.L2:
// eval/problem40//code.c:6:     while (count < n) {
	ldr	w1, [sp, 32]	// tmp131, count
	ldr	w0, [sp, 12]	// tmp132, n
	cmp	w1, w0	// tmp131, tmp132
	blt	.L9		//,
// eval/problem40//code.c:18:     return 0;
	mov	w0, 0	// _9,
.L8:
// eval/problem40//code.c:19: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
