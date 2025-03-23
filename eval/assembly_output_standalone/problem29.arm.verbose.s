	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	str	x0, [sp, 24]	// strings, strings
	str	w1, [sp, 20]	// count, count
// eval/problem29//code.c:6:     int length = 0;
	str	wzr, [sp, 44]	//, length
// eval/problem29//code.c:7:     for (int i = 0; i < count; i++) {
	str	wzr, [sp, 48]	//, i
// eval/problem29//code.c:7:     for (int i = 0; i < count; i++) {
	b	.L2		//
.L3:
// eval/problem29//code.c:8:         length += strlen(strings[i]);
	ldrsw	x0, [sp, 48]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 24]	// tmp108, strings
	add	x0, x1, x0	// _3, tmp108, _2
// eval/problem29//code.c:8:         length += strlen(strings[i]);
	ldr	x0, [x0]	// _4, *_3
	bl	strlen		//
// eval/problem29//code.c:8:         length += strlen(strings[i]);
	mov	w1, w0	// _6, _5
	ldr	w0, [sp, 44]	// length.0_7, length
	add	w0, w1, w0	// _8, _6, length.0_7
	str	w0, [sp, 44]	// _8, length
// eval/problem29//code.c:7:     for (int i = 0; i < count; i++) {
	ldr	w0, [sp, 48]	// tmp110, i
	add	w0, w0, 1	// tmp109, tmp110,
	str	w0, [sp, 48]	// tmp109, i
.L2:
// eval/problem29//code.c:7:     for (int i = 0; i < count; i++) {
	ldr	w1, [sp, 48]	// tmp111, i
	ldr	w0, [sp, 20]	// tmp112, count
	cmp	w1, w0	// tmp111, tmp112
	blt	.L3		//,
// eval/problem29//code.c:11:     char* out = (char*)malloc(length + 1);
	ldr	w0, [sp, 44]	// tmp113, length
	add	w0, w0, 1	// _9, tmp113,
// eval/problem29//code.c:11:     char* out = (char*)malloc(length + 1);
	sxtw	x0, w0	// _10, _9
	bl	malloc		//
	str	x0, [sp, 56]	// tmp114, out
// eval/problem29//code.c:12:     if (!out) {
	ldr	x0, [sp, 56]	// tmp115, out
	cmp	x0, 0	// tmp115,
	bne	.L4		//,
// eval/problem29//code.c:13:         return NULL; 
	mov	x0, 0	// _18,
	b	.L5		//
.L4:
// eval/problem29//code.c:16:     out[0] = '\0';
	ldr	x0, [sp, 56]	// tmp116, out
	strb	wzr, [x0]	//, *out_26
// eval/problem29//code.c:18:     for (int i = 0; i < count; i++) {
	str	wzr, [sp, 52]	//, i
// eval/problem29//code.c:18:     for (int i = 0; i < count; i++) {
	b	.L6		//
.L7:
// eval/problem29//code.c:19:         strcat(out, strings[i]);
	ldrsw	x0, [sp, 52]	// _11, i
	lsl	x0, x0, 3	// _12, _11,
	ldr	x1, [sp, 24]	// tmp117, strings
	add	x0, x1, x0	// _13, tmp117, _12
// eval/problem29//code.c:19:         strcat(out, strings[i]);
	ldr	x0, [x0]	// _14, *_13
	mov	x1, x0	//, _14
	ldr	x0, [sp, 56]	//, out
	bl	strcat		//
// eval/problem29//code.c:18:     for (int i = 0; i < count; i++) {
	ldr	w0, [sp, 52]	// tmp119, i
	add	w0, w0, 1	// tmp118, tmp119,
	str	w0, [sp, 52]	// tmp118, i
.L6:
// eval/problem29//code.c:18:     for (int i = 0; i < count; i++) {
	ldr	w1, [sp, 52]	// tmp120, i
	ldr	w0, [sp, 20]	// tmp121, count
	cmp	w1, w0	// tmp120, tmp121
	blt	.L7		//,
// eval/problem29//code.c:22:     return out;
	ldr	x0, [sp, 56]	// _18, out
.L5:
// eval/problem29//code.c:23: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
