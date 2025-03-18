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
	.string	"aeiouAEIOU"
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
	str	x0, [sp, 24]	// s, s
// eval/problem65//code.c:6:     const char *vowels = "aeiouAEIOU";
	adrp	x0, .LC0	// tmp109,
	add	x0, x0, :lo12:.LC0	// tmp108, tmp109,
	str	x0, [sp, 56]	// tmp108, vowels
// eval/problem65//code.c:7:     int count = 0;
	str	wzr, [sp, 44]	//, count
// eval/problem65//code.c:8:     int length = strlen(s);
	ldr	x0, [sp, 24]	//, s
	bl	strlen		//
// eval/problem65//code.c:8:     int length = strlen(s);
	str	w0, [sp, 52]	// tmp110, length
// eval/problem65//code.c:10:     for (int i = 0; i < length; i++) {
	str	wzr, [sp, 48]	//, i
// eval/problem65//code.c:10:     for (int i = 0; i < length; i++) {
	b	.L2		//
.L4:
// eval/problem65//code.c:11:         if (strchr(vowels, s[i])) {
	ldrsw	x0, [sp, 48]	// _2, i
	ldr	x1, [sp, 24]	// tmp111, s
	add	x0, x1, x0	// _3, tmp111, _2
	ldrb	w0, [x0]	// _4, *_3
// eval/problem65//code.c:11:         if (strchr(vowels, s[i])) {
	mov	w1, w0	//, _5
	ldr	x0, [sp, 56]	//, vowels
	bl	strchr		//
// eval/problem65//code.c:11:         if (strchr(vowels, s[i])) {
	cmp	x0, 0	// _6,
	beq	.L3		//,
// eval/problem65//code.c:12:             count++;
	ldr	w0, [sp, 44]	// tmp113, count
	add	w0, w0, 1	// tmp112, tmp113,
	str	w0, [sp, 44]	// tmp112, count
.L3:
// eval/problem65//code.c:10:     for (int i = 0; i < length; i++) {
	ldr	w0, [sp, 48]	// tmp115, i
	add	w0, w0, 1	// tmp114, tmp115,
	str	w0, [sp, 48]	// tmp114, i
.L2:
// eval/problem65//code.c:10:     for (int i = 0; i < length; i++) {
	ldr	w1, [sp, 48]	// tmp116, i
	ldr	w0, [sp, 52]	// tmp117, length
	cmp	w1, w0	// tmp116, tmp117
	blt	.L4		//,
// eval/problem65//code.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	ldr	w0, [sp, 52]	// tmp118, length
	cmp	w0, 0	// tmp118,
	ble	.L5		//,
// eval/problem65//code.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	ldrsw	x0, [sp, 52]	// _7, length
	sub	x0, x0, #1	// _8, _7,
	ldr	x1, [sp, 24]	// tmp119, s
	add	x0, x1, x0	// _9, tmp119, _8
	ldrb	w0, [x0]	// _10, *_9
// eval/problem65//code.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	cmp	w0, 121	// _10,
	beq	.L6		//,
// eval/problem65//code.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	ldrsw	x0, [sp, 52]	// _11, length
	sub	x0, x0, #1	// _12, _11,
	ldr	x1, [sp, 24]	// tmp120, s
	add	x0, x1, x0	// _13, tmp120, _12
	ldrb	w0, [x0]	// _14, *_13
// eval/problem65//code.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	cmp	w0, 89	// _14,
	bne	.L5		//,
.L6:
// eval/problem65//code.c:17:         count++;
	ldr	w0, [sp, 44]	// tmp122, count
	add	w0, w0, 1	// tmp121, tmp122,
	str	w0, [sp, 44]	// tmp121, count
.L5:
// eval/problem65//code.c:20:     return count;
	ldr	w0, [sp, 44]	// _26, count
// eval/problem65//code.c:21: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
