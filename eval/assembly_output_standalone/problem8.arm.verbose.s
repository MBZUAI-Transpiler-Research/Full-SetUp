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
	str	x0, [sp, 40]	// strings, strings
	str	w1, [sp, 36]	// size, size
	str	x2, [sp, 24]	// substring, substring
	str	x3, [sp, 16]	// out_size, out_size
// eval/problem8//code.c:6:     char **out = NULL;
	str	xzr, [sp, 56]	//, out
// eval/problem8//code.c:7:     int count = 0;
	str	wzr, [sp, 48]	//, count
// eval/problem8//code.c:8:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 52]	//, i
// eval/problem8//code.c:8:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L4:
// eval/problem8//code.c:9:         if (strstr(strings[i], substring) != NULL) {
	ldrsw	x0, [sp, 52]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 40]	// tmp109, strings
	add	x0, x1, x0	// _3, tmp109, _2
// eval/problem8//code.c:9:         if (strstr(strings[i], substring) != NULL) {
	ldr	x0, [x0]	// _4, *_3
	ldr	x1, [sp, 24]	//, substring
	bl	strstr		//
// eval/problem8//code.c:9:         if (strstr(strings[i], substring) != NULL) {
	cmp	x0, 0	// _5,
	beq	.L3		//,
// eval/problem8//code.c:10:             out = (char **)realloc(out, sizeof(char *) * (count + 1));
	ldr	w0, [sp, 48]	// tmp110, count
	add	w0, w0, 1	// _6, tmp110,
	sxtw	x0, w0	// _7, _6
// eval/problem8//code.c:10:             out = (char **)realloc(out, sizeof(char *) * (count + 1));
	lsl	x0, x0, 3	// _8, _7,
	mov	x1, x0	//, _8
	ldr	x0, [sp, 56]	//, out
	bl	realloc		//
	str	x0, [sp, 56]	//, out
// eval/problem8//code.c:11:             out[count] = strings[i];
	ldrsw	x0, [sp, 52]	// _9, i
	lsl	x0, x0, 3	// _10, _9,
	ldr	x1, [sp, 40]	// tmp111, strings
	add	x1, x1, x0	// _11, tmp111, _10
// eval/problem8//code.c:11:             out[count] = strings[i];
	ldrsw	x0, [sp, 48]	// _12, count
	lsl	x0, x0, 3	// _13, _12,
	ldr	x2, [sp, 56]	// tmp112, out
	add	x0, x2, x0	// _14, tmp112, _13
// eval/problem8//code.c:11:             out[count] = strings[i];
	ldr	x1, [x1]	// _15, *_11
// eval/problem8//code.c:11:             out[count] = strings[i];
	str	x1, [x0]	// _15, *_14
// eval/problem8//code.c:12:             count++;
	ldr	w0, [sp, 48]	// tmp114, count
	add	w0, w0, 1	// tmp113, tmp114,
	str	w0, [sp, 48]	// tmp113, count
.L3:
// eval/problem8//code.c:8:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 52]	// tmp116, i
	add	w0, w0, 1	// tmp115, tmp116,
	str	w0, [sp, 52]	// tmp115, i
.L2:
// eval/problem8//code.c:8:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 52]	// tmp117, i
	ldr	w0, [sp, 36]	// tmp118, size
	cmp	w1, w0	// tmp117, tmp118
	blt	.L4		//,
// eval/problem8//code.c:15:     *out_size = count;
	ldr	x0, [sp, 16]	// tmp119, out_size
	ldr	w1, [sp, 48]	// tmp120, count
	str	w1, [x0]	// tmp120, *out_size_28(D)
// eval/problem8//code.c:16:     return out;
	ldr	x0, [sp, 56]	// _30, out
// eval/problem8//code.c:17: }
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
