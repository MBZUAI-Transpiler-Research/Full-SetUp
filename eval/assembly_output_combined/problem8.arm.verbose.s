	.arch armv8-a
	.file	"problem8.c"
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
	str	x0, [sp, 40]	// strings, strings
	str	w1, [sp, 36]	// size, size
	str	x2, [sp, 24]	// substring, substring
	str	x3, [sp, 16]	// out_size, out_size
// problem8.c:6:     char **out = NULL;
	str	xzr, [sp, 56]	//, out
// problem8.c:7:     int count = 0;
	str	wzr, [sp, 48]	//, count
// problem8.c:8:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 52]	//, i
// problem8.c:8:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L4:
// problem8.c:9:         if (strstr(strings[i], substring) != NULL) {
	ldrsw	x0, [sp, 52]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 40]	// tmp109, strings
	add	x0, x1, x0	// _3, tmp109, _2
// problem8.c:9:         if (strstr(strings[i], substring) != NULL) {
	ldr	x0, [x0]	// _4, *_3
	ldr	x1, [sp, 24]	//, substring
	bl	strstr		//
// problem8.c:9:         if (strstr(strings[i], substring) != NULL) {
	cmp	x0, 0	// _5,
	beq	.L3		//,
// problem8.c:10:             out = (char **)realloc(out, sizeof(char *) * (count + 1));
	ldr	w0, [sp, 48]	// tmp110, count
	add	w0, w0, 1	// _6, tmp110,
	sxtw	x0, w0	// _7, _6
// problem8.c:10:             out = (char **)realloc(out, sizeof(char *) * (count + 1));
	lsl	x0, x0, 3	// _8, _7,
	mov	x1, x0	//, _8
	ldr	x0, [sp, 56]	//, out
	bl	realloc		//
	str	x0, [sp, 56]	//, out
// problem8.c:11:             out[count] = strings[i];
	ldrsw	x0, [sp, 52]	// _9, i
	lsl	x0, x0, 3	// _10, _9,
	ldr	x1, [sp, 40]	// tmp111, strings
	add	x1, x1, x0	// _11, tmp111, _10
// problem8.c:11:             out[count] = strings[i];
	ldrsw	x0, [sp, 48]	// _12, count
	lsl	x0, x0, 3	// _13, _12,
	ldr	x2, [sp, 56]	// tmp112, out
	add	x0, x2, x0	// _14, tmp112, _13
// problem8.c:11:             out[count] = strings[i];
	ldr	x1, [x1]	// _15, *_11
// problem8.c:11:             out[count] = strings[i];
	str	x1, [x0]	// _15, *_14
// problem8.c:12:             count++;
	ldr	w0, [sp, 48]	// tmp114, count
	add	w0, w0, 1	// tmp113, tmp114,
	str	w0, [sp, 48]	// tmp113, count
.L3:
// problem8.c:8:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 52]	// tmp116, i
	add	w0, w0, 1	// tmp115, tmp116,
	str	w0, [sp, 52]	// tmp115, i
.L2:
// problem8.c:8:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 52]	// tmp117, i
	ldr	w0, [sp, 36]	// tmp118, size
	cmp	w1, w0	// tmp117, tmp118
	blt	.L4		//,
// problem8.c:15:     *out_size = count;
	ldr	x0, [sp, 16]	// tmp119, out_size
	ldr	w1, [sp, 48]	// tmp120, count
	str	w1, [x0]	// tmp120, *out_size_28(D)
// problem8.c:16:     return out;
	ldr	x0, [sp, 56]	// _30, out
// problem8.c:17: }
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
	str	x1, [sp, 32]	// b, b
	str	w2, [sp, 28]	// size_a, size_a
	str	w3, [sp, 24]	// size_b, size_b
// problem8.c:27:     if (size_a != size_b) return 0;
	ldr	w1, [sp, 28]	// tmp103, size_a
	ldr	w0, [sp, 24]	// tmp104, size_b
	cmp	w1, w0	// tmp103, tmp104
	beq	.L7		//,
// problem8.c:27:     if (size_a != size_b) return 0;
	mov	w0, 0	// _11,
// problem8.c:27:     if (size_a != size_b) return 0;
	b	.L8		//
.L7:
// problem8.c:28:     for (int i = 0; i < size_a; i++) {
	str	wzr, [sp, 60]	//, i
