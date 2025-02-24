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
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// str, str
	str	x1, [sp, 16]	// out, out
// code.c:5:     int length = strlen(str);
	ldr	x0, [sp, 24]	//, str
	bl	strlen		//
// code.c:5:     int length = strlen(str);
	str	w0, [sp, 44]	// tmp99, length
// code.c:6:     for (int i = 0; i < length; i++) {
	str	wzr, [sp, 40]	//, i
// code.c:6:     for (int i = 0; i < length; i++) {
	b	.L2		//
.L5:
// code.c:7:         char w = str[i];
	ldrsw	x0, [sp, 40]	// _2, i
	ldr	x1, [sp, 24]	// tmp100, str
	add	x0, x1, x0	// _3, tmp100, _2
// code.c:7:         char w = str[i];
	ldrb	w0, [x0]	// tmp101, *_3
	strb	w0, [sp, 39]	// tmp101, w
// code.c:8:         if (w >= 'a' && w <= 'z') {
	ldrb	w0, [sp, 39]	// tmp102, w
	cmp	w0, 96	// tmp102,
	bls	.L3		//,
// code.c:8:         if (w >= 'a' && w <= 'z') {
	ldrb	w0, [sp, 39]	// tmp103, w
	cmp	w0, 122	// tmp103,
	bhi	.L3		//,
// code.c:9:             w -= 32;
	ldrb	w0, [sp, 39]	// tmp104, w
	sub	w0, w0, #32	// tmp105, tmp104,
	strb	w0, [sp, 39]	// tmp106, w
	b	.L4		//
.L3:
// code.c:10:         } else if (w >= 'A' && w <= 'Z') {
	ldrb	w0, [sp, 39]	// tmp107, w
	cmp	w0, 64	// tmp107,
	bls	.L4		//,
// code.c:10:         } else if (w >= 'A' && w <= 'Z') {
	ldrb	w0, [sp, 39]	// tmp108, w
	cmp	w0, 90	// tmp108,
	bhi	.L4		//,
// code.c:11:             w += 32;
	ldrb	w0, [sp, 39]	// tmp109, w
	add	w0, w0, 32	// tmp110, tmp109,
	strb	w0, [sp, 39]	// tmp111, w
.L4:
// code.c:13:         out[i] = w;
	ldrsw	x0, [sp, 40]	// _4, i
	ldr	x1, [sp, 16]	// tmp112, out
	add	x0, x1, x0	// _5, tmp112, _4
// code.c:13:         out[i] = w;
	ldrb	w1, [sp, 39]	// tmp113, w
	strb	w1, [x0]	// tmp113, *_5
// code.c:6:     for (int i = 0; i < length; i++) {
	ldr	w0, [sp, 40]	// tmp115, i
	add	w0, w0, 1	// tmp114, tmp115,
	str	w0, [sp, 40]	// tmp114, i
.L2:
// code.c:6:     for (int i = 0; i < length; i++) {
	ldr	w1, [sp, 40]	// tmp116, i
	ldr	w0, [sp, 44]	// tmp117, length
	cmp	w1, w0	// tmp116, tmp117
	blt	.L5		//,
// code.c:15:     out[length] = '\0';
	ldrsw	x0, [sp, 44]	// _6, length
	ldr	x1, [sp, 16]	// tmp118, out
	add	x0, x1, x0	// _7, tmp118, _6
// code.c:15:     out[length] = '\0';
	strb	wzr, [x0]	//, *_7
// code.c:16: }
	nop	
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
