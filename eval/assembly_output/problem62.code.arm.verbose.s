	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
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
	str	x0, [sp, 40]	// brackets, brackets
// code.c:6:     int level = 0;
	str	wzr, [sp, 56]	//, level
// code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	str	wzr, [sp, 60]	//, i
// code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	b	.L2		//
.L7:
// code.c:8:         if (brackets[i] == '(') level += 1;
	ldrsw	x0, [sp, 60]	// _1, i
	ldr	x1, [sp, 40]	// tmp102, brackets
	add	x0, x1, x0	// _2, tmp102, _1
	ldrb	w0, [x0]	// _3, *_2
// code.c:8:         if (brackets[i] == '(') level += 1;
	cmp	w0, 40	// _3,
	bne	.L3		//,
// code.c:8:         if (brackets[i] == '(') level += 1;
	ldr	w0, [sp, 56]	// tmp104, level
	add	w0, w0, 1	// tmp103, tmp104,
	str	w0, [sp, 56]	// tmp103, level
.L3:
// code.c:9:         if (brackets[i] == ')') level -= 1;
	ldrsw	x0, [sp, 60]	// _4, i
	ldr	x1, [sp, 40]	// tmp105, brackets
	add	x0, x1, x0	// _5, tmp105, _4
	ldrb	w0, [x0]	// _6, *_5
// code.c:9:         if (brackets[i] == ')') level -= 1;
	cmp	w0, 41	// _6,
	bne	.L4		//,
// code.c:9:         if (brackets[i] == ')') level -= 1;
	ldr	w0, [sp, 56]	// tmp107, level
	sub	w0, w0, #1	// tmp106, tmp107,
	str	w0, [sp, 56]	// tmp106, level
.L4:
// code.c:10:         if (level < 0) return false;
	ldr	w0, [sp, 56]	// tmp108, level
	cmp	w0, 0	// tmp108,
	bge	.L5		//,
// code.c:10:         if (level < 0) return false;
	mov	w0, 0	// _13,
// code.c:10:         if (level < 0) return false;
	b	.L6		//
.L5:
// code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	ldr	w0, [sp, 60]	// tmp110, i
	add	w0, w0, 1	// tmp109, tmp110,
	str	w0, [sp, 60]	// tmp109, i
.L2:
// code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	ldrsw	x19, [sp, 60]	// _7, i
// code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	ldr	x0, [sp, 40]	//, brackets
	bl	strlen		//
// code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	cmp	x19, x0	// _7, _8
	bcc	.L7		//,
// code.c:12:     return level == 0;
	ldr	w0, [sp, 56]	// tmp112, level
	cmp	w0, 0	// tmp112,
	cset	w0, eq	// tmp113,
	and	w0, w0, 255	// _13, tmp111
.L6:
// code.c:13: }
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
