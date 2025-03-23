	.arch armv8-a
	.file	"problem7.c"
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
	str	x0, [sp, 24]	// paren_string, paren_string
	str	x1, [sp, 16]	// returnSize, returnSize
// problem7.c:6:     int* all_levels = NULL;
	str	xzr, [sp, 56]	//, all_levels
// problem7.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	str	wzr, [sp, 40]	//, level
// problem7.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	str	wzr, [sp, 44]	//, max_level
// problem7.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	str	wzr, [sp, 48]	//, i
// problem7.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	str	wzr, [sp, 52]	//, count
// problem7.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	str	wzr, [sp, 48]	//, i
// problem7.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	b	.L2		//
.L5:
// problem7.c:10:         chr = paren_string[i];
	ldrsw	x0, [sp, 48]	// _1, i
	ldr	x1, [sp, 24]	// tmp106, paren_string
	add	x0, x1, x0	// _2, tmp106, _1
// problem7.c:10:         chr = paren_string[i];
	ldrb	w0, [x0]	// tmp107, *_2
	strb	w0, [sp, 39]	// tmp107, chr
// problem7.c:11:         if (chr == '(') {
	ldrb	w0, [sp, 39]	// tmp108, chr
	cmp	w0, 40	// tmp108,
	bne	.L3		//,
// problem7.c:12:             level += 1;
	ldr	w0, [sp, 40]	// tmp110, level
	add	w0, w0, 1	// tmp109, tmp110,
	str	w0, [sp, 40]	// tmp109, level
// problem7.c:13:             if (level > max_level) max_level = level;
	ldr	w1, [sp, 40]	// tmp111, level
	ldr	w0, [sp, 44]	// tmp112, max_level
	cmp	w1, w0	// tmp111, tmp112
	ble	.L4		//,
// problem7.c:13:             if (level > max_level) max_level = level;
	ldr	w0, [sp, 40]	// tmp113, level
	str	w0, [sp, 44]	// tmp113, max_level
	b	.L4		//
.L3:
// problem7.c:14:         } else if (chr == ')') {
	ldrb	w0, [sp, 39]	// tmp114, chr
	cmp	w0, 41	// tmp114,
	bne	.L4		//,
// problem7.c:15:             level -= 1;
	ldr	w0, [sp, 40]	// tmp116, level
	sub	w0, w0, #1	// tmp115, tmp116,
	str	w0, [sp, 40]	// tmp115, level
// problem7.c:16:             if (level == 0) {
	ldr	w0, [sp, 40]	// tmp117, level
	cmp	w0, 0	// tmp117,
	bne	.L4		//,
// problem7.c:17:                 all_levels = (int*)realloc(all_levels, sizeof(int) * (count + 1));
	ldr	w0, [sp, 52]	// tmp118, count
	add	w0, w0, 1	// _3, tmp118,
	sxtw	x0, w0	// _4, _3
// problem7.c:17:                 all_levels = (int*)realloc(all_levels, sizeof(int) * (count + 1));
	lsl	x0, x0, 2	// _5, _4,
	mov	x1, x0	//, _5
	ldr	x0, [sp, 56]	//, all_levels
	bl	realloc		//
	str	x0, [sp, 56]	//, all_levels
// problem7.c:18:                 all_levels[count++] = max_level;
	ldr	w0, [sp, 52]	// count.0_6, count
	add	w1, w0, 1	// tmp119, count.0_6,
	str	w1, [sp, 52]	// tmp119, count
	sxtw	x0, w0	// _7, count.0_6
// problem7.c:18:                 all_levels[count++] = max_level;
	lsl	x0, x0, 2	// _8, _7,
	ldr	x1, [sp, 56]	// tmp120, all_levels
	add	x0, x1, x0	// _9, tmp120, _8
// problem7.c:18:                 all_levels[count++] = max_level;
	ldr	w1, [sp, 44]	// tmp121, max_level
	str	w1, [x0]	// tmp121, *_9
// problem7.c:19:                 max_level = 0;
	str	wzr, [sp, 44]	//, max_level
.L4:
// problem7.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	ldr	w0, [sp, 48]	// tmp123, i
	add	w0, w0, 1	// tmp122, tmp123,
	str	w0, [sp, 48]	// tmp122, i
.L2:
// problem7.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	ldrsw	x0, [sp, 48]	// _10, i
	ldr	x1, [sp, 24]	// tmp124, paren_string
	add	x0, x1, x0	// _11, tmp124, _10
	ldrb	w0, [x0]	// _12, *_11
// problem7.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	cmp	w0, 0	// _12,
	bne	.L5		//,
