	.arch armv8-a
	.file	"problem68.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!	//,,,
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -96
	str	x0, [sp, 40]	// s, s
	str	w1, [sp, 36]	// n, n
// problem68.c:5: int func0(const char *s, int n) {
	adrp	x0, :got:__stack_chk_guard	// tmp120,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp119, tmp120,
	ldr	x1, [x0]	// tmp151,
	str	x1, [sp, 104]	// tmp151, D.4947
	mov	x1, 0	// tmp151
// problem68.c:6:     char num1[10] = "";
	adrp	x0, .LC0	// tmp122,
	add	x0, x0, :lo12:.LC0	// tmp121, tmp122,
	ldrb	w0, [x0]	// tmp123,
	strb	w0, [sp, 72]	// tmp123, num1
	str	xzr, [sp, 73]	//, num1
	strb	wzr, [sp, 81]	//, num1
// problem68.c:7:     char num2[10] = "";
	adrp	x0, .LC0	// tmp125,
	add	x0, x0, :lo12:.LC0	// tmp124, tmp125,
	ldrb	w0, [x0]	// tmp126,
	strb	w0, [sp, 88]	// tmp126, num2
	str	xzr, [sp, 89]	//, num2
	strb	wzr, [sp, 97]	//, num2
// problem68.c:8:     int is12 = 0, j = 0;
	str	wzr, [sp, 60]	//, is12
// problem68.c:8:     int is12 = 0, j = 0;
	str	wzr, [sp, 64]	//, j
// problem68.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	str	wzr, [sp, 68]	//, i
// problem68.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	b	.L2		//
.L6:
// problem68.c:11:         if (isdigit(s[i])) {
	bl	__ctype_b_loc		//
	ldr	x1, [x0]	// _2, *_1
	ldrsw	x0, [sp, 68]	// _3, i
	ldr	x2, [sp, 40]	// tmp127, s
	add	x0, x2, x0	// _4, tmp127, _3
	ldrb	w0, [x0]	// _5, *_4
	and	x0, x0, 255	// _6, _5
	lsl	x0, x0, 1	// _7, _6,
	add	x0, x1, x0	// _8, _2, _7
	ldrh	w0, [x0]	// _9, *_8
	and	w0, w0, 2048	// _11, _10,
// problem68.c:11:         if (isdigit(s[i])) {
	cmp	w0, 0	// _11,
	beq	.L3		//,
// problem68.c:12:             if (is12 == 0) {
	ldr	w0, [sp, 60]	// tmp128, is12
	cmp	w0, 0	// tmp128,
	bne	.L4		//,
// problem68.c:13:                 num1[j++] = s[i];
	ldrsw	x0, [sp, 68]	// _12, i
	ldr	x1, [sp, 40]	// tmp129, s
	add	x1, x1, x0	// _13, tmp129, _12
// problem68.c:13:                 num1[j++] = s[i];
	ldr	w0, [sp, 64]	// j.0_14, j
	add	w2, w0, 1	// tmp130, j.0_14,
	str	w2, [sp, 64]	// tmp130, j
// problem68.c:13:                 num1[j++] = s[i];
	ldrb	w2, [x1]	// _15, *_13
// problem68.c:13:                 num1[j++] = s[i];
	sxtw	x0, w0	// tmp131, j.0_14
	add	x1, sp, 72	// tmp132,,
	strb	w2, [x1, x0]	// tmp133, num1[j.0_14]
	b	.L5		//
.L4:
// problem68.c:15:                 num2[j++] = s[i];
	ldrsw	x0, [sp, 68]	// _16, i
	ldr	x1, [sp, 40]	// tmp134, s
	add	x1, x1, x0	// _17, tmp134, _16
// problem68.c:15:                 num2[j++] = s[i];
	ldr	w0, [sp, 64]	// j.1_18, j
	add	w2, w0, 1	// tmp135, j.1_18,
	str	w2, [sp, 64]	// tmp135, j
// problem68.c:15:                 num2[j++] = s[i];
	ldrb	w2, [x1]	// _19, *_17
// problem68.c:15:                 num2[j++] = s[i];
	sxtw	x0, w0	// tmp136, j.1_18
	add	x1, sp, 88	// tmp137,,
	strb	w2, [x1, x0]	// tmp138, num2[j.1_18]
	b	.L5		//
.L3:
// problem68.c:18:             if (is12 == 0 && j > 0) {
	ldr	w0, [sp, 60]	// tmp139, is12
	cmp	w0, 0	// tmp139,
	bne	.L5		//,
