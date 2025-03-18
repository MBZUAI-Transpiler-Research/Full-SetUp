	.arch armv8-a
	.file	"problem140.c"
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
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	w0, [sp, 12]	// n, n
// problem140.c:4:     long long fact = 1, bfact = 1;
	mov	x0, 1	// tmp95,
	str	x0, [sp, 32]	// tmp95, fact
// problem140.c:4:     long long fact = 1, bfact = 1;
	mov	x0, 1	// tmp96,
	str	x0, [sp, 40]	// tmp96, bfact
// problem140.c:5:     for (int i = 1; i <= n; i++) {
	mov	w0, 1	// tmp97,
	str	w0, [sp, 28]	// tmp97, i
// problem140.c:5:     for (int i = 1; i <= n; i++) {
	b	.L2		//
.L3:
// problem140.c:6:         fact = fact * i;
	ldrsw	x0, [sp, 28]	// _1, i
// problem140.c:6:         fact = fact * i;
	ldr	x1, [sp, 32]	// tmp99, fact
	mul	x0, x1, x0	// tmp98, tmp99, _1
	str	x0, [sp, 32]	// tmp98, fact
// problem140.c:7:         bfact = bfact * fact;
	ldr	x1, [sp, 40]	// tmp101, bfact
	ldr	x0, [sp, 32]	// tmp102, fact
	mul	x0, x1, x0	// tmp100, tmp101, tmp102
	str	x0, [sp, 40]	// tmp100, bfact
// problem140.c:5:     for (int i = 1; i <= n; i++) {
	ldr	w0, [sp, 28]	// tmp104, i
	add	w0, w0, 1	// tmp103, tmp104,
	str	w0, [sp, 28]	// tmp103, i
.L2:
// problem140.c:5:     for (int i = 1; i <= n; i++) {
	ldr	w1, [sp, 28]	// tmp105, i
	ldr	w0, [sp, 12]	// tmp106, n
	cmp	w1, w0	// tmp105, tmp106
	ble	.L3		//,
// problem140.c:9:     return bfact;
	ldr	x0, [sp, 40]	// _9, bfact
// problem140.c:10: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem140.c"
	.align	3
.LC1:
	.string	"func0(4) == 288"
	.align	3
.LC2:
	.string	"func0(5) == 34560"
	.align	3
.LC3:
	.string	"func0(7) == 125411328000"
	.align	3
.LC4:
	.string	"func0(1) == 1"
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
// problem140.c:17:     assert(func0(4) == 288);
	mov	w0, 4	//,
	bl	func0		//
// problem140.c:17:     assert(func0(4) == 288);
	cmp	x0, 288	// _1,
	beq	.L6		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp98,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp98,
	mov	w2, 17	//,
	adrp	x0, .LC0	// tmp99,
	add	x1, x0, :lo12:.LC0	//, tmp99,
	adrp	x0, .LC1	// tmp100,
	add	x0, x0, :lo12:.LC1	//, tmp100,
	bl	__assert_fail		//
.L6:
// problem140.c:18:     assert(func0(5) == 34560);
	mov	w0, 5	//,
	bl	func0		//
	mov	x1, x0	// _2,
// problem140.c:18:     assert(func0(5) == 34560);
	mov	x0, 34560	// tmp101,
	cmp	x1, x0	// _2, tmp101
	beq	.L7		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp102,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp102,
	mov	w2, 18	//,
	adrp	x0, .LC0	// tmp103,
	add	x1, x0, :lo12:.LC0	//, tmp103,
	adrp	x0, .LC2	// tmp104,
	add	x0, x0, :lo12:.LC2	//, tmp104,
	bl	__assert_fail		//
.L7:
// problem140.c:19:     assert(func0(7) == 125411328000);
	mov	w0, 7	//,
	bl	func0		//
	mov	x1, x0	// _3,
// problem140.c:19:     assert(func0(7) == 125411328000);
	mov	x0, 857276416	// tmp105,
	movk	x0, 0x1d, lsl 32	// tmp105,,
	cmp	x1, x0	// _3, tmp105
	beq	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp106,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp106,
	mov	w2, 19	//,
	adrp	x0, .LC0	// tmp107,
	add	x1, x0, :lo12:.LC0	//, tmp107,
	adrp	x0, .LC3	// tmp108,
	add	x0, x0, :lo12:.LC3	//, tmp108,
	bl	__assert_fail		//
.L8:
// problem140.c:20:     assert(func0(1) == 1);
	mov	w0, 1	//,
	bl	func0		//
// problem140.c:20:     assert(func0(1) == 1);
	cmp	x0, 1	// _4,
	beq	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp109,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp109,
	mov	w2, 20	//,
	adrp	x0, .LC0	// tmp110,
	add	x1, x0, :lo12:.LC0	//, tmp110,
	adrp	x0, .LC4	// tmp111,
	add	x0, x0, :lo12:.LC4	//, tmp111,
	bl	__assert_fail		//
.L9:
// problem140.c:22:     return 0;
	mov	w0, 0	// _14,
// problem140.c:23: }
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
