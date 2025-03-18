	.arch armv8-a
	.file	"problem120.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Yes"
	.align	3
.LC1:
	.string	"No"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 24]	// s1, s1
	str	x1, [sp, 16]	// s2, s2
// problem120.c:5:     int count = 0;
	str	wzr, [sp, 44]	//, count
// problem120.c:6:     int len1 = strlen(s1);
	ldr	x0, [sp, 24]	//, s1
	bl	strlen		//
// problem120.c:6:     int len1 = strlen(s1);
	str	w0, [sp, 56]	// tmp120, len1
// problem120.c:7:     int len2 = strlen(s2);
	ldr	x0, [sp, 16]	//, s2
	bl	strlen		//
// problem120.c:7:     int len2 = strlen(s2);
	str	w0, [sp, 60]	// tmp121, len2
// problem120.c:9:     int can = 1;
	mov	w0, 1	// tmp122,
	str	w0, [sp, 52]	// tmp122, can
// problem120.c:11:     for (i = 0; i < len1; i++) {
	str	wzr, [sp, 48]	//, i
// problem120.c:11:     for (i = 0; i < len1; i++) {
	b	.L2		//
.L6:
// problem120.c:12:         if (s1[i] == '(') count++;
	ldrsw	x0, [sp, 48]	// _3, i
	ldr	x1, [sp, 24]	// tmp123, s1
	add	x0, x1, x0	// _4, tmp123, _3
	ldrb	w0, [x0]	// _5, *_4
// problem120.c:12:         if (s1[i] == '(') count++;
	cmp	w0, 40	// _5,
	bne	.L3		//,
// problem120.c:12:         if (s1[i] == '(') count++;
	ldr	w0, [sp, 44]	// tmp125, count
	add	w0, w0, 1	// tmp124, tmp125,
	str	w0, [sp, 44]	// tmp124, count
.L3:
// problem120.c:13:         if (s1[i] == ')') count--;
	ldrsw	x0, [sp, 48]	// _6, i
	ldr	x1, [sp, 24]	// tmp126, s1
	add	x0, x1, x0	// _7, tmp126, _6
	ldrb	w0, [x0]	// _8, *_7
// problem120.c:13:         if (s1[i] == ')') count--;
	cmp	w0, 41	// _8,
	bne	.L4		//,
// problem120.c:13:         if (s1[i] == ')') count--;
	ldr	w0, [sp, 44]	// tmp128, count
	sub	w0, w0, #1	// tmp127, tmp128,
	str	w0, [sp, 44]	// tmp127, count
.L4:
// problem120.c:14:         if (count < 0) can = 0;
	ldr	w0, [sp, 44]	// tmp129, count
	cmp	w0, 0	// tmp129,
	bge	.L5		//,
// problem120.c:14:         if (count < 0) can = 0;
	str	wzr, [sp, 52]	//, can
.L5:
// problem120.c:11:     for (i = 0; i < len1; i++) {
	ldr	w0, [sp, 48]	// tmp131, i
	add	w0, w0, 1	// tmp130, tmp131,
	str	w0, [sp, 48]	// tmp130, i
.L2:
// problem120.c:11:     for (i = 0; i < len1; i++) {
	ldr	w1, [sp, 48]	// tmp132, i
	ldr	w0, [sp, 56]	// tmp133, len1
	cmp	w1, w0	// tmp132, tmp133
	blt	.L6		//,
// problem120.c:16:     for (i = 0; i < len2; i++) {
	str	wzr, [sp, 48]	//, i
// problem120.c:16:     for (i = 0; i < len2; i++) {
	b	.L7		//
.L11:
// problem120.c:17:         if (s2[i] == '(') count++;
	ldrsw	x0, [sp, 48]	// _9, i
	ldr	x1, [sp, 16]	// tmp134, s2
	add	x0, x1, x0	// _10, tmp134, _9
	ldrb	w0, [x0]	// _11, *_10
// problem120.c:17:         if (s2[i] == '(') count++;
	cmp	w0, 40	// _11,
	bne	.L8		//,
// problem120.c:17:         if (s2[i] == '(') count++;
	ldr	w0, [sp, 44]	// tmp136, count
	add	w0, w0, 1	// tmp135, tmp136,
	str	w0, [sp, 44]	// tmp135, count
