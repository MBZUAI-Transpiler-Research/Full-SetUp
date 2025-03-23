	.arch armv8-a
	.file	"problem30.c"
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
	str	x0, [sp, 40]	// strings, strings
	str	w1, [sp, 36]	// count, count
	str	x2, [sp, 24]	// prefix, prefix
	str	x3, [sp, 16]	// out, out
// problem30.c:6:     int prefix_length = strlen(prefix);
	ldr	x0, [sp, 24]	//, prefix
	bl	strlen		//
// problem30.c:6:     int prefix_length = strlen(prefix);
	str	w0, [sp, 60]	// tmp113, prefix_length
// problem30.c:7:     *out = (char**)malloc(count * sizeof(char*));
	ldrsw	x0, [sp, 36]	// _2, count
	lsl	x0, x0, 3	// _3, _2,
	bl	malloc		//
	mov	x1, x0	// _4, tmp114
// problem30.c:7:     *out = (char**)malloc(count * sizeof(char*));
	ldr	x0, [sp, 16]	// tmp115, out
	str	x1, [x0]	// _4, *out_30(D)
// problem30.c:8:     int out_count = 0;
	str	wzr, [sp, 52]	//, out_count
// problem30.c:10:     for (int i = 0; i < count; i++) {
	str	wzr, [sp, 56]	//, i
// problem30.c:10:     for (int i = 0; i < count; i++) {
	b	.L2		//
.L4:
// problem30.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	ldrsw	x0, [sp, 56]	// _5, i
	lsl	x0, x0, 3	// _6, _5,
	ldr	x1, [sp, 40]	// tmp116, strings
	add	x0, x1, x0	// _7, tmp116, _6
// problem30.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	ldr	x0, [x0]	// _8, *_7
	ldrsw	x1, [sp, 60]	// _9, prefix_length
	mov	x2, x1	//, _9
	ldr	x1, [sp, 24]	//, prefix
	bl	strncmp		//
// problem30.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	cmp	w0, 0	// _10,
	bne	.L3		//,
// problem30.c:12:             (*out)[out_count++] = strings[i];
	ldrsw	x0, [sp, 56]	// _11, i
	lsl	x0, x0, 3	// _12, _11,
	ldr	x1, [sp, 40]	// tmp117, strings
	add	x1, x1, x0	// _13, tmp117, _12
// problem30.c:12:             (*out)[out_count++] = strings[i];
	ldr	x0, [sp, 16]	// tmp118, out
	ldr	x2, [x0]	// _14, *out_30(D)
// problem30.c:12:             (*out)[out_count++] = strings[i];
	ldr	w0, [sp, 52]	// out_count.0_15, out_count
	add	w3, w0, 1	// tmp119, out_count.0_15,
	str	w3, [sp, 52]	// tmp119, out_count
	sxtw	x0, w0	// _16, out_count.0_15
// problem30.c:12:             (*out)[out_count++] = strings[i];
	lsl	x0, x0, 3	// _17, _16,
	add	x0, x2, x0	// _18, _14, _17
// problem30.c:12:             (*out)[out_count++] = strings[i];
	ldr	x1, [x1]	// _19, *_13
// problem30.c:12:             (*out)[out_count++] = strings[i];
	str	x1, [x0]	// _19, *_18
.L3:
// problem30.c:10:     for (int i = 0; i < count; i++) {
	ldr	w0, [sp, 56]	// tmp121, i
	add	w0, w0, 1	// tmp120, tmp121,
	str	w0, [sp, 56]	// tmp120, i
.L2:
// problem30.c:10:     for (int i = 0; i < count; i++) {
	ldr	w1, [sp, 56]	// tmp122, i
	ldr	w0, [sp, 36]	// tmp123, count
	cmp	w1, w0	// tmp122, tmp123
	blt	.L4		//,
// problem30.c:16:     return out_count;
	ldr	w0, [sp, 52]	// _34, out_count
