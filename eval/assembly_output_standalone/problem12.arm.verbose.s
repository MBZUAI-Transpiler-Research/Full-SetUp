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
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 24]	// a, a
	str	x1, [sp, 16]	// b, b
// eval/problem12//code.c:6:     int len_a = strlen(a);
	ldr	x0, [sp, 24]	//, a
	bl	strlen		//
// eval/problem12//code.c:6:     int len_a = strlen(a);
	str	w0, [sp, 44]	// tmp109, len_a
// eval/problem12//code.c:7:     int len_b = strlen(b);
	ldr	x0, [sp, 16]	//, b
	bl	strlen		//
// eval/problem12//code.c:7:     int len_b = strlen(b);
	str	w0, [sp, 48]	// tmp110, len_b
// eval/problem12//code.c:8:     int min_len = len_a < len_b ? len_a : len_b;
	ldr	w0, [sp, 44]	// tmp112, len_a
	ldr	w2, [sp, 48]	// tmp113, len_b
	ldr	w1, [sp, 48]	// tmp114, len_b
	cmp	w2, w0	// tmp113, tmp112
	csel	w0, w1, w0, le	// tmp111, tmp114, tmp112,
	str	w0, [sp, 52]	// tmp111, min_len
// eval/problem12//code.c:9:     char *output = malloc((min_len + 1) * sizeof(char));
	ldr	w0, [sp, 52]	// tmp115, min_len
	add	w0, w0, 1	// _3, tmp115,
// eval/problem12//code.c:9:     char *output = malloc((min_len + 1) * sizeof(char));
	sxtw	x0, w0	// _4, _3
	bl	malloc		//
	str	x0, [sp, 56]	// tmp116, output
// eval/problem12//code.c:10:     if (!output) return NULL;
	ldr	x0, [sp, 56]	// tmp117, output
	cmp	x0, 0	// tmp117,
	bne	.L2		//,
// eval/problem12//code.c:10:     if (!output) return NULL;
	mov	x0, 0	// _16,
// eval/problem12//code.c:10:     if (!output) return NULL;
	b	.L3		//
.L2:
// eval/problem12//code.c:12:     for (int i = 0; i < min_len; i++) {
	str	wzr, [sp, 40]	//, i
// eval/problem12//code.c:12:     for (int i = 0; i < min_len; i++) {
	b	.L4		//
.L7:
// eval/problem12//code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	ldrsw	x0, [sp, 40]	// _5, i
	ldr	x1, [sp, 24]	// tmp118, a
	add	x0, x1, x0	// _6, tmp118, _5
	ldrb	w1, [x0]	// _7, *_6
// eval/problem12//code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	ldrsw	x0, [sp, 40]	// _8, i
	ldr	x2, [sp, 16]	// tmp119, b
	add	x0, x2, x0	// _9, tmp119, _8
	ldrb	w0, [x0]	// _10, *_9
// eval/problem12//code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	cmp	w1, w0	// _7, _10
	bne	.L5		//,
// eval/problem12//code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	mov	w0, 48	// iftmp.0_17,
	b	.L6		//
.L5:
// eval/problem12//code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	mov	w0, 49	// iftmp.0_17,
.L6:
// eval/problem12//code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	ldrsw	x1, [sp, 40]	// _11, i
	ldr	x2, [sp, 56]	// tmp120, output
	add	x1, x2, x1	// _12, tmp120, _11
// eval/problem12//code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	strb	w0, [x1]	// tmp121, *_12
// eval/problem12//code.c:12:     for (int i = 0; i < min_len; i++) {
	ldr	w0, [sp, 40]	// tmp123, i
	add	w0, w0, 1	// tmp122, tmp123,
	str	w0, [sp, 40]	// tmp122, i
.L4:
// eval/problem12//code.c:12:     for (int i = 0; i < min_len; i++) {
	ldr	w1, [sp, 40]	// tmp124, i
	ldr	w0, [sp, 52]	// tmp125, min_len
	cmp	w1, w0	// tmp124, tmp125
	blt	.L7		//,
// eval/problem12//code.c:15:     output[min_len] = '\0';
	ldrsw	x0, [sp, 52]	// _13, min_len
	ldr	x1, [sp, 56]	// tmp126, output
	add	x0, x1, x0	// _14, tmp126, _13
// eval/problem12//code.c:15:     output[min_len] = '\0';
	strb	wzr, [x0]	//, *_14
// eval/problem12//code.c:16:     return output;
	ldr	x0, [sp, 56]	// _16, output
.L3:
// eval/problem12//code.c:17: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
