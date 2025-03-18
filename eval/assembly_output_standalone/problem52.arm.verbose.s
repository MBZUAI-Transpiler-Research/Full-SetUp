	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"AEIOUaeiou"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// text, text
// eval/problem52//code.c:6:     const char *vowels = "AEIOUaeiou";
	adrp	x0, .LC0	// tmp99,
	add	x0, x0, :lo12:.LC0	// tmp98, tmp99,
	str	x0, [sp, 40]	// tmp98, vowels
// eval/problem52//code.c:7:     char *out = text;
	ldr	x0, [sp, 24]	// tmp100, text
	str	x0, [sp, 32]	// tmp100, out
// eval/problem52//code.c:8:     while (*text != '\0') {
	b	.L2		//
.L4:
// eval/problem52//code.c:9:         if (strchr(vowels, *text) == NULL) {
	ldr	x0, [sp, 24]	// tmp101, text
	ldrb	w0, [x0]	// _1, *text_7
// eval/problem52//code.c:9:         if (strchr(vowels, *text) == NULL) {
	mov	w1, w0	//, _2
	ldr	x0, [sp, 40]	//, vowels
	bl	strchr		//
// eval/problem52//code.c:9:         if (strchr(vowels, *text) == NULL) {
	cmp	x0, 0	// _3,
	bne	.L3		//,
// eval/problem52//code.c:10:             *out++ = *text;
	ldr	x0, [sp, 32]	// out.0_4, out
	add	x1, x0, 1	// tmp102, out.0_4,
	str	x1, [sp, 32]	// tmp102, out
// eval/problem52//code.c:10:             *out++ = *text;
	ldr	x1, [sp, 24]	// tmp103, text
	ldrb	w1, [x1]	// _5, *text_7
// eval/problem52//code.c:10:             *out++ = *text;
	strb	w1, [x0]	// tmp104, *out.0_4
.L3:
// eval/problem52//code.c:12:         text++;
	ldr	x0, [sp, 24]	// tmp106, text
	add	x0, x0, 1	// tmp105, tmp106,
	str	x0, [sp, 24]	// tmp105, text
.L2:
// eval/problem52//code.c:8:     while (*text != '\0') {
	ldr	x0, [sp, 24]	// tmp107, text
	ldrb	w0, [x0]	// _6, *text_7
// eval/problem52//code.c:8:     while (*text != '\0') {
	cmp	w0, 0	// _6,
	bne	.L4		//,
// eval/problem52//code.c:14:     *out = '\0';
	ldr	x0, [sp, 32]	// tmp108, out
	strb	wzr, [x0]	//, *out_9
// eval/problem52//code.c:15: }
	nop	
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
