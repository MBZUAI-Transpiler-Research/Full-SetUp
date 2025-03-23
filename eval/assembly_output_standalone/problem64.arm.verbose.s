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
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -448]!	//,,,
	.cfi_def_cfa_offset 448
	.cfi_offset 29, -448
	.cfi_offset 30, -440
	mov	x29, sp	//,
	str	w0, [sp, 28]	// n, n
// eval/problem64//code.c:3: int func0(int n) {
	adrp	x0, :got:__stack_chk_guard	// tmp103,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp102, tmp103,
	ldr	x1, [x0]	// tmp134,
	str	x1, [sp, 440]	// tmp134, D.4258
	mov	x1, 0	// tmp134
// eval/problem64//code.c:4:     int ff[100] = {0};
	add	x0, sp, 40	// tmp104,,
	mov	x1, 400	// tmp105,
	mov	x2, x1	//, tmp105
	mov	w1, 0	//,
	bl	memset		//
// eval/problem64//code.c:5:     ff[1] = 0;
	str	wzr, [sp, 44]	//, ff[1]
// eval/problem64//code.c:6:     ff[2] = 1;
	mov	w0, 1	// tmp107,
	str	w0, [sp, 48]	// tmp107, ff[2]
// eval/problem64//code.c:7:     for (int i = 3; i <= n; ++i) {
	mov	w0, 3	// tmp108,
	str	w0, [sp, 36]	// tmp108, i
// eval/problem64//code.c:7:     for (int i = 3; i <= n; ++i) {
	b	.L2		//
.L3:
// eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	ldr	w0, [sp, 36]	// tmp109, i
	sub	w0, w0, #1	// _1, tmp109,
// eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	sxtw	x0, w0	// tmp110, _1
	lsl	x0, x0, 2	// tmp111, tmp110,
	add	x1, sp, 40	// tmp112,,
	ldr	w1, [x1, x0]	// _2, ff[_1]
// eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	ldr	w0, [sp, 36]	// tmp113, i
	sub	w0, w0, #2	// _3, tmp113,
// eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	sxtw	x0, w0	// tmp114, _3
	lsl	x0, x0, 2	// tmp115, tmp114,
	add	x2, sp, 40	// tmp116,,
	ldr	w0, [x2, x0]	// _4, ff[_3]
// eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	add	w1, w1, w0	// _5, _2, _4
// eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	ldr	w0, [sp, 36]	// tmp117, i
	sub	w0, w0, #3	// _6, tmp117,
// eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	sxtw	x0, w0	// tmp118, _6
	lsl	x0, x0, 2	// tmp119, tmp118,
	add	x2, sp, 40	// tmp120,,
	ldr	w0, [x2, x0]	// _7, ff[_6]
// eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	add	w2, w1, w0	// _8, _5, _7
// eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	ldrsw	x0, [sp, 36]	// tmp121, i
	lsl	x0, x0, 2	// tmp122, tmp121,
	add	x1, sp, 40	// tmp123,,
	str	w2, [x1, x0]	// _8, ff[i_9]
// eval/problem64//code.c:7:     for (int i = 3; i <= n; ++i) {
	ldr	w0, [sp, 36]	// tmp125, i
	add	w0, w0, 1	// tmp124, tmp125,
	str	w0, [sp, 36]	// tmp124, i
.L2:
// eval/problem64//code.c:7:     for (int i = 3; i <= n; ++i) {
	ldr	w1, [sp, 36]	// tmp126, i
	ldr	w0, [sp, 28]	// tmp127, n
	cmp	w1, w0	// tmp126, tmp127
	ble	.L3		//,
// eval/problem64//code.c:10:     return ff[n];
	ldrsw	x0, [sp, 28]	// tmp128, n
	lsl	x0, x0, 2	// tmp129, tmp128,
	add	x1, sp, 40	// tmp130,,
	ldr	w0, [x1, x0]	// _17, ff[n_16(D)]
	mov	w1, w0	// <retval>, _17
// eval/problem64//code.c:11: }
	adrp	x0, :got:__stack_chk_guard	// tmp133,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp132, tmp133,
	ldr	x3, [sp, 440]	// tmp135, D.4258
	ldr	x2, [x0]	// tmp136,
	subs	x3, x3, x2	// tmp135, tmp136
	mov	x2, 0	// tmp136
	beq	.L5		//,
	bl	__stack_chk_fail		//
.L5:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 448	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
