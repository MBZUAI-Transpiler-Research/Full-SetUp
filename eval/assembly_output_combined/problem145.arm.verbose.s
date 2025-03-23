	.arch armv8-a
	.file	"problem145.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #272	//,,
	.cfi_def_cfa_offset 272
	stp	x29, x30, [sp, 256]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 256	//,,
	str	x0, [sp, 8]	// x, x
	str	x1, [sp]	// n, n
// problem145.c:4: int func0(const char* x, const char* n){
	adrp	x0, :got:__stack_chk_guard	// tmp121,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp121,
	ldr	x1, [x0]	// tmp189,
	str	x1, [sp, 248]	// tmp189, D.5449
	mov	x1, 0	// tmp189
// problem145.c:8:     for (i = 0; x[i] != '/'; i++) {
	str	wzr, [sp, 16]	//, i
// problem145.c:8:     for (i = 0; x[i] != '/'; i++) {
	b	.L2		//
.L3:
// problem145.c:9:         num[i] = x[i];
	ldrsw	x0, [sp, 16]	// _1, i
	ldr	x1, [sp, 8]	// tmp122, x
	add	x0, x1, x0	// _2, tmp122, _1
	ldrb	w2, [x0]	// _3, *_2
// problem145.c:9:         num[i] = x[i];
	ldrsw	x0, [sp, 16]	// tmp123, i
	add	x1, sp, 40	// tmp124,,
	strb	w2, [x1, x0]	// tmp125, num[i_28]
// problem145.c:8:     for (i = 0; x[i] != '/'; i++) {
	ldr	w0, [sp, 16]	// tmp127, i
	add	w0, w0, 1	// tmp126, tmp127,
	str	w0, [sp, 16]	// tmp126, i
.L2:
// problem145.c:8:     for (i = 0; x[i] != '/'; i++) {
	ldrsw	x0, [sp, 16]	// _4, i
	ldr	x1, [sp, 8]	// tmp128, x
	add	x0, x1, x0	// _5, tmp128, _4
	ldrb	w0, [x0]	// _6, *_5
// problem145.c:8:     for (i = 0; x[i] != '/'; i++) {
	cmp	w0, 47	// _6,
	bne	.L3		//,
// problem145.c:11:     num[i] = '\0';
	ldrsw	x0, [sp, 16]	// tmp129, i
	add	x1, sp, 40	// tmp130,,
	strb	wzr, [x1, x0]	//, num[i_28]
// problem145.c:12:     a = atoi(num);
	add	x0, sp, 40	// tmp131,,
	bl	atoi		//
	str	w0, [sp, 24]	//, a
// problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	str	wzr, [sp, 20]	//, j
// problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	ldr	w0, [sp, 16]	// tmp133, i
	add	w0, w0, 1	// tmp132, tmp133,
	str	w0, [sp, 16]	// tmp132, i
// problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	b	.L4		//
.L5:
// problem145.c:15:         den[j] = x[i];
	ldrsw	x0, [sp, 16]	// _7, i
	ldr	x1, [sp, 8]	// tmp134, x
	add	x0, x1, x0	// _8, tmp134, _7
	ldrb	w2, [x0]	// _9, *_8
// problem145.c:15:         den[j] = x[i];
	ldrsw	x0, [sp, 20]	// tmp135, j
	add	x1, sp, 144	// tmp136,,
	strb	w2, [x1, x0]	// tmp137, den[j_32]
// problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	ldr	w0, [sp, 16]	// tmp139, i
	add	w0, w0, 1	// tmp138, tmp139,
	str	w0, [sp, 16]	// tmp138, i
// problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	ldr	w0, [sp, 20]	// tmp141, j
	add	w0, w0, 1	// tmp140, tmp141,
	str	w0, [sp, 20]	// tmp140, j
.L4:
// problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	ldrsw	x0, [sp, 16]	// _10, i
	ldr	x1, [sp, 8]	// tmp142, x
	add	x0, x1, x0	// _11, tmp142, _10
	ldrb	w0, [x0]	// _12, *_11
// problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	cmp	w0, 0	// _12,
	bne	.L5		//,
// problem145.c:17:     den[j] = '\0';
	ldrsw	x0, [sp, 20]	// tmp143, j
	add	x1, sp, 144	// tmp144,,
	strb	wzr, [x1, x0]	//, den[j_32]
// problem145.c:18:     b = atoi(den);
	add	x0, sp, 144	// tmp145,,
	bl	atoi		//
	str	w0, [sp, 28]	//, b
