	.arch armv8-a
	.file	"problem133.c"
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
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -48
	str	x0, [sp, 40]	// str, str
// problem133.c:5:     int count = 0, maxcount = 0;
	str	wzr, [sp, 52]	//, count
// problem133.c:5:     int count = 0, maxcount = 0;
	str	wzr, [sp, 56]	//, maxcount
// problem133.c:6:     for (int i = 0; i < strlen(str); i++) {
	str	wzr, [sp, 60]	//, i
// problem133.c:6:     for (int i = 0; i < strlen(str); i++) {
	b	.L2		//
.L9:
// problem133.c:7:         if (str[i] == '[') count += 1;
	ldrsw	x0, [sp, 60]	// _1, i
	ldr	x1, [sp, 40]	// tmp103, str
	add	x0, x1, x0	// _2, tmp103, _1
	ldrb	w0, [x0]	// _3, *_2
// problem133.c:7:         if (str[i] == '[') count += 1;
	cmp	w0, 91	// _3,
	bne	.L3		//,
// problem133.c:7:         if (str[i] == '[') count += 1;
	ldr	w0, [sp, 52]	// tmp105, count
	add	w0, w0, 1	// tmp104, tmp105,
	str	w0, [sp, 52]	// tmp104, count
.L3:
// problem133.c:8:         if (str[i] == ']') count -= 1;
	ldrsw	x0, [sp, 60]	// _4, i
	ldr	x1, [sp, 40]	// tmp106, str
	add	x0, x1, x0	// _5, tmp106, _4
	ldrb	w0, [x0]	// _6, *_5
// problem133.c:8:         if (str[i] == ']') count -= 1;
	cmp	w0, 93	// _6,
	bne	.L4		//,
// problem133.c:8:         if (str[i] == ']') count -= 1;
	ldr	w0, [sp, 52]	// tmp108, count
	sub	w0, w0, #1	// tmp107, tmp108,
	str	w0, [sp, 52]	// tmp107, count
.L4:
// problem133.c:9:         if (count < 0) count = 0;
	ldr	w0, [sp, 52]	// tmp109, count
	cmp	w0, 0	// tmp109,
	bge	.L5		//,
// problem133.c:9:         if (count < 0) count = 0;
	str	wzr, [sp, 52]	//, count
.L5:
// problem133.c:10:         if (count > maxcount) maxcount = count;
	ldr	w1, [sp, 52]	// tmp110, count
	ldr	w0, [sp, 56]	// tmp111, maxcount
	cmp	w1, w0	// tmp110, tmp111
	ble	.L6		//,
// problem133.c:10:         if (count > maxcount) maxcount = count;
	ldr	w0, [sp, 52]	// tmp112, count
	str	w0, [sp, 56]	// tmp112, maxcount
.L6:
// problem133.c:11:         if (count <= maxcount - 2) return 1;
	ldr	w0, [sp, 56]	// tmp113, maxcount
	sub	w0, w0, #1	// _7, tmp113,
// problem133.c:11:         if (count <= maxcount - 2) return 1;
	ldr	w1, [sp, 52]	// tmp114, count
	cmp	w1, w0	// tmp114, _7
	bge	.L7		//,
// problem133.c:11:         if (count <= maxcount - 2) return 1;
	mov	w0, 1	// _17,
	b	.L8		//
.L7:
// problem133.c:6:     for (int i = 0; i < strlen(str); i++) {
	ldr	w0, [sp, 60]	// tmp116, i
	add	w0, w0, 1	// tmp115, tmp116,
	str	w0, [sp, 60]	// tmp115, i
.L2:
// problem133.c:6:     for (int i = 0; i < strlen(str); i++) {
	ldrsw	x19, [sp, 60]	// _8, i
// problem133.c:6:     for (int i = 0; i < strlen(str); i++) {
	ldr	x0, [sp, 40]	//, str
	bl	strlen		//
