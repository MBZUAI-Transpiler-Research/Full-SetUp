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
// eval/problem47//code.c:3: int func0(int n) {
	adrp	x0, :got:__stack_chk_guard	// tmp106,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp105, tmp106,
	ldr	x1, [x0]	// tmp138,
	str	x1, [sp, 440]	// tmp138, D.4258
	mov	x1, 0	// tmp138
// eval/problem47//code.c:5:     f[0] = 0;
	str	wzr, [sp, 40]	//, f[0]
// eval/problem47//code.c:6:     f[1] = 0;
	str	wzr, [sp, 44]	//, f[1]
// eval/problem47//code.c:7:     f[2] = 2;
	mov	w0, 2	// tmp107,
	str	w0, [sp, 48]	// tmp107, f[2]
// eval/problem47//code.c:8:     f[3] = 0;
	str	wzr, [sp, 52]	//, f[3]
// eval/problem47//code.c:9:     for (int i = 4; i <= n; i++) {
	mov	w0, 4	// tmp108,
	str	w0, [sp, 36]	// tmp108, i
// eval/problem47//code.c:9:     for (int i = 4; i <= n; i++) {
	b	.L2		//
.L3:
// eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	ldr	w0, [sp, 36]	// tmp109, i
	sub	w0, w0, #1	// _1, tmp109,
// eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	sxtw	x0, w0	// tmp110, _1
	lsl	x0, x0, 2	// tmp111, tmp110,
	add	x1, sp, 40	// tmp112,,
	ldr	w1, [x1, x0]	// _2, f[_1]
// eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	ldr	w0, [sp, 36]	// tmp113, i
	sub	w0, w0, #2	// _3, tmp113,
// eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	sxtw	x0, w0	// tmp114, _3
	lsl	x0, x0, 2	// tmp115, tmp114,
	add	x2, sp, 40	// tmp116,,
	ldr	w0, [x2, x0]	// _4, f[_3]
// eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	add	w1, w1, w0	// _5, _2, _4
// eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	ldr	w0, [sp, 36]	// tmp117, i
	sub	w0, w0, #3	// _6, tmp117,
// eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	sxtw	x0, w0	// tmp118, _6
	lsl	x0, x0, 2	// tmp119, tmp118,
	add	x2, sp, 40	// tmp120,,
	ldr	w0, [x2, x0]	// _7, f[_6]
// eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	add	w1, w1, w0	// _8, _5, _7
// eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	ldr	w0, [sp, 36]	// tmp121, i
	sub	w0, w0, #4	// _9, tmp121,
// eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	sxtw	x0, w0	// tmp122, _9
	lsl	x0, x0, 2	// tmp123, tmp122,
	add	x2, sp, 40	// tmp124,,
	ldr	w0, [x2, x0]	// _10, f[_9]
// eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	add	w2, w1, w0	// _11, _8, _10
// eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	ldrsw	x0, [sp, 36]	// tmp125, i
	lsl	x0, x0, 2	// tmp126, tmp125,
	add	x1, sp, 40	// tmp127,,
	str	w2, [x1, x0]	// _11, f[i_12]
// eval/problem47//code.c:9:     for (int i = 4; i <= n; i++) {
	ldr	w0, [sp, 36]	// tmp129, i
	add	w0, w0, 1	// tmp128, tmp129,
	str	w0, [sp, 36]	// tmp128, i
.L2:
// eval/problem47//code.c:9:     for (int i = 4; i <= n; i++) {
	ldr	w1, [sp, 36]	// tmp130, i
	ldr	w0, [sp, 28]	// tmp131, n
	cmp	w1, w0	// tmp130, tmp131
	ble	.L3		//,
// eval/problem47//code.c:12:     return f[n];
	ldrsw	x0, [sp, 28]	// tmp132, n
	lsl	x0, x0, 2	// tmp133, tmp132,
	add	x1, sp, 40	// tmp134,,
	ldr	w0, [x1, x0]	// _21, f[n_20(D)]
	mov	w1, w0	// <retval>, _21
// eval/problem47//code.c:13: }
	adrp	x0, :got:__stack_chk_guard	// tmp137,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp136, tmp137,
	ldr	x3, [sp, 440]	// tmp139, D.4258
	ldr	x2, [x0]	// tmp140,
	subs	x3, x3, x2	// tmp139, tmp140
	mov	x2, 0	// tmp140
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
