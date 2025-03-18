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
.LFB0:
	.cfi_startproc
	sub	sp, sp, #448	//,,
	.cfi_def_cfa_offset 448
	stp	x29, x30, [sp, 432]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 432	//,,
	str	w0, [sp, 12]	// n, n
// eval/problem47//code.c:3: int func0(int n) {
	adrp	x0, :got:__stack_chk_guard	// tmp105,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp105,
	ldr	x1, [x0]	// tmp136,
	str	x1, [sp, 424]	// tmp136, D.4840
	mov	x1, 0	// tmp136
// eval/problem47//code.c:5:     f[0] = 0;
	str	wzr, [sp, 24]	//, f[0]
// eval/problem47//code.c:6:     f[1] = 0;
	str	wzr, [sp, 28]	//, f[1]
// eval/problem47//code.c:7:     f[2] = 2;
	mov	w0, 2	// tmp106,
	str	w0, [sp, 32]	// tmp106, f[2]
// eval/problem47//code.c:8:     f[3] = 0;
	str	wzr, [sp, 36]	//, f[3]
// eval/problem47//code.c:9:     for (int i = 4; i <= n; i++) {
	mov	w0, 4	// tmp107,
	str	w0, [sp, 20]	// tmp107, i
// eval/problem47//code.c:9:     for (int i = 4; i <= n; i++) {
	b	.L2		//
.L3:
// eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	ldr	w0, [sp, 20]	// tmp108, i
	sub	w0, w0, #1	// _1, tmp108,
// eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	sxtw	x0, w0	// tmp109, _1
	lsl	x0, x0, 2	// tmp110, tmp109,
	add	x1, sp, 24	// tmp111,,
	ldr	w1, [x1, x0]	// _2, f[_1]
// eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	ldr	w0, [sp, 20]	// tmp112, i
	sub	w0, w0, #2	// _3, tmp112,
// eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	sxtw	x0, w0	// tmp113, _3
	lsl	x0, x0, 2	// tmp114, tmp113,
	add	x2, sp, 24	// tmp115,,
	ldr	w0, [x2, x0]	// _4, f[_3]
// eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	add	w1, w1, w0	// _5, _2, _4
// eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	ldr	w0, [sp, 20]	// tmp116, i
	sub	w0, w0, #3	// _6, tmp116,
// eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	sxtw	x0, w0	// tmp117, _6
	lsl	x0, x0, 2	// tmp118, tmp117,
	add	x2, sp, 24	// tmp119,,
	ldr	w0, [x2, x0]	// _7, f[_6]
// eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	add	w1, w1, w0	// _8, _5, _7
// eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	ldr	w0, [sp, 20]	// tmp120, i
	sub	w0, w0, #4	// _9, tmp120,
// eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	sxtw	x0, w0	// tmp121, _9
	lsl	x0, x0, 2	// tmp122, tmp121,
	add	x2, sp, 24	// tmp123,,
	ldr	w0, [x2, x0]	// _10, f[_9]
// eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	add	w2, w1, w0	// _11, _8, _10
// eval/problem47//code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	ldrsw	x0, [sp, 20]	// tmp124, i
	lsl	x0, x0, 2	// tmp125, tmp124,
	add	x1, sp, 24	// tmp126,,
	str	w2, [x1, x0]	// _11, f[i_12]
// eval/problem47//code.c:9:     for (int i = 4; i <= n; i++) {
	ldr	w0, [sp, 20]	// tmp128, i
	add	w0, w0, 1	// tmp127, tmp128,
	str	w0, [sp, 20]	// tmp127, i
.L2:
// eval/problem47//code.c:9:     for (int i = 4; i <= n; i++) {
	ldr	w1, [sp, 20]	// tmp129, i
	ldr	w0, [sp, 12]	// tmp130, n
	cmp	w1, w0	// tmp129, tmp130
	ble	.L3		//,
// eval/problem47//code.c:12:     return f[n];
	ldrsw	x0, [sp, 12]	// tmp131, n
	lsl	x0, x0, 2	// tmp132, tmp131,
	add	x1, sp, 24	// tmp133,,
	ldr	w0, [x1, x0]	// _21, f[n_20(D)]
	mov	w1, w0	// <retval>, _21
// eval/problem47//code.c:13: }
	adrp	x0, :got:__stack_chk_guard	// tmp135,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp135,
	ldr	x3, [sp, 424]	// tmp137, D.4840
	ldr	x2, [x0]	// tmp138,
	subs	x3, x3, x2	// tmp137, tmp138
	mov	x2, 0	// tmp138
	beq	.L5		//,
	bl	__stack_chk_fail		//
.L5:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 432]	//,,
	add	sp, sp, 448	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