// problem7.c:23:     *returnSize = count;
	ldr	x0, [sp, 16]	// tmp125, returnSize
	ldr	w1, [sp, 52]	// tmp126, count
	str	w1, [x0]	// tmp126, *returnSize_32(D)
// problem7.c:24:     return all_levels;
	ldr	x0, [sp, 56]	// _34, all_levels
// problem7.c:25: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	2
	.global	issame
	.type	issame, %function
issame:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// a, a
	str	x1, [sp, 16]	// b, b
	str	w2, [sp, 12]	// size_a, size_a
	str	w3, [sp, 8]	// size_b, size_b
// problem7.c:33:     if (size_a != size_b) return 0;
	ldr	w1, [sp, 12]	// tmp102, size_a
	ldr	w0, [sp, 8]	// tmp103, size_b
	cmp	w1, w0	// tmp102, tmp103
	beq	.L8		//,
// problem7.c:33:     if (size_a != size_b) return 0;
	mov	w0, 0	// _10,
	b	.L9		//
.L8:
// problem7.c:34:     for (int i = 0; i < size_a; i++) {
	str	wzr, [sp, 44]	//, i
// problem7.c:34:     for (int i = 0; i < size_a; i++) {
	b	.L10		//
.L12:
// problem7.c:35:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp104, a
	add	x0, x1, x0	// _3, tmp104, _2
	ldr	w1, [x0]	// _4, *_3
// problem7.c:35:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 16]	// tmp105, b
	add	x0, x2, x0	// _7, tmp105, _6
	ldr	w0, [x0]	// _8, *_7
// problem7.c:35:         if (a[i] != b[i]) return 0;
	cmp	w1, w0	// _4, _8
	beq	.L11		//,
// problem7.c:35:         if (a[i] != b[i]) return 0;
	mov	w0, 0	// _10,
	b	.L9		//
.L11:
// problem7.c:34:     for (int i = 0; i < size_a; i++) {
	ldr	w0, [sp, 44]	// tmp107, i
	add	w0, w0, 1	// tmp106, tmp107,
	str	w0, [sp, 44]	// tmp106, i
.L10:
// problem7.c:34:     for (int i = 0; i < size_a; i++) {
	ldr	w1, [sp, 44]	// tmp108, i
	ldr	w0, [sp, 12]	// tmp109, size_a
	cmp	w1, w0	// tmp108, tmp109
	blt	.L12		//,
// problem7.c:37:     return 1;
	mov	w0, 1	// _10,
.L9:
// problem7.c:38: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC0:
	.string	"(()()) ((())) () ((())()())"
	.align	3
.LC1:
	.string	"problem7.c"
	.align	3
.LC2:
	.string	"issame(result, (const int[]){2, 3, 1, 3}, returnSize, 4)"
	.align	3
.LC3:
	.string	"() (()) ((())) (((())))"
	.align	3
.LC4:
	.string	"issame(result, (const int[]){1, 2, 3, 4}, returnSize, 4)"
	.align	3
.LC5:
	.string	"(()(())((())))"
	.align	3
.LC6:
	.string	"issame(result, (const int[]){4}, returnSize, 1)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
// problem7.c:40: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp101,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp100, tmp101,
	ldr	x1, [x0]	// tmp132,
	str	x1, [sp, 56]	// tmp132, D.5034
	mov	x1, 0	// tmp132
// problem7.c:44:     result = func0("(()()) ((())) () ((())()())", &returnSize);
	add	x0, sp, 28	// tmp102,,
	mov	x1, x0	//, tmp102
	adrp	x0, .LC0	// tmp103,
	add	x0, x0, :lo12:.LC0	//, tmp103,
	bl	func0		//
	str	x0, [sp, 32]	//, result
// problem7.c:45:     assert(issame(result, (const int[]){2, 3, 1, 3}, returnSize, 4));
	mov	w0, 2	// tmp104,
	str	w0, [sp, 40]	// tmp104, MEM[(int[4] *)_41][0]
	mov	w0, 3	// tmp105,
	str	w0, [sp, 44]	// tmp105, MEM[(int[4] *)_41][1]
	mov	w0, 1	// tmp106,
	str	w0, [sp, 48]	// tmp106, MEM[(int[4] *)_41][2]
	mov	w0, 3	// tmp107,
	str	w0, [sp, 52]	// tmp107, MEM[(int[4] *)_41][3]
	ldr	w1, [sp, 28]	// returnSize.1_1, returnSize
	add	x0, sp, 40	// tmp108,,
	mov	w3, 4	//,
	mov	w2, w1	//, returnSize.1_1
	mov	x1, x0	//, tmp108
	ldr	x0, [sp, 32]	//, result
	bl	issame		//
	cmp	w0, 0	// _2,
	bne	.L14		//,