.L8:
// problem120.c:18:         if (s2[i] == ')') count--;
	ldrsw	x0, [sp, 48]	// _12, i
	ldr	x1, [sp, 16]	// tmp137, s2
	add	x0, x1, x0	// _13, tmp137, _12
	ldrb	w0, [x0]	// _14, *_13
// problem120.c:18:         if (s2[i] == ')') count--;
	cmp	w0, 41	// _14,
	bne	.L9		//,
// problem120.c:18:         if (s2[i] == ')') count--;
	ldr	w0, [sp, 44]	// tmp139, count
	sub	w0, w0, #1	// tmp138, tmp139,
	str	w0, [sp, 44]	// tmp138, count
.L9:
// problem120.c:19:         if (count < 0) can = 0;
	ldr	w0, [sp, 44]	// tmp140, count
	cmp	w0, 0	// tmp140,
	bge	.L10		//,
// problem120.c:19:         if (count < 0) can = 0;
	str	wzr, [sp, 52]	//, can
.L10:
// problem120.c:16:     for (i = 0; i < len2; i++) {
	ldr	w0, [sp, 48]	// tmp142, i
	add	w0, w0, 1	// tmp141, tmp142,
	str	w0, [sp, 48]	// tmp141, i
.L7:
// problem120.c:16:     for (i = 0; i < len2; i++) {
	ldr	w1, [sp, 48]	// tmp143, i
	ldr	w0, [sp, 60]	// tmp144, len2
	cmp	w1, w0	// tmp143, tmp144
	blt	.L11		//,
// problem120.c:21:     if (count == 0 && can) return "Yes";
	ldr	w0, [sp, 44]	// tmp145, count
	cmp	w0, 0	// tmp145,
	bne	.L12		//,
// problem120.c:21:     if (count == 0 && can) return "Yes";
	ldr	w0, [sp, 52]	// tmp146, can
	cmp	w0, 0	// tmp146,
	beq	.L12		//,
// problem120.c:21:     if (count == 0 && can) return "Yes";
	adrp	x0, .LC0	// tmp147,
	add	x0, x0, :lo12:.LC0	// _51, tmp147,
// problem120.c:21:     if (count == 0 && can) return "Yes";
	b	.L13		//
.L12:
// problem120.c:23:     count = 0;
	str	wzr, [sp, 44]	//, count
// problem120.c:24:     can = 1;
	mov	w0, 1	// tmp148,
	str	w0, [sp, 52]	// tmp148, can
// problem120.c:26:     for (i = 0; i < len2; i++) {
	str	wzr, [sp, 48]	//, i
// problem120.c:26:     for (i = 0; i < len2; i++) {
	b	.L14		//
.L18:
// problem120.c:27:         if (s2[i] == '(') count++;
	ldrsw	x0, [sp, 48]	// _15, i
	ldr	x1, [sp, 16]	// tmp149, s2
	add	x0, x1, x0	// _16, tmp149, _15
	ldrb	w0, [x0]	// _17, *_16
// problem120.c:27:         if (s2[i] == '(') count++;
	cmp	w0, 40	// _17,
	bne	.L15		//,
// problem120.c:27:         if (s2[i] == '(') count++;
	ldr	w0, [sp, 44]	// tmp151, count
	add	w0, w0, 1	// tmp150, tmp151,
	str	w0, [sp, 44]	// tmp150, count
.L15:
// problem120.c:28:         if (s2[i] == ')') count--;
	ldrsw	x0, [sp, 48]	// _18, i
	ldr	x1, [sp, 16]	// tmp152, s2
	add	x0, x1, x0	// _19, tmp152, _18
	ldrb	w0, [x0]	// _20, *_19
// problem120.c:28:         if (s2[i] == ')') count--;
	cmp	w0, 41	// _20,
	bne	.L16		//,
// problem120.c:28:         if (s2[i] == ')') count--;
	ldr	w0, [sp, 44]	// tmp154, count
	sub	w0, w0, #1	// tmp153, tmp154,
	str	w0, [sp, 44]	// tmp153, count
.L16:
// problem120.c:29:         if (count < 0) can = 0;
	ldr	w0, [sp, 44]	// tmp155, count
	cmp	w0, 0	// tmp155,
	bge	.L17		//,
// problem120.c:29:         if (count < 0) can = 0;
	str	wzr, [sp, 52]	//, can
