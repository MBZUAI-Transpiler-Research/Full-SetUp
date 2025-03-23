	.arch armv8-a
	.file	"problem145.c"
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
	stp	x29, x30, [sp, -272]!	//,,,
	.cfi_def_cfa_offset 272
	.cfi_offset 29, -272
	.cfi_offset 30, -264
	mov	x29, sp	//,
	str	x0, [sp, 24]	// x, x
	str	x1, [sp, 16]	// n, n
// problem145.c:4: int func0(const char* x, const char* n){
	adrp	x0, :got:__stack_chk_guard	// tmp122,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp121, tmp122,
	ldr	x1, [x0]	// tmp191,
	str	x1, [sp, 264]	// tmp191, D.4860
	mov	x1, 0	// tmp191
// problem145.c:8:     for (i = 0; x[i] != '/'; i++) {
	str	wzr, [sp, 32]	//, i
// problem145.c:8:     for (i = 0; x[i] != '/'; i++) {
	b	.L2		//
.L3:
// problem145.c:9:         num[i] = x[i];
	ldrsw	x0, [sp, 32]	// _1, i
	ldr	x1, [sp, 24]	// tmp123, x
	add	x0, x1, x0	// _2, tmp123, _1
	ldrb	w2, [x0]	// _3, *_2
// problem145.c:9:         num[i] = x[i];
	ldrsw	x0, [sp, 32]	// tmp124, i
	add	x1, sp, 56	// tmp125,,
	strb	w2, [x1, x0]	// tmp126, num[i_28]
// problem145.c:8:     for (i = 0; x[i] != '/'; i++) {
	ldr	w0, [sp, 32]	// tmp128, i
	add	w0, w0, 1	// tmp127, tmp128,
	str	w0, [sp, 32]	// tmp127, i
.L2:
// problem145.c:8:     for (i = 0; x[i] != '/'; i++) {
	ldrsw	x0, [sp, 32]	// _4, i
	ldr	x1, [sp, 24]	// tmp129, x
	add	x0, x1, x0	// _5, tmp129, _4
	ldrb	w0, [x0]	// _6, *_5
// problem145.c:8:     for (i = 0; x[i] != '/'; i++) {
	cmp	w0, 47	// _6,
	bne	.L3		//,
// problem145.c:11:     num[i] = '\0';
	ldrsw	x0, [sp, 32]	// tmp130, i
	add	x1, sp, 56	// tmp131,,
	strb	wzr, [x1, x0]	//, num[i_28]
// problem145.c:12:     a = atoi(num);
	add	x0, sp, 56	// tmp132,,
	bl	atoi		//
	str	w0, [sp, 40]	//, a
// problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	str	wzr, [sp, 36]	//, j
// problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	ldr	w0, [sp, 32]	// tmp134, i
	add	w0, w0, 1	// tmp133, tmp134,
	str	w0, [sp, 32]	// tmp133, i
// problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	b	.L4		//
.L5:
// problem145.c:15:         den[j] = x[i];
	ldrsw	x0, [sp, 32]	// _7, i
	ldr	x1, [sp, 24]	// tmp135, x
	add	x0, x1, x0	// _8, tmp135, _7
	ldrb	w2, [x0]	// _9, *_8
// problem145.c:15:         den[j] = x[i];
	ldrsw	x0, [sp, 36]	// tmp136, j
	add	x1, sp, 160	// tmp137,,
	strb	w2, [x1, x0]	// tmp138, den[j_32]
// problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	ldr	w0, [sp, 32]	// tmp140, i
	add	w0, w0, 1	// tmp139, tmp140,
	str	w0, [sp, 32]	// tmp139, i
// problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	ldr	w0, [sp, 36]	// tmp142, j
	add	w0, w0, 1	// tmp141, tmp142,
	str	w0, [sp, 36]	// tmp141, j