// problem133.c:6:     for (int i = 0; i < strlen(str); i++) {
	cmp	x19, x0	// _8, _9
	bcc	.L9		//,
// problem133.c:13:     return 0;
	mov	w0, 0	// _17,
.L8:
// problem133.c:14: }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"[[]]"
	.align	3
.LC1:
	.string	"problem133.c"
	.align	3
.LC2:
	.string	"func0(\"[[]]\") == 1"
	.align	3
.LC3:
	.string	"[]]]]]]][[[[[]"
	.align	3
.LC4:
	.string	"func0(\"[]]]]]]][[[[[]\") == 0"
	.align	3
.LC5:
	.string	"[][]"
	.align	3
.LC6:
	.string	"func0(\"[][]\") == 0"
	.align	3
.LC7:
	.string	"[]"
	.align	3
.LC8:
	.string	"func0(\"[]\") == 0"
	.align	3
.LC9:
	.string	"[[[[]]]]"
	.align	3
.LC10:
	.string	"func0(\"[[[[]]]]\") == 1"
	.align	3
.LC11:
	.string	"[]]]]]]]]]]"
	.align	3
.LC12:
	.string	"func0(\"[]]]]]]]]]]\") == 0"
	.align	3
.LC13:
	.string	"[][][[]]"
	.align	3
.LC14:
	.string	"func0(\"[][][[]]\") == 1"
	.align	3
.LC15:
	.string	"[[]"
	.align	3
.LC16:
	.string	"func0(\"[[]\") == 0"
	.align	3
.LC17:
	.string	"[]]"
	.align	3
.LC18:
	.string	"func0(\"[]]\") == 0"
	.align	3
.LC19:
	.string	"[[]][["
	.align	3
.LC20:
	.string	"func0(\"[[]][[\") == 1"
	.align	3
.LC21:
	.string	"[[][]]"
	.align	3
.LC22:
	.string	"func0(\"[[][]]\") == 1"
	.align	3
.LC23:
	.string	""
	.align	3
.LC24:
	.string	"func0(\"\") == 0"
	.align	3
.LC25:
	.string	"[[[[[[[["
	.align	3
.LC26:
	.string	"func0(\"[[[[[[[[\") == 0"
	.align	3
.LC27:
	.string	"]]]]]]]]"
	.align	3
.LC28:
	.string	"func0(\"]]]]]]]]\") == 0"
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
// problem133.c:22:     assert(func0("[[]]") == 1);
	adrp	x0, .LC0	// tmp108,
	add	x0, x0, :lo12:.LC0	//, tmp108,
	bl	func0		//
	cmp	w0, 1	// _1,
	beq	.L11		//,
// problem133.c:22:     assert(func0("[[]]") == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp109,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp109,
	mov	w2, 22	//,
	adrp	x0, .LC1	// tmp110,
	add	x1, x0, :lo12:.LC1	//, tmp110,
	adrp	x0, .LC2	// tmp111,
	add	x0, x0, :lo12:.LC2	//, tmp111,
	bl	__assert_fail		//
.L11:
// problem133.c:23:     assert(func0("[]]]]]]][[[[[]") == 0);
	adrp	x0, .LC3	// tmp112,
	add	x0, x0, :lo12:.LC3	//, tmp112,
	bl	func0		//
	cmp	w0, 0	// _2,
	beq	.L12		//,
// problem133.c:23:     assert(func0("[]]]]]]][[[[[]") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp113,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp113,
	mov	w2, 23	//,
	adrp	x0, .LC1	// tmp114,
	add	x1, x0, :lo12:.LC1	//, tmp114,
	adrp	x0, .LC4	// tmp115,
	add	x0, x0, :lo12:.LC4	//, tmp115,
	bl	__assert_fail		//
.L12:
// problem133.c:24:     assert(func0("[][]") == 0);
	adrp	x0, .LC5	// tmp116,
	add	x0, x0, :lo12:.LC5	//, tmp116,
	bl	func0		//
	cmp	w0, 0	// _3,
	beq	.L13		//,
