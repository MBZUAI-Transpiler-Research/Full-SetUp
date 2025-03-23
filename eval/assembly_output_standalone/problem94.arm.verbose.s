	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	str	x0, [sp, 24]	// message, message
	str	x1, [sp, 16]	// out, out
// eval/problem94//code.c:6:     const char* vowels = "aeiouAEIOU";
	adrp	x0, .LC0	// tmp128,
	add	x0, x0, :lo12:.LC0	// tmp127, tmp128,
	str	x0, [sp, 56]	// tmp127, vowels
// eval/problem94//code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	str	wzr, [sp, 48]	//, i
// eval/problem94//code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	b	.L2		//
.L10:
// eval/problem94//code.c:10:         char w = message[i];
	ldrsw	x0, [sp, 48]	// _1, i
	ldr	x1, [sp, 24]	// tmp129, message
	add	x0, x1, x0	// _2, tmp129, _1
// eval/problem94//code.c:10:         char w = message[i];
	ldrb	w0, [x0]	// tmp130, *_2
	strb	w0, [sp, 47]	// tmp130, w
// eval/problem94//code.c:11:         if (islower(w)) {
	bl	__ctype_b_loc		//
	ldr	x1, [x0]	// _4, *_3
	ldrb	w0, [sp, 47]	// _5, w
	lsl	x0, x0, 1	// _6, _5,
	add	x0, x1, x0	// _7, _4, _6
	ldrh	w0, [x0]	// _8, *_7
	and	w0, w0, 512	// _10, _9,
// eval/problem94//code.c:11:         if (islower(w)) {
	cmp	w0, 0	// _10,
	beq	.L3		//,
// eval/problem94//code.c:12:             w = toupper(w);
	ldrb	w0, [sp, 47]	// _11, w
	bl	toupper		//
// eval/problem94//code.c:12:             w = toupper(w);
	strb	w0, [sp, 47]	// tmp131, w
	b	.L4		//
.L3:
// eval/problem94//code.c:13:         } else if (isupper(w)) {
	bl	__ctype_b_loc		//
	ldr	x1, [x0]	// _14, *_13
	ldrb	w0, [sp, 47]	// _15, w
	lsl	x0, x0, 1	// _16, _15,
	add	x0, x1, x0	// _17, _14, _16
	ldrh	w0, [x0]	// _18, *_17
	and	w0, w0, 256	// _20, _19,
// eval/problem94//code.c:13:         } else if (isupper(w)) {
	cmp	w0, 0	// _20,
	beq	.L4		//,
// eval/problem94//code.c:14:             w = tolower(w);
	ldrb	w0, [sp, 47]	// _21, w
	bl	tolower		//
// eval/problem94//code.c:14:             w = tolower(w);
	strb	w0, [sp, 47]	// tmp132, w
.L4:
// eval/problem94//code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	str	wzr, [sp, 52]	//, j
// eval/problem94//code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	b	.L5		//
.L9:
// eval/problem94//code.c:18:             if (w == vowels[j]) {
	ldrsw	x0, [sp, 52]	// _23, j
	ldr	x1, [sp, 56]	// tmp133, vowels
	add	x0, x1, x0	// _24, tmp133, _23
	ldrb	w0, [x0]	// _25, *_24
// eval/problem94//code.c:18:             if (w == vowels[j]) {
	ldrb	w1, [sp, 47]	// tmp134, w
	cmp	w1, w0	// tmp134, _25
	bne	.L6		//,
// eval/problem94//code.c:19:                 if (j < 10) {
	ldr	w0, [sp, 52]	// tmp135, j
	cmp	w0, 9	// tmp135,
	bgt	.L11		//,
// eval/problem94//code.c:20:                     w = w + 2;
	ldrb	w0, [sp, 47]	// tmp136, w
	add	w0, w0, 2	// tmp137, tmp136,
	strb	w0, [sp, 47]	// tmp138, w
// eval/problem94//code.c:22:                 break;
	b	.L11		//
.L6:
// eval/problem94//code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	ldr	w0, [sp, 52]	// tmp140, j
	add	w0, w0, 1	// tmp139, tmp140,
	str	w0, [sp, 52]	// tmp139, j
.L5:
// eval/problem94//code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	ldrsw	x0, [sp, 52]	// _26, j
	ldr	x1, [sp, 56]	// tmp141, vowels
	add	x0, x1, x0	// _27, tmp141, _26
	ldrb	w0, [x0]	// _28, *_27
// eval/problem94//code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	cmp	w0, 0	// _28,
	bne	.L9		//,
	b	.L8		//
.L11:
// eval/problem94//code.c:22:                 break;
	nop	
.L8:
// eval/problem94//code.c:25:         out[i] = w;
	ldrsw	x0, [sp, 48]	// _29, i
	ldr	x1, [sp, 16]	// tmp142, out
	add	x0, x1, x0	// _30, tmp142, _29
// eval/problem94//code.c:25:         out[i] = w;
	ldrb	w1, [sp, 47]	// tmp143, w
	strb	w1, [x0]	// tmp143, *_30
// eval/problem94//code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	ldr	w0, [sp, 48]	// tmp145, i
	add	w0, w0, 1	// tmp144, tmp145,
	str	w0, [sp, 48]	// tmp144, i
.L2:
// eval/problem94//code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	ldrsw	x0, [sp, 48]	// _31, i
	ldr	x1, [sp, 24]	// tmp146, message
	add	x0, x1, x0	// _32, tmp146, _31
	ldrb	w0, [x0]	// _33, *_32
// eval/problem94//code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	cmp	w0, 0	// _33,
	bne	.L10		//,
// eval/problem94//code.c:27:     out[i] = '\0';
	ldrsw	x0, [sp, 48]	// _34, i
	ldr	x1, [sp, 16]	// tmp147, out
	add	x0, x1, x0	// _35, tmp147, _34
// eval/problem94//code.c:27:     out[i] = '\0';
	strb	wzr, [x0]	//, *_35
// eval/problem94//code.c:28: }
	nop	
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
