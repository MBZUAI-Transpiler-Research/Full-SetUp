	.arch armv8-a
	.file	"problem64.c"
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
// problem64.c:3: int func0(int n) {
	adrp	x0, :got:__stack_chk_guard	// tmp102,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp102,
	ldr	x1, [x0]	// tmp132,
	str	x1, [sp, 424]	// tmp132, D.4884
	mov	x1, 0	// tmp132
// problem64.c:4:     int ff[100] = {0};
	add	x0, sp, 24	// tmp103,,
	mov	x1, 400	// tmp104,
	mov	x2, x1	//, tmp104
	mov	w1, 0	//,
	bl	memset		//
// problem64.c:5:     ff[1] = 0;
	str	wzr, [sp, 28]	//, ff[1]
// problem64.c:6:     ff[2] = 1;
	mov	w0, 1	// tmp106,
	str	w0, [sp, 32]	// tmp106, ff[2]
// problem64.c:7:     for (int i = 3; i <= n; ++i) {
	mov	w0, 3	// tmp107,
	str	w0, [sp, 20]	// tmp107, i
// problem64.c:7:     for (int i = 3; i <= n; ++i) {
	b	.L2		//
.L3:
// problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	ldr	w0, [sp, 20]	// tmp108, i
	sub	w0, w0, #1	// _1, tmp108,
// problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	sxtw	x0, w0	// tmp109, _1
	lsl	x0, x0, 2	// tmp110, tmp109,
	add	x1, sp, 24	// tmp111,,
	ldr	w1, [x1, x0]	// _2, ff[_1]
// problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	ldr	w0, [sp, 20]	// tmp112, i
	sub	w0, w0, #2	// _3, tmp112,
// problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	sxtw	x0, w0	// tmp113, _3
	lsl	x0, x0, 2	// tmp114, tmp113,
	add	x2, sp, 24	// tmp115,,
	ldr	w0, [x2, x0]	// _4, ff[_3]
// problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	add	w1, w1, w0	// _5, _2, _4
// problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	ldr	w0, [sp, 20]	// tmp116, i
	sub	w0, w0, #3	// _6, tmp116,
// problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	sxtw	x0, w0	// tmp117, _6
	lsl	x0, x0, 2	// tmp118, tmp117,
	add	x2, sp, 24	// tmp119,,
	ldr	w0, [x2, x0]	// _7, ff[_6]
// problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	add	w2, w1, w0	// _8, _5, _7
// problem64.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	ldrsw	x0, [sp, 20]	// tmp120, i
	lsl	x0, x0, 2	// tmp121, tmp120,
	add	x1, sp, 24	// tmp122,,
	str	w2, [x1, x0]	// _8, ff[i_9]
// problem64.c:7:     for (int i = 3; i <= n; ++i) {
	ldr	w0, [sp, 20]	// tmp124, i
	add	w0, w0, 1	// tmp123, tmp124,
	str	w0, [sp, 20]	// tmp123, i
.L2:
// problem64.c:7:     for (int i = 3; i <= n; ++i) {
	ldr	w1, [sp, 20]	// tmp125, i
	ldr	w0, [sp, 12]	// tmp126, n
	cmp	w1, w0	// tmp125, tmp126
	ble	.L3		//,
// problem64.c:10:     return ff[n];
	ldrsw	x0, [sp, 12]	// tmp127, n
	lsl	x0, x0, 2	// tmp128, tmp127,
	add	x1, sp, 24	// tmp129,,
	ldr	w0, [x1, x0]	// _17, ff[n_16(D)]
	mov	w1, w0	// <retval>, _17
// problem64.c:11: }
	adrp	x0, :got:__stack_chk_guard	// tmp131,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp131,
	ldr	x3, [sp, 424]	// tmp133, D.4884
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
// problem64.c:18:     assert(func0(2) == 1);
	cmp	w0, 1	// _1,
	beq	.L7		//,
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
// problem64.c:19:     assert(func0(1) == 0);
	cmp	w0, 0	// _2,
	beq	.L8		//,
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
// problem64.c:20:     assert(func0(5) == 4);
	cmp	w0, 4	// _3,
	beq	.L9		//,
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
// problem64.c:21:     assert(func0(8) == 24);
	cmp	w0, 24	// _4,
	beq	.L10		//,
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
// problem64.c:22:     assert(func0(10) == 81);
	cmp	w0, 81	// _5,
	beq	.L11		//,
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
// problem64.c:23:     assert(func0(12) == 274);
	cmp	w0, 274	// _6,
	beq	.L12		//,
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
// problem64.c:24:     assert(func0(14) == 927);
	cmp	w0, 927	// _7,
	beq	.L13		//,
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