// problem68.c:18:             if (is12 == 0 && j > 0) {
	ldr	w0, [sp, 64]	// tmp140, j
	cmp	w0, 0	// tmp140,
	ble	.L5		//,
// problem68.c:19:                 is12 = 1;
	mov	w0, 1	// tmp141,
	str	w0, [sp, 60]	// tmp141, is12
// problem68.c:20:                 j = 0;
	str	wzr, [sp, 64]	//, j
.L5:
// problem68.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	ldr	w0, [sp, 68]	// tmp143, i
	add	w0, w0, 1	// tmp142, tmp143,
	str	w0, [sp, 68]	// tmp142, i
.L2:
// problem68.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	ldrsw	x0, [sp, 68]	// _20, i
	ldr	x1, [sp, 40]	// tmp144, s
	add	x0, x1, x0	// _21, tmp144, _20
	ldrb	w0, [x0]	// _22, *_21
// problem68.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	cmp	w0, 0	// _22,
	bne	.L6		//,
// problem68.c:24:     return n - atoi(num1) - atoi(num2);
	add	x0, sp, 72	// tmp145,,
	bl	atoi		//
	mov	w1, w0	// _23,
// problem68.c:24:     return n - atoi(num1) - atoi(num2);
	ldr	w0, [sp, 36]	// tmp146, n
	sub	w19, w0, w1	// _24, tmp146, _23
// problem68.c:24:     return n - atoi(num1) - atoi(num2);
	add	x0, sp, 88	// tmp147,,
	bl	atoi		//
// problem68.c:24:     return n - atoi(num1) - atoi(num2);
	sub	w0, w19, w0	// _41, _24, _25
	mov	w1, w0	// <retval>, _41
// problem68.c:25: }
	adrp	x0, :got:__stack_chk_guard	// tmp150,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp149, tmp150,
	ldr	x3, [sp, 104]	// tmp152, D.4947
	ldr	x2, [x0]	// tmp153,
	subs	x3, x3, x2	// tmp152, tmp153
	mov	x2, 0	// tmp153
	beq	.L8		//,
	bl	__stack_chk_fail		//
.L8:
	mov	w0, w1	//, <retval>
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 112	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.zero	9
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"5 apples and 6 oranges"
	.align	3
.LC2:
	.string	"problem68.c"
	.align	3
.LC3:
	.string	"func0(\"5 apples and 6 oranges\", 19) == 8"
	.align	3
.LC4:
	.string	"func0(\"5 apples and 6 oranges\", 21) == 10"
	.align	3
.LC5:
	.string	"0 apples and 1 oranges"
	.align	3
.LC6:
	.string	"func0(\"0 apples and 1 oranges\", 3) == 2"
	.align	3
.LC7:
	.string	"1 apples and 0 oranges"
	.align	3
.LC8:
	.string	"func0(\"1 apples and 0 oranges\", 3) == 2"
	.align	3
.LC9:
	.string	"2 apples and 3 oranges"
	.align	3
.LC10:
	.string	"func0(\"2 apples and 3 oranges\", 100) == 95"
	.align	3
.LC11:
	.string	"func0(\"2 apples and 3 oranges\", 5) == 0"
	.align	3
.LC12:
	.string	"1 apples and 100 oranges"
	.align	3
.LC13:
	.string	"func0(\"1 apples and 100 oranges\", 120) == 19"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp	//,
// problem68.c:32:     assert(func0("5 apples and 6 oranges", 19) == 8);
	mov	w1, 19	//,
	adrp	x0, .LC1	// tmp101,
	add	x0, x0, :lo12:.LC1	//, tmp101,
	bl	func0		//
	cmp	w0, 8	// _1,
	beq	.L10		//,
// problem68.c:32:     assert(func0("5 apples and 6 oranges", 19) == 8);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp102,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp102,
	mov	w2, 32	//,
	adrp	x0, .LC2	// tmp103,
	add	x1, x0, :lo12:.LC2	//, tmp103,
	adrp	x0, .LC3	// tmp104,
	add	x0, x0, :lo12:.LC3	//, tmp104,
	bl	__assert_fail		//
.L10:
// problem68.c:33:     assert(func0("5 apples and 6 oranges", 21) == 10);
	mov	w1, 21	//,
	adrp	x0, .LC1	// tmp105,
	add	x0, x0, :lo12:.LC1	//, tmp105,
	bl	func0		//
	cmp	w0, 10	// _2,
	beq	.L11		//,
