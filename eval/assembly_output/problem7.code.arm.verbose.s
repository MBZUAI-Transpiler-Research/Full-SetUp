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
	str	x0, [sp, 24]	// paren_string, paren_string
	str	x1, [sp, 16]	// returnSize, returnSize
// code.c:6:     int* all_levels = NULL;
	str	xzr, [sp, 56]	//, all_levels
// code.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	str	wzr, [sp, 40]	//, level
// code.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	str	wzr, [sp, 44]	//, max_level
// code.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	str	wzr, [sp, 48]	//, i
// code.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	str	wzr, [sp, 52]	//, count
// code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	str	wzr, [sp, 48]	//, i
// code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	b	.L2		//
.L5:
// code.c:10:         chr = paren_string[i];
	ldrsw	x0, [sp, 48]	// _1, i
	ldr	x1, [sp, 24]	// tmp106, paren_string
	add	x0, x1, x0	// _2, tmp106, _1
// code.c:10:         chr = paren_string[i];
	ldrb	w0, [x0]	// tmp107, *_2
	strb	w0, [sp, 39]	// tmp107, chr
// code.c:11:         if (chr == '(') {
	ldrb	w0, [sp, 39]	// tmp108, chr
	cmp	w0, 40	// tmp108,
	bne	.L3		//,
// code.c:12:             level += 1;
	ldr	w0, [sp, 40]	// tmp110, level
	add	w0, w0, 1	// tmp109, tmp110,
	str	w0, [sp, 40]	// tmp109, level
// code.c:13:             if (level > max_level) max_level = level;
	ldr	w1, [sp, 40]	// tmp111, level
	ldr	w0, [sp, 44]	// tmp112, max_level
	cmp	w1, w0	// tmp111, tmp112
	ble	.L4		//,
// code.c:13:             if (level > max_level) max_level = level;
	ldr	w0, [sp, 40]	// tmp113, level
	str	w0, [sp, 44]	// tmp113, max_level
	b	.L4		//
.L3:
// code.c:14:         } else if (chr == ')') {
	ldrb	w0, [sp, 39]	// tmp114, chr
	cmp	w0, 41	// tmp114,
	bne	.L4		//,
// code.c:15:             level -= 1;
	ldr	w0, [sp, 40]	// tmp116, level
	sub	w0, w0, #1	// tmp115, tmp116,
	str	w0, [sp, 40]	// tmp115, level
// code.c:16:             if (level == 0) {
	ldr	w0, [sp, 40]	// tmp117, level
	cmp	w0, 0	// tmp117,
	bne	.L4		//,
// code.c:17:                 all_levels = (int*)realloc(all_levels, sizeof(int) * (count + 1));
	ldr	w0, [sp, 52]	// tmp118, count
	add	w0, w0, 1	// _3, tmp118,
	sxtw	x0, w0	// _4, _3
// code.c:17:                 all_levels = (int*)realloc(all_levels, sizeof(int) * (count + 1));
	lsl	x0, x0, 2	// _5, _4,
	mov	x1, x0	//, _5
	ldr	x0, [sp, 56]	//, all_levels
	bl	realloc		//
	str	x0, [sp, 56]	//, all_levels
// code.c:18:                 all_levels[count++] = max_level;
	ldr	w0, [sp, 52]	// count.0_6, count
	add	w1, w0, 1	// tmp119, count.0_6,
	str	w1, [sp, 52]	// tmp119, count
	sxtw	x0, w0	// _7, count.0_6
// code.c:18:                 all_levels[count++] = max_level;
	lsl	x0, x0, 2	// _8, _7,
	ldr	x1, [sp, 56]	// tmp120, all_levels
	add	x0, x1, x0	// _9, tmp120, _8
// code.c:18:                 all_levels[count++] = max_level;
	ldr	w1, [sp, 44]	// tmp121, max_level
	str	w1, [x0]	// tmp121, *_9
// code.c:19:                 max_level = 0;
	str	wzr, [sp, 44]	//, max_level
.L4:
// code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	ldr	w0, [sp, 48]	// tmp123, i
	add	w0, w0, 1	// tmp122, tmp123,
	str	w0, [sp, 48]	// tmp122, i
.L2:
// code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	ldrsw	x0, [sp, 48]	// _10, i
	ldr	x1, [sp, 24]	// tmp124, paren_string
	add	x0, x1, x0	// _11, tmp124, _10
	ldrb	w0, [x0]	// _12, *_11
// code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	cmp	w0, 0	// _12,
	bne	.L5		//,
// code.c:23:     *returnSize = count;
	ldr	x0, [sp, 16]	// tmp125, returnSize
	ldr	w1, [sp, 52]	// tmp126, count
	str	w1, [x0]	// tmp126, *returnSize_32(D)
// code.c:24:     return all_levels;
	ldr	x0, [sp, 56]	// _34, all_levels
// code.c:25: }
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
