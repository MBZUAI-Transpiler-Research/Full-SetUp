	.arch armv8-a
	.file	"problem19.c"
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
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// str, str
	str	x1, [sp, 16]	// substring, substring
// problem19.c:5:     int out = 0;
	str	wzr, [sp, 32]	//, out
// problem19.c:6:     int str_len = strlen(str);
	ldr	x0, [sp, 24]	//, str
	bl	strlen		//
// problem19.c:6:     int str_len = strlen(str);
	str	w0, [sp, 40]	// tmp101, str_len
// problem19.c:7:     int sub_len = strlen(substring);
	ldr	x0, [sp, 16]	//, substring
	bl	strlen		//
// problem19.c:7:     int sub_len = strlen(substring);
	str	w0, [sp, 44]	// tmp102, sub_len
// problem19.c:8:     if (str_len == 0) return 0;
	ldr	w0, [sp, 40]	// tmp103, str_len
	cmp	w0, 0	// tmp103,
	bne	.L2		//,
// problem19.c:8:     if (str_len == 0) return 0;
	mov	w0, 0	// _11,
// problem19.c:8:     if (str_len == 0) return 0;
	b	.L3		//
.L2:
// problem19.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	str	wzr, [sp, 36]	//, i
// problem19.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	b	.L4		//
.L6:
// problem19.c:10:         if (strncmp(&str[i], substring, sub_len) == 0)
	ldrsw	x0, [sp, 36]	// _3, i
	ldr	x1, [sp, 24]	// tmp104, str
	add	x0, x1, x0	// _4, tmp104, _3
	ldrsw	x1, [sp, 44]	// _5, sub_len
	mov	x2, x1	//, _5
	ldr	x1, [sp, 16]	//, substring
	bl	strncmp		//
// problem19.c:10:         if (strncmp(&str[i], substring, sub_len) == 0)
	cmp	w0, 0	// _6,
	bne	.L5		//,
// problem19.c:11:             out++;
	ldr	w0, [sp, 32]	// tmp106, out
	add	w0, w0, 1	// tmp105, tmp106,
	str	w0, [sp, 32]	// tmp105, out
.L5:
// problem19.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	ldr	w0, [sp, 36]	// tmp108, i
	add	w0, w0, 1	// tmp107, tmp108,
	str	w0, [sp, 36]	// tmp107, i
.L4:
// problem19.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	ldr	w1, [sp, 40]	// tmp109, str_len
	ldr	w0, [sp, 44]	// tmp110, sub_len
	sub	w0, w1, w0	// _7, tmp109, tmp110
// problem19.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	ldr	w1, [sp, 36]	// tmp111, i
	cmp	w1, w0	// tmp111, _7
	ble	.L6		//,
// problem19.c:13:     return out;
	ldr	w0, [sp, 32]	// _11, out
.L3:
// problem19.c:14: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"x"
	.align	3
.LC1:
	.string	""
	.align	3
.LC2:
	.string	"problem19.c"
	.align	3
.LC3:
	.string	"func0(\"\", \"x\") == 0"
	.align	3
.LC4:
	.string	"xyxyxyx"
	.align	3
.LC5:
	.string	"func0(\"xyxyxyx\", \"x\") == 4"
	.align	3
.LC6:
	.string	"cac"
	.align	3
.LC7:
	.string	"cacacacac"
	.align	3
.LC8:
	.string	"func0(\"cacacacac\", \"cac\") == 4"
	.align	3
.LC9:
	.string	"john"
	.align	3
.LC10:
	.string	"john doe"
	.align	3
.LC11:
	.string	"func0(\"john doe\", \"john\") == 1"
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
// problem19.c:21:     assert(func0("", "x") == 0);
	adrp	x0, .LC0	// tmp98,
	add	x1, x0, :lo12:.LC0	//, tmp98,
	adrp	x0, .LC1	// tmp99,
	add	x0, x0, :lo12:.LC1	//, tmp99,
	bl	func0		//
// problem19.c:21:     assert(func0("", "x") == 0);
	cmp	w0, 0	// _1,
	beq	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp100,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp100,
	mov	w2, 21	//,
	adrp	x0, .LC2	// tmp101,
	add	x1, x0, :lo12:.LC2	//, tmp101,
	adrp	x0, .LC3	// tmp102,
	add	x0, x0, :lo12:.LC3	//, tmp102,
	bl	__assert_fail		//
.L8:
// problem19.c:22:     assert(func0("xyxyxyx", "x") == 4);
	adrp	x0, .LC0	// tmp103,
	add	x1, x0, :lo12:.LC0	//, tmp103,
	adrp	x0, .LC4	// tmp104,
	add	x0, x0, :lo12:.LC4	//, tmp104,
	bl	func0		//
// problem19.c:22:     assert(func0("xyxyxyx", "x") == 4);
	cmp	w0, 4	// _2,
	beq	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp105,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp105,
	mov	w2, 22	//,
	adrp	x0, .LC2	// tmp106,
	add	x1, x0, :lo12:.LC2	//, tmp106,
	adrp	x0, .LC5	// tmp107,
	add	x0, x0, :lo12:.LC5	//, tmp107,
	bl	__assert_fail		//
.L9:
// problem19.c:23:     assert(func0("cacacacac", "cac") == 4);
	adrp	x0, .LC6	// tmp108,
	add	x1, x0, :lo12:.LC6	//, tmp108,
	adrp	x0, .LC7	// tmp109,
	add	x0, x0, :lo12:.LC7	//, tmp109,
	bl	func0		//
// problem19.c:23:     assert(func0("cacacacac", "cac") == 4);
	cmp	w0, 4	// _3,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp110,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp110,
	mov	w2, 23	//,
	adrp	x0, .LC2	// tmp111,
	add	x1, x0, :lo12:.LC2	//, tmp111,
	adrp	x0, .LC8	// tmp112,
	add	x0, x0, :lo12:.LC8	//, tmp112,
	bl	__assert_fail		//
.L10:
// problem19.c:24:     assert(func0("john doe", "john") == 1);
	adrp	x0, .LC9	// tmp113,
	add	x1, x0, :lo12:.LC9	//, tmp113,
	adrp	x0, .LC10	// tmp114,
	add	x0, x0, :lo12:.LC10	//, tmp114,
	bl	func0		//
// problem19.c:24:     assert(func0("john doe", "john") == 1);
	cmp	w0, 1	// _4,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp115,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp115,
	mov	w2, 24	//,
	adrp	x0, .LC2	// tmp116,
	add	x1, x0, :lo12:.LC2	//, tmp116,
	adrp	x0, .LC11	// tmp117,
	add	x0, x0, :lo12:.LC11	//, tmp117,
	bl	__assert_fail		//
.L11:
// problem19.c:26:     return 0;
	mov	w0, 0	// _14,
// problem19.c:27: }
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