// problem68.c:33:     assert(func0("5 apples and 6 oranges", 21) == 10);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp106,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp106,
	mov	w2, 33	//,
	adrp	x0, .LC2	// tmp107,
	add	x1, x0, :lo12:.LC2	//, tmp107,
	adrp	x0, .LC4	// tmp108,
	add	x0, x0, :lo12:.LC4	//, tmp108,
	bl	__assert_fail		//
.L11:
// problem68.c:34:     assert(func0("0 apples and 1 oranges", 3) == 2);
	mov	w1, 3	//,
	adrp	x0, .LC5	// tmp109,
	add	x0, x0, :lo12:.LC5	//, tmp109,
	bl	func0		//
	cmp	w0, 2	// _3,
	beq	.L12		//,
// problem68.c:34:     assert(func0("0 apples and 1 oranges", 3) == 2);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp110,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp110,
	mov	w2, 34	//,
	adrp	x0, .LC2	// tmp111,
	add	x1, x0, :lo12:.LC2	//, tmp111,
	adrp	x0, .LC6	// tmp112,
	add	x0, x0, :lo12:.LC6	//, tmp112,
	bl	__assert_fail		//
.L12:
// problem68.c:35:     assert(func0("1 apples and 0 oranges", 3) == 2);
	mov	w1, 3	//,
	adrp	x0, .LC7	// tmp113,
	add	x0, x0, :lo12:.LC7	//, tmp113,
	bl	func0		//
	cmp	w0, 2	// _4,
	beq	.L13		//,
// problem68.c:35:     assert(func0("1 apples and 0 oranges", 3) == 2);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp114,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp114,
	mov	w2, 35	//,
	adrp	x0, .LC2	// tmp115,
	add	x1, x0, :lo12:.LC2	//, tmp115,
	adrp	x0, .LC8	// tmp116,
	add	x0, x0, :lo12:.LC8	//, tmp116,
	bl	__assert_fail		//
.L13:
// problem68.c:36:     assert(func0("2 apples and 3 oranges", 100) == 95);
	mov	w1, 100	//,
	adrp	x0, .LC9	// tmp117,
	add	x0, x0, :lo12:.LC9	//, tmp117,
	bl	func0		//
	cmp	w0, 95	// _5,
	beq	.L14		//,
// problem68.c:36:     assert(func0("2 apples and 3 oranges", 100) == 95);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp118,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp118,
	mov	w2, 36	//,
	adrp	x0, .LC2	// tmp119,
	add	x1, x0, :lo12:.LC2	//, tmp119,
	adrp	x0, .LC10	// tmp120,
	add	x0, x0, :lo12:.LC10	//, tmp120,
	bl	__assert_fail		//
.L14:
// problem68.c:37:     assert(func0("2 apples and 3 oranges", 5) == 0);
	mov	w1, 5	//,
	adrp	x0, .LC9	// tmp121,
	add	x0, x0, :lo12:.LC9	//, tmp121,
	bl	func0		//
	cmp	w0, 0	// _6,
	beq	.L15		//,
// problem68.c:37:     assert(func0("2 apples and 3 oranges", 5) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp122,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp122,
	mov	w2, 37	//,
	adrp	x0, .LC2	// tmp123,
	add	x1, x0, :lo12:.LC2	//, tmp123,
	adrp	x0, .LC11	// tmp124,
	add	x0, x0, :lo12:.LC11	//, tmp124,
	bl	__assert_fail		//
.L15:
// problem68.c:38:     assert(func0("1 apples and 100 oranges", 120) == 19);
	mov	w1, 120	//,
	adrp	x0, .LC12	// tmp125,
	add	x0, x0, :lo12:.LC12	//, tmp125,
	bl	func0		//
	cmp	w0, 19	// _7,
	beq	.L16		//,
// problem68.c:38:     assert(func0("1 apples and 100 oranges", 120) == 19);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp126,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp126,
	mov	w2, 38	//,
	adrp	x0, .LC2	// tmp127,
	add	x1, x0, :lo12:.LC2	//, tmp127,
	adrp	x0, .LC13	// tmp128,
	add	x0, x0, :lo12:.LC13	//, tmp128,
	bl	__assert_fail		//
.L16:
// problem68.c:40:     return 0;
	mov	w0, 0	// _23,
// problem68.c:41: }
	ldp	x29, x30, [sp], 16	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