.L17:
// problem120.c:26:     for (i = 0; i < len2; i++) {
	ldr	w0, [sp, 48]	// tmp157, i
	add	w0, w0, 1	// tmp156, tmp157,
	str	w0, [sp, 48]	// tmp156, i
.L14:
// problem120.c:26:     for (i = 0; i < len2; i++) {
	ldr	w1, [sp, 48]	// tmp158, i
	ldr	w0, [sp, 60]	// tmp159, len2
	cmp	w1, w0	// tmp158, tmp159
	blt	.L18		//,
// problem120.c:31:     for (i = 0; i < len1; i++) {
	str	wzr, [sp, 48]	//, i
// problem120.c:31:     for (i = 0; i < len1; i++) {
	b	.L19		//
.L23:
// problem120.c:32:         if (s1[i] == '(') count++;
	ldrsw	x0, [sp, 48]	// _21, i
	ldr	x1, [sp, 24]	// tmp160, s1
	add	x0, x1, x0	// _22, tmp160, _21
	ldrb	w0, [x0]	// _23, *_22
// problem120.c:32:         if (s1[i] == '(') count++;
	cmp	w0, 40	// _23,
	bne	.L20		//,
// problem120.c:32:         if (s1[i] == '(') count++;
	ldr	w0, [sp, 44]	// tmp162, count
	add	w0, w0, 1	// tmp161, tmp162,
	str	w0, [sp, 44]	// tmp161, count
.L20:
// problem120.c:33:         if (s1[i] == ')') count--;
	ldrsw	x0, [sp, 48]	// _24, i
	ldr	x1, [sp, 24]	// tmp163, s1
	add	x0, x1, x0	// _25, tmp163, _24
	ldrb	w0, [x0]	// _26, *_25
// problem120.c:33:         if (s1[i] == ')') count--;
	cmp	w0, 41	// _26,
	bne	.L21		//,
// problem120.c:33:         if (s1[i] == ')') count--;
	ldr	w0, [sp, 44]	// tmp165, count
	sub	w0, w0, #1	// tmp164, tmp165,
	str	w0, [sp, 44]	// tmp164, count
.L21:
// problem120.c:34:         if (count < 0) can = 0;
	ldr	w0, [sp, 44]	// tmp166, count
	cmp	w0, 0	// tmp166,
	bge	.L22		//,
// problem120.c:34:         if (count < 0) can = 0;
	str	wzr, [sp, 52]	//, can
.L22:
// problem120.c:31:     for (i = 0; i < len1; i++) {
	ldr	w0, [sp, 48]	// tmp168, i
	add	w0, w0, 1	// tmp167, tmp168,
	str	w0, [sp, 48]	// tmp167, i
.L19:
// problem120.c:31:     for (i = 0; i < len1; i++) {
	ldr	w1, [sp, 48]	// tmp169, i
	ldr	w0, [sp, 56]	// tmp170, len1
	cmp	w1, w0	// tmp169, tmp170
	blt	.L23		//,
// problem120.c:36:     if (count == 0 && can) return "Yes";
	ldr	w0, [sp, 44]	// tmp171, count
	cmp	w0, 0	// tmp171,
	bne	.L24		//,
// problem120.c:36:     if (count == 0 && can) return "Yes";
	ldr	w0, [sp, 52]	// tmp172, can
	cmp	w0, 0	// tmp172,
	beq	.L24		//,
// problem120.c:36:     if (count == 0 && can) return "Yes";
	adrp	x0, .LC0	// tmp173,
	add	x0, x0, :lo12:.LC0	// _51, tmp173,
// problem120.c:36:     if (count == 0 && can) return "Yes";
	b	.L13		//
.L24:
// problem120.c:38:     return "No";
	adrp	x0, .LC1	// tmp174,
	add	x0, x0, :lo12:.LC1	// _51, tmp174,
.L13:
// problem120.c:39: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC2:
	.string	")"
	.align	3
.LC3:
	.string	"()("
	.align	3
.LC4:
	.string	"problem120.c"
	.align	3
.LC5:
	.string	"strcmp(func0(\"()(\", \")\"), \"Yes\") == 0"
	.align	3
.LC6:
	.string	"strcmp(func0(\")\", \")\"), \"No\") == 0"
	.align	3
