	.arch armv8-a
	.file	"problem40.c"
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
// problem40.c:4:     int f1 = 1, f2 = 2, m;
	mov	w0, 1	// tmp96,
	str	w0, [sp, 24]	// tmp96, f1
// problem40.c:4:     int f1 = 1, f2 = 2, m;
	mov	w0, 2	// tmp97,
	str	w0, [sp, 28]	// tmp97, f2
// problem40.c:5:     int count = 0;
	str	wzr, [sp, 32]	//, count
// problem40.c:6:     while (count < n) {
	b	.L2		//
.L9:
// problem40.c:7:         f1 = f1 + f2;
	ldr	w1, [sp, 24]	// tmp99, f1
	ldr	w0, [sp, 28]	// tmp100, f2
	add	w0, w1, w0	// tmp98, tmp99, tmp100
	str	w0, [sp, 24]	// tmp98, f1
// problem40.c:8:         m = f1; f1 = f2; f2 = m;
	ldr	w0, [sp, 24]	// tmp101, f1
	str	w0, [sp, 44]	// tmp101, m
// problem40.c:8:         m = f1; f1 = f2; f2 = m;
	ldr	w0, [sp, 28]	// tmp102, f2
	str	w0, [sp, 24]	// tmp102, f1
// problem40.c:8:         m = f1; f1 = f2; f2 = m;
	ldr	w0, [sp, 44]	// tmp103, m
	str	w0, [sp, 28]	// tmp103, f2
// problem40.c:9:         int isprime = 1;
	mov	w0, 1	// tmp104,
	str	w0, [sp, 36]	// tmp104, isprime
// problem40.c:10:         for (int w = 2; w * w <= f1; w++) {
	mov	w0, 2	// tmp105,
	str	w0, [sp, 40]	// tmp105, w
// problem40.c:10:         for (int w = 2; w * w <= f1; w++) {
	b	.L3		//
.L6:
// problem40.c:11:             if (f1 % w == 0) {
	ldr	w0, [sp, 24]	// tmp106, f1
	ldr	w1, [sp, 40]	// tmp119, w
	sdiv	w2, w0, w1	// tmp118, tmp106, tmp119
	ldr	w1, [sp, 40]	// tmp121, w
	mul	w1, w2, w1	// tmp120, tmp118, tmp121
	sub	w0, w0, w1	// _1, tmp106, tmp120
// problem40.c:11:             if (f1 % w == 0) {
	cmp	w0, 0	// _1,
	bne	.L4		//,
// problem40.c:12:                 isprime = 0; break;
	str	wzr, [sp, 36]	//, isprime
// problem40.c:12:                 isprime = 0; break;
	b	.L5		//
.L4:
// problem40.c:10:         for (int w = 2; w * w <= f1; w++) {
	ldr	w0, [sp, 40]	// tmp123, w
	add	w0, w0, 1	// tmp122, tmp123,
	str	w0, [sp, 40]	// tmp122, w
.L3:
// problem40.c:10:         for (int w = 2; w * w <= f1; w++) {
	ldr	w0, [sp, 40]	// tmp124, w
	mul	w0, w0, w0	// _2, tmp124, tmp124
// problem40.c:10:         for (int w = 2; w * w <= f1; w++) {
	ldr	w1, [sp, 24]	// tmp125, f1
	cmp	w1, w0	// tmp125, _2
	bge	.L6		//,
.L5:
// problem40.c:15:         if (isprime) count += 1;
	ldr	w0, [sp, 36]	// tmp126, isprime
	cmp	w0, 0	// tmp126,
	beq	.L7		//,
// problem40.c:15:         if (isprime) count += 1;
	ldr	w0, [sp, 32]	// tmp128, count
	add	w0, w0, 1	// tmp127, tmp128,
	str	w0, [sp, 32]	// tmp127, count
.L7:
// problem40.c:16:         if (count == n) return f1;
	ldr	w1, [sp, 32]	// tmp129, count
	ldr	w0, [sp, 12]	// tmp130, n
	cmp	w1, w0	// tmp129, tmp130
	bne	.L2		//,
// problem40.c:16:         if (count == n) return f1;
	ldr	w0, [sp, 24]	// _9, f1
// problem40.c:16:         if (count == n) return f1;
	b	.L8		//
.L2:
// problem40.c:6:     while (count < n) {
	ldr	w1, [sp, 32]	// tmp131, count
	ldr	w0, [sp, 12]	// tmp132, n
	cmp	w1, w0	// tmp131, tmp132
	blt	.L9		//,
// problem40.c:18:     return 0;
	mov	w0, 0	// _9,
.L8:
// problem40.c:19: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem40.c"
	.align	3
.LC1:
	.string	"func0(1) == 2"
	.align	3
.LC2:
	.string	"func0(2) == 3"
	.align	3
.LC3:
	.string	"func0(3) == 5"
	.align	3
.LC4:
	.string	"func0(4) == 13"
	.align	3
.LC5:
	.string	"func0(5) == 89"
	.align	3
.LC6:
	.string	"func0(6) == 233"
	.align	3
.LC7:
	.string	"func0(7) == 1597"
	.align	3
.LC8:
	.string	"func0(8) == 28657"
	.align	3
.LC9:
	.string	"func0(9) == 514229"
	.align	3
.LC10:
	.string	"func0(10) == 433494437"
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
// problem40.c:27:     assert(func0(1) == 2);
	mov	w0, 1	//,
	bl	func0		//
// problem40.c:27:     assert(func0(1) == 2);
	cmp	w0, 2	// _1,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp104,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp104,
	mov	w2, 27	//,
	adrp	x0, .LC0	// tmp105,
	add	x1, x0, :lo12:.LC0	//, tmp105,
	adrp	x0, .LC1	// tmp106,
	add	x0, x0, :lo12:.LC1	//, tmp106,
	bl	__assert_fail		//
