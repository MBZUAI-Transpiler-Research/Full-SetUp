	.arch armv8-a
	.file	"problem12.c"
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
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 24]	// a, a
	str	x1, [sp, 16]	// b, b
// problem12.c:6:     int len_a = strlen(a);
	ldr	x0, [sp, 24]	//, a
	bl	strlen		//
// problem12.c:6:     int len_a = strlen(a);
	str	w0, [sp, 44]	// tmp109, len_a
// problem12.c:7:     int len_b = strlen(b);
	ldr	x0, [sp, 16]	//, b
	bl	strlen		//
// problem12.c:7:     int len_b = strlen(b);
	str	w0, [sp, 48]	// tmp110, len_b
// problem12.c:8:     int min_len = len_a < len_b ? len_a : len_b;
	ldr	w0, [sp, 44]	// tmp112, len_a
	ldr	w2, [sp, 48]	// tmp113, len_b
	ldr	w1, [sp, 48]	// tmp114, len_b
	cmp	w2, w0	// tmp113, tmp112
	csel	w0, w1, w0, le	// tmp111, tmp114, tmp112,
	str	w0, [sp, 52]	// tmp111, min_len
// problem12.c:9:     char *output = malloc((min_len + 1) * sizeof(char));
	ldr	w0, [sp, 52]	// tmp115, min_len
	add	w0, w0, 1	// _3, tmp115,
// problem12.c:9:     char *output = malloc((min_len + 1) * sizeof(char));
	sxtw	x0, w0	// _4, _3
	bl	malloc		//
	str	x0, [sp, 56]	// tmp116, output
// problem12.c:10:     if (!output) return NULL;
	ldr	x0, [sp, 56]	// tmp117, output
	cmp	x0, 0	// tmp117,
	bne	.L2		//,
// problem12.c:10:     if (!output) return NULL;
	mov	x0, 0	// _16,
// problem12.c:10:     if (!output) return NULL;
	b	.L3		//
.L2:
// problem12.c:12:     for (int i = 0; i < min_len; i++) {
	str	wzr, [sp, 40]	//, i
// problem12.c:12:     for (int i = 0; i < min_len; i++) {
	b	.L4		//
.L7:
// problem12.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	ldrsw	x0, [sp, 40]	// _5, i
	ldr	x1, [sp, 24]	// tmp118, a
	add	x0, x1, x0	// _6, tmp118, _5
	ldrb	w1, [x0]	// _7, *_6
// problem12.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	ldrsw	x0, [sp, 40]	// _8, i
	ldr	x2, [sp, 16]	// tmp119, b
	add	x0, x2, x0	// _9, tmp119, _8
	ldrb	w0, [x0]	// _10, *_9
// problem12.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	cmp	w1, w0	// _7, _10
	bne	.L5		//,
// problem12.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	mov	w0, 48	// iftmp.0_17,
	b	.L6		//
.L5:
// problem12.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	mov	w0, 49	// iftmp.0_17,
.L6:
// problem12.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	ldrsw	x1, [sp, 40]	// _11, i
	ldr	x2, [sp, 56]	// tmp120, output
	add	x1, x2, x1	// _12, tmp120, _11
// problem12.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	strb	w0, [x1]	// tmp121, *_12
// problem12.c:12:     for (int i = 0; i < min_len; i++) {
	ldr	w0, [sp, 40]	// tmp123, i
	add	w0, w0, 1	// tmp122, tmp123,
	str	w0, [sp, 40]	// tmp122, i
.L4:
// problem12.c:12:     for (int i = 0; i < min_len; i++) {
	ldr	w1, [sp, 40]	// tmp124, i
	ldr	w0, [sp, 52]	// tmp125, min_len
	cmp	w1, w0	// tmp124, tmp125
	blt	.L7		//,
// problem12.c:15:     output[min_len] = '\0';
	ldrsw	x0, [sp, 52]	// _13, min_len
	ldr	x1, [sp, 56]	// tmp126, output
	add	x0, x1, x0	// _14, tmp126, _13
// problem12.c:15:     output[min_len] = '\0';
	strb	wzr, [x0]	//, *_14