.LC7:
	.string	"())())"
	.align	3
.LC8:
	.string	"(()(())"
	.align	3
.LC9:
	.string	"strcmp(func0(\"(()(())\", \"())())\"), \"No\") == 0"
	.align	3
.LC10:
	.string	"(()()("
	.align	3
.LC11:
	.string	")())"
	.align	3
.LC12:
	.string	"strcmp(func0(\")())\", \"(()()(\"), \"Yes\") == 0"
	.align	3
.LC13:
	.string	"(()())(("
	.align	3
.LC14:
	.string	"(())))"
	.align	3
.LC15:
	.string	"strcmp(func0(\"(())))\", \"(()())((\"), \"Yes\") == 0"
	.align	3
.LC16:
	.string	"())"
	.align	3
.LC17:
	.string	"()"
	.align	3
.LC18:
	.string	"strcmp(func0(\"()\", \"())\"), \"No\") == 0"
	.align	3
.LC19:
	.string	"()))()"
	.align	3
.LC20:
	.string	"(()("
	.align	3
.LC21:
	.string	"strcmp(func0(\"(()(\", \"()))()\"), \"Yes\") == 0"
	.align	3
.LC22:
	.string	"((())"
	.align	3
.LC23:
	.string	"(((("
	.align	3
.LC24:
	.string	"strcmp(func0(\"((((\", \"((())\"), \"No\") == 0"
	.align	3
.LC25:
	.string	")(()"
	.align	3
.LC26:
	.string	"strcmp(func0(\")(()\", \"(()(\"), \"No\") == 0"
	.align	3
.LC27:
	.string	")("
	.align	3
.LC28:
	.string	"strcmp(func0(\")(\", \")(\"), \"No\") == 0"
	.align	3
.LC29:
	.string	"("
	.align	3
.LC30:
	.string	"strcmp(func0(\"(\", \")\"), \"Yes\") == 0"
	.align	3
.LC31:
	.string	"strcmp(func0(\")\", \"(\"), \"Yes\") == 0"
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
// problem120.c:48:     assert(strcmp(func0("()(", ")"), "Yes") == 0);
	adrp	x0, .LC2	// tmp118,
	add	x1, x0, :lo12:.LC2	//, tmp118,
	adrp	x0, .LC3	// tmp119,
	add	x0, x0, :lo12:.LC3	//, tmp119,
	bl	func0		//
	mov	x2, x0	// _1,
// problem120.c:48:     assert(strcmp(func0("()(", ")"), "Yes") == 0);
	adrp	x0, .LC0	// tmp120,
	add	x1, x0, :lo12:.LC0	//, tmp120,
	mov	x0, x2	//, _1
	bl	strcmp		//
// problem120.c:48:     assert(strcmp(func0("()(", ")"), "Yes") == 0);
	cmp	w0, 0	// _2,
	beq	.L26		//,
// problem120.c:48:     assert(strcmp(func0("()(", ")"), "Yes") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp121,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp121,
	mov	w2, 48	//,
	adrp	x0, .LC4	// tmp122,
	add	x1, x0, :lo12:.LC4	//, tmp122,
	adrp	x0, .LC5	// tmp123,
	add	x0, x0, :lo12:.LC5	//, tmp123,
	bl	__assert_fail		//
.L26:
// problem120.c:49:     assert(strcmp(func0(")", ")"), "No") == 0);
	adrp	x0, .LC2	// tmp124,
	add	x1, x0, :lo12:.LC2	//, tmp124,
	adrp	x0, .LC2	// tmp125,
	add	x0, x0, :lo12:.LC2	//, tmp125,
	bl	func0		//
	mov	x2, x0	// _3,
// problem120.c:49:     assert(strcmp(func0(")", ")"), "No") == 0);
	adrp	x0, .LC1	// tmp126,
	add	x1, x0, :lo12:.LC1	//, tmp126,
	mov	x0, x2	//, _3
	bl	strcmp		//
// problem120.c:49:     assert(strcmp(func0(")", ")"), "No") == 0);
	cmp	w0, 0	// _4,
	beq	.L27		//,
// problem120.c:49:     assert(strcmp(func0(")", ")"), "No") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp127,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp127,
	mov	w2, 49	//,
	adrp	x0, .LC4	// tmp128,
	add	x1, x0, :lo12:.LC4	//, tmp128,
	adrp	x0, .LC6	// tmp129,
	add	x0, x0, :lo12:.LC6	//, tmp129,
	bl	__assert_fail		//
