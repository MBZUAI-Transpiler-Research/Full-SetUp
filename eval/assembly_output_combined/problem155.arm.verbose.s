	.arch armv8-a
	.file	"problem155.c"
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
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 24]	// a, a
	str	x1, [sp, 16]	// b, b
// problem155.c:7:     int len_a = strlen(a);
	ldr	x0, [sp, 24]	//, a
	bl	strlen		//
// problem155.c:7:     int len_a = strlen(a);
	str	w0, [sp, 48]	// tmp111, len_a
// problem155.c:8:     int len_b = strlen(b);
	ldr	x0, [sp, 16]	//, b
	bl	strlen		//
// problem155.c:8:     int len_b = strlen(b);
	str	w0, [sp, 52]	// tmp112, len_b
// problem155.c:9:     char *temp = (char *)malloc(2 * len_b + 1);
	ldr	w0, [sp, 52]	// tmp113, len_b
	lsl	w0, w0, 1	// _3, tmp113,
// problem155.c:9:     char *temp = (char *)malloc(2 * len_b + 1);
	add	w0, w0, 1	// _4, _3,
// problem155.c:9:     char *temp = (char *)malloc(2 * len_b + 1);
	sxtw	x0, w0	// _5, _4
	bl	malloc		//
	str	x0, [sp, 56]	// tmp114, temp
// problem155.c:11:     for (int i = 0; i < len_b; i++) {
	str	wzr, [sp, 44]	//, i
// problem155.c:11:     for (int i = 0; i < len_b; i++) {
	b	.L2		//
.L5:
// problem155.c:12:         strncpy(temp, b + i, len_b - i);
	ldrsw	x0, [sp, 44]	// _6, i
	ldr	x1, [sp, 16]	// tmp115, b
	add	x3, x1, x0	// _7, tmp115, _6
// problem155.c:12:         strncpy(temp, b + i, len_b - i);
	ldr	w1, [sp, 52]	// tmp116, len_b
	ldr	w0, [sp, 44]	// tmp117, i
	sub	w0, w1, w0	// _8, tmp116, tmp117
// problem155.c:12:         strncpy(temp, b + i, len_b - i);
	sxtw	x0, w0	// _9, _8
	mov	x2, x0	//, _9
	mov	x1, x3	//, _7
	ldr	x0, [sp, 56]	//, temp
	bl	strncpy		//
// problem155.c:13:         strncpy(temp + len_b - i, b, i);
	ldrsw	x1, [sp, 52]	// _10, len_b
	ldrsw	x0, [sp, 44]	// _11, i
	sub	x0, x1, x0	// _12, _10, _11
// problem155.c:13:         strncpy(temp + len_b - i, b, i);
	ldr	x1, [sp, 56]	// tmp118, temp
	add	x0, x1, x0	// _13, tmp118, _12
	ldrsw	x1, [sp, 44]	// _14, i
	mov	x2, x1	//, _14
	ldr	x1, [sp, 16]	//, b
	bl	strncpy		//
// problem155.c:14:         temp[len_b] = '\0';
	ldrsw	x0, [sp, 52]	// _15, len_b
	ldr	x1, [sp, 56]	// tmp119, temp
	add	x0, x1, x0	// _16, tmp119, _15
// problem155.c:14:         temp[len_b] = '\0';
	strb	wzr, [x0]	//, *_16
// problem155.c:15:         if (strstr(a, temp)) {
	ldr	x1, [sp, 56]	//, temp
	ldr	x0, [sp, 24]	//, a
	bl	strstr		//
// problem155.c:15:         if (strstr(a, temp)) {
	cmp	x0, 0	// _17,
	beq	.L3		//,
// problem155.c:16:             free(temp);
	ldr	x0, [sp, 56]	//, temp
	bl	free		//
// problem155.c:17:             return true;
	mov	w0, 1	// _19,
	b	.L4		//
.L3:
// problem155.c:11:     for (int i = 0; i < len_b; i++) {
	ldr	w0, [sp, 44]	// tmp121, i
	add	w0, w0, 1	// tmp120, tmp121,
	str	w0, [sp, 44]	// tmp120, i
.L2:
// problem155.c:11:     for (int i = 0; i < len_b; i++) {
	ldr	w1, [sp, 44]	// tmp122, i
	ldr	w0, [sp, 52]	// tmp123, len_b
	cmp	w1, w0	// tmp122, tmp123
	blt	.L5		//,
// problem155.c:21:     free(temp);
	ldr	x0, [sp, 56]	//, temp
	bl	free		//
// problem155.c:22:     return false;
	mov	w0, 0	// _19,
.L4:
// problem155.c:23: }
	ldp	x29, x30, [sp], 64	//,,,
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
	.string	"xyw"
	.align	3
.LC1:
	.string	"xyzw"
	.align	3
.LC2:
	.string	"problem155.c"
	.align	3
.LC3:
	.string	"func0(\"xyzw\", \"xyw\") == false"
	.align	3
.LC4:
	.string	"ell"
	.align	3
.LC5:
	.string	"yello"
	.align	3
.LC6:
	.string	"func0(\"yello\", \"ell\") == true"
	.align	3
.LC7:
	.string	"ptut"
	.align	3
.LC8:
	.string	"whattup"
	.align	3
.LC9:
	.string	"func0(\"whattup\", \"ptut\") == false"
	.align	3
.LC10:
	.string	"fee"
	.align	3
.LC11:
	.string	"efef"
	.align	3
.LC12:
	.string	"func0(\"efef\", \"fee\") == true"
	.align	3
.LC13:
	.string	"aabb"
	.align	3
.LC14:
	.string	"abab"
	.align	3
.LC15:
	.string	"func0(\"abab\", \"aabb\") == false"
	.align	3
