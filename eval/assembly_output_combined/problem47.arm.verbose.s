	.arch armv8-a
	.file	"problem47.c"
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
// problem47.c:3: int func0(int n) {
	adrp	x0, :got:__stack_chk_guard	// tmp106,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp105, tmp106,
	ldr	x1, [x0]	// tmp138,
	str	x1, [sp, 440]	// tmp138, D.4293
	mov	x1, 0	// tmp138
// problem47.c:5:     f[0] = 0;
	str	wzr, [sp, 40]	//, f[0]
// problem47.c:6:     f[1] = 0;
	str	wzr, [sp, 44]	//, f[1]
// problem47.c:7:     f[2] = 2;
	mov	w0, 2	// tmp107,
	str	w0, [sp, 48]	// tmp107, f[2]
// problem47.c:8:     f[3] = 0;
	str	wzr, [sp, 52]	//, f[3]
// problem47.c:9:     for (int i = 4; i <= n; i++) {
	mov	w0, 4	// tmp108,
	str	w0, [sp, 36]	// tmp108, i
// problem47.c:9:     for (int i = 4; i <= n; i++) {
	b	.L2		//
.L3:
// problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	ldr	w0, [sp, 36]	// tmp109, i
	sub	w0, w0, #1	// _1, tmp109,
// problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	sxtw	x0, w0	// tmp110, _1
	lsl	x0, x0, 2	// tmp111, tmp110,
	add	x1, sp, 40	// tmp112,,
	ldr	w1, [x1, x0]	// _2, f[_1]
// problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	ldr	w0, [sp, 36]	// tmp113, i
	sub	w0, w0, #2	// _3, tmp113,
// problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	sxtw	x0, w0	// tmp114, _3
	lsl	x0, x0, 2	// tmp115, tmp114,
	add	x2, sp, 40	// tmp116,,
	ldr	w0, [x2, x0]	// _4, f[_3]
// problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	add	w1, w1, w0	// _5, _2, _4
// problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	ldr	w0, [sp, 36]	// tmp117, i
	sub	w0, w0, #3	// _6, tmp117,
// problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	sxtw	x0, w0	// tmp118, _6
	lsl	x0, x0, 2	// tmp119, tmp118,
	add	x2, sp, 40	// tmp120,,
	ldr	w0, [x2, x0]	// _7, f[_6]
// problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	add	w1, w1, w0	// _8, _5, _7
// problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	ldr	w0, [sp, 36]	// tmp121, i
	sub	w0, w0, #4	// _9, tmp121,
// problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	sxtw	x0, w0	// tmp122, _9
	lsl	x0, x0, 2	// tmp123, tmp122,
	add	x2, sp, 40	// tmp124,,
	ldr	w0, [x2, x0]	// _10, f[_9]
// problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	add	w2, w1, w0	// _11, _8, _10
// problem47.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	ldrsw	x0, [sp, 36]	// tmp125, i
	lsl	x0, x0, 2	// tmp126, tmp125,
	add	x1, sp, 40	// tmp127,,
	str	w2, [x1, x0]	// _11, f[i_12]
// problem47.c:9:     for (int i = 4; i <= n; i++) {
	ldr	w0, [sp, 36]	// tmp129, i
	add	w0, w0, 1	// tmp128, tmp129,
	str	w0, [sp, 36]	// tmp128, i
.L2:
// problem47.c:9:     for (int i = 4; i <= n; i++) {
	ldr	w1, [sp, 36]	// tmp130, i
	ldr	w0, [sp, 28]	// tmp131, n
	cmp	w1, w0	// tmp130, tmp131
	ble	.L3		//,
// problem47.c:12:     return f[n];
	ldrsw	x0, [sp, 28]	// tmp132, n
	lsl	x0, x0, 2	// tmp133, tmp132,
	add	x1, sp, 40	// tmp134,,
	ldr	w0, [x1, x0]	// _21, f[n_20(D)]
	mov	w1, w0	// <retval>, _21
// problem47.c:13: }
	adrp	x0, :got:__stack_chk_guard	// tmp137,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp136, tmp137,
	ldr	x3, [sp, 440]	// tmp139, D.4293
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
	.section	.rodata
	.align	3
.LC0:
	.string	"problem47.c"
	.align	3
.LC1:
	.string	"func0(5) == 4"
	.align	3
.LC2:
	.string	"func0(8) == 28"
	.align	3
.LC3:
	.string	"func0(10) == 104"
	.align	3
.LC4:
	.string	"func0(12) == 386"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp	//,
// problem47.c:21:     assert(func0(5) == 4);
	mov	w0, 5	//,
	bl	func0		//
	cmp	w0, 4	// _1,
	beq	.L7		//,
// problem47.c:21:     assert(func0(5) == 4);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp98,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp98,
	mov	w2, 21	//,
	adrp	x0, .LC0	// tmp99,
	add	x1, x0, :lo12:.LC0	//, tmp99,
	adrp	x0, .LC1	// tmp100,
	add	x0, x0, :lo12:.LC1	//, tmp100,
	bl	__assert_fail		//
.L7:
// problem47.c:22:     assert(func0(8) == 28);
	mov	w0, 8	//,
	bl	func0		//
	cmp	w0, 28	// _2,
	beq	.L8		//,
// problem47.c:22:     assert(func0(8) == 28);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp101,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp101,
	mov	w2, 22	//,
	adrp	x0, .LC0	// tmp102,
	add	x1, x0, :lo12:.LC0	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	__assert_fail		//
.L8:
// problem47.c:23:     assert(func0(10) == 104);
	mov	w0, 10	//,
	bl	func0		//
	cmp	w0, 104	// _3,
	beq	.L9		//,
// problem47.c:23:     assert(func0(10) == 104);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp104,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp104,
	mov	w2, 23	//,
	adrp	x0, .LC0	// tmp105,
	add	x1, x0, :lo12:.LC0	//, tmp105,
	adrp	x0, .LC3	// tmp106,
	add	x0, x0, :lo12:.LC3	//, tmp106,
	bl	__assert_fail		//
.L9:
// problem47.c:24:     assert(func0(12) == 386);
	mov	w0, 12	//,
	bl	func0		//
	cmp	w0, 386	// _4,
	beq	.L10		//,
// problem47.c:24:     assert(func0(12) == 386);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp107,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp107,
	mov	w2, 24	//,
	adrp	x0, .LC0	// tmp108,
	add	x1, x0, :lo12:.LC0	//, tmp108,
	adrp	x0, .LC4	// tmp109,
	add	x0, x0, :lo12:.LC4	//, tmp109,
	bl	__assert_fail		//
.L10:
// problem47.c:26:     return 0;
	mov	w0, 0	// _14,
// problem47.c:27: }
	ldp	x29, x30, [sp], 16	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
