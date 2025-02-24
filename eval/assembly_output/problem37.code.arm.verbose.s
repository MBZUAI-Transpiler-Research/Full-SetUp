	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
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
// code.c:4:     int count = 0;
	str	wzr, [sp, 20]	//, count
// code.c:5:     for (int i = 0; i < n; i++)
	str	wzr, [sp, 24]	//, i
// code.c:5:     for (int i = 0; i < n; i++)
	b	.L2		//
.L8:
// code.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	ldr	w1, [sp, 24]	// tmp97, i
	mov	w0, 41705	// tmp99,
	movk	w0, 0x2e8b, lsl 16	// tmp99,,
	smull	x0, w1, w0	// tmp98, tmp97, tmp99
	lsr	x0, x0, 32	// tmp100, tmp98,
	asr	w2, w0, 1	// tmp101, tmp100,
	asr	w0, w1, 31	// tmp102, tmp97,
	sub	w0, w2, w0	// _1, tmp101, tmp102
	mov	w2, 11	// tmp104,
	mul	w0, w0, w2	// tmp103, _1, tmp104
	sub	w0, w1, w0	// _1, tmp97, tmp103
// code.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	cmp	w0, 0	// _1,
	beq	.L3		//,
// code.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	ldr	w1, [sp, 24]	// tmp105, i
	mov	w0, 60495	// tmp107,
	movk	w0, 0x4ec4, lsl 16	// tmp107,,
	smull	x0, w1, w0	// tmp106, tmp105, tmp107
	lsr	x0, x0, 32	// tmp108, tmp106,
	asr	w2, w0, 2	// tmp109, tmp108,
	asr	w0, w1, 31	// tmp110, tmp105,
	sub	w0, w2, w0	// _2, tmp109, tmp110
	mov	w2, 13	// tmp112,
	mul	w0, w0, w2	// tmp111, _2, tmp112
	sub	w0, w1, w0	// _2, tmp105, tmp111
// code.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	cmp	w0, 0	// _2,
	bne	.L4		//,
.L3:
// code.c:7:             int q = i;
	ldr	w0, [sp, 24]	// tmp113, i
	str	w0, [sp, 28]	// tmp113, q
// code.c:8:             while (q > 0) {
	b	.L5		//
.L7:
// code.c:9:                 if (q % 10 == 7) count += 1;
	ldr	w2, [sp, 28]	// tmp114, q
	mov	w0, 26215	// tmp116,
	movk	w0, 0x6666, lsl 16	// tmp116,,
	smull	x0, w2, w0	// tmp115, tmp114, tmp116
	lsr	x0, x0, 32	// tmp117, tmp115,
	asr	w1, w0, 2	// tmp118, tmp117,
	asr	w0, w2, 31	// tmp119, tmp114,
	sub	w1, w1, w0	// _3, tmp118, tmp119
	mov	w0, w1	// tmp120, _3
	lsl	w0, w0, 2	// tmp121, tmp120,
	add	w0, w0, w1	// tmp120, tmp120, _3
	lsl	w0, w0, 1	// tmp122, tmp120,
	sub	w1, w2, w0	// _3, tmp114, tmp120
// code.c:9:                 if (q % 10 == 7) count += 1;
	cmp	w1, 7	// _3,
	bne	.L6		//,
// code.c:9:                 if (q % 10 == 7) count += 1;
	ldr	w0, [sp, 20]	// tmp124, count
	add	w0, w0, 1	// tmp123, tmp124,
	str	w0, [sp, 20]	// tmp123, count
.L6:
// code.c:10:                 q = q / 10;
	ldr	w0, [sp, 28]	// tmp126, q
	mov	w1, 26215	// tmp128,
	movk	w1, 0x6666, lsl 16	// tmp128,,
	smull	x1, w0, w1	// tmp127, tmp126, tmp128
	lsr	x1, x1, 32	// tmp129, tmp127,
	asr	w1, w1, 2	// tmp130, tmp129,
	asr	w0, w0, 31	// tmp131, tmp126,
	sub	w0, w1, w0	// tmp125, tmp130, tmp131
	str	w0, [sp, 28]	// tmp125, q
.L5:
// code.c:8:             while (q > 0) {
	ldr	w0, [sp, 28]	// tmp132, q
	cmp	w0, 0	// tmp132,
	bgt	.L7		//,
.L4:
// code.c:5:     for (int i = 0; i < n; i++)
	ldr	w0, [sp, 24]	// tmp134, i
	add	w0, w0, 1	// tmp133, tmp134,
	str	w0, [sp, 24]	// tmp133, i
.L2:
// code.c:5:     for (int i = 0; i < n; i++)
	ldr	w1, [sp, 24]	// tmp135, i
	ldr	w0, [sp, 12]	// tmp136, n
	cmp	w1, w0	// tmp135, tmp136
	blt	.L8		//,
// code.c:13:     return count;
	ldr	w0, [sp, 20]	// _13, count
// code.c:14: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