.L4:
// problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	ldrsw	x0, [sp, 32]	// _10, i
	ldr	x1, [sp, 24]	// tmp143, x
	add	x0, x1, x0	// _11, tmp143, _10
	ldrb	w0, [x0]	// _12, *_11
// problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	cmp	w0, 0	// _12,
	bne	.L5		//,
// problem145.c:17:     den[j] = '\0';
	ldrsw	x0, [sp, 36]	// tmp144, j
	add	x1, sp, 160	// tmp145,,
	strb	wzr, [x1, x0]	//, den[j_32]
// problem145.c:18:     b = atoi(den);
	add	x0, sp, 160	// tmp146,,
	bl	atoi		//
	str	w0, [sp, 44]	//, b
// problem145.c:20:     for (i = 0; n[i] != '/'; i++) {
	str	wzr, [sp, 32]	//, i
// problem145.c:20:     for (i = 0; n[i] != '/'; i++) {
	b	.L6		//
.L7:
// problem145.c:21:         num[i] = n[i];
	ldrsw	x0, [sp, 32]	// _13, i
	ldr	x1, [sp, 16]	// tmp147, n
	add	x0, x1, x0	// _14, tmp147, _13
	ldrb	w2, [x0]	// _15, *_14
// problem145.c:21:         num[i] = n[i];
	ldrsw	x0, [sp, 32]	// tmp148, i
	add	x1, sp, 56	// tmp149,,
	strb	w2, [x1, x0]	// tmp150, num[i_30]
// problem145.c:20:     for (i = 0; n[i] != '/'; i++) {
	ldr	w0, [sp, 32]	// tmp152, i
	add	w0, w0, 1	// tmp151, tmp152,
	str	w0, [sp, 32]	// tmp151, i
.L6:
// problem145.c:20:     for (i = 0; n[i] != '/'; i++) {
	ldrsw	x0, [sp, 32]	// _16, i
	ldr	x1, [sp, 16]	// tmp153, n
	add	x0, x1, x0	// _17, tmp153, _16
	ldrb	w0, [x0]	// _18, *_17
// problem145.c:20:     for (i = 0; n[i] != '/'; i++) {
	cmp	w0, 47	// _18,
	bne	.L7		//,
// problem145.c:23:     num[i] = '\0';
	ldrsw	x0, [sp, 32]	// tmp154, i
	add	x1, sp, 56	// tmp155,,
	strb	wzr, [x1, x0]	//, num[i_30]
// problem145.c:24:     c = atoi(num);
	add	x0, sp, 56	// tmp156,,
	bl	atoi		//
	str	w0, [sp, 48]	//, c
// problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	str	wzr, [sp, 36]	//, j
// problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	ldr	w0, [sp, 32]	// tmp158, i
	add	w0, w0, 1	// tmp157, tmp158,
	str	w0, [sp, 32]	// tmp157, i
// problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	b	.L8		//
.L9:
// problem145.c:27:         den[j] = n[i];
	ldrsw	x0, [sp, 32]	// _19, i
	ldr	x1, [sp, 16]	// tmp159, n
	add	x0, x1, x0	// _20, tmp159, _19
	ldrb	w2, [x0]	// _21, *_20
// problem145.c:27:         den[j] = n[i];
	ldrsw	x0, [sp, 36]	// tmp160, j
	add	x1, sp, 160	// tmp161,,
	strb	w2, [x1, x0]	// tmp162, den[j_33]
// problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	ldr	w0, [sp, 32]	// tmp164, i
	add	w0, w0, 1	// tmp163, tmp164,
	str	w0, [sp, 32]	// tmp163, i
// problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	ldr	w0, [sp, 36]	// tmp166, j
	add	w0, w0, 1	// tmp165, tmp166,
	str	w0, [sp, 36]	// tmp165, j
.L8:
// problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	ldrsw	x0, [sp, 32]	// _22, i
	ldr	x1, [sp, 16]	// tmp167, n
	add	x0, x1, x0	// _23, tmp167, _22
	ldrb	w0, [x0]	// _24, *_23
// problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	cmp	w0, 0	// _24,
	bne	.L9		//,
// problem145.c:29:     den[j] = '\0';
	ldrsw	x0, [sp, 36]	// tmp168, j
	add	x1, sp, 160	// tmp169,,
	strb	wzr, [x1, x0]	//, den[j_33]
// problem145.c:30:     d = atoi(den);
	add	x0, sp, 160	// tmp170,,
	bl	atoi		//
	str	w0, [sp, 52]	//, d
// problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	ldr	w1, [sp, 40]	// tmp171, a
	ldr	w0, [sp, 48]	// tmp172, c
	mul	w0, w1, w0	// _25, tmp171, tmp172
// problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	ldr	w2, [sp, 44]	// tmp173, b
	ldr	w1, [sp, 52]	// tmp174, d
	mul	w1, w2, w1	// _26, tmp173, tmp174
// problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	sdiv	w2, w0, w1	// tmp186, _25, _26
	mul	w1, w2, w1	// tmp187, tmp186, _26
	sub	w0, w0, w1	// _27, _25, tmp187
// problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	cmp	w0, 0	// _27,
	bne	.L10		//,
// problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	mov	w0, 1	// _34,
	b	.L12		//
.L10:
// problem145.c:33:     return 0;
	mov	w0, 0	// _34,
.L12:
// problem145.c:34: }
	mov	w1, w0	// <retval>, _34
	adrp	x0, :got:__stack_chk_guard	// tmp190,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp189, tmp190,
	ldr	x3, [sp, 264]	// tmp192, D.4860
	ldr	x2, [x0]	// tmp193,
	subs	x3, x3, x2	// tmp192, tmp193
	mov	x2, 0	// tmp193
	beq	.L13		//,
// problem145.c:34: }
	bl	__stack_chk_fail		//
.L13:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 272	//,,,
	.cfi_restore 30
	.cfi_restore 29
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
	cmp	w0, 1	// _1,
	beq	.L15		//,
// problem145.c:41:     assert(func0("1/5", "5/1") == 1);
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
	cmp	w0, 0	// _2,
	beq	.L16		//,
// problem145.c:42:     assert(func0("1/6", "2/1") == 0);
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
	cmp	w0, 1	// _3,
	beq	.L17		//,
// problem145.c:43:     assert(func0("5/1", "3/1") == 1);
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
	cmp	w0, 0	// _4,
	beq	.L18		//,
// problem145.c:44:     assert(func0("7/10", "10/2") == 0);
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
	cmp	w0, 1	// _5,
	beq	.L19		//,
// problem145.c:45:     assert(func0("2/10", "50/10") == 1);
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
	cmp	w0, 1	// _6,
	beq	.L20		//,
// problem145.c:46:     assert(func0("7/2", "4/2") == 1);
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
	cmp	w0, 1	// _7,
	beq	.L21		//,
// problem145.c:47:     assert(func0("11/6", "6/1") == 1);
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
	cmp	w0, 0	// _8,
	beq	.L22		//,
// problem145.c:48:     assert(func0("2/3", "5/2") == 0);
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
	cmp	w0, 0	// _9,
	beq	.L23		//,
// problem145.c:49:     assert(func0("5/2", "3/5") == 0);
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
	cmp	w0, 1	// _10,
	beq	.L24		//,
// problem145.c:50:     assert(func0("2/4", "8/4") == 1);
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
	cmp	w0, 1	// _11,
	beq	.L25		//,
// problem145.c:51:     assert(func0("2/4", "4/2") == 1);
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
	cmp	w0, 1	// _12,
	beq	.L26		//,
// problem145.c:52:     assert(func0("1/5", "5/1") == 1);
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
	cmp	w0, 0	// _13,
	beq	.L27		//,
// problem145.c:53:     assert(func0("1/5", "1/5") == 0);
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