// problem7.c:45:     assert(issame(result, (const int[]){2, 3, 1, 3}, returnSize, 4));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp109,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp109,
	mov	w2, 45	//,
	adrp	x0, .LC1	// tmp110,
	add	x1, x0, :lo12:.LC1	//, tmp110,
	adrp	x0, .LC2	// tmp111,
	add	x0, x0, :lo12:.LC2	//, tmp111,
	bl	__assert_fail		//
.L14:
// problem7.c:46:     free(result);
	ldr	x0, [sp, 32]	//, result
	bl	free		//
// problem7.c:48:     result = func0("() (()) ((())) (((())))", &returnSize);
	add	x0, sp, 28	// tmp112,,
	mov	x1, x0	//, tmp112
	adrp	x0, .LC3	// tmp113,
	add	x0, x0, :lo12:.LC3	//, tmp113,
	bl	func0		//
	str	x0, [sp, 32]	//, result
// problem7.c:49:     assert(issame(result, (const int[]){1, 2, 3, 4}, returnSize, 4));
	mov	w0, 1	// tmp114,
	str	w0, [sp, 40]	// tmp114, MEM[(int[4] *)_41][0]
	mov	w0, 2	// tmp115,
	str	w0, [sp, 44]	// tmp115, MEM[(int[4] *)_41][1]
	mov	w0, 3	// tmp116,
	str	w0, [sp, 48]	// tmp116, MEM[(int[4] *)_41][2]
	mov	w0, 4	// tmp117,
	str	w0, [sp, 52]	// tmp117, MEM[(int[4] *)_41][3]
	ldr	w1, [sp, 28]	// returnSize.2_3, returnSize
	add	x0, sp, 40	// tmp118,,
	mov	w3, 4	//,
	mov	w2, w1	//, returnSize.2_3
	mov	x1, x0	//, tmp118
	ldr	x0, [sp, 32]	//, result
	bl	issame		//
	cmp	w0, 0	// _4,
	bne	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 49	//,
	adrp	x0, .LC1	// tmp120,
	add	x1, x0, :lo12:.LC1	//, tmp120,
	adrp	x0, .LC4	// tmp121,
	add	x0, x0, :lo12:.LC4	//, tmp121,
	bl	__assert_fail		//
.L15:
// problem7.c:50:     free(result);
	ldr	x0, [sp, 32]	//, result
	bl	free		//
// problem7.c:52:     result = func0("(()(())((())))", &returnSize);
	add	x0, sp, 28	// tmp122,,
	mov	x1, x0	//, tmp122
	adrp	x0, .LC5	// tmp123,
	add	x0, x0, :lo12:.LC5	//, tmp123,
	bl	func0		//
	str	x0, [sp, 32]	//, result
// problem7.c:53:     assert(issame(result, (const int[]){4}, returnSize, 1));
	mov	w0, 4	// tmp124,
	str	w0, [sp, 40]	// tmp124, MEM[(int[1] *)_41][0]
	ldr	w1, [sp, 28]	// returnSize.3_5, returnSize
	add	x0, sp, 40	// tmp125,,
	mov	w3, 1	//,
	mov	w2, w1	//, returnSize.3_5
	mov	x1, x0	//, tmp125
	ldr	x0, [sp, 32]	//, result
	bl	issame		//
	cmp	w0, 0	// _6,
	bne	.L16		//,
// problem7.c:53:     assert(issame(result, (const int[]){4}, returnSize, 1));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp126,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp126,
	mov	w2, 53	//,
	adrp	x0, .LC1	// tmp127,
	add	x1, x0, :lo12:.LC1	//, tmp127,
	adrp	x0, .LC6	// tmp128,
	add	x0, x0, :lo12:.LC6	//, tmp128,
	bl	__assert_fail		//
.L16:
// problem7.c:54:     free(result);
	ldr	x0, [sp, 32]	//, result
	bl	free		//
// problem7.c:56:     return 0;
	mov	w0, 0	// _35,
// problem7.c:57: }
	mov	w1, w0	// <retval>, _35
	adrp	x0, :got:__stack_chk_guard	// tmp131,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp130, tmp131,
	ldr	x3, [sp, 56]	// tmp133, D.5034
	ldr	x2, [x0]	// tmp134,
	subs	x3, x3, x2	// tmp133, tmp134
	mov	x2, 0	// tmp134
	beq	.L18		//,
// problem7.c:57: }
	bl	__stack_chk_fail		//
.L18:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