// problem133.c:24:     assert(func0("[][]") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp117,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp117,
	mov	w2, 24	//,
	adrp	x0, .LC1	// tmp118,
	add	x1, x0, :lo12:.LC1	//, tmp118,
	adrp	x0, .LC6	// tmp119,
	add	x0, x0, :lo12:.LC6	//, tmp119,
	bl	__assert_fail		//
.L13:
// problem133.c:25:     assert(func0("[]") == 0);
	adrp	x0, .LC7	// tmp120,
	add	x0, x0, :lo12:.LC7	//, tmp120,
	bl	func0		//
	cmp	w0, 0	// _4,
	beq	.L14		//,
// problem133.c:25:     assert(func0("[]") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp121,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp121,
	mov	w2, 25	//,
	adrp	x0, .LC1	// tmp122,
	add	x1, x0, :lo12:.LC1	//, tmp122,
	adrp	x0, .LC8	// tmp123,
	add	x0, x0, :lo12:.LC8	//, tmp123,
	bl	__assert_fail		//
.L14:
// problem133.c:26:     assert(func0("[[[[]]]]") == 1);
	adrp	x0, .LC9	// tmp124,
	add	x0, x0, :lo12:.LC9	//, tmp124,
	bl	func0		//
	cmp	w0, 1	// _5,
	beq	.L15		//,
// problem133.c:26:     assert(func0("[[[[]]]]") == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp125,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp125,
	mov	w2, 26	//,
	adrp	x0, .LC1	// tmp126,
	add	x1, x0, :lo12:.LC1	//, tmp126,
	adrp	x0, .LC10	// tmp127,
	add	x0, x0, :lo12:.LC10	//, tmp127,
	bl	__assert_fail		//
.L15:
// problem133.c:27:     assert(func0("[]]]]]]]]]]") == 0);
	adrp	x0, .LC11	// tmp128,
	add	x0, x0, :lo12:.LC11	//, tmp128,
	bl	func0		//
	cmp	w0, 0	// _6,
	beq	.L16		//,
// problem133.c:27:     assert(func0("[]]]]]]]]]]") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp129,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp129,
	mov	w2, 27	//,
	adrp	x0, .LC1	// tmp130,
	add	x1, x0, :lo12:.LC1	//, tmp130,
	adrp	x0, .LC12	// tmp131,
	add	x0, x0, :lo12:.LC12	//, tmp131,
	bl	__assert_fail		//
.L16:
// problem133.c:28:     assert(func0("[][][[]]") == 1);
	adrp	x0, .LC13	// tmp132,
	add	x0, x0, :lo12:.LC13	//, tmp132,
	bl	func0		//
	cmp	w0, 1	// _7,
	beq	.L17		//,
// problem133.c:28:     assert(func0("[][][[]]") == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp133,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp133,
	mov	w2, 28	//,
	adrp	x0, .LC1	// tmp134,
	add	x1, x0, :lo12:.LC1	//, tmp134,
	adrp	x0, .LC14	// tmp135,
	add	x0, x0, :lo12:.LC14	//, tmp135,
	bl	__assert_fail		//
.L17:
// problem133.c:29:     assert(func0("[[]") == 0);
	adrp	x0, .LC15	// tmp136,
	add	x0, x0, :lo12:.LC15	//, tmp136,
	bl	func0		//
	cmp	w0, 0	// _8,
	beq	.L18		//,
// problem133.c:29:     assert(func0("[[]") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp137,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp137,
	mov	w2, 29	//,
	adrp	x0, .LC1	// tmp138,
	add	x1, x0, :lo12:.LC1	//, tmp138,
	adrp	x0, .LC16	// tmp139,
	add	x0, x0, :lo12:.LC16	//, tmp139,
	bl	__assert_fail		//
.L18:
// problem133.c:30:     assert(func0("[]]") == 0);
	adrp	x0, .LC17	// tmp140,
	add	x0, x0, :lo12:.LC17	//, tmp140,
	bl	func0		//
	cmp	w0, 0	// _9,
	beq	.L19		//,