// problem12.c:16:     return output;
	ldr	x0, [sp, 56]	// _16, output
.L3:
// problem12.c:17: }
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
	.string	"101010"
	.align	3
.LC1:
	.string	"111000"
	.align	3
.LC2:
	.string	"010010"
	.align	3
.LC3:
	.string	"problem12.c"
	.align	3
.LC4:
	.string	"strcmp(result, \"010010\") == 0"
	.align	3
.LC5:
	.string	"1"
	.align	3
.LC6:
	.string	"0"
	.align	3
.LC7:
	.string	"strcmp(result, \"0\") == 0"
	.align	3
.LC8:
	.string	"0000"
	.align	3
.LC9:
	.string	"0101"
	.align	3
.LC10:
	.string	"strcmp(result, \"0101\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
// problem12.c:29:     result = func0("111000", "101010");
	adrp	x0, .LC0	// tmp97,
	add	x1, x0, :lo12:.LC0	//, tmp97,
	adrp	x0, .LC1	// tmp98,
	add	x0, x0, :lo12:.LC1	//, tmp98,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem12.c:30:     assert(strcmp(result, "010010") == 0);
	adrp	x0, .LC2	// tmp99,
	add	x1, x0, :lo12:.LC2	//, tmp99,
	ldr	x0, [sp, 24]	//, result
	bl	strcmp		//
// problem12.c:30:     assert(strcmp(result, "010010") == 0);
	cmp	w0, 0	// _1,
	beq	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp100,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp100,
	mov	w2, 30	//,
	adrp	x0, .LC3	// tmp101,
	add	x1, x0, :lo12:.LC3	//, tmp101,
	adrp	x0, .LC4	// tmp102,
	add	x0, x0, :lo12:.LC4	//, tmp102,
	bl	__assert_fail		//
.L9:
// problem12.c:31:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem12.c:33:     result = func0("1", "1");
	adrp	x0, .LC5	// tmp103,
	add	x1, x0, :lo12:.LC5	//, tmp103,
	adrp	x0, .LC5	// tmp104,
	add	x0, x0, :lo12:.LC5	//, tmp104,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem12.c:34:     assert(strcmp(result, "0") == 0);
	adrp	x0, .LC6	// tmp105,
	add	x1, x0, :lo12:.LC6	//, tmp105,
	ldr	x0, [sp, 24]	//, result
	bl	strcmp		//
// problem12.c:34:     assert(strcmp(result, "0") == 0);
	cmp	w0, 0	// _2,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp106,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp106,
	mov	w2, 34	//,
	adrp	x0, .LC3	// tmp107,
	add	x1, x0, :lo12:.LC3	//, tmp107,
	adrp	x0, .LC7	// tmp108,
	add	x0, x0, :lo12:.LC7	//, tmp108,
	bl	__assert_fail		//
.L10:
// problem12.c:35:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem12.c:37:     result = func0("0101", "0000");
	adrp	x0, .LC8	// tmp109,
	add	x1, x0, :lo12:.LC8	//, tmp109,
	adrp	x0, .LC9	// tmp110,
	add	x0, x0, :lo12:.LC9	//, tmp110,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem12.c:38:     assert(strcmp(result, "0101") == 0);
	adrp	x0, .LC9	// tmp111,
	add	x1, x0, :lo12:.LC9	//, tmp111,
	ldr	x0, [sp, 24]	//, result
	bl	strcmp		//
// problem12.c:38:     assert(strcmp(result, "0101") == 0);
	cmp	w0, 0	// _3,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp112,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp112,
	mov	w2, 38	//,
	adrp	x0, .LC3	// tmp113,
	add	x1, x0, :lo12:.LC3	//, tmp113,
	adrp	x0, .LC10	// tmp114,
	add	x0, x0, :lo12:.LC10	//, tmp114,
	bl	__assert_fail		//
.L11:
// problem12.c:39:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem12.c:41:     return 0;
	mov	w0, 0	// _17,
// problem12.c:42: }
	ldp	x29, x30, [sp], 32	//,,,
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
