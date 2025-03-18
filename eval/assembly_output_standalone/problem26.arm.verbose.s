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
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	w0, [sp, 28]	// n, n
	str	x1, [sp, 16]	// size, size
// eval/problem26//code.c:5:     int* out = malloc(sizeof(int) * 64);
	mov	x0, 256	//,
	bl	malloc		//
	str	x0, [sp, 40]	// tmp106, out
// eval/problem26//code.c:6:     *size = 0;
	ldr	x0, [sp, 16]	// tmp107, size
	str	wzr, [x0]	//, *size_24(D)
// eval/problem26//code.c:7:     for (int i = 2; i * i <= n; i++) {
	mov	w0, 2	// tmp108,
	str	w0, [sp, 36]	// tmp108, i
// eval/problem26//code.c:7:     for (int i = 2; i * i <= n; i++) {
	b	.L2		//
.L4:
// eval/problem26//code.c:9:             n = n / i;
	ldr	w1, [sp, 28]	// tmp111, n
	ldr	w0, [sp, 36]	// tmp112, i
	sdiv	w0, w1, w0	// tmp110, tmp111, tmp112
	str	w0, [sp, 28]	// tmp110, n
// eval/problem26//code.c:10:             out[(*size)++] = i;
	ldr	x0, [sp, 16]	// tmp113, size
	ldr	w0, [x0]	// _1, *size_24(D)
// eval/problem26//code.c:10:             out[(*size)++] = i;
	add	w2, w0, 1	// _3, _1,
	ldr	x1, [sp, 16]	// tmp114, size
	str	w2, [x1]	// _3, *size_24(D)
	sxtw	x0, w0	// _4, _1
// eval/problem26//code.c:10:             out[(*size)++] = i;
	lsl	x0, x0, 2	// _5, _4,
	ldr	x1, [sp, 40]	// tmp115, out
	add	x0, x1, x0	// _6, tmp115, _5
// eval/problem26//code.c:10:             out[(*size)++] = i;
	ldr	w1, [sp, 36]	// tmp116, i
	str	w1, [x0]	// tmp116, *_6
.L3:
// eval/problem26//code.c:8:         while (n % i == 0) {
	ldr	w0, [sp, 28]	// tmp117, n
	ldr	w1, [sp, 36]	// tmp130, i
	sdiv	w2, w0, w1	// tmp129, tmp117, tmp130
	ldr	w1, [sp, 36]	// tmp132, i
	mul	w1, w2, w1	// tmp131, tmp129, tmp132
	sub	w0, w0, w1	// _7, tmp117, tmp131
// eval/problem26//code.c:8:         while (n % i == 0) {
	cmp	w0, 0	// _7,
	beq	.L4		//,
// eval/problem26//code.c:7:     for (int i = 2; i * i <= n; i++) {
	ldr	w0, [sp, 36]	// tmp134, i
	add	w0, w0, 1	// tmp133, tmp134,
	str	w0, [sp, 36]	// tmp133, i
.L2:
// eval/problem26//code.c:7:     for (int i = 2; i * i <= n; i++) {
	ldr	w0, [sp, 36]	// tmp135, i
	mul	w0, w0, w0	// _8, tmp135, tmp135
// eval/problem26//code.c:7:     for (int i = 2; i * i <= n; i++) {
	ldr	w1, [sp, 28]	// tmp136, n
	cmp	w1, w0	// tmp136, _8
	bge	.L3		//,
// eval/problem26//code.c:13:     if (n > 1) {
	ldr	w0, [sp, 28]	// tmp137, n
	cmp	w0, 1	// tmp137,
	ble	.L6		//,
// eval/problem26//code.c:14:         out[(*size)++] = n;
	ldr	x0, [sp, 16]	// tmp138, size
	ldr	w0, [x0]	// _9, *size_24(D)
// eval/problem26//code.c:14:         out[(*size)++] = n;
	add	w2, w0, 1	// _11, _9,
	ldr	x1, [sp, 16]	// tmp139, size
	str	w2, [x1]	// _11, *size_24(D)
	sxtw	x0, w0	// _12, _9
// eval/problem26//code.c:14:         out[(*size)++] = n;
	lsl	x0, x0, 2	// _13, _12,
	ldr	x1, [sp, 40]	// tmp140, out
	add	x0, x1, x0	// _14, tmp140, _13
// eval/problem26//code.c:14:         out[(*size)++] = n;
	ldr	w1, [sp, 28]	// tmp141, n
	str	w1, [x0]	// tmp141, *_14
.L6:
// eval/problem26//code.c:16:     return out;
	ldr	x0, [sp, 40]	// _30, out
// eval/problem26//code.c:17: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
