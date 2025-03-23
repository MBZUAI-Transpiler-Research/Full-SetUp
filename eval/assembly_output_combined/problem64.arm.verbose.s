	.arch armv8-a
	.file	"problem64.c"
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
// problem64.c:3: int func0(int n) {
	adrp	x0, :got:__stack_chk_guard	// tmp103,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp102, tmp103,
	ldr	x1, [x0]	// tmp134,
	str	x1, [sp, 440]	// tmp134, D.4302
	mov	x1, 0	// tmp134
// problem64.c:4:     int ff[100] = {0};
	add	x0, sp, 40	// tmp104,,
	mov	x1, 400	// tmp105,
	mov	x2, x1	//, tmp105
	mov	w1, 0	//,
	bl	memset		//
// problem64.c:5:     ff[1] = 0;
	str	wzr, [sp, 44]	//, ff[1]
// problem64.c:6:     ff[2] = 1;
	mov	w0, 1	// tmp107,
	str	w0, [sp, 48]	// tmp107, ff[2]
// problem64.c:7:     for (int i = 3; i <= n; ++i) {
	mov	w0, 3	// tmp108,
	str	w0, [sp, 36]	// tmp108, i
// problem64.c:7:     for (int i = 3; i <= n; ++i) {
	b	.L2		//
.L3:
// problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	ldr	w0, [sp, 36]	// tmp109, i
	sub	w0, w0, #1	// _1, tmp109,
// problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	sxtw	x0, w0	// tmp110, _1
	lsl	x0, x0, 2	// tmp111, tmp110,
	add	x1, sp, 40	// tmp112,,
	ldr	w1, [x1, x0]	// _2, ff[_1]
// problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	ldr	w0, [sp, 36]	// tmp113, i
	sub	w0, w0, #2	// _3, tmp113,
// problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	sxtw	x0, w0	// tmp114, _3
	lsl	x0, x0, 2	// tmp115, tmp114,
	add	x2, sp, 40	// tmp116,,
	ldr	w0, [x2, x0]	// _4, ff[_3]
// problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	add	w1, w1, w0	// _5, _2, _4
// problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	ldr	w0, [sp, 36]	// tmp117, i
	sub	w0, w0, #3	// _6, tmp117,
// problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	sxtw	x0, w0	// tmp118, _6
	lsl	x0, x0, 2	// tmp119, tmp118,
	add	x2, sp, 40	// tmp120,,
	ldr	w0, [x2, x0]	// _7, ff[_6]
// problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	add	w2, w1, w0	// _8, _5, _7
// problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	ldrsw	x0, [sp, 36]	// tmp121, i
	lsl	x0, x0, 2	// tmp122, tmp121,
	add	x1, sp, 40	// tmp123,,
	str	w2, [x1, x0]	// _8, ff[i_9]
// problem64.c:7:     for (int i = 3; i <= n; ++i) {
	ldr	w0, [sp, 36]	// tmp125, i
	add	w0, w0, 1	// tmp124, tmp125,
	str	w0, [sp, 36]	// tmp124, i
.L2:
// problem64.c:7:     for (int i = 3; i <= n; ++i) {
	ldr	w1, [sp, 36]	// tmp126, i
	ldr	w0, [sp, 28]	// tmp127, n
	cmp	w1, w0	// tmp126, tmp127
	ble	.L3		//,
// problem64.c:10:     return ff[n];
	ldrsw	x0, [sp, 28]	// tmp128, n
	lsl	x0, x0, 2	// tmp129, tmp128,
	add	x1, sp, 40	// tmp130,,
	ldr	w0, [x1, x0]	// _17, ff[n_16(D)]
	mov	w1, w0	// <retval>, _17
// problem64.c:11: }
	adrp	x0, :got:__stack_chk_guard	// tmp133,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp132, tmp133,
	ldr	x3, [sp, 440]	// tmp135, D.4302
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
	.section	.rodata
	.align	3
.LC0:
	.string	"problem64.c"
	.align	3
.LC1:
	.string	"func0(2) == 1"
	.align	3
.LC2:
	.string	"func0(1) == 0"
	.align	3
.LC3:
	.string	"func0(5) == 4"
	.align	3
.LC4:
	.string	"func0(8) == 24"
	.align	3
