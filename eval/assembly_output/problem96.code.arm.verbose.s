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
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 24]	// dict, dict
	str	w1, [sp, 20]	// size, size
// code.c:7:     if (size == 0) return 0;
	ldr	w0, [sp, 20]	// tmp134, size
	cmp	w0, 0	// tmp134,
	bne	.L2		//,
// code.c:7:     if (size == 0) return 0;
	mov	w0, 0	// _49,
// code.c:7:     if (size == 0) return 0;
	b	.L3		//
.L2:
// code.c:8:     int has_lower = 0, has_upper = 0;
	str	wzr, [sp, 40]	//, has_lower
// code.c:8:     int has_lower = 0, has_upper = 0;
	str	wzr, [sp, 44]	//, has_upper
// code.c:9:     for (int i = 0; i < size; ++i) {
	str	wzr, [sp, 48]	//, i
// code.c:9:     for (int i = 0; i < size; ++i) {
	b	.L4		//
.L11:
// code.c:10:         char* key = dict[i][0];
	ldrsw	x0, [sp, 48]	// _1, i
	lsl	x0, x0, 4	// _2, _1,
	ldr	x1, [sp, 24]	// tmp135, dict
	add	x0, x1, x0	// _3, tmp135, _2
// code.c:10:         char* key = dict[i][0];
	ldr	x0, [x0]	// tmp136, (*_3)[0]
	str	x0, [sp, 56]	// tmp136, key
// code.c:11:         for (int j = 0; key[j]; ++j) {
	str	wzr, [sp, 52]	//, j
// code.c:11:         for (int j = 0; key[j]; ++j) {
	b	.L5		//
.L10:
// code.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	bl	__ctype_b_loc		//
// code.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	ldr	x1, [x0]	// _5, *_4
	ldrsw	x0, [sp, 52]	// _6, j
	ldr	x2, [sp, 56]	// tmp137, key
	add	x0, x2, x0	// _7, tmp137, _6
	ldrb	w0, [x0]	// _8, *_7
	and	x0, x0, 255	// _9, _8
	lsl	x0, x0, 1	// _10, _9,
	add	x0, x1, x0	// _11, _5, _10
	ldrh	w0, [x0]	// _12, *_11
	and	w0, w0, 1024	// _14, _13,
// code.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	cmp	w0, 0	// _14,
	bne	.L6		//,
// code.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	mov	w0, 0	// _49,
// code.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	b	.L3		//
.L6:
// code.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	bl	__ctype_b_loc		//
// code.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	ldr	x1, [x0]	// _16, *_15
	ldrsw	x0, [sp, 52]	// _17, j
	ldr	x2, [sp, 56]	// tmp138, key
	add	x0, x2, x0	// _18, tmp138, _17
	ldrb	w0, [x0]	// _19, *_18
	and	x0, x0, 255	// _20, _19
	lsl	x0, x0, 1	// _21, _20,
	add	x0, x1, x0	// _22, _16, _21
	ldrh	w0, [x0]	// _23, *_22
	and	w0, w0, 256	// _25, _24,
// code.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	cmp	w0, 0	// _25,
	beq	.L7		//,
// code.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	mov	w0, 1	// tmp139,
	str	w0, [sp, 44]	// tmp139, has_upper
.L7:
// code.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	bl	__ctype_b_loc		//
// code.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	ldr	x1, [x0]	// _27, *_26
	ldrsw	x0, [sp, 52]	// _28, j
	ldr	x2, [sp, 56]	// tmp140, key
	add	x0, x2, x0	// _29, tmp140, _28
	ldrb	w0, [x0]	// _30, *_29
	and	x0, x0, 255	// _31, _30
	lsl	x0, x0, 1	// _32, _31,
	add	x0, x1, x0	// _33, _27, _32
	ldrh	w0, [x0]	// _34, *_33
	and	w0, w0, 512	// _36, _35,
// code.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	cmp	w0, 0	// _36,
	beq	.L8		//,
// code.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	mov	w0, 1	// tmp141,
	str	w0, [sp, 40]	// tmp141, has_lower
.L8:
// code.c:15:             if (has_upper + has_lower == 2) return 0;
	ldr	w1, [sp, 44]	// tmp142, has_upper
	ldr	w0, [sp, 40]	// tmp143, has_lower
	add	w0, w1, w0	// _37, tmp142, tmp143
// code.c:15:             if (has_upper + has_lower == 2) return 0;
	cmp	w0, 2	// _37,
	bne	.L9		//,
// code.c:15:             if (has_upper + has_lower == 2) return 0;
	mov	w0, 0	// _49,
// code.c:15:             if (has_upper + has_lower == 2) return 0;
	b	.L3		//
.L9:
// code.c:11:         for (int j = 0; key[j]; ++j) {
	ldr	w0, [sp, 52]	// tmp145, j
	add	w0, w0, 1	// tmp144, tmp145,
	str	w0, [sp, 52]	// tmp144, j
.L5:
// code.c:11:         for (int j = 0; key[j]; ++j) {
	ldrsw	x0, [sp, 52]	// _38, j
	ldr	x1, [sp, 56]	// tmp146, key
	add	x0, x1, x0	// _39, tmp146, _38
	ldrb	w0, [x0]	// _40, *_39
// code.c:11:         for (int j = 0; key[j]; ++j) {
	cmp	w0, 0	// _40,
	bne	.L10		//,
// code.c:9:     for (int i = 0; i < size; ++i) {
	ldr	w0, [sp, 48]	// tmp148, i
	add	w0, w0, 1	// tmp147, tmp148,
	str	w0, [sp, 48]	// tmp147, i
.L4:
// code.c:9:     for (int i = 0; i < size; ++i) {
	ldr	w1, [sp, 48]	// tmp149, i
	ldr	w0, [sp, 20]	// tmp150, size
	cmp	w1, w0	// tmp149, tmp150
	blt	.L11		//,
// code.c:18:     return 1;
	mov	w0, 1	// _49,
.L3:
// code.c:19: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