.L27:
// problem120.c:50:     assert(strcmp(func0("(()(())", "())())"), "No") == 0);
	adrp	x0, .LC7	// tmp130,
	add	x1, x0, :lo12:.LC7	//, tmp130,
	adrp	x0, .LC8	// tmp131,
	add	x0, x0, :lo12:.LC8	//, tmp131,
	bl	func0		//
	mov	x2, x0	// _5,
// problem120.c:50:     assert(strcmp(func0("(()(())", "())())"), "No") == 0);
	adrp	x0, .LC1	// tmp132,
	add	x1, x0, :lo12:.LC1	//, tmp132,
	mov	x0, x2	//, _5
	bl	strcmp		//
// problem120.c:50:     assert(strcmp(func0("(()(())", "())())"), "No") == 0);
	cmp	w0, 0	// _6,
	beq	.L28		//,
// problem120.c:50:     assert(strcmp(func0("(()(())", "())())"), "No") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp133,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp133,
	mov	w2, 50	//,
	adrp	x0, .LC4	// tmp134,
	add	x1, x0, :lo12:.LC4	//, tmp134,
	adrp	x0, .LC9	// tmp135,
	add	x0, x0, :lo12:.LC9	//, tmp135,
	bl	__assert_fail		//
.L28:
// problem120.c:51:     assert(strcmp(func0(")())", "(()()("), "Yes") == 0);
	adrp	x0, .LC10	// tmp136,
	add	x1, x0, :lo12:.LC10	//, tmp136,
	adrp	x0, .LC11	// tmp137,
	add	x0, x0, :lo12:.LC11	//, tmp137,
	bl	func0		//
	mov	x2, x0	// _7,
// problem120.c:51:     assert(strcmp(func0(")())", "(()()("), "Yes") == 0);
	adrp	x0, .LC0	// tmp138,
	add	x1, x0, :lo12:.LC0	//, tmp138,
	mov	x0, x2	//, _7
	bl	strcmp		//
// problem120.c:51:     assert(strcmp(func0(")())", "(()()("), "Yes") == 0);
	cmp	w0, 0	// _8,
	beq	.L29		//,
// problem120.c:51:     assert(strcmp(func0(")())", "(()()("), "Yes") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp139,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp139,
	mov	w2, 51	//,
	adrp	x0, .LC4	// tmp140,
	add	x1, x0, :lo12:.LC4	//, tmp140,
	adrp	x0, .LC12	// tmp141,
	add	x0, x0, :lo12:.LC12	//, tmp141,
	bl	__assert_fail		//
.L29:
// problem120.c:52:     assert(strcmp(func0("(())))", "(()())(("), "Yes") == 0);
	adrp	x0, .LC13	// tmp142,
	add	x1, x0, :lo12:.LC13	//, tmp142,
	adrp	x0, .LC14	// tmp143,
	add	x0, x0, :lo12:.LC14	//, tmp143,
	bl	func0		//
	mov	x2, x0	// _9,
// problem120.c:52:     assert(strcmp(func0("(())))", "(()())(("), "Yes") == 0);
	adrp	x0, .LC0	// tmp144,
	add	x1, x0, :lo12:.LC0	//, tmp144,
	mov	x0, x2	//, _9
	bl	strcmp		//
// problem120.c:52:     assert(strcmp(func0("(())))", "(()())(("), "Yes") == 0);
	cmp	w0, 0	// _10,
	beq	.L30		//,
// problem120.c:52:     assert(strcmp(func0("(())))", "(()())(("), "Yes") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp145,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp145,
	mov	w2, 52	//,
	adrp	x0, .LC4	// tmp146,
	add	x1, x0, :lo12:.LC4	//, tmp146,
	adrp	x0, .LC15	// tmp147,
	add	x0, x0, :lo12:.LC15	//, tmp147,
	bl	__assert_fail		//
.L30:
// problem120.c:53:     assert(strcmp(func0("()", "())"), "No") == 0);
	adrp	x0, .LC16	// tmp148,
	add	x1, x0, :lo12:.LC16	//, tmp148,
	adrp	x0, .LC17	// tmp149,
	add	x0, x0, :lo12:.LC17	//, tmp149,
	bl	func0		//
	mov	x2, x0	// _11,