.LC5:
	.string	"func0(10) == 81"
	.align	3
.LC6:
	.string	"func0(12) == 274"
	.align	3
.LC7:
	.string	"func0(14) == 927"
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
// problem64.c:18:     assert(func0(2) == 1);
	mov	w0, 2	//,
	bl	func0		//
	cmp	w0, 1	// _1,
	beq	.L7		//,
// problem64.c:18:     assert(func0(2) == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp101,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp101,
	mov	w2, 18	//,
	adrp	x0, .LC0	// tmp102,
	add	x1, x0, :lo12:.LC0	//, tmp102,
	adrp	x0, .LC1	// tmp103,
	add	x0, x0, :lo12:.LC1	//, tmp103,
	bl	__assert_fail		//
.L7:
// problem64.c:19:     assert(func0(1) == 0);
	mov	w0, 1	//,
	bl	func0		//
	cmp	w0, 0	// _2,
	beq	.L8		//,
// problem64.c:19:     assert(func0(1) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp104,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp104,
	mov	w2, 19	//,
	adrp	x0, .LC0	// tmp105,
	add	x1, x0, :lo12:.LC0	//, tmp105,
	adrp	x0, .LC2	// tmp106,
	add	x0, x0, :lo12:.LC2	//, tmp106,
	bl	__assert_fail		//
.L8:
// problem64.c:20:     assert(func0(5) == 4);
	mov	w0, 5	//,
	bl	func0		//
	cmp	w0, 4	// _3,
	beq	.L9		//,
// problem64.c:20:     assert(func0(5) == 4);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp107,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp107,
	mov	w2, 20	//,
	adrp	x0, .LC0	// tmp108,
	add	x1, x0, :lo12:.LC0	//, tmp108,
	adrp	x0, .LC3	// tmp109,
	add	x0, x0, :lo12:.LC3	//, tmp109,
	bl	__assert_fail		//
.L9:
// problem64.c:21:     assert(func0(8) == 24);
	mov	w0, 8	//,
	bl	func0		//
	cmp	w0, 24	// _4,
	beq	.L10		//,
// problem64.c:21:     assert(func0(8) == 24);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp110,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp110,
	mov	w2, 21	//,
	adrp	x0, .LC0	// tmp111,
	add	x1, x0, :lo12:.LC0	//, tmp111,
	adrp	x0, .LC4	// tmp112,
	add	x0, x0, :lo12:.LC4	//, tmp112,
	bl	__assert_fail		//
.L10:
// problem64.c:22:     assert(func0(10) == 81);
	mov	w0, 10	//,
	bl	func0		//
	cmp	w0, 81	// _5,
	beq	.L11		//,
// problem64.c:22:     assert(func0(10) == 81);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp113,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp113,
	mov	w2, 22	//,
	adrp	x0, .LC0	// tmp114,
	add	x1, x0, :lo12:.LC0	//, tmp114,
	adrp	x0, .LC5	// tmp115,
	add	x0, x0, :lo12:.LC5	//, tmp115,
	bl	__assert_fail		//
.L11:
// problem64.c:23:     assert(func0(12) == 274);
	mov	w0, 12	//,
	bl	func0		//
	cmp	w0, 274	// _6,
	beq	.L12		//,
// problem64.c:23:     assert(func0(12) == 274);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 23	//,
	adrp	x0, .LC0	// tmp117,
	add	x1, x0, :lo12:.LC0	//, tmp117,
	adrp	x0, .LC6	// tmp118,
	add	x0, x0, :lo12:.LC6	//, tmp118,
	bl	__assert_fail		//
.L12:
// problem64.c:24:     assert(func0(14) == 927);
	mov	w0, 14	//,
	bl	func0		//
	cmp	w0, 927	// _7,
	beq	.L13		//,
// problem64.c:24:     assert(func0(14) == 927);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 24	//,
	adrp	x0, .LC0	// tmp120,
	add	x1, x0, :lo12:.LC0	//, tmp120,
	adrp	x0, .LC7	// tmp121,
	add	x0, x0, :lo12:.LC7	//, tmp121,
	bl	__assert_fail		//
.L13:
// problem64.c:26:     return 0;
	mov	w0, 0	// _23,
// problem64.c:27: }
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