.L11:
// problem40.c:28:     assert(func0(2) == 3);
	mov	w0, 2	//,
	bl	func0		//
// problem40.c:28:     assert(func0(2) == 3);
	cmp	w0, 3	// _2,
	beq	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp107,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp107,
	mov	w2, 28	//,
	adrp	x0, .LC0	// tmp108,
	add	x1, x0, :lo12:.LC0	//, tmp108,
	adrp	x0, .LC2	// tmp109,
	add	x0, x0, :lo12:.LC2	//, tmp109,
	bl	__assert_fail		//
.L12:
// problem40.c:29:     assert(func0(3) == 5);
	mov	w0, 3	//,
	bl	func0		//
// problem40.c:29:     assert(func0(3) == 5);
	cmp	w0, 5	// _3,
	beq	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp110,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp110,
	mov	w2, 29	//,
	adrp	x0, .LC0	// tmp111,
	add	x1, x0, :lo12:.LC0	//, tmp111,
	adrp	x0, .LC3	// tmp112,
	add	x0, x0, :lo12:.LC3	//, tmp112,
	bl	__assert_fail		//
.L13:
// problem40.c:30:     assert(func0(4) == 13);
	mov	w0, 4	//,
	bl	func0		//
// problem40.c:30:     assert(func0(4) == 13);
	cmp	w0, 13	// _4,
	beq	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp113,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp113,
	mov	w2, 30	//,
	adrp	x0, .LC0	// tmp114,
	add	x1, x0, :lo12:.LC0	//, tmp114,
	adrp	x0, .LC4	// tmp115,
	add	x0, x0, :lo12:.LC4	//, tmp115,
	bl	__assert_fail		//
.L14:
// problem40.c:31:     assert(func0(5) == 89);
	mov	w0, 5	//,
	bl	func0		//
// problem40.c:31:     assert(func0(5) == 89);
	cmp	w0, 89	// _5,
	beq	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 31	//,
	adrp	x0, .LC0	// tmp117,
	add	x1, x0, :lo12:.LC0	//, tmp117,
	adrp	x0, .LC5	// tmp118,
	add	x0, x0, :lo12:.LC5	//, tmp118,
	bl	__assert_fail		//
.L15:
// problem40.c:32:     assert(func0(6) == 233);
	mov	w0, 6	//,
	bl	func0		//
// problem40.c:32:     assert(func0(6) == 233);
	cmp	w0, 233	// _6,
	beq	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 32	//,
	adrp	x0, .LC0	// tmp120,
	add	x1, x0, :lo12:.LC0	//, tmp120,
	adrp	x0, .LC6	// tmp121,
	add	x0, x0, :lo12:.LC6	//, tmp121,
	bl	__assert_fail		//
.L16:
// problem40.c:33:     assert(func0(7) == 1597);
	mov	w0, 7	//,
	bl	func0		//
// problem40.c:33:     assert(func0(7) == 1597);
	cmp	w0, 1597	// _7,
	beq	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp122,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp122,
	mov	w2, 33	//,
	adrp	x0, .LC0	// tmp123,
	add	x1, x0, :lo12:.LC0	//, tmp123,
	adrp	x0, .LC7	// tmp124,
	add	x0, x0, :lo12:.LC7	//, tmp124,
	bl	__assert_fail		//
.L17:
// problem40.c:34:     assert(func0(8) == 28657);
	mov	w0, 8	//,
	bl	func0		//
	mov	w1, w0	// _8,
// problem40.c:34:     assert(func0(8) == 28657);
	mov	w0, 28657	// tmp125,
	cmp	w1, w0	// _8, tmp125
	beq	.L18		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp126,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp126,
	mov	w2, 34	//,
	adrp	x0, .LC0	// tmp127,
	add	x1, x0, :lo12:.LC0	//, tmp127,
	adrp	x0, .LC8	// tmp128,
	add	x0, x0, :lo12:.LC8	//, tmp128,
	bl	__assert_fail		//
.L18:
// problem40.c:35:     assert(func0(9) == 514229);
	mov	w0, 9	//,
	bl	func0		//
	mov	w1, w0	// _9,
// problem40.c:35:     assert(func0(9) == 514229);
	mov	w0, 55477	// tmp129,
	movk	w0, 0x7, lsl 16	// tmp129,,
	cmp	w1, w0	// _9, tmp129
	beq	.L19		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp130,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp130,
	mov	w2, 35	//,
	adrp	x0, .LC0	// tmp131,
	add	x1, x0, :lo12:.LC0	//, tmp131,
	adrp	x0, .LC9	// tmp132,
	add	x0, x0, :lo12:.LC9	//, tmp132,
	bl	__assert_fail		//
.L19:
// problem40.c:36:     assert(func0(10) == 433494437);
	mov	w0, 10	//,
	bl	func0		//
	mov	w1, w0	// _10,
// problem40.c:36:     assert(func0(10) == 433494437);
	mov	w0, 39333	// tmp133,
	movk	w0, 0x19d6, lsl 16	// tmp133,,
	cmp	w1, w0	// _10, tmp133
	beq	.L20		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp134,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp134,
	mov	w2, 36	//,
	adrp	x0, .LC0	// tmp135,
	add	x1, x0, :lo12:.LC0	//, tmp135,
	adrp	x0, .LC10	// tmp136,
	add	x0, x0, :lo12:.LC10	//, tmp136,
	bl	__assert_fail		//
.L20:
// problem40.c:38:     return 0;
	mov	w0, 0	// _32,
// problem40.c:39: }
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