// problem145.c:20:     for (i = 0; n[i] != '/'; i++) {
	str	wzr, [sp, 16]	//, i
// problem145.c:20:     for (i = 0; n[i] != '/'; i++) {
	b	.L6		//
.L7:
// problem145.c:21:         num[i] = n[i];
	ldrsw	x0, [sp, 16]	// _13, i
	ldr	x1, [sp]	// tmp146, n
	add	x0, x1, x0	// _14, tmp146, _13
	ldrb	w2, [x0]	// _15, *_14
// problem145.c:21:         num[i] = n[i];
	ldrsw	x0, [sp, 16]	// tmp147, i
	add	x1, sp, 40	// tmp148,,
	strb	w2, [x1, x0]	// tmp149, num[i_30]
// problem145.c:20:     for (i = 0; n[i] != '/'; i++) {
	ldr	w0, [sp, 16]	// tmp151, i
	add	w0, w0, 1	// tmp150, tmp151,
	str	w0, [sp, 16]	// tmp150, i
.L6:
// problem145.c:20:     for (i = 0; n[i] != '/'; i++) {
	ldrsw	x0, [sp, 16]	// _16, i
	ldr	x1, [sp]	// tmp152, n
	add	x0, x1, x0	// _17, tmp152, _16
	ldrb	w0, [x0]	// _18, *_17
// problem145.c:20:     for (i = 0; n[i] != '/'; i++) {
	cmp	w0, 47	// _18,
	bne	.L7		//,
// problem145.c:23:     num[i] = '\0';
	ldrsw	x0, [sp, 16]	// tmp153, i
	add	x1, sp, 40	// tmp154,,
	strb	wzr, [x1, x0]	//, num[i_30]
// problem145.c:24:     c = atoi(num);
	add	x0, sp, 40	// tmp155,,
	bl	atoi		//
	str	w0, [sp, 32]	//, c
// problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	str	wzr, [sp, 20]	//, j
// problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	ldr	w0, [sp, 16]	// tmp157, i
	add	w0, w0, 1	// tmp156, tmp157,
	str	w0, [sp, 16]	// tmp156, i
// problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	b	.L8		//
.L9:
// problem145.c:27:         den[j] = n[i];
	ldrsw	x0, [sp, 16]	// _19, i
	ldr	x1, [sp]	// tmp158, n
	add	x0, x1, x0	// _20, tmp158, _19
	ldrb	w2, [x0]	// _21, *_20
// problem145.c:27:         den[j] = n[i];
	ldrsw	x0, [sp, 20]	// tmp159, j
	add	x1, sp, 144	// tmp160,,
	strb	w2, [x1, x0]	// tmp161, den[j_33]
// problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	ldr	w0, [sp, 16]	// tmp163, i
	add	w0, w0, 1	// tmp162, tmp163,
	str	w0, [sp, 16]	// tmp162, i
// problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	ldr	w0, [sp, 20]	// tmp165, j
	add	w0, w0, 1	// tmp164, tmp165,
	str	w0, [sp, 20]	// tmp164, j
.L8:
// problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	ldrsw	x0, [sp, 16]	// _22, i
	ldr	x1, [sp]	// tmp166, n
	add	x0, x1, x0	// _23, tmp166, _22
	ldrb	w0, [x0]	// _24, *_23
// problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	cmp	w0, 0	// _24,
	bne	.L9		//,
// problem145.c:29:     den[j] = '\0';
	ldrsw	x0, [sp, 20]	// tmp167, j
	add	x1, sp, 144	// tmp168,,
	strb	wzr, [x1, x0]	//, den[j_33]
// problem145.c:30:     d = atoi(den);
	add	x0, sp, 144	// tmp169,,
	bl	atoi		//
	str	w0, [sp, 36]	//, d
// problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	ldr	w1, [sp, 24]	// tmp170, a
	ldr	w0, [sp, 32]	// tmp171, c
	mul	w0, w1, w0	// _25, tmp170, tmp171
// problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	ldr	w2, [sp, 28]	// tmp172, b
	ldr	w1, [sp, 36]	// tmp173, d
	mul	w1, w2, w1	// _26, tmp172, tmp173
// problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	sdiv	w2, w0, w1	// tmp185, _25, _26
	mul	w1, w2, w1	// tmp186, tmp185, _26
	sub	w0, w0, w1	// _27, _25, tmp186
// problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	cmp	w0, 0	// _27,
	bne	.L10		//,
// problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	mov	w0, 1	// _34,
// problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	b	.L12		//
.L10:
// problem145.c:33:     return 0;
	mov	w0, 0	// _34,
.L12:
// problem145.c:34: }
	mov	w1, w0	// <retval>, _34
	adrp	x0, :got:__stack_chk_guard	// tmp188,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp188,
	ldr	x3, [sp, 248]	// tmp190, D.5449
	ldr	x2, [x0]	// tmp191,
	subs	x3, x3, x2	// tmp190, tmp191
	mov	x2, 0	// tmp191
	beq	.L13		//,
	bl	__stack_chk_fail		//
.L13:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 256]	//,,
	add	sp, sp, 272	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"5/1"
	.align	3
.LC1:
	.string	"1/5"
	.align	3
.LC2:
	.string	"problem145.c"
	.align	3
.LC3:
	.string	"func0(\"1/5\", \"5/1\") == 1"
	.align	3
.LC4:
	.string	"2/1"
	.align	3
.LC5:
	.string	"1/6"
	.align	3
.LC6:
	.string	"func0(\"1/6\", \"2/1\") == 0"
	.align	3
.LC7:
	.string	"3/1"
	.align	3
.LC8:
	.string	"func0(\"5/1\", \"3/1\") == 1"
	.align	3
.LC9:
	.string	"10/2"
	.align	3
.LC10:
	.string	"7/10"
	.align	3
.LC11:
	.string	"func0(\"7/10\", \"10/2\") == 0"
	.align	3
.LC12:
	.string	"50/10"
	.align	3
.LC13:
	.string	"2/10"
	.align	3
.LC14:
	.string	"func0(\"2/10\", \"50/10\") == 1"
	.align	3
.LC15:
	.string	"4/2"
	.align	3
.LC16:
	.string	"7/2"
	.align	3
.LC17:
	.string	"func0(\"7/2\", \"4/2\") == 1"
	.align	3
.LC18:
	.string	"6/1"
	.align	3
.LC19:
	.string	"11/6"
	.align	3
.LC20:
	.string	"func0(\"11/6\", \"6/1\") == 1"
	.align	3
.LC21:
	.string	"5/2"
	.align	3
.LC22:
	.string	"2/3"
	.align	3
.LC23:
	.string	"func0(\"2/3\", \"5/2\") == 0"
	.align	3
.LC24:
	.string	"3/5"
	.align	3
.LC25:
	.string	"func0(\"5/2\", \"3/5\") == 0"
	.align	3
.LC26:
	.string	"8/4"
	.align	3
.LC27:
	.string	"2/4"
	.align	3
.LC28:
	.string	"func0(\"2/4\", \"8/4\") == 1"
	.align	3
.LC29:
	.string	"func0(\"2/4\", \"4/2\") == 1"
	.align	3
.LC30:
	.string	"func0(\"1/5\", \"1/5\") == 0"
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
// problem145.c:41:     assert(func0("1/5", "5/1") == 1);
	adrp	x0, .LC0	// tmp107,
	add	x1, x0, :lo12:.LC0	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	func0		//
// problem145.c:41:     assert(func0("1/5", "5/1") == 1);
	cmp	w0, 1	// _1,
	beq	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp109,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp109,
	mov	w2, 41	//,
	adrp	x0, .LC2	// tmp110,
	add	x1, x0, :lo12:.LC2	//, tmp110,
	adrp	x0, .LC3	// tmp111,
	add	x0, x0, :lo12:.LC3	//, tmp111,
	bl	__assert_fail		//
.L15:
// problem145.c:42:     assert(func0("1/6", "2/1") == 0);
	adrp	x0, .LC4	// tmp112,
	add	x1, x0, :lo12:.LC4	//, tmp112,
	adrp	x0, .LC5	// tmp113,
	add	x0, x0, :lo12:.LC5	//, tmp113,
	bl	func0		//
// problem145.c:42:     assert(func0("1/6", "2/1") == 0);
	cmp	w0, 0	// _2,
	beq	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp114,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp114,
	mov	w2, 42	//,
	adrp	x0, .LC2	// tmp115,
	add	x1, x0, :lo12:.LC2	//, tmp115,
	adrp	x0, .LC6	// tmp116,
	add	x0, x0, :lo12:.LC6	//, tmp116,
	bl	__assert_fail		//
