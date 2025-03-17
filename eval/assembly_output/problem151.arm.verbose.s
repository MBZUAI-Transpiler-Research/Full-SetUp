	.arch armv8-a
	.file	"problem151.c"
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
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]	// n, n
	str	w1, [sp, 8]	// x, x
	str	w2, [sp, 4]	// y, y
// problem151.c:4:     int isp = 1;
	mov	w0, 1	// tmp96,
	str	w0, [sp, 24]	// tmp96, isp
// problem151.c:5:     if (n < 2) isp = 0;
	ldr	w0, [sp, 12]	// tmp97, n
	cmp	w0, 1	// tmp97,
	bgt	.L2		//,
// problem151.c:5:     if (n < 2) isp = 0;
	str	wzr, [sp, 24]	//, isp
.L2:
// problem151.c:6:     for (int i = 2; i * i <= n; i++) {
	mov	w0, 2	// tmp98,
	str	w0, [sp, 28]	// tmp98, i
// problem151.c:6:     for (int i = 2; i * i <= n; i++) {
	b	.L3		//
.L5:
// problem151.c:7:         if (n % i == 0) isp = 0;
	ldr	w0, [sp, 12]	// tmp99, n
	ldr	w1, [sp, 28]	// tmp112, i
	sdiv	w2, w0, w1	// tmp111, tmp99, tmp112
	ldr	w1, [sp, 28]	// tmp114, i
	mul	w1, w2, w1	// tmp113, tmp111, tmp114
	sub	w0, w0, w1	// _1, tmp99, tmp113
// problem151.c:7:         if (n % i == 0) isp = 0;
	cmp	w0, 0	// _1,
	bne	.L4		//,
// problem151.c:7:         if (n % i == 0) isp = 0;
	str	wzr, [sp, 24]	//, isp
.L4:
// problem151.c:6:     for (int i = 2; i * i <= n; i++) {
	ldr	w0, [sp, 28]	// tmp116, i
	add	w0, w0, 1	// tmp115, tmp116,
	str	w0, [sp, 28]	// tmp115, i
.L3:
// problem151.c:6:     for (int i = 2; i * i <= n; i++) {
	ldr	w0, [sp, 28]	// tmp117, i
	mul	w0, w0, w0	// _2, tmp117, tmp117
// problem151.c:6:     for (int i = 2; i * i <= n; i++) {
	ldr	w1, [sp, 12]	// tmp118, n
	cmp	w1, w0	// tmp118, _2
	bge	.L5		//,
// problem151.c:9:     if (isp) return x;
	ldr	w0, [sp, 24]	// tmp119, isp
	cmp	w0, 0	// tmp119,
	beq	.L6		//,
// problem151.c:9:     if (isp) return x;
	ldr	w0, [sp, 8]	// _7, x
// problem151.c:9:     if (isp) return x;
	b	.L7		//
.L6:
// problem151.c:10:     return y;
	ldr	w0, [sp, 4]	// _7, y
.L7:
// problem151.c:11: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem151.c"
	.align	3
.LC1:
	.string	"func0(7, 34, 12) == 34"
	.align	3
.LC2:
	.string	"func0(15, 8, 5) == 5"
	.align	3
.LC3:
	.string	"func0(3, 33, 5212) == 33"
	.align	3
.LC4:
	.string	"func0(1259, 3, 52) == 3"
	.align	3
.LC5:
	.string	"func0(7919, -1, 12) == -1"
	.align	3
.LC6:
	.string	"func0(3609, 1245, 583) == 583"
	.align	3
.LC7:
	.string	"func0(91, 56, 129) == 129"
	.align	3
.LC8:
	.string	"func0(6, 34, 1234) == 1234"
	.align	3
.LC9:
	.string	"func0(1, 2, 0) == 0"
	.align	3
.LC10:
	.string	"func0(2, 2, 0) == 2"
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
// problem151.c:18:     assert(func0(7, 34, 12) == 34);
	mov	w2, 12	//,
	mov	w1, 34	//,
	mov	w0, 7	//,
	bl	func0		//
// problem151.c:18:     assert(func0(7, 34, 12) == 34);
	cmp	w0, 34	// _1,
	beq	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp104,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp104,
	mov	w2, 18	//,
	adrp	x0, .LC0	// tmp105,
	add	x1, x0, :lo12:.LC0	//, tmp105,
	adrp	x0, .LC1	// tmp106,
	add	x0, x0, :lo12:.LC1	//, tmp106,
	bl	__assert_fail		//
.L9:
// problem151.c:19:     assert(func0(15, 8, 5) == 5);
	mov	w2, 5	//,
	mov	w1, 8	//,
	mov	w0, 15	//,
	bl	func0		//
// problem151.c:19:     assert(func0(15, 8, 5) == 5);
	cmp	w0, 5	// _2,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp107,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp107,
	mov	w2, 19	//,
	adrp	x0, .LC0	// tmp108,
	add	x1, x0, :lo12:.LC0	//, tmp108,
	adrp	x0, .LC2	// tmp109,
	add	x0, x0, :lo12:.LC2	//, tmp109,
	bl	__assert_fail		//
