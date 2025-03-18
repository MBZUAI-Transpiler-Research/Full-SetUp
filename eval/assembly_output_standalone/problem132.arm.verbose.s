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
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]	// n, n
// eval/problem132//code.c:4:     int prod = 1, has_odd = 0, digit;
	mov	w0, 1	// tmp95,
	str	w0, [sp, 20]	// tmp95, prod
// eval/problem132//code.c:4:     int prod = 1, has_odd = 0, digit;
	str	wzr, [sp, 24]	//, has_odd
// eval/problem132//code.c:5:     while (n > 0) {
	b	.L2		//
.L4:
// eval/problem132//code.c:6:         digit = n % 10;
	ldr	w1, [sp, 12]	// tmp97, n
	mov	w0, 26215	// tmp99,
	movk	w0, 0x6666, lsl 16	// tmp99,,
	smull	x0, w1, w0	// tmp98, tmp97, tmp99
	lsr	x0, x0, 32	// tmp100, tmp98,
	asr	w2, w0, 2	// tmp101, tmp100,
	asr	w0, w1, 31	// tmp102, tmp97,
	sub	w2, w2, w0	// tmp96, tmp101, tmp102
	mov	w0, w2	// tmp103, tmp96
	lsl	w0, w0, 2	// tmp104, tmp103,
	add	w0, w0, w2	// tmp103, tmp103, tmp96
	lsl	w0, w0, 1	// tmp105, tmp103,
	sub	w0, w1, w0	// tmp106, tmp97, tmp103
	str	w0, [sp, 28]	// tmp106, digit
// eval/problem132//code.c:7:         if (digit % 2 == 1) {
	ldr	w0, [sp, 28]	// tmp107, digit
	cmp	w0, 0	// tmp107,
	and	w0, w0, 1	// tmp108, tmp107,
	csneg	w0, w0, w0, ge	// _1, tmp108, tmp108,
// eval/problem132//code.c:7:         if (digit % 2 == 1) {
	cmp	w0, 1	// _1,
	bne	.L3		//,
// eval/problem132//code.c:8:             has_odd = 1;
	mov	w0, 1	// tmp109,
	str	w0, [sp, 24]	// tmp109, has_odd
// eval/problem132//code.c:9:             prod *= digit;
	ldr	w1, [sp, 20]	// tmp111, prod
	ldr	w0, [sp, 28]	// tmp112, digit
	mul	w0, w1, w0	// tmp110, tmp111, tmp112
	str	w0, [sp, 20]	// tmp110, prod
.L3:
// eval/problem132//code.c:11:         n /= 10;
	ldr	w0, [sp, 12]	// tmp114, n
	mov	w1, 26215	// tmp116,
	movk	w1, 0x6666, lsl 16	// tmp116,,
	smull	x1, w0, w1	// tmp115, tmp114, tmp116
	lsr	x1, x1, 32	// tmp117, tmp115,
	asr	w1, w1, 2	// tmp118, tmp117,
	asr	w0, w0, 31	// tmp119, tmp114,
	sub	w0, w1, w0	// tmp113, tmp118, tmp119
	str	w0, [sp, 12]	// tmp113, n
.L2:
// eval/problem132//code.c:5:     while (n > 0) {
	ldr	w0, [sp, 12]	// tmp120, n
	cmp	w0, 0	// tmp120,
	bgt	.L4		//,
// eval/problem132//code.c:13:     return has_odd ? prod : 0;
	ldr	w0, [sp, 24]	// tmp121, has_odd
	cmp	w0, 0	// tmp121,
	beq	.L5		//,
// eval/problem132//code.c:13:     return has_odd ? prod : 0;
	ldr	w0, [sp, 20]	// iftmp.0_7, prod
// eval/problem132//code.c:13:     return has_odd ? prod : 0;
	b	.L7		//
.L5:
// eval/problem132//code.c:13:     return has_odd ? prod : 0;
	mov	w0, 0	// iftmp.0_7,
.L7:
// eval/problem132//code.c:14: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
