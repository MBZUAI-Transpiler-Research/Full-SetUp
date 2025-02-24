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
	str	x0, [sp, 8]	// s, s
	str	x1, [sp]	// out, out
// code.c:6:     for (i = 0; s[i] != '\0'; i++) {
	str	wzr, [sp, 24]	//, i
// code.c:6:     for (i = 0; s[i] != '\0'; i++) {
	b	.L2		//
.L3:
// code.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	ldrsw	x0, [sp, 24]	// _1, i
	ldr	x1, [sp, 8]	// tmp106, s
	add	x0, x1, x0	// _2, tmp106, _1
	ldrb	w0, [x0]	// _3, *_2
// code.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	sub	w1, w0, #93	// _5, _4,
// code.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	mov	w0, 60495	// tmp108,
	movk	w0, 0x4ec4, lsl 16	// tmp108,,
	smull	x0, w1, w0	// tmp107, _5, tmp108
	lsr	x0, x0, 32	// tmp109, tmp107,
	asr	w2, w0, 3	// tmp110, tmp109,
	asr	w0, w1, 31	// tmp111, _5,
	sub	w0, w2, w0	// _6, tmp110, tmp111
	mov	w2, 26	// tmp113,
	mul	w0, w0, w2	// tmp112, _6, tmp113
	sub	w0, w1, w0	// _6, _5, tmp112
// code.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	add	w0, w0, 97	// tmp114, _6,
	str	w0, [sp, 28]	// tmp114, w
// code.c:8:         out[i] = (char)w;
	ldrsw	x0, [sp, 24]	// _7, i
	ldr	x1, [sp]	// tmp115, out
	add	x0, x1, x0	// _8, tmp115, _7
// code.c:8:         out[i] = (char)w;
	ldr	w1, [sp, 28]	// tmp116, w
	and	w1, w1, 255	// _9, tmp116
// code.c:8:         out[i] = (char)w;
	strb	w1, [x0]	// tmp117, *_8
// code.c:6:     for (i = 0; s[i] != '\0'; i++) {
	ldr	w0, [sp, 24]	// tmp119, i
	add	w0, w0, 1	// tmp118, tmp119,
	str	w0, [sp, 24]	// tmp118, i
.L2:
// code.c:6:     for (i = 0; s[i] != '\0'; i++) {
	ldrsw	x0, [sp, 24]	// _10, i
	ldr	x1, [sp, 8]	// tmp120, s
	add	x0, x1, x0	// _11, tmp120, _10
	ldrb	w0, [x0]	// _12, *_11
// code.c:6:     for (i = 0; s[i] != '\0'; i++) {
	cmp	w0, 0	// _12,
	bne	.L3		//,
// code.c:10:     out[i] = '\0';
	ldrsw	x0, [sp, 24]	// _13, i
	ldr	x1, [sp]	// tmp121, out
	add	x0, x1, x0	// _14, tmp121, _13
// code.c:10:     out[i] = '\0';
	strb	wzr, [x0]	//, *_14
// code.c:11: }
	nop	
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