// problem8.c:28:     for (int i = 0; i < size_a; i++) {
	b	.L9		//
.L11:
// problem8.c:29:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldrsw	x0, [sp, 60]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 40]	// tmp105, a
	add	x0, x1, x0	// _3, tmp105, _2
// problem8.c:29:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldr	x2, [x0]	// _4, *_3
// problem8.c:29:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldrsw	x0, [sp, 60]	// _5, i
	lsl	x0, x0, 3	// _6, _5,
	ldr	x1, [sp, 32]	// tmp106, b
	add	x0, x1, x0	// _7, tmp106, _6
// problem8.c:29:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldr	x0, [x0]	// _8, *_7
	mov	x1, x0	//, _8
	mov	x0, x2	//, _4
	bl	strcmp		//
// problem8.c:29:         if (strcmp(a[i], b[i]) != 0) return 0;
	cmp	w0, 0	// _9,
	beq	.L10		//,
// problem8.c:29:         if (strcmp(a[i], b[i]) != 0) return 0;
	mov	w0, 0	// _11,
// problem8.c:29:         if (strcmp(a[i], b[i]) != 0) return 0;
	b	.L8		//
.L10:
// problem8.c:28:     for (int i = 0; i < size_a; i++) {
	ldr	w0, [sp, 60]	// tmp108, i
	add	w0, w0, 1	// tmp107, tmp108,
	str	w0, [sp, 60]	// tmp107, i
.L9:
// problem8.c:28:     for (int i = 0; i < size_a; i++) {
	ldr	w1, [sp, 60]	// tmp109, i
	ldr	w0, [sp, 28]	// tmp110, size_a
	cmp	w1, w0	// tmp109, tmp110
	blt	.L11		//,
// problem8.c:31:     return 1;
	mov	w0, 1	// _11,
.L8:
// problem8.c:32: }
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
.LC15:
	.string	"john"
	.align	3
.LC16:
	.string	"problem8.c"
	.align	3
.LC17:
	.string	"out_size == 0 && result == NULL"
	.align	3
.LC0:
	.string	"xxx"
	.align	3
.LC20:
	.string	"issame(result, expected1, out_size, 3)"
	.align	3
.LC23:
	.string	"xx"
	.align	3
.LC24:
	.string	"issame(result, expected2, out_size, 4)"
	.align	3
.LC10:
	.string	"grunt"
	.align	3
.LC12:
	.string	"prune"
	.align	3
.LC26:
	.string	"run"
	.align	3
.LC27:
	.string	"issame(result, expected3, out_size, 2)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #240	//,,
	.cfi_def_cfa_offset 240
	stp	x29, x30, [sp, 224]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 224	//,,
// problem8.c:34: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp101,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp101,
	ldr	x1, [x0]	// tmp167,
	str	x1, [sp, 216]	// tmp167, D.5664
	mov	x1, 0	// tmp167
// problem8.c:39:     result = func0(NULL, 0, "john", &out_size);
	add	x0, sp, 4	// tmp102,,
	mov	x3, x0	//, tmp102
	adrp	x0, .LC15	// tmp103,
	add	x2, x0, :lo12:.LC15	//, tmp103,
	mov	w1, 0	//,
	mov	x0, 0	//,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem8.c:40:     assert(out_size == 0 && result == NULL);
	ldr	w0, [sp, 4]	// out_size.0_1, out_size
	cmp	w0, 0	// out_size.0_1,
	bne	.L13		//,
// problem8.c:40:     assert(out_size == 0 && result == NULL);
	ldr	x0, [sp, 8]	// tmp104, result
	cmp	x0, 0	// tmp104,
	beq	.L20		//,
.L13:
// problem8.c:40:     assert(out_size == 0 && result == NULL);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp105,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp105,
	mov	w2, 40	//,
	adrp	x0, .LC16	// tmp106,
	add	x1, x0, :lo12:.LC16	//, tmp106,
	adrp	x0, .LC17	// tmp107,
	add	x0, x0, :lo12:.LC17	//, tmp107,
	bl	__assert_fail		//
