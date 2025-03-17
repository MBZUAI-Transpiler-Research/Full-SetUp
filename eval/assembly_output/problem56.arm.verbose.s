	.arch armv8-a
	.file	"problem56.c"
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
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp	//,
	sub	sp, sp, #4032	//,,
	.cfi_def_cfa_offset 4048
	str	xzr, [sp, 1024]	//,
	str	w0, [sp, 12]	// n, n
// problem56.c:3: int func0(int n) {
	adrp	x0, :got:__stack_chk_guard	// tmp99,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp99,
	ldr	x1, [x0]	// tmp125,
	str	x1, [sp, 4024]	// tmp125, D.4878
	mov	x1, 0	// tmp125
// problem56.c:4:     int f[1000] = {0};
	add	x0, sp, 24	// tmp100,,
	mov	x1, 4000	// tmp101,
	mov	x2, x1	//, tmp101
	mov	w1, 0	//,
	bl	memset		//
// problem56.c:5:     f[0] = 0;
	str	wzr, [sp, 24]	//, f[0]
// problem56.c:6:     f[1] = 1;
	mov	w0, 1	// tmp103,
	str	w0, [sp, 28]	// tmp103, f[1]
// problem56.c:7:     for (int i = 2; i <= n; i++)
	mov	w0, 2	// tmp104,
	str	w0, [sp, 20]	// tmp104, i
// problem56.c:7:     for (int i = 2; i <= n; i++)
	b	.L2		//
.L3:
// problem56.c:8:         f[i] = f[i - 1] + f[i - 2];
	ldr	w0, [sp, 20]	// tmp105, i
	sub	w0, w0, #1	// _1, tmp105,
// problem56.c:8:         f[i] = f[i - 1] + f[i - 2];
	sxtw	x0, w0	// tmp106, _1
	lsl	x0, x0, 2	// tmp107, tmp106,
	add	x1, sp, 24	// tmp108,,
	ldr	w1, [x1, x0]	// _2, f[_1]
// problem56.c:8:         f[i] = f[i - 1] + f[i - 2];
	ldr	w0, [sp, 20]	// tmp109, i
	sub	w0, w0, #2	// _3, tmp109,
// problem56.c:8:         f[i] = f[i - 1] + f[i - 2];
	sxtw	x0, w0	// tmp110, _3
	lsl	x0, x0, 2	// tmp111, tmp110,
	add	x2, sp, 24	// tmp112,,
	ldr	w0, [x2, x0]	// _4, f[_3]
// problem56.c:8:         f[i] = f[i - 1] + f[i - 2];
	add	w2, w1, w0	// _5, _2, _4
// problem56.c:8:         f[i] = f[i - 1] + f[i - 2];
	ldrsw	x0, [sp, 20]	// tmp113, i
	lsl	x0, x0, 2	// tmp114, tmp113,
	add	x1, sp, 24	// tmp115,,
	str	w2, [x1, x0]	// _5, f[i_6]
// problem56.c:7:     for (int i = 2; i <= n; i++)
	ldr	w0, [sp, 20]	// tmp117, i
	add	w0, w0, 1	// tmp116, tmp117,
	str	w0, [sp, 20]	// tmp116, i
.L2:
// problem56.c:7:     for (int i = 2; i <= n; i++)
	ldr	w1, [sp, 20]	// tmp118, i
	ldr	w0, [sp, 12]	// tmp119, n
	cmp	w1, w0	// tmp118, tmp119
	ble	.L3		//,
// problem56.c:9:     return f[n];
	ldrsw	x0, [sp, 12]	// tmp120, n
	lsl	x0, x0, 2	// tmp121, tmp120,
	add	x1, sp, 24	// tmp122,,
	ldr	w0, [x1, x0]	// _14, f[n_13(D)]
	mov	w1, w0	// <retval>, _14
// problem56.c:10: }
	adrp	x0, :got:__stack_chk_guard	// tmp124,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp124,
	ldr	x3, [sp, 4024]	// tmp126, D.4878
	ldr	x2, [x0]	// tmp127,
	subs	x3, x3, x2	// tmp126, tmp127
	mov	x2, 0	// tmp127
	beq	.L5		//,
	bl	__stack_chk_fail		//
.L5:
	mov	w0, w1	//, <retval>
	add	sp, sp, 4032	//,,
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16	//,,,
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
	.string	"problem56.c"
	.align	3
.LC1:
	.string	"func0(10) == 55"
	.align	3
.LC2:
	.string	"func0(1) == 1"
	.align	3
.LC3:
	.string	"func0(8) == 21"
	.align	3
.LC4:
	.string	"func0(11) == 89"
	.align	3
.LC5:
	.string	"func0(12) == 144"
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
// problem56.c:17:     assert(func0(10) == 55);
	mov	w0, 10	//,
	bl	func0		//
// problem56.c:17:     assert(func0(10) == 55);
	cmp	w0, 55	// _1,
	beq	.L7		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp99,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp99,
	mov	w2, 17	//,
	adrp	x0, .LC0	// tmp100,
	add	x1, x0, :lo12:.LC0	//, tmp100,
	adrp	x0, .LC1	// tmp101,
	add	x0, x0, :lo12:.LC1	//, tmp101,
	bl	__assert_fail		//
.L7:
// problem56.c:18:     assert(func0(1) == 1);
	mov	w0, 1	//,
	bl	func0		//
// problem56.c:18:     assert(func0(1) == 1);
	cmp	w0, 1	// _2,
	beq	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp102,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp102,
	mov	w2, 18	//,
	adrp	x0, .LC0	// tmp103,
	add	x1, x0, :lo12:.LC0	//, tmp103,
	adrp	x0, .LC2	// tmp104,
	add	x0, x0, :lo12:.LC2	//, tmp104,
	bl	__assert_fail		//
.L8:
// problem56.c:19:     assert(func0(8) == 21);
	mov	w0, 8	//,
	bl	func0		//
// problem56.c:19:     assert(func0(8) == 21);
	cmp	w0, 21	// _3,
	beq	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp105,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp105,
	mov	w2, 19	//,
	adrp	x0, .LC0	// tmp106,
	add	x1, x0, :lo12:.LC0	//, tmp106,
	adrp	x0, .LC3	// tmp107,
	add	x0, x0, :lo12:.LC3	//, tmp107,
	bl	__assert_fail		//
.L9:
// problem56.c:20:     assert(func0(11) == 89);
	mov	w0, 11	//,
	bl	func0		//
// problem56.c:20:     assert(func0(11) == 89);
	cmp	w0, 89	// _4,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp108,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp108,
	mov	w2, 20	//,
	adrp	x0, .LC0	// tmp109,
	add	x1, x0, :lo12:.LC0	//, tmp109,
	adrp	x0, .LC4	// tmp110,
	add	x0, x0, :lo12:.LC4	//, tmp110,
	bl	__assert_fail		//
.L10:
// problem56.c:21:     assert(func0(12) == 144);
	mov	w0, 12	//,
	bl	func0		//
// problem56.c:21:     assert(func0(12) == 144);
	cmp	w0, 144	// _5,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp111,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp111,
	mov	w2, 21	//,
	adrp	x0, .LC0	// tmp112,
	add	x1, x0, :lo12:.LC0	//, tmp112,
	adrp	x0, .LC5	// tmp113,
	add	x0, x0, :lo12:.LC5	//, tmp113,
	bl	__assert_fail		//
.L11:
// problem56.c:23:     return 0;
	mov	w0, 0	// _17,
// problem56.c:24: }
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