// problem120.c:53:     assert(strcmp(func0("()", "())"), "No") == 0);
	adrp	x0, .LC1	// tmp150,
	add	x1, x0, :lo12:.LC1	//, tmp150,
	mov	x0, x2	//, _11
	bl	strcmp		//
// problem120.c:53:     assert(strcmp(func0("()", "())"), "No") == 0);
	cmp	w0, 0	// _12,
	beq	.L31		//,
// problem120.c:53:     assert(strcmp(func0("()", "())"), "No") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp151,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp151,
	mov	w2, 53	//,
	adrp	x0, .LC4	// tmp152,
	add	x1, x0, :lo12:.LC4	//, tmp152,
	adrp	x0, .LC18	// tmp153,
	add	x0, x0, :lo12:.LC18	//, tmp153,
	bl	__assert_fail		//
.L31:
// problem120.c:54:     assert(strcmp(func0("(()(", "()))()"), "Yes") == 0);
	adrp	x0, .LC19	// tmp154,
	add	x1, x0, :lo12:.LC19	//, tmp154,
	adrp	x0, .LC20	// tmp155,
	add	x0, x0, :lo12:.LC20	//, tmp155,
	bl	func0		//
	mov	x2, x0	// _13,
// problem120.c:54:     assert(strcmp(func0("(()(", "()))()"), "Yes") == 0);
	adrp	x0, .LC0	// tmp156,
	add	x1, x0, :lo12:.LC0	//, tmp156,
	mov	x0, x2	//, _13
	bl	strcmp		//
// problem120.c:54:     assert(strcmp(func0("(()(", "()))()"), "Yes") == 0);
	cmp	w0, 0	// _14,
	beq	.L32		//,
// problem120.c:54:     assert(strcmp(func0("(()(", "()))()"), "Yes") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp157,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp157,
	mov	w2, 54	//,
	adrp	x0, .LC4	// tmp158,
	add	x1, x0, :lo12:.LC4	//, tmp158,
	adrp	x0, .LC21	// tmp159,
	add	x0, x0, :lo12:.LC21	//, tmp159,
	bl	__assert_fail		//
.L32:
// problem120.c:55:     assert(strcmp(func0("((((", "((())"), "No") == 0);
	adrp	x0, .LC22	// tmp160,
	add	x1, x0, :lo12:.LC22	//, tmp160,
	adrp	x0, .LC23	// tmp161,
	add	x0, x0, :lo12:.LC23	//, tmp161,
	bl	func0		//
	mov	x2, x0	// _15,
// problem120.c:55:     assert(strcmp(func0("((((", "((())"), "No") == 0);
	adrp	x0, .LC1	// tmp162,
	add	x1, x0, :lo12:.LC1	//, tmp162,
	mov	x0, x2	//, _15
	bl	strcmp		//
// problem120.c:55:     assert(strcmp(func0("((((", "((())"), "No") == 0);
	cmp	w0, 0	// _16,
	beq	.L33		//,
// problem120.c:55:     assert(strcmp(func0("((((", "((())"), "No") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp163,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp163,
	mov	w2, 55	//,
	adrp	x0, .LC4	// tmp164,
	add	x1, x0, :lo12:.LC4	//, tmp164,
	adrp	x0, .LC24	// tmp165,
	add	x0, x0, :lo12:.LC24	//, tmp165,
	bl	__assert_fail		//
.L33:
// problem120.c:56:     assert(strcmp(func0(")(()", "(()("), "No") == 0);
	adrp	x0, .LC20	// tmp166,
	add	x1, x0, :lo12:.LC20	//, tmp166,
	adrp	x0, .LC25	// tmp167,
	add	x0, x0, :lo12:.LC25	//, tmp167,
	bl	func0		//
	mov	x2, x0	// _17,
// problem120.c:56:     assert(strcmp(func0(")(()", "(()("), "No") == 0);
	adrp	x0, .LC1	// tmp168,
	add	x1, x0, :lo12:.LC1	//, tmp168,
	mov	x0, x2	//, _17
	bl	strcmp		//
// problem120.c:56:     assert(strcmp(func0(")(()", "(()("), "No") == 0);
	cmp	w0, 0	// _18,
	beq	.L34		//,