.L20:
// problem8.c:43:     char *strings1[] = {"xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"};
	adrp	x0, .LC18	// tmp109,
	add	x1, x0, :lo12:.LC18	// tmp108, tmp109,
	add	x0, sp, 120	// tmp110,,
	ldp	q0, q1, [x1]	// tmp112, tmp113,
	stp	q0, q1, [x0]	// tmp112, tmp113, strings1
	ldr	q0, [x1, 32]	// tmp114,
	str	q0, [x0, 32]	// tmp114, strings1
// problem8.c:44:     char *expected1[] = {"xxx", "xxxAAA", "xxx"};
	adrp	x0, .LC19	// tmp116,
	add	x0, x0, :lo12:.LC19	// tmp115, tmp116,
	add	x2, sp, 32	// tmp117,,
	mov	x3, x0	// tmp118, tmp115
	ldp	x0, x1, [x3]	// tmp119,
	stp	x0, x1, [x2]	// tmp119, expected1
	ldr	x0, [x3, 16]	// tmp120,
	str	x0, [x2, 16]	// tmp120, expected1
// problem8.c:45:     result = func0(strings1, 6, "xxx", &out_size);
	add	x0, sp, 4	// tmp121,,
	add	x4, sp, 120	// tmp122,,
	mov	x3, x0	//, tmp121
	adrp	x0, .LC0	// tmp123,
	add	x2, x0, :lo12:.LC0	//, tmp123,
	mov	w1, 6	//,
	mov	x0, x4	//, tmp122
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem8.c:46:     assert(issame(result, expected1, out_size, 3));
	ldr	w1, [sp, 4]	// out_size.1_2, out_size
	add	x0, sp, 32	// tmp124,,
	mov	w3, 3	//,
	mov	w2, w1	//, out_size.1_2
	mov	x1, x0	//, tmp124
	ldr	x0, [sp, 8]	//, result
	bl	issame		//
// problem8.c:46:     assert(issame(result, expected1, out_size, 3));
	cmp	w0, 0	// _3,
	bne	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp125,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp125,
	mov	w2, 46	//,
	adrp	x0, .LC16	// tmp126,
	add	x1, x0, :lo12:.LC16	//, tmp126,
	adrp	x0, .LC20	// tmp127,
	add	x0, x0, :lo12:.LC20	//, tmp127,
	bl	__assert_fail		//
.L15:
// problem8.c:47:     free(result);
	ldr	x0, [sp, 8]	//, result
	bl	free		//
// problem8.c:50:     char *strings2[] = {"xxx", "asd", "aaaxxy", "john doe", "xxxAAA", "xxx"};
	adrp	x0, .LC21	// tmp129,
	add	x1, x0, :lo12:.LC21	// tmp128, tmp129,
	add	x0, sp, 168	// tmp130,,
	ldp	q0, q1, [x1]	// tmp132, tmp133,
	stp	q0, q1, [x0]	// tmp132, tmp133, strings2
	ldr	q0, [x1, 32]	// tmp134,
	str	q0, [x0, 32]	// tmp134, strings2
// problem8.c:51:     char *expected2[] = {"xxx", "aaaxxy", "xxxAAA", "xxx"};
	add	x0, sp, 232	// tmp135,,
	sub	x0, x0, #176	// tmp137, tmp135,
	adrp	x1, .LC22	// tmp139,
	add	x1, x1, :lo12:.LC22	// tmp138, tmp139,
	ld1	{v0.16b - v1.16b}, [x1]	// tmp140,
	st1	{v0.16b - v1.16b}, [x0]	// tmp140, expected2
// problem8.c:52:     result = func0(strings2, 6, "xx", &out_size);
	add	x0, sp, 4	// tmp141,,
	add	x4, sp, 168	// tmp142,,
	mov	x3, x0	//, tmp141
	adrp	x0, .LC23	// tmp143,
	add	x2, x0, :lo12:.LC23	//, tmp143,
	mov	w1, 6	//,
	mov	x0, x4	//, tmp142
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem8.c:53:     assert(issame(result, expected2, out_size, 4));
	ldr	w1, [sp, 4]	// out_size.2_4, out_size
	add	x0, sp, 56	// tmp144,,
	mov	w3, 4	//,
	mov	w2, w1	//, out_size.2_4
	mov	x1, x0	//, tmp144
	ldr	x0, [sp, 8]	//, result
	bl	issame		//
