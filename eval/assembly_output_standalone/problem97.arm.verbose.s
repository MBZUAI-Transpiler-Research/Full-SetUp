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
	str	w0, [sp, 28]	// n, n
	str	x1, [sp, 16]	// count, count
// eval/problem97//code.c:5:     int *out = malloc(n * sizeof(int));
	ldrsw	x0, [sp, 28]	// _1, n
	lsl	x0, x0, 2	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 56]	// tmp108, out
// eval/problem97//code.c:6:     *count = 0;
	ldr	x0, [sp, 16]	// tmp109, count
	str	wzr, [x0]	//, *count_24(D)
// eval/problem97//code.c:9:     for (i = 2; i < n; i++) {
	mov	w0, 2	// tmp110,
	str	w0, [sp, 40]	// tmp110, i
// eval/problem97//code.c:9:     for (i = 2; i < n; i++) {
	b	.L2		//
.L9:
// eval/problem97//code.c:10:         isp = 1;
	mov	w0, 1	// tmp111,
	str	w0, [sp, 48]	// tmp111, isp
// eval/problem97//code.c:11:         for (j = 0; j < *count; j++) {
	str	wzr, [sp, 44]	//, j
// eval/problem97//code.c:11:         for (j = 0; j < *count; j++) {
	b	.L3		//
.L7:
// eval/problem97//code.c:12:             k = out[j];
	ldrsw	x0, [sp, 44]	// _3, j
	lsl	x0, x0, 2	// _4, _3,
	ldr	x1, [sp, 56]	// tmp112, out
	add	x0, x1, x0	// _5, tmp112, _4
// eval/problem97//code.c:12:             k = out[j];
	ldr	w0, [x0]	// tmp113, *_5
	str	w0, [sp, 52]	// tmp113, k
// eval/problem97//code.c:13:             if (k * k > i) break;
	ldr	w0, [sp, 52]	// tmp114, k
	mul	w0, w0, w0	// _6, tmp114, tmp114
// eval/problem97//code.c:13:             if (k * k > i) break;
	ldr	w1, [sp, 40]	// tmp115, i
	cmp	w1, w0	// tmp115, _6
	blt	.L11		//,
// eval/problem97//code.c:14:             if (i % k == 0) {
	ldr	w0, [sp, 40]	// tmp116, i
	ldr	w1, [sp, 52]	// tmp129, k
	sdiv	w2, w0, w1	// tmp128, tmp116, tmp129
	ldr	w1, [sp, 52]	// tmp131, k
	mul	w1, w2, w1	// tmp130, tmp128, tmp131
	sub	w0, w0, w1	// _7, tmp116, tmp130
// eval/problem97//code.c:14:             if (i % k == 0) {
	cmp	w0, 0	// _7,
	bne	.L6		//,
// eval/problem97//code.c:15:                 isp = 0;
	str	wzr, [sp, 48]	//, isp
// eval/problem97//code.c:16:                 break;
	b	.L5		//
.L6:
// eval/problem97//code.c:11:         for (j = 0; j < *count; j++) {
	ldr	w0, [sp, 44]	// tmp133, j
	add	w0, w0, 1	// tmp132, tmp133,
	str	w0, [sp, 44]	// tmp132, j
.L3:
// eval/problem97//code.c:11:         for (j = 0; j < *count; j++) {
	ldr	x0, [sp, 16]	// tmp134, count
	ldr	w0, [x0]	// _8, *count_24(D)
// eval/problem97//code.c:11:         for (j = 0; j < *count; j++) {
	ldr	w1, [sp, 44]	// tmp135, j
	cmp	w1, w0	// tmp135, _8
	blt	.L7		//,
	b	.L5		//
.L11:
// eval/problem97//code.c:13:             if (k * k > i) break;
	nop	
.L5:
// eval/problem97//code.c:19:         if (isp) {
	ldr	w0, [sp, 48]	// tmp136, isp
	cmp	w0, 0	// tmp136,
	beq	.L8		//,
// eval/problem97//code.c:20:             out[*count] = i;
	ldr	x0, [sp, 16]	// tmp137, count
	ldr	w0, [x0]	// _9, *count_24(D)
	sxtw	x0, w0	// _10, _9
// eval/problem97//code.c:20:             out[*count] = i;
	lsl	x0, x0, 2	// _11, _10,
	ldr	x1, [sp, 56]	// tmp138, out
	add	x0, x1, x0	// _12, tmp138, _11
// eval/problem97//code.c:20:             out[*count] = i;
	ldr	w1, [sp, 40]	// tmp139, i
	str	w1, [x0]	// tmp139, *_12
// eval/problem97//code.c:21:             (*count)++;
	ldr	x0, [sp, 16]	// tmp140, count
	ldr	w0, [x0]	// _13, *count_24(D)
// eval/problem97//code.c:21:             (*count)++;
	add	w1, w0, 1	// _14, _13,
	ldr	x0, [sp, 16]	// tmp141, count
	str	w1, [x0]	// _14, *count_24(D)
.L8:
// eval/problem97//code.c:9:     for (i = 2; i < n; i++) {
	ldr	w0, [sp, 40]	// tmp143, i
	add	w0, w0, 1	// tmp142, tmp143,
	str	w0, [sp, 40]	// tmp142, i
.L2:
// eval/problem97//code.c:9:     for (i = 2; i < n; i++) {
	ldr	w1, [sp, 40]	// tmp144, i
	ldr	w0, [sp, 28]	// tmp145, n
	cmp	w1, w0	// tmp144, tmp145
	blt	.L9		//,
// eval/problem97//code.c:24:     return out;
	ldr	x0, [sp, 56]	// _27, out
// eval/problem97//code.c:25: }
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