// problem133.c:30:     assert(func0("[]]") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp141,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp141,
	mov	w2, 30	//,
	adrp	x0, .LC1	// tmp142,
	add	x1, x0, :lo12:.LC1	//, tmp142,
	adrp	x0, .LC18	// tmp143,
	add	x0, x0, :lo12:.LC18	//, tmp143,
	bl	__assert_fail		//
.L19:
// problem133.c:31:     assert(func0("[[]][[") == 1);
	adrp	x0, .LC19	// tmp144,
	add	x0, x0, :lo12:.LC19	//, tmp144,
	bl	func0		//
	cmp	w0, 1	// _10,
	beq	.L20		//,
// problem133.c:31:     assert(func0("[[]][[") == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp145,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp145,
	mov	w2, 31	//,
	adrp	x0, .LC1	// tmp146,
	add	x1, x0, :lo12:.LC1	//, tmp146,
	adrp	x0, .LC20	// tmp147,
	add	x0, x0, :lo12:.LC20	//, tmp147,
	bl	__assert_fail		//
.L20:
// problem133.c:32:     assert(func0("[[][]]") == 1);
	adrp	x0, .LC21	// tmp148,
	add	x0, x0, :lo12:.LC21	//, tmp148,
	bl	func0		//
	cmp	w0, 1	// _11,
	beq	.L21		//,
// problem133.c:32:     assert(func0("[[][]]") == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp149,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp149,
	mov	w2, 32	//,
	adrp	x0, .LC1	// tmp150,
	add	x1, x0, :lo12:.LC1	//, tmp150,
	adrp	x0, .LC22	// tmp151,
	add	x0, x0, :lo12:.LC22	//, tmp151,
	bl	__assert_fail		//
.L21:
// problem133.c:33:     assert(func0("") == 0);
	adrp	x0, .LC23	// tmp152,
	add	x0, x0, :lo12:.LC23	//, tmp152,
	bl	func0		//
	cmp	w0, 0	// _12,
	beq	.L22		//,
// problem133.c:33:     assert(func0("") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp153,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp153,
	mov	w2, 33	//,
	adrp	x0, .LC1	// tmp154,
	add	x1, x0, :lo12:.LC1	//, tmp154,
	adrp	x0, .LC24	// tmp155,
	add	x0, x0, :lo12:.LC24	//, tmp155,
	bl	__assert_fail		//
.L22:
// problem133.c:34:     assert(func0("[[[[[[[[") == 0);
	adrp	x0, .LC25	// tmp156,
	add	x0, x0, :lo12:.LC25	//, tmp156,
	bl	func0		//
	cmp	w0, 0	// _13,
	beq	.L23		//,
// problem133.c:34:     assert(func0("[[[[[[[[") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp157,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp157,
	mov	w2, 34	//,
	adrp	x0, .LC1	// tmp158,
	add	x1, x0, :lo12:.LC1	//, tmp158,
	adrp	x0, .LC26	// tmp159,
	add	x0, x0, :lo12:.LC26	//, tmp159,
	bl	__assert_fail		//
.L23:
// problem133.c:35:     assert(func0("]]]]]]]]") == 0);
	adrp	x0, .LC27	// tmp160,
	add	x0, x0, :lo12:.LC27	//, tmp160,
	bl	func0		//
	cmp	w0, 0	// _14,
	beq	.L24		//,
// problem133.c:35:     assert(func0("]]]]]]]]") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp161,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp161,
	mov	w2, 35	//,
	adrp	x0, .LC1	// tmp162,
	add	x1, x0, :lo12:.LC1	//, tmp162,
	adrp	x0, .LC28	// tmp163,
	add	x0, x0, :lo12:.LC28	//, tmp163,
	bl	__assert_fail		//
.L24:
// problem133.c:37:     return 0;
	mov	w0, 0	// _44,
// problem133.c:38: }
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