.L16:
// problem145.c:43:     assert(func0("5/1", "3/1") == 1);
	adrp	x0, .LC7	// tmp117,
	add	x1, x0, :lo12:.LC7	//, tmp117,
	adrp	x0, .LC0	// tmp118,
	add	x0, x0, :lo12:.LC0	//, tmp118,
	bl	func0		//
// problem145.c:43:     assert(func0("5/1", "3/1") == 1);
	cmp	w0, 1	// _3,
	beq	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 43	//,
	adrp	x0, .LC2	// tmp120,
	add	x1, x0, :lo12:.LC2	//, tmp120,
	adrp	x0, .LC8	// tmp121,
	add	x0, x0, :lo12:.LC8	//, tmp121,
	bl	__assert_fail		//
.L17:
// problem145.c:44:     assert(func0("7/10", "10/2") == 0);
	adrp	x0, .LC9	// tmp122,
	add	x1, x0, :lo12:.LC9	//, tmp122,
	adrp	x0, .LC10	// tmp123,
	add	x0, x0, :lo12:.LC10	//, tmp123,
	bl	func0		//
// problem145.c:44:     assert(func0("7/10", "10/2") == 0);
	cmp	w0, 0	// _4,
	beq	.L18		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp124,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp124,
	mov	w2, 44	//,
	adrp	x0, .LC2	// tmp125,
	add	x1, x0, :lo12:.LC2	//, tmp125,
	adrp	x0, .LC11	// tmp126,
	add	x0, x0, :lo12:.LC11	//, tmp126,
	bl	__assert_fail		//
.L18:
// problem145.c:45:     assert(func0("2/10", "50/10") == 1);
	adrp	x0, .LC12	// tmp127,
	add	x1, x0, :lo12:.LC12	//, tmp127,
	adrp	x0, .LC13	// tmp128,
	add	x0, x0, :lo12:.LC13	//, tmp128,
	bl	func0		//
// problem145.c:45:     assert(func0("2/10", "50/10") == 1);
	cmp	w0, 1	// _5,
	beq	.L19		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp129,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp129,
	mov	w2, 45	//,
	adrp	x0, .LC2	// tmp130,
	add	x1, x0, :lo12:.LC2	//, tmp130,
	adrp	x0, .LC14	// tmp131,
	add	x0, x0, :lo12:.LC14	//, tmp131,
	bl	__assert_fail		//
.L19:
// problem145.c:46:     assert(func0("7/2", "4/2") == 1);
	adrp	x0, .LC15	// tmp132,
	add	x1, x0, :lo12:.LC15	//, tmp132,
	adrp	x0, .LC16	// tmp133,
	add	x0, x0, :lo12:.LC16	//, tmp133,
	bl	func0		//
// problem145.c:46:     assert(func0("7/2", "4/2") == 1);
	cmp	w0, 1	// _6,
	beq	.L20		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp134,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp134,
	mov	w2, 46	//,
	adrp	x0, .LC2	// tmp135,
	add	x1, x0, :lo12:.LC2	//, tmp135,
	adrp	x0, .LC17	// tmp136,
	add	x0, x0, :lo12:.LC17	//, tmp136,
	bl	__assert_fail		//
.L20:
// problem145.c:47:     assert(func0("11/6", "6/1") == 1);
	adrp	x0, .LC18	// tmp137,
	add	x1, x0, :lo12:.LC18	//, tmp137,
	adrp	x0, .LC19	// tmp138,
	add	x0, x0, :lo12:.LC19	//, tmp138,
	bl	func0		//
// problem145.c:47:     assert(func0("11/6", "6/1") == 1);
	cmp	w0, 1	// _7,
	beq	.L21		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp139,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp139,
	mov	w2, 47	//,
	adrp	x0, .LC2	// tmp140,
	add	x1, x0, :lo12:.LC2	//, tmp140,
	adrp	x0, .LC20	// tmp141,
	add	x0, x0, :lo12:.LC20	//, tmp141,
	bl	__assert_fail		//
.L21:
// problem145.c:48:     assert(func0("2/3", "5/2") == 0);
	adrp	x0, .LC21	// tmp142,
	add	x1, x0, :lo12:.LC21	//, tmp142,
	adrp	x0, .LC22	// tmp143,
	add	x0, x0, :lo12:.LC22	//, tmp143,
	bl	func0		//
