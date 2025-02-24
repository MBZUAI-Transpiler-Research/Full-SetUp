	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
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
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 24]	// word, word
// code.c:6:     const char *vowels = "AEIOUaeiou";
	adrp	x0, .LC0	// tmp117,
	add	x0, x0, :lo12:.LC0	// tmp116, tmp117,
	str	x0, [sp, 48]	// tmp116, vowels
// code.c:7:     size_t len = strlen(word);
	ldr	x0, [sp, 24]	//, word
	bl	strlen		//
	str	x0, [sp, 56]	//, len
// code.c:9:     for (int i = len - 2; i >= 1; i--) {
	ldr	x0, [sp, 56]	// tmp118, len
	sub	w0, w0, #2	// _2, _1,
// code.c:9:     for (int i = len - 2; i >= 1; i--) {
	str	w0, [sp, 44]	// _2, i
// code.c:9:     for (int i = len - 2; i >= 1; i--) {
	b	.L2		//
.L5:
// code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	ldrsw	x0, [sp, 44]	// _3, i
	ldr	x1, [sp, 24]	// tmp119, word
	add	x0, x1, x0	// _4, tmp119, _3
	ldrb	w0, [x0]	// _5, *_4
// code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	mov	w1, w0	//, _6
	ldr	x0, [sp, 48]	//, vowels
	bl	strchr		//
// code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	cmp	x0, 0	// _7,
	beq	.L3		//,
// code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	ldrsw	x0, [sp, 44]	// _8, i
	add	x0, x0, 1	// _9, _8,
	ldr	x1, [sp, 24]	// tmp120, word
	add	x0, x1, x0	// _10, tmp120, _9
	ldrb	w0, [x0]	// _11, *_10
// code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	mov	w1, w0	//, _12
	ldr	x0, [sp, 48]	//, vowels
	bl	strchr		//
// code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	cmp	x0, 0	// _13,
	bne	.L3		//,
// code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	ldrsw	x0, [sp, 44]	// _14, i
	sub	x0, x0, #1	// _15, _14,
	ldr	x1, [sp, 24]	// tmp121, word
	add	x0, x1, x0	// _16, tmp121, _15
	ldrb	w0, [x0]	// _17, *_16
// code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	mov	w1, w0	//, _18
	ldr	x0, [sp, 48]	//, vowels
	bl	strchr		//
// code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	cmp	x0, 0	// _19,
	bne	.L3		//,
// code.c:11:             out[0] = word[i];
	ldrsw	x0, [sp, 44]	// _20, i
	ldr	x1, [sp, 24]	// tmp122, word
	add	x0, x1, x0	// _21, tmp122, _20
	ldrb	w1, [x0]	// _22, *_21
// code.c:11:             out[0] = word[i];
	adrp	x0, out.0	// tmp124,
	add	x0, x0, :lo12:out.0	// tmp123, tmp124,
	strb	w1, [x0]	// tmp125, out[0]
// code.c:12:             return out;
	adrp	x0, out.0	// tmp126,
	add	x0, x0, :lo12:out.0	// _24, tmp126,
	b	.L4		//
.L3:
// code.c:9:     for (int i = len - 2; i >= 1; i--) {
	ldr	w0, [sp, 44]	// tmp128, i
	sub	w0, w0, #1	// tmp127, tmp128,
	str	w0, [sp, 44]	// tmp127, i
.L2:
// code.c:9:     for (int i = len - 2; i >= 1; i--) {
	ldr	w0, [sp, 44]	// tmp129, i
	cmp	w0, 0	// tmp129,
	bgt	.L5		//,
// code.c:15:     out[0] = '\0';
	adrp	x0, out.0	// tmp131,
	add	x0, x0, :lo12:out.0	// tmp130, tmp131,
	strb	wzr, [x0]	//, out[0]
// code.c:16:     return out;
	adrp	x0, out.0	// tmp132,
	add	x0, x0, :lo12:out.0	// _24, tmp132,
.L4:
// code.c:17: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.local	out.0
	.comm	out.0,2,8
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
