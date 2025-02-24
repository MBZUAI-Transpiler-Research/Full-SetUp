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
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 24]	// a, a
	str	x1, [sp, 16]	// b, b
// code.c:7:     int len_a = strlen(a);
	ldr	x0, [sp, 24]	//, a
	bl	strlen		//
// code.c:7:     int len_a = strlen(a);
	str	w0, [sp, 48]	// tmp111, len_a
// code.c:8:     int len_b = strlen(b);
	ldr	x0, [sp, 16]	//, b
	bl	strlen		//
// code.c:8:     int len_b = strlen(b);
	str	w0, [sp, 52]	// tmp112, len_b
// code.c:9:     char *temp = (char *)malloc(2 * len_b + 1);
	ldr	w0, [sp, 52]	// tmp113, len_b
	lsl	w0, w0, 1	// _3, tmp113,
// code.c:9:     char *temp = (char *)malloc(2 * len_b + 1);
	add	w0, w0, 1	// _4, _3,
// code.c:9:     char *temp = (char *)malloc(2 * len_b + 1);
	sxtw	x0, w0	// _5, _4
	bl	malloc		//
	str	x0, [sp, 56]	// tmp114, temp
// code.c:11:     for (int i = 0; i < len_b; i++) {
	str	wzr, [sp, 44]	//, i
// code.c:11:     for (int i = 0; i < len_b; i++) {
	b	.L2		//
.L5:
// code.c:12:         strncpy(temp, b + i, len_b - i);
	ldrsw	x0, [sp, 44]	// _6, i
	ldr	x1, [sp, 16]	// tmp115, b
	add	x3, x1, x0	// _7, tmp115, _6
// code.c:12:         strncpy(temp, b + i, len_b - i);
	ldr	w1, [sp, 52]	// tmp116, len_b
	ldr	w0, [sp, 44]	// tmp117, i
	sub	w0, w1, w0	// _8, tmp116, tmp117
// code.c:12:         strncpy(temp, b + i, len_b - i);
	sxtw	x0, w0	// _9, _8
	mov	x2, x0	//, _9
	mov	x1, x3	//, _7
	ldr	x0, [sp, 56]	//, temp
	bl	strncpy		//
// code.c:13:         strncpy(temp + len_b - i, b, i);
	ldrsw	x1, [sp, 52]	// _10, len_b
	ldrsw	x0, [sp, 44]	// _11, i
	sub	x0, x1, x0	// _12, _10, _11
// code.c:13:         strncpy(temp + len_b - i, b, i);
	ldr	x1, [sp, 56]	// tmp118, temp
	add	x0, x1, x0	// _13, tmp118, _12
	ldrsw	x1, [sp, 44]	// _14, i
	mov	x2, x1	//, _14
	ldr	x1, [sp, 16]	//, b
	bl	strncpy		//
// code.c:14:         temp[len_b] = '\0';
	ldrsw	x0, [sp, 52]	// _15, len_b
	ldr	x1, [sp, 56]	// tmp119, temp
	add	x0, x1, x0	// _16, tmp119, _15
// code.c:14:         temp[len_b] = '\0';
	strb	wzr, [x0]	//, *_16
// code.c:15:         if (strstr(a, temp)) {
	ldr	x1, [sp, 56]	//, temp
	ldr	x0, [sp, 24]	//, a
	bl	strstr		//
// code.c:15:         if (strstr(a, temp)) {
	cmp	x0, 0	// _17,
	beq	.L3		//,
// code.c:16:             free(temp);
	ldr	x0, [sp, 56]	//, temp
	bl	free		//
// code.c:17:             return true;
	mov	w0, 1	// _19,
	b	.L4		//
.L3:
// code.c:11:     for (int i = 0; i < len_b; i++) {
	ldr	w0, [sp, 44]	// tmp121, i
	add	w0, w0, 1	// tmp120, tmp121,
	str	w0, [sp, 44]	// tmp120, i
.L2:
// code.c:11:     for (int i = 0; i < len_b; i++) {
	ldr	w1, [sp, 44]	// tmp122, i
	ldr	w0, [sp, 52]	// tmp123, len_b
	cmp	w1, w0	// tmp122, tmp123
	blt	.L5		//,
// code.c:21:     free(temp);
	ldr	x0, [sp, 56]	//, temp
	bl	free		//
// code.c:22:     return false;
	mov	w0, 0	// _19,
.L4:
// code.c:23: }
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