// problem30.c:17: }
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
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 40]	// a, a
	str	w1, [sp, 36]	// a_count, a_count
	str	x2, [sp, 24]	// b, b
	str	w3, [sp, 32]	// b_count, b_count
// problem30.c:28:     if (a_count != b_count) return 0;
	ldr	w1, [sp, 36]	// tmp103, a_count
	ldr	w0, [sp, 32]	// tmp104, b_count
	cmp	w1, w0	// tmp103, tmp104
	beq	.L7		//,
// problem30.c:28:     if (a_count != b_count) return 0;
	mov	w0, 0	// _11,
	b	.L8		//
.L7:
// problem30.c:29:     for (int i = 0; i < a_count; i++) {
	str	wzr, [sp, 60]	//, i
// problem30.c:29:     for (int i = 0; i < a_count; i++) {
	b	.L9		//
.L11:
// problem30.c:30:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldrsw	x0, [sp, 60]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 40]	// tmp105, a
	add	x0, x1, x0	// _3, tmp105, _2
// problem30.c:30:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldr	x2, [x0]	// _4, *_3
// problem30.c:30:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldrsw	x0, [sp, 60]	// _5, i
	lsl	x0, x0, 3	// _6, _5,
	ldr	x1, [sp, 24]	// tmp106, b
	add	x0, x1, x0	// _7, tmp106, _6
// problem30.c:30:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldr	x0, [x0]	// _8, *_7
	mov	x1, x0	//, _8
	mov	x0, x2	//, _4
	bl	strcmp		//
// problem30.c:30:         if (strcmp(a[i], b[i]) != 0) return 0;
	cmp	w0, 0	// _9,
	beq	.L10		//,
// problem30.c:30:         if (strcmp(a[i], b[i]) != 0) return 0;
	mov	w0, 0	// _11,
	b	.L8		//
.L10:
// problem30.c:29:     for (int i = 0; i < a_count; i++) {
	ldr	w0, [sp, 60]	// tmp108, i
	add	w0, w0, 1	// tmp107, tmp108,
	str	w0, [sp, 60]	// tmp107, i
.L9:
// problem30.c:29:     for (int i = 0; i < a_count; i++) {
	ldr	w1, [sp, 60]	// tmp109, i
	ldr	w0, [sp, 36]	// tmp110, a_count
	cmp	w1, w0	// tmp109, tmp110
	blt	.L11		//,
// problem30.c:32:     return 1;
	mov	w0, 1	// _11,
.L8:
// problem30.c:33: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC7:
	.string	"john"
	.align	3
.LC8:
	.string	"problem30.c"
	.align	3
.LC9:
	.string	"issame(result, count, (char*[]){}, 0)"
	.align	3
.LC0:
	.string	"xxx"
	.align	3
.LC12:
	.string	"issame(result, count, expected, 3)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!	//,,,
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp	//,
// problem30.c:35: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp101,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp100, tmp101,
	ldr	x1, [x0]	// tmp132,
	str	x1, [sp, 120]	// tmp132, D.5033
	mov	x1, 0	// tmp132
// problem30.c:39:     count = func0((char*[]){}, 0, "john", &result);
	add	x0, sp, 32	// tmp102,,
	add	x4, sp, 40	// tmp103,,
	mov	x3, x0	//, tmp102
	adrp	x0, .LC7	// tmp104,
	add	x2, x0, :lo12:.LC7	//, tmp104,
	mov	w1, 0	//,
	mov	x0, x4	//, tmp103
	bl	func0		//
	str	w0, [sp, 28]	//, count
// problem30.c:40:     assert(issame(result, count, (char*[]){}, 0));
	ldr	x0, [sp, 32]	// result.1_1, result
	add	x1, sp, 72	// tmp105,,
	mov	w3, 0	//,
	mov	x2, x1	//, tmp105
	ldr	w1, [sp, 28]	//, count
	bl	issame		//
	cmp	w0, 0	// _2,
	bne	.L13		//,