// problem8.c:53:     assert(issame(result, expected2, out_size, 4));
	cmp	w0, 0	// _5,
	bne	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp145,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp145,
	mov	w2, 53	//,
	adrp	x0, .LC16	// tmp146,
	add	x1, x0, :lo12:.LC16	//, tmp146,
	adrp	x0, .LC24	// tmp147,
	add	x0, x0, :lo12:.LC24	//, tmp147,
	bl	__assert_fail		//
.L16:
// problem8.c:54:     free(result);
	ldr	x0, [sp, 8]	//, result
	bl	free		//
// problem8.c:57:     char *strings3[] = {"grunt", "trumpet", "prune", "gruesome"};
	add	x0, sp, 232	// tmp148,,
	sub	x0, x0, #144	// tmp150, tmp148,
	adrp	x1, .LC25	// tmp152,
	add	x1, x1, :lo12:.LC25	// tmp151, tmp152,
	ld1	{v0.16b - v1.16b}, [x1]	// tmp153,
	st1	{v0.16b - v1.16b}, [x0]	// tmp153, strings3
// problem8.c:58:     char *expected3[] = {"grunt", "prune"};
	adrp	x0, .LC10	// tmp155,
	add	x0, x0, :lo12:.LC10	// tmp154, tmp155,
	str	x0, [sp, 16]	// tmp154, expected3[0]
	adrp	x0, .LC12	// tmp157,
	add	x0, x0, :lo12:.LC12	// tmp156, tmp157,
	str	x0, [sp, 24]	// tmp156, expected3[1]
// problem8.c:59:     result = func0(strings3, 4, "run", &out_size);
	add	x0, sp, 4	// tmp158,,
	add	x4, sp, 88	// tmp159,,
	mov	x3, x0	//, tmp158
	adrp	x0, .LC26	// tmp160,
	add	x2, x0, :lo12:.LC26	//, tmp160,
	mov	w1, 4	//,
	mov	x0, x4	//, tmp159
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem8.c:60:     assert(issame(result, expected3, out_size, 2));
	ldr	w1, [sp, 4]	// out_size.3_6, out_size
	add	x0, sp, 16	// tmp161,,
	mov	w3, 2	//,
	mov	w2, w1	//, out_size.3_6
	mov	x1, x0	//, tmp161
	ldr	x0, [sp, 8]	//, result
	bl	issame		//
// problem8.c:60:     assert(issame(result, expected3, out_size, 2));
	cmp	w0, 0	// _7,
	bne	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp162,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp162,
	mov	w2, 60	//,
	adrp	x0, .LC16	// tmp163,
	add	x1, x0, :lo12:.LC16	//, tmp163,
	adrp	x0, .LC27	// tmp164,
	add	x0, x0, :lo12:.LC27	//, tmp164,
	bl	__assert_fail		//
.L17:
// problem8.c:61:     free(result);
	ldr	x0, [sp, 8]	//, result
	bl	free		//
// problem8.c:63:     return 0;
	mov	w0, 0	// _33,
// problem8.c:64: }
	mov	w1, w0	// <retval>, _33
	adrp	x0, :got:__stack_chk_guard	// tmp166,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp166,
	ldr	x3, [sp, 216]	// tmp168, D.5664
	ldr	x2, [x0]	// tmp169,
	subs	x3, x3, x2	// tmp168, tmp169
	mov	x2, 0	// tmp169
	beq	.L19		//,
	bl	__stack_chk_fail		//
.L19:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 224]	//,,
	add	sp, sp, 240	//,,
	.cfi_restore 29
	.cfi_restore 30
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
.LC18:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC0
	.align	3
.LC19:
	.xword	.LC0
	.xword	.LC4
	.xword	.LC0
	.section	.rodata
	.align	3
.LC7:
	.string	"aaaxxy"
	.data
	.align	3
.LC21:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC7
	.xword	.LC3
	.xword	.LC4
	.xword	.LC0
	.align	3
.LC22:
	.xword	.LC0
	.xword	.LC7
	.xword	.LC4
	.xword	.LC0
	.section	.rodata
	.align	3
.LC11:
	.string	"trumpet"
	.align	3
.LC13:
	.string	"gruesome"
	.data
	.align	3
.LC25:
	.xword	.LC10
	.xword	.LC11
	.xword	.LC12
	.xword	.LC13
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