// problem145.c:48:     assert(func0("2/3", "5/2") == 0);
	cmp	w0, 0	// _8,
	beq	.L22		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp144,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp144,
	mov	w2, 48	//,
	adrp	x0, .LC2	// tmp145,
	add	x1, x0, :lo12:.LC2	//, tmp145,
	adrp	x0, .LC23	// tmp146,
	add	x0, x0, :lo12:.LC23	//, tmp146,
	bl	__assert_fail		//
.L22:
// problem145.c:49:     assert(func0("5/2", "3/5") == 0);
	adrp	x0, .LC24	// tmp147,
	add	x1, x0, :lo12:.LC24	//, tmp147,
	adrp	x0, .LC21	// tmp148,
	add	x0, x0, :lo12:.LC21	//, tmp148,
	bl	func0		//
// problem145.c:49:     assert(func0("5/2", "3/5") == 0);
	cmp	w0, 0	// _9,
	beq	.L23		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp149,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp149,
	mov	w2, 49	//,
	adrp	x0, .LC2	// tmp150,
	add	x1, x0, :lo12:.LC2	//, tmp150,
	adrp	x0, .LC25	// tmp151,
	add	x0, x0, :lo12:.LC25	//, tmp151,
	bl	__assert_fail		//
.L23:
// problem145.c:50:     assert(func0("2/4", "8/4") == 1);
	adrp	x0, .LC26	// tmp152,
	add	x1, x0, :lo12:.LC26	//, tmp152,
	adrp	x0, .LC27	// tmp153,
	add	x0, x0, :lo12:.LC27	//, tmp153,
	bl	func0		//
// problem145.c:50:     assert(func0("2/4", "8/4") == 1);
	cmp	w0, 1	// _10,
	beq	.L24		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp154,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp154,
	mov	w2, 50	//,
	adrp	x0, .LC2	// tmp155,
	add	x1, x0, :lo12:.LC2	//, tmp155,
	adrp	x0, .LC28	// tmp156,
	add	x0, x0, :lo12:.LC28	//, tmp156,
	bl	__assert_fail		//
.L24:
// problem145.c:51:     assert(func0("2/4", "4/2") == 1);
	adrp	x0, .LC15	// tmp157,
	add	x1, x0, :lo12:.LC15	//, tmp157,
	adrp	x0, .LC27	// tmp158,
	add	x0, x0, :lo12:.LC27	//, tmp158,
	bl	func0		//
// problem145.c:51:     assert(func0("2/4", "4/2") == 1);
	cmp	w0, 1	// _11,
	beq	.L25		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp159,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp159,
	mov	w2, 51	//,
	adrp	x0, .LC2	// tmp160,
	add	x1, x0, :lo12:.LC2	//, tmp160,
	adrp	x0, .LC29	// tmp161,
	add	x0, x0, :lo12:.LC29	//, tmp161,
	bl	__assert_fail		//
.L25:
// problem145.c:52:     assert(func0("1/5", "5/1") == 1);
	adrp	x0, .LC0	// tmp162,
	add	x1, x0, :lo12:.LC0	//, tmp162,
	adrp	x0, .LC1	// tmp163,
	add	x0, x0, :lo12:.LC1	//, tmp163,
	bl	func0		//
// problem145.c:52:     assert(func0("1/5", "5/1") == 1);
	cmp	w0, 1	// _12,
	beq	.L26		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp164,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp164,
	mov	w2, 52	//,
	adrp	x0, .LC2	// tmp165,
	add	x1, x0, :lo12:.LC2	//, tmp165,
	adrp	x0, .LC3	// tmp166,
	add	x0, x0, :lo12:.LC3	//, tmp166,
	bl	__assert_fail		//
.L26:
// problem145.c:53:     assert(func0("1/5", "1/5") == 0);
	adrp	x0, .LC1	// tmp167,
	add	x1, x0, :lo12:.LC1	//, tmp167,
	adrp	x0, .LC1	// tmp168,
	add	x0, x0, :lo12:.LC1	//, tmp168,
	bl	func0		//
// problem145.c:53:     assert(func0("1/5", "1/5") == 0);
	cmp	w0, 0	// _13,
	beq	.L27		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp169,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp169,
	mov	w2, 53	//,
	adrp	x0, .LC2	// tmp170,
	add	x1, x0, :lo12:.LC2	//, tmp170,
	adrp	x0, .LC30	// tmp171,
	add	x0, x0, :lo12:.LC30	//, tmp171,
	bl	__assert_fail		//
.L27:
// problem145.c:55:     return 0;
	mov	w0, 0	// _41,
// problem145.c:56: }
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