// problem120.c:56:     assert(strcmp(func0(")(()", "(()("), "No") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp169,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp169,
	mov	w2, 56	//,
	adrp	x0, .LC4	// tmp170,
	add	x1, x0, :lo12:.LC4	//, tmp170,
	adrp	x0, .LC26	// tmp171,
	add	x0, x0, :lo12:.LC26	//, tmp171,
	bl	__assert_fail		//
.L34:
// problem120.c:57:     assert(strcmp(func0(")(", ")("), "No") == 0);
	adrp	x0, .LC27	// tmp172,
	add	x1, x0, :lo12:.LC27	//, tmp172,
	adrp	x0, .LC27	// tmp173,
	add	x0, x0, :lo12:.LC27	//, tmp173,
	bl	func0		//
	mov	x2, x0	// _19,
// problem120.c:57:     assert(strcmp(func0(")(", ")("), "No") == 0);
	adrp	x0, .LC1	// tmp174,
	add	x1, x0, :lo12:.LC1	//, tmp174,
	mov	x0, x2	//, _19
	bl	strcmp		//
// problem120.c:57:     assert(strcmp(func0(")(", ")("), "No") == 0);
	cmp	w0, 0	// _20,
	beq	.L35		//,
// problem120.c:57:     assert(strcmp(func0(")(", ")("), "No") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp175,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp175,
	mov	w2, 57	//,
	adrp	x0, .LC4	// tmp176,
	add	x1, x0, :lo12:.LC4	//, tmp176,
	adrp	x0, .LC28	// tmp177,
	add	x0, x0, :lo12:.LC28	//, tmp177,
	bl	__assert_fail		//
.L35:
// problem120.c:58:     assert(strcmp(func0("(", ")"), "Yes") == 0);
	adrp	x0, .LC2	// tmp178,
	add	x1, x0, :lo12:.LC2	//, tmp178,
	adrp	x0, .LC29	// tmp179,
	add	x0, x0, :lo12:.LC29	//, tmp179,
	bl	func0		//
	mov	x2, x0	// _21,
// problem120.c:58:     assert(strcmp(func0("(", ")"), "Yes") == 0);
	adrp	x0, .LC0	// tmp180,
	add	x1, x0, :lo12:.LC0	//, tmp180,
	mov	x0, x2	//, _21
	bl	strcmp		//
// problem120.c:58:     assert(strcmp(func0("(", ")"), "Yes") == 0);
	cmp	w0, 0	// _22,
	beq	.L36		//,
// problem120.c:58:     assert(strcmp(func0("(", ")"), "Yes") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp181,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp181,
	mov	w2, 58	//,
	adrp	x0, .LC4	// tmp182,
	add	x1, x0, :lo12:.LC4	//, tmp182,
	adrp	x0, .LC30	// tmp183,
	add	x0, x0, :lo12:.LC30	//, tmp183,
	bl	__assert_fail		//
.L36:
// problem120.c:59:     assert(strcmp(func0(")", "("), "Yes") == 0);
	adrp	x0, .LC29	// tmp184,
	add	x1, x0, :lo12:.LC29	//, tmp184,
	adrp	x0, .LC2	// tmp185,
	add	x0, x0, :lo12:.LC2	//, tmp185,
	bl	func0		//
	mov	x2, x0	// _23,
// problem120.c:59:     assert(strcmp(func0(")", "("), "Yes") == 0);
	adrp	x0, .LC0	// tmp186,
	add	x1, x0, :lo12:.LC0	//, tmp186,
	mov	x0, x2	//, _23
	bl	strcmp		//
// problem120.c:59:     assert(strcmp(func0(")", "("), "Yes") == 0);
	cmp	w0, 0	// _24,
	beq	.L37		//,
// problem120.c:59:     assert(strcmp(func0(")", "("), "Yes") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp187,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp187,
	mov	w2, 59	//,
	adrp	x0, .LC4	// tmp188,
	add	x1, x0, :lo12:.LC4	//, tmp188,
	adrp	x0, .LC31	// tmp189,
	add	x0, x0, :lo12:.LC31	//, tmp189,
	bl	__assert_fail		//
.L37:
// problem120.c:61:     return 0;
	mov	w0, 0	// _50,
// problem120.c:62: }
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
