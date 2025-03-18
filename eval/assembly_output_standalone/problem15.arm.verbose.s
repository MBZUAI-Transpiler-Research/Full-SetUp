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
	stp	x29, x30, [sp, -80]!	//,,,
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -64
	str	x0, [sp, 40]	// str, str
	str	x1, [sp, 32]	// count, count
// eval/problem15//code.c:6:     int len = strlen(str);
	ldr	x0, [sp, 40]	//, str
	bl	strlen		//
// eval/problem15//code.c:6:     int len = strlen(str);
	str	w0, [sp, 52]	// tmp116, len
// eval/problem15//code.c:7:     char **out = malloc(len * sizeof(char *));
	ldrsw	x0, [sp, 52]	// _2, len
	lsl	x0, x0, 3	// _3, _2,
	bl	malloc		//
	str	x0, [sp, 64]	// tmp117, out
// eval/problem15//code.c:9:     char *current = malloc(len + 1);
	ldr	w0, [sp, 52]	// tmp118, len
	add	w0, w0, 1	// _4, tmp118,
// eval/problem15//code.c:9:     char *current = malloc(len + 1);
	sxtw	x0, w0	// _5, _4
	bl	malloc		//
	str	x0, [sp, 56]	// tmp119, current
// eval/problem15//code.c:10:     current[0] = '\0';
	ldr	x0, [sp, 56]	// tmp120, current
	strb	wzr, [x0]	//, *current_32
// eval/problem15//code.c:12:     for (int i = 0; i < len; ++i) {
	str	wzr, [sp, 48]	//, i
// eval/problem15//code.c:12:     for (int i = 0; i < len; ++i) {
	b	.L2		//
.L3:
// eval/problem15//code.c:13:         size_t current_len = strlen(current);
	ldr	x0, [sp, 56]	//, current
	bl	strlen		//
	str	x0, [sp, 72]	//, current_len
// eval/problem15//code.c:14:         current = realloc(current, current_len + 2);
	ldr	x0, [sp, 72]	// tmp121, current_len
	add	x0, x0, 2	// _6, tmp121,
	mov	x1, x0	//, _6
	ldr	x0, [sp, 56]	//, current
	bl	realloc		//
	str	x0, [sp, 56]	//, current
// eval/problem15//code.c:15:         current[current_len] = str[i];
	ldrsw	x0, [sp, 48]	// _7, i
	ldr	x1, [sp, 40]	// tmp122, str
	add	x1, x1, x0	// _8, tmp122, _7
// eval/problem15//code.c:15:         current[current_len] = str[i];
	ldr	x2, [sp, 56]	// tmp123, current
	ldr	x0, [sp, 72]	// tmp124, current_len
	add	x0, x2, x0	// _9, tmp123, tmp124
// eval/problem15//code.c:15:         current[current_len] = str[i];
	ldrb	w1, [x1]	// _10, *_8
// eval/problem15//code.c:15:         current[current_len] = str[i];
	strb	w1, [x0]	// tmp125, *_9
// eval/problem15//code.c:16:         current[current_len + 1] = '\0';
	ldr	x0, [sp, 72]	// tmp126, current_len
	add	x0, x0, 1	// _11, tmp126,
	ldr	x1, [sp, 56]	// tmp127, current
	add	x0, x1, x0	// _12, tmp127, _11
// eval/problem15//code.c:16:         current[current_len + 1] = '\0';
	strb	wzr, [x0]	//, *_12
// eval/problem15//code.c:18:         out[i] = malloc(strlen(current) + 1);
	ldr	x0, [sp, 56]	//, current
	bl	strlen		//
// eval/problem15//code.c:18:         out[i] = malloc(strlen(current) + 1);
	add	x2, x0, 1	// _14, _13,
// eval/problem15//code.c:18:         out[i] = malloc(strlen(current) + 1);
	ldrsw	x0, [sp, 48]	// _15, i
	lsl	x0, x0, 3	// _16, _15,
	ldr	x1, [sp, 64]	// tmp128, out
	add	x19, x1, x0	// _17, tmp128, _16
// eval/problem15//code.c:18:         out[i] = malloc(strlen(current) + 1);
	mov	x0, x2	//, _14
	bl	malloc		//
// eval/problem15//code.c:18:         out[i] = malloc(strlen(current) + 1);
	str	x0, [x19]	// _18, *_17
// eval/problem15//code.c:19:         strcpy(out[i], current);
	ldrsw	x0, [sp, 48]	// _19, i
	lsl	x0, x0, 3	// _20, _19,
	ldr	x1, [sp, 64]	// tmp130, out
	add	x0, x1, x0	// _21, tmp130, _20
// eval/problem15//code.c:19:         strcpy(out[i], current);
	ldr	x0, [x0]	// _22, *_21
	ldr	x1, [sp, 56]	//, current
	bl	strcpy		//
// eval/problem15//code.c:12:     for (int i = 0; i < len; ++i) {
	ldr	w0, [sp, 48]	// tmp132, i
	add	w0, w0, 1	// tmp131, tmp132,
	str	w0, [sp, 48]	// tmp131, i
.L2:
// eval/problem15//code.c:12:     for (int i = 0; i < len; ++i) {
	ldr	w1, [sp, 48]	// tmp133, i
	ldr	w0, [sp, 52]	// tmp134, len
	cmp	w1, w0	// tmp133, tmp134
	blt	.L3		//,
// eval/problem15//code.c:21:     free(current);
	ldr	x0, [sp, 56]	//, current
	bl	free		//
// eval/problem15//code.c:23:     *count = len;
	ldr	x0, [sp, 32]	// tmp135, count
	ldr	w1, [sp, 52]	// tmp136, len
	str	w1, [x0]	// tmp136, *count_36(D)
// eval/problem15//code.c:24:     return out;
	ldr	x0, [sp, 64]	// _38, out
// eval/problem15//code.c:25: }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 80	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
