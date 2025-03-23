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
	str	w1, [sp, 36]	// count, count
	str	x2, [sp, 24]	// prefix, prefix
	str	x3, [sp, 16]	// out, out
// eval/problem30//code.c:6:     int prefix_length = strlen(prefix);
	ldr	x0, [sp, 24]	//, prefix
	bl	strlen		//
// eval/problem30//code.c:6:     int prefix_length = strlen(prefix);
	str	w0, [sp, 60]	// tmp113, prefix_length
// eval/problem30//code.c:7:     *out = (char**)malloc(count * sizeof(char*));
	ldrsw	x0, [sp, 36]	// _2, count
	lsl	x0, x0, 3	// _3, _2,
	bl	malloc		//
	mov	x1, x0	// _4, tmp114
// eval/problem30//code.c:7:     *out = (char**)malloc(count * sizeof(char*));
	ldr	x0, [sp, 16]	// tmp115, out
	str	x1, [x0]	// _4, *out_30(D)
// eval/problem30//code.c:8:     int out_count = 0;
	str	wzr, [sp, 52]	//, out_count
// eval/problem30//code.c:10:     for (int i = 0; i < count; i++) {
	str	wzr, [sp, 56]	//, i
// eval/problem30//code.c:10:     for (int i = 0; i < count; i++) {
	b	.L2		//
.L4:
// eval/problem30//code.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	ldrsw	x0, [sp, 56]	// _5, i
	lsl	x0, x0, 3	// _6, _5,
	ldr	x1, [sp, 40]	// tmp116, strings
	add	x0, x1, x0	// _7, tmp116, _6
// eval/problem30//code.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	ldr	x0, [x0]	// _8, *_7
	ldrsw	x1, [sp, 60]	// _9, prefix_length
	mov	x2, x1	//, _9
	ldr	x1, [sp, 24]	//, prefix
	bl	strncmp		//
// eval/problem30//code.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	cmp	w0, 0	// _10,
	bne	.L3		//,
// eval/problem30//code.c:12:             (*out)[out_count++] = strings[i];
	ldrsw	x0, [sp, 56]	// _11, i
	lsl	x0, x0, 3	// _12, _11,
	ldr	x1, [sp, 40]	// tmp117, strings
	add	x1, x1, x0	// _13, tmp117, _12
// eval/problem30//code.c:12:             (*out)[out_count++] = strings[i];
	ldr	x0, [sp, 16]	// tmp118, out
	ldr	x2, [x0]	// _14, *out_30(D)
// eval/problem30//code.c:12:             (*out)[out_count++] = strings[i];
	ldr	w0, [sp, 52]	// out_count.0_15, out_count
	add	w3, w0, 1	// tmp119, out_count.0_15,
	str	w3, [sp, 52]	// tmp119, out_count
	sxtw	x0, w0	// _16, out_count.0_15
// eval/problem30//code.c:12:             (*out)[out_count++] = strings[i];
	lsl	x0, x0, 3	// _17, _16,
	add	x0, x2, x0	// _18, _14, _17
// eval/problem30//code.c:12:             (*out)[out_count++] = strings[i];
	ldr	x1, [x1]	// _19, *_13
// eval/problem30//code.c:12:             (*out)[out_count++] = strings[i];
	str	x1, [x0]	// _19, *_18
.L3:
// eval/problem30//code.c:10:     for (int i = 0; i < count; i++) {
	ldr	w0, [sp, 56]	// tmp121, i
	add	w0, w0, 1	// tmp120, tmp121,
	str	w0, [sp, 56]	// tmp120, i
.L2:
// eval/problem30//code.c:10:     for (int i = 0; i < count; i++) {
	ldr	w1, [sp, 56]	// tmp122, i
	ldr	w0, [sp, 36]	// tmp123, count
	cmp	w1, w0	// tmp122, tmp123
	blt	.L4		//,
// eval/problem30//code.c:16:     return out_count;
	ldr	w0, [sp, 52]	// _34, out_count
// eval/problem30//code.c:17: }
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
