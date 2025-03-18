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
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// text, text
// eval/problem49//code.c:6:     int len = strlen(text);
	ldr	x0, [sp, 24]	//, text
	bl	strlen		//
// eval/problem49//code.c:6:     int len = strlen(text);
	str	w0, [sp, 44]	// tmp104, len
// eval/problem49//code.c:7:     for (int i = 0; i < len / 2; i++) {
	str	wzr, [sp, 40]	//, i
// eval/problem49//code.c:7:     for (int i = 0; i < len / 2; i++) {
	b	.L2		//
.L5:
// eval/problem49//code.c:8:         if (text[i] != text[len - 1 - i]) {
	ldrsw	x0, [sp, 40]	// _2, i
	ldr	x1, [sp, 24]	// tmp105, text
	add	x0, x1, x0	// _3, tmp105, _2
	ldrb	w1, [x0]	// _4, *_3
// eval/problem49//code.c:8:         if (text[i] != text[len - 1 - i]) {
	ldr	w0, [sp, 44]	// tmp106, len
	sub	w2, w0, #1	// _5, tmp106,
// eval/problem49//code.c:8:         if (text[i] != text[len - 1 - i]) {
	ldr	w0, [sp, 40]	// tmp107, i
	sub	w0, w2, w0	// _6, _5, tmp107
	sxtw	x0, w0	// _7, _6
// eval/problem49//code.c:8:         if (text[i] != text[len - 1 - i]) {
	ldr	x2, [sp, 24]	// tmp108, text
	add	x0, x2, x0	// _8, tmp108, _7
	ldrb	w0, [x0]	// _9, *_8
// eval/problem49//code.c:8:         if (text[i] != text[len - 1 - i]) {
	cmp	w1, w0	// _4, _9
	beq	.L3		//,
// eval/problem49//code.c:9:             return false;
	mov	w0, 0	// _12,
	b	.L4		//
.L3:
// eval/problem49//code.c:7:     for (int i = 0; i < len / 2; i++) {
	ldr	w0, [sp, 40]	// tmp110, i
	add	w0, w0, 1	// tmp109, tmp110,
	str	w0, [sp, 40]	// tmp109, i
.L2:
// eval/problem49//code.c:7:     for (int i = 0; i < len / 2; i++) {
	ldr	w0, [sp, 44]	// tmp111, len
	lsr	w1, w0, 31	// tmp112, tmp111,
	add	w0, w1, w0	// tmp113, tmp112, tmp111
	asr	w0, w0, 1	// tmp114, tmp113,
	mov	w1, w0	// _10, tmp114
// eval/problem49//code.c:7:     for (int i = 0; i < len / 2; i++) {
	ldr	w0, [sp, 40]	// tmp115, i
	cmp	w0, w1	// tmp115, _10
	blt	.L5		//,
// eval/problem49//code.c:12:     return true;
	mov	w0, 1	// _12,
.L4:
// eval/problem49//code.c:13: }
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