.L10:
// problem151.c:20:     assert(func0(3, 33, 5212) == 33);
	mov	w2, 5212	//,
	mov	w1, 33	//,
	mov	w0, 3	//,
	bl	func0		//
// problem151.c:20:     assert(func0(3, 33, 5212) == 33);
	cmp	w0, 33	// _3,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp110,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp110,
	mov	w2, 20	//,
	adrp	x0, .LC0	// tmp111,
	add	x1, x0, :lo12:.LC0	//, tmp111,
	adrp	x0, .LC3	// tmp112,
	add	x0, x0, :lo12:.LC3	//, tmp112,
	bl	__assert_fail		//
.L11:
// problem151.c:21:     assert(func0(1259, 3, 52) == 3);
	mov	w2, 52	//,
	mov	w1, 3	//,
	mov	w0, 1259	//,
	bl	func0		//
// problem151.c:21:     assert(func0(1259, 3, 52) == 3);
	cmp	w0, 3	// _4,
	beq	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp113,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp113,
	mov	w2, 21	//,
	adrp	x0, .LC0	// tmp114,
	add	x1, x0, :lo12:.LC0	//, tmp114,
	adrp	x0, .LC4	// tmp115,
	add	x0, x0, :lo12:.LC4	//, tmp115,
	bl	__assert_fail		//
.L12:
// problem151.c:22:     assert(func0(7919, -1, 12) == -1);
	mov	w2, 12	//,
	mov	w1, -1	//,
	mov	w0, 7919	//,
	bl	func0		//
// problem151.c:22:     assert(func0(7919, -1, 12) == -1);
	cmn	w0, #1	// _5,
	beq	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 22	//,
	adrp	x0, .LC0	// tmp117,
	add	x1, x0, :lo12:.LC0	//, tmp117,
	adrp	x0, .LC5	// tmp118,
	add	x0, x0, :lo12:.LC5	//, tmp118,
	bl	__assert_fail		//
.L13:
// problem151.c:23:     assert(func0(3609, 1245, 583) == 583);
	mov	w2, 583	//,
	mov	w1, 1245	//,
	mov	w0, 3609	//,
	bl	func0		//
// problem151.c:23:     assert(func0(3609, 1245, 583) == 583);
	cmp	w0, 583	// _6,
	beq	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 23	//,
	adrp	x0, .LC0	// tmp120,
	add	x1, x0, :lo12:.LC0	//, tmp120,
	adrp	x0, .LC6	// tmp121,
	add	x0, x0, :lo12:.LC6	//, tmp121,
	bl	__assert_fail		//
.L14:
// problem151.c:24:     assert(func0(91, 56, 129) == 129);
	mov	w2, 129	//,
	mov	w1, 56	//,
	mov	w0, 91	//,
	bl	func0		//
// problem151.c:24:     assert(func0(91, 56, 129) == 129);
	cmp	w0, 129	// _7,
	beq	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp122,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp122,
	mov	w2, 24	//,
	adrp	x0, .LC0	// tmp123,
	add	x1, x0, :lo12:.LC0	//, tmp123,
	adrp	x0, .LC7	// tmp124,
	add	x0, x0, :lo12:.LC7	//, tmp124,
	bl	__assert_fail		//
.L15:
// problem151.c:25:     assert(func0(6, 34, 1234) == 1234);
	mov	w2, 1234	//,
	mov	w1, 34	//,
	mov	w0, 6	//,
	bl	func0		//
// problem151.c:25:     assert(func0(6, 34, 1234) == 1234);
	cmp	w0, 1234	// _8,
	beq	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp125,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp125,
	mov	w2, 25	//,
	adrp	x0, .LC0	// tmp126,
	add	x1, x0, :lo12:.LC0	//, tmp126,
	adrp	x0, .LC8	// tmp127,
	add	x0, x0, :lo12:.LC8	//, tmp127,
	bl	__assert_fail		//
.L16:
// problem151.c:26:     assert(func0(1, 2, 0) == 0);
	mov	w2, 0	//,
	mov	w1, 2	//,
	mov	w0, 1	//,
	bl	func0		//
// problem151.c:26:     assert(func0(1, 2, 0) == 0);
	cmp	w0, 0	// _9,
	beq	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp128,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp128,
	mov	w2, 26	//,
	adrp	x0, .LC0	// tmp129,
	add	x1, x0, :lo12:.LC0	//, tmp129,
	adrp	x0, .LC9	// tmp130,
	add	x0, x0, :lo12:.LC9	//, tmp130,
	bl	__assert_fail		//
.L17:
// problem151.c:27:     assert(func0(2, 2, 0) == 2);
	mov	w2, 0	//,
	mov	w1, 2	//,
	mov	w0, 2	//,
	bl	func0		//
// problem151.c:27:     assert(func0(2, 2, 0) == 2);
	cmp	w0, 2	// _10,
	beq	.L18		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp131,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp131,
	mov	w2, 27	//,
	adrp	x0, .LC0	// tmp132,
	add	x1, x0, :lo12:.LC0	//, tmp132,
	adrp	x0, .LC10	// tmp133,
	add	x0, x0, :lo12:.LC10	//, tmp133,
	bl	__assert_fail		//
.L18:
// problem151.c:29:     return 0;
	mov	w0, 0	// _32,
// problem151.c:30: }
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