.LC16:
	.string	"tinem"
	.align	3
.LC17:
	.string	"winemtt"
	.align	3
.LC18:
	.string	"func0(\"winemtt\", \"tinem\") == true"
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
// problem155.c:31:     assert(func0("xyzw", "xyw") == false);
	adrp	x0, .LC0	// tmp103,
	add	x1, x0, :lo12:.LC0	//, tmp103,
	adrp	x0, .LC1	// tmp104,
	add	x0, x0, :lo12:.LC1	//, tmp104,
	bl	func0		//
	and	w0, w0, 255	// _1, tmp105
	eor	w0, w0, 1	// tmp106, _1,
	and	w0, w0, 255	// _2, tmp106
	cmp	w0, 0	// _2,
	bne	.L7		//,
// problem155.c:31:     assert(func0("xyzw", "xyw") == false);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp107,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp107,
	mov	w2, 31	//,
	adrp	x0, .LC2	// tmp108,
	add	x1, x0, :lo12:.LC2	//, tmp108,
	adrp	x0, .LC3	// tmp109,
	add	x0, x0, :lo12:.LC3	//, tmp109,
	bl	__assert_fail		//
.L7:
// problem155.c:32:     assert(func0("yello", "ell") == true);
	adrp	x0, .LC4	// tmp110,
	add	x1, x0, :lo12:.LC4	//, tmp110,
	adrp	x0, .LC5	// tmp111,
	add	x0, x0, :lo12:.LC5	//, tmp111,
	bl	func0		//
	and	w0, w0, 255	// _3, tmp112
	cmp	w0, 0	// _3,
	bne	.L8		//,
// problem155.c:32:     assert(func0("yello", "ell") == true);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp113,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp113,
	mov	w2, 32	//,
	adrp	x0, .LC2	// tmp114,
	add	x1, x0, :lo12:.LC2	//, tmp114,
	adrp	x0, .LC6	// tmp115,
	add	x0, x0, :lo12:.LC6	//, tmp115,
	bl	__assert_fail		//
.L8:
// problem155.c:33:     assert(func0("whattup", "ptut") == false);
	adrp	x0, .LC7	// tmp116,
	add	x1, x0, :lo12:.LC7	//, tmp116,
	adrp	x0, .LC8	// tmp117,
	add	x0, x0, :lo12:.LC8	//, tmp117,
	bl	func0		//
	and	w0, w0, 255	// _4, tmp118
	eor	w0, w0, 1	// tmp119, _4,
	and	w0, w0, 255	// _5, tmp119
	cmp	w0, 0	// _5,
	bne	.L9		//,
// problem155.c:33:     assert(func0("whattup", "ptut") == false);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp120,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp120,
	mov	w2, 33	//,
	adrp	x0, .LC2	// tmp121,
	add	x1, x0, :lo12:.LC2	//, tmp121,
	adrp	x0, .LC9	// tmp122,
	add	x0, x0, :lo12:.LC9	//, tmp122,
	bl	__assert_fail		//
.L9:
// problem155.c:34:     assert(func0("efef", "fee") == true);
	adrp	x0, .LC10	// tmp123,
	add	x1, x0, :lo12:.LC10	//, tmp123,
	adrp	x0, .LC11	// tmp124,
	add	x0, x0, :lo12:.LC11	//, tmp124,
	bl	func0		//
	and	w0, w0, 255	// _6, tmp125
	cmp	w0, 0	// _6,
	bne	.L10		//,
// problem155.c:34:     assert(func0("efef", "fee") == true);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp126,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp126,
	mov	w2, 34	//,
	adrp	x0, .LC2	// tmp127,
	add	x1, x0, :lo12:.LC2	//, tmp127,
	adrp	x0, .LC12	// tmp128,
	add	x0, x0, :lo12:.LC12	//, tmp128,
	bl	__assert_fail		//
.L10:
// problem155.c:35:     assert(func0("abab", "aabb") == false);
	adrp	x0, .LC13	// tmp129,
	add	x1, x0, :lo12:.LC13	//, tmp129,
	adrp	x0, .LC14	// tmp130,
	add	x0, x0, :lo12:.LC14	//, tmp130,
	bl	func0		//
	and	w0, w0, 255	// _7, tmp131
	eor	w0, w0, 1	// tmp132, _7,
	and	w0, w0, 255	// _8, tmp132
	cmp	w0, 0	// _8,
	bne	.L11		//,
// problem155.c:35:     assert(func0("abab", "aabb") == false);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp133,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp133,
	mov	w2, 35	//,
	adrp	x0, .LC2	// tmp134,
	add	x1, x0, :lo12:.LC2	//, tmp134,
	adrp	x0, .LC15	// tmp135,
	add	x0, x0, :lo12:.LC15	//, tmp135,
	bl	__assert_fail		//
.L11:
// problem155.c:36:     assert(func0("winemtt", "tinem") == true);
	adrp	x0, .LC16	// tmp136,
	add	x1, x0, :lo12:.LC16	//, tmp136,
	adrp	x0, .LC17	// tmp137,
	add	x0, x0, :lo12:.LC17	//, tmp137,
	bl	func0		//
	and	w0, w0, 255	// _9, tmp138
	cmp	w0, 0	// _9,
	bne	.L12		//,
// problem155.c:36:     assert(func0("winemtt", "tinem") == true);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp139,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp139,
	mov	w2, 36	//,
	adrp	x0, .LC2	// tmp140,
	add	x1, x0, :lo12:.LC2	//, tmp140,
	adrp	x0, .LC18	// tmp141,
	add	x0, x0, :lo12:.LC18	//, tmp141,
	bl	__assert_fail		//
.L12:
// problem155.c:38:     return 0;
	mov	w0, 0	// _23,
// problem155.c:39: }
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