// problem30.c:40:     assert(issame(result, count, (char*[]){}, 0));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp106,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp106,
	mov	w2, 40	//,
	adrp	x0, .LC8	// tmp107,
	add	x1, x0, :lo12:.LC8	//, tmp107,
	adrp	x0, .LC9	// tmp108,
	add	x0, x0, :lo12:.LC9	//, tmp108,
	bl	__assert_fail		//
.L13:
// problem30.c:41:     free(result);
	ldr	x0, [sp, 32]	// result.2_3, result
	bl	free		//
// problem30.c:43:     char* strings[] = {"xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"};
	adrp	x0, .LC10	// tmp110,
	add	x1, x0, :lo12:.LC10	// tmp109, tmp110,
	add	x0, sp, 72	// tmp111,,
	ldp	q0, q1, [x1]	// tmp113, tmp114,
	stp	q0, q1, [x0]	// tmp113, tmp114, MEM[(char *[6] *)_30]
	ldr	q0, [x1, 32]	// tmp115,
	str	q0, [x0, 32]	// tmp115, MEM[(char *[6] *)_30]
// problem30.c:44:     char* expected[] = {"xxx", "xxxAAA", "xxx"};
	adrp	x0, .LC11	// tmp117,
	add	x0, x0, :lo12:.LC11	// tmp116, tmp117,
	add	x2, sp, 48	// tmp118,,
	mov	x3, x0	// tmp119, tmp116
	ldp	x0, x1, [x3]	// tmp120,
	stp	x0, x1, [x2]	// tmp120, expected
	ldr	x0, [x3, 16]	// tmp121,
	str	x0, [x2, 16]	// tmp121, expected
// problem30.c:45:     count = func0(strings, 6, "xxx", &result);
	add	x0, sp, 32	// tmp122,,
	add	x4, sp, 72	// tmp123,,
	mov	x3, x0	//, tmp122
	adrp	x0, .LC0	// tmp124,
	add	x2, x0, :lo12:.LC0	//, tmp124,
	mov	w1, 6	//,
	mov	x0, x4	//, tmp123
	bl	func0		//
	str	w0, [sp, 28]	//, count
// problem30.c:46:     assert(issame(result, count, expected, 3));
	ldr	x0, [sp, 32]	// result.3_4, result
	add	x1, sp, 48	// tmp125,,
	mov	w3, 3	//,
	mov	x2, x1	//, tmp125
	ldr	w1, [sp, 28]	//, count
	bl	issame		//
	cmp	w0, 0	// _5,
	bne	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp126,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp126,
	mov	w2, 46	//,
	adrp	x0, .LC8	// tmp127,
	add	x1, x0, :lo12:.LC8	//, tmp127,
	adrp	x0, .LC12	// tmp128,
	add	x0, x0, :lo12:.LC12	//, tmp128,
	bl	__assert_fail		//
.L14:
// problem30.c:47:     free(result);
	ldr	x0, [sp, 32]	// result.4_6, result
	bl	free		//
// problem30.c:49:     return 0;
	mov	w0, 0	// _23,
// problem30.c:50: }
	mov	w1, w0	// <retval>, _23
	adrp	x0, :got:__stack_chk_guard	// tmp131,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp130, tmp131,
	ldr	x3, [sp, 120]	// tmp133, D.5033
	ldr	x2, [x0]	// tmp134,
	subs	x3, x3, x2	// tmp133, tmp134
	mov	x2, 0	// tmp134
	beq	.L16		//,
	bl	__stack_chk_fail		//
.L16:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 128	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC1:
	.string	"asd"
	.align	3
.LC2:
	.string	"xxy"
	.align	3
.LC3:
	.string	"john doe"
	.align	3
.LC4:
	.string	"xxxAAA"
	.data
	.align	3
.LC10:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC0
	.align	3
.LC11:
	.xword	.LC0
	.xword	.LC4
	.xword	.LC0
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
