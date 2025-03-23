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
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 24]	// s, s
	str	w1, [sp, 20]	// encode, encode
// eval/problem51//code.c:6:     int shift = encode ? 5 : 21;
	ldr	w0, [sp, 20]	// tmp101, encode
	cmp	w0, 0	// tmp101,
	beq	.L2		//,
// eval/problem51//code.c:6:     int shift = encode ? 5 : 21;
	mov	w0, 5	// iftmp.0_10,
	b	.L3		//
.L2:
// eval/problem51//code.c:6:     int shift = encode ? 5 : 21;
	mov	w0, 21	// iftmp.0_10,
.L3:
// eval/problem51//code.c:6:     int shift = encode ? 5 : 21;
	str	w0, [sp, 40]	// iftmp.0_10, shift
// eval/problem51//code.c:7:     size_t len = strlen(s);
	ldr	x0, [sp, 24]	//, s
	bl	strlen		//
	str	x0, [sp, 56]	//, len
// eval/problem51//code.c:8:     for (size_t i = 0; i < len; i++) {
	str	xzr, [sp, 48]	//, i
// eval/problem51//code.c:8:     for (size_t i = 0; i < len; i++) {
	b	.L4		//
.L5:
// eval/problem51//code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	ldr	x1, [sp, 24]	// tmp102, s
	ldr	x0, [sp, 48]	// tmp103, i
	add	x0, x1, x0	// _1, tmp102, tmp103
	ldrb	w0, [x0]	// _2, *_1
// eval/problem51//code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	sub	w1, w0, #97	// _4, _3,
// eval/problem51//code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	ldr	w0, [sp, 40]	// tmp104, shift
	add	w1, w1, w0	// _5, _4, tmp104
// eval/problem51//code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	mov	w0, 60495	// tmp106,
	movk	w0, 0x4ec4, lsl 16	// tmp106,,
	smull	x0, w1, w0	// tmp105, _5, tmp106
	lsr	x0, x0, 32	// tmp107, tmp105,
	asr	w2, w0, 3	// tmp108, tmp107,
	asr	w0, w1, 31	// tmp109, _5,
	sub	w0, w2, w0	// _6, tmp108, tmp109
	mov	w2, 26	// tmp111,
	mul	w0, w0, w2	// tmp110, _6, tmp111
	sub	w0, w1, w0	// _6, _5, tmp110
// eval/problem51//code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	add	w0, w0, 97	// tmp112, _6,
	str	w0, [sp, 44]	// tmp112, w
// eval/problem51//code.c:10:         s[i] = (char)w;
	ldr	x1, [sp, 24]	// tmp113, s
	ldr	x0, [sp, 48]	// tmp114, i
	add	x0, x1, x0	// _7, tmp113, tmp114
// eval/problem51//code.c:10:         s[i] = (char)w;
	ldr	w1, [sp, 44]	// tmp115, w
	and	w1, w1, 255	// _8, tmp115
// eval/problem51//code.c:10:         s[i] = (char)w;
	strb	w1, [x0]	// tmp116, *_7
// eval/problem51//code.c:8:     for (size_t i = 0; i < len; i++) {
	ldr	x0, [sp, 48]	// tmp118, i
	add	x0, x0, 1	// tmp117, tmp118,
	str	x0, [sp, 48]	// tmp117, i
.L4:
// eval/problem51//code.c:8:     for (size_t i = 0; i < len; i++) {
	ldr	x1, [sp, 48]	// tmp119, i
	ldr	x0, [sp, 56]	// tmp120, len
	cmp	x1, x0	// tmp119, tmp120
	bcc	.L5		//,
// eval/problem51//code.c:12: }
	nop	
	nop	
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
