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
// eval/problem64//code.c:3: int func0(int n) {
	adrp	x0, :got:__stack_chk_guard	// tmp102,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp102,
	ldr	x1, [x0]	// tmp132,
	str	x1, [sp, 424]	// tmp132, D.4840
	mov	x1, 0	// tmp132
// eval/problem64//code.c:4:     int ff[100] = {0};
	add	x0, sp, 24	// tmp103,,
	mov	x1, 400	// tmp104,
	mov	x2, x1	//, tmp104
	mov	w1, 0	//,
	bl	memset		//
// eval/problem64//code.c:5:     ff[1] = 0;
	str	wzr, [sp, 28]	//, ff[1]
// eval/problem64//code.c:6:     ff[2] = 1;
	mov	w0, 1	// tmp106,
	str	w0, [sp, 32]	// tmp106, ff[2]
// eval/problem64//code.c:7:     for (int i = 3; i <= n; ++i) {
	mov	w0, 3	// tmp107,
	str	w0, [sp, 20]	// tmp107, i
// eval/problem64//code.c:7:     for (int i = 3; i <= n; ++i) {
	b	.L2		//
.L3:
// eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	ldr	w0, [sp, 20]	// tmp108, i
	sub	w0, w0, #1	// _1, tmp108,
// eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	sxtw	x0, w0	// tmp109, _1
	lsl	x0, x0, 2	// tmp110, tmp109,
	add	x1, sp, 24	// tmp111,,
	ldr	w1, [x1, x0]	// _2, ff[_1]
// eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	ldr	w0, [sp, 20]	// tmp112, i
	sub	w0, w0, #2	// _3, tmp112,
// eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	sxtw	x0, w0	// tmp113, _3
	lsl	x0, x0, 2	// tmp114, tmp113,
	add	x2, sp, 24	// tmp115,,
	ldr	w0, [x2, x0]	// _4, ff[_3]
// eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	add	w1, w1, w0	// _5, _2, _4
// eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	ldr	w0, [sp, 20]	// tmp116, i
	sub	w0, w0, #3	// _6, tmp116,
// eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	sxtw	x0, w0	// tmp117, _6
	lsl	x0, x0, 2	// tmp118, tmp117,
	add	x2, sp, 24	// tmp119,,
	ldr	w0, [x2, x0]	// _7, ff[_6]
// eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	add	w2, w1, w0	// _8, _5, _7
// eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	ldrsw	x0, [sp, 20]	// tmp120, i
	lsl	x0, x0, 2	// tmp121, tmp120,
	add	x1, sp, 24	// tmp122,,
	str	w2, [x1, x0]	// _8, ff[i_9]
// eval/problem64//code.c:7:     for (int i = 3; i <= n; ++i) {
	ldr	w0, [sp, 20]	// tmp124, i
	add	w0, w0, 1	// tmp123, tmp124,
	str	w0, [sp, 20]	// tmp123, i
.L2:
// eval/problem64//code.c:7:     for (int i = 3; i <= n; ++i) {
	ldr	w1, [sp, 20]	// tmp125, i
	ldr	w0, [sp, 12]	// tmp126, n
	cmp	w1, w0	// tmp125, tmp126
	ble	.L3		//,
// eval/problem64//code.c:10:     return ff[n];
	ldrsw	x0, [sp, 12]	// tmp127, n
	lsl	x0, x0, 2	// tmp128, tmp127,
	add	x1, sp, 24	// tmp129,,
	ldr	w0, [x1, x0]	// _17, ff[n_16(D)]
	mov	w1, w0	// <retval>, _17
// eval/problem64//code.c:11: }
	adrp	x0, :got:__stack_chk_guard	// tmp131,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp131,
	ldr	x3, [sp, 424]	// tmp133, D.4840
	ldr	x2, [x0]	// tmp134,
	subs	x3, x3, x2	// tmp133, tmp134
	mov	x2, 0	// tmp134
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
