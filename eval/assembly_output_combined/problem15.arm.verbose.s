	.arch armv8-a
	.file	"problem15.c"
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
	stp	x29, x30, [sp, -80]!	//,,,
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -64
	str	x0, [sp, 40]	// str, str
	str	x1, [sp, 32]	// count, count
// problem15.c:6:     int len = strlen(str);
	ldr	x0, [sp, 40]	//, str
	bl	strlen		//
// problem15.c:6:     int len = strlen(str);
	str	w0, [sp, 52]	// tmp116, len
// problem15.c:7:     char **out = malloc(len * sizeof(char *));
	ldrsw	x0, [sp, 52]	// _2, len
	lsl	x0, x0, 3	// _3, _2,
	bl	malloc		//
	str	x0, [sp, 64]	// tmp117, out
// problem15.c:9:     char *current = malloc(len + 1);
	ldr	w0, [sp, 52]	// tmp118, len
	add	w0, w0, 1	// _4, tmp118,
// problem15.c:9:     char *current = malloc(len + 1);
	sxtw	x0, w0	// _5, _4
	bl	malloc		//
	str	x0, [sp, 56]	// tmp119, current
// problem15.c:10:     current[0] = '\0';
	ldr	x0, [sp, 56]	// tmp120, current
	strb	wzr, [x0]	//, *current_32
// problem15.c:12:     for (int i = 0; i < len; ++i) {
	str	wzr, [sp, 48]	//, i
// problem15.c:12:     for (int i = 0; i < len; ++i) {
	b	.L2		//
.L3:
// problem15.c:13:         size_t current_len = strlen(current);
	ldr	x0, [sp, 56]	//, current
	bl	strlen		//
	str	x0, [sp, 72]	//, current_len
// problem15.c:14:         current = realloc(current, current_len + 2);
	ldr	x0, [sp, 72]	// tmp121, current_len
	add	x0, x0, 2	// _6, tmp121,
	mov	x1, x0	//, _6
	ldr	x0, [sp, 56]	//, current
	bl	realloc		//
	str	x0, [sp, 56]	//, current
// problem15.c:15:         current[current_len] = str[i];
	ldrsw	x0, [sp, 48]	// _7, i
	ldr	x1, [sp, 40]	// tmp122, str
	add	x1, x1, x0	// _8, tmp122, _7
// problem15.c:15:         current[current_len] = str[i];
	ldr	x2, [sp, 56]	// tmp123, current
	ldr	x0, [sp, 72]	// tmp124, current_len
	add	x0, x2, x0	// _9, tmp123, tmp124
// problem15.c:15:         current[current_len] = str[i];
	ldrb	w1, [x1]	// _10, *_8
// problem15.c:15:         current[current_len] = str[i];
	strb	w1, [x0]	// tmp125, *_9
// problem15.c:16:         current[current_len + 1] = '\0';
	ldr	x0, [sp, 72]	// tmp126, current_len
	add	x0, x0, 1	// _11, tmp126,
	ldr	x1, [sp, 56]	// tmp127, current
	add	x0, x1, x0	// _12, tmp127, _11
// problem15.c:16:         current[current_len + 1] = '\0';
	strb	wzr, [x0]	//, *_12
// problem15.c:18:         out[i] = malloc(strlen(current) + 1);
	ldr	x0, [sp, 56]	//, current
	bl	strlen		//
// problem15.c:18:         out[i] = malloc(strlen(current) + 1);
	add	x2, x0, 1	// _14, _13,
// problem15.c:18:         out[i] = malloc(strlen(current) + 1);
	ldrsw	x0, [sp, 48]	// _15, i
	lsl	x0, x0, 3	// _16, _15,
	ldr	x1, [sp, 64]	// tmp128, out
	add	x19, x1, x0	// _17, tmp128, _16
// problem15.c:18:         out[i] = malloc(strlen(current) + 1);
	mov	x0, x2	//, _14
	bl	malloc		//
// problem15.c:18:         out[i] = malloc(strlen(current) + 1);
	str	x0, [x19]	// _18, *_17
// problem15.c:19:         strcpy(out[i], current);
	ldrsw	x0, [sp, 48]	// _19, i
	lsl	x0, x0, 3	// _20, _19,
	ldr	x1, [sp, 64]	// tmp130, out
	add	x0, x1, x0	// _21, tmp130, _20
// problem15.c:19:         strcpy(out[i], current);
	ldr	x0, [x0]	// _22, *_21
	ldr	x1, [sp, 56]	//, current
	bl	strcpy		//
// problem15.c:12:     for (int i = 0; i < len; ++i) {
	ldr	w0, [sp, 48]	// tmp132, i
	add	w0, w0, 1	// tmp131, tmp132,
	str	w0, [sp, 48]	// tmp131, i
.L2:
// problem15.c:12:     for (int i = 0; i < len; ++i) {
	ldr	w1, [sp, 48]	// tmp133, i
	ldr	w0, [sp, 52]	// tmp134, len
	cmp	w1, w0	// tmp133, tmp134
	blt	.L3		//,
// problem15.c:21:     free(current);
	ldr	x0, [sp, 56]	//, current
	bl	free		//
// problem15.c:23:     *count = len;
	ldr	x0, [sp, 32]	// tmp135, count
	ldr	w1, [sp, 52]	// tmp136, len
	str	w1, [x0]	// tmp136, *count_36(D)
// problem15.c:24:     return out;
	ldr	x0, [sp, 64]	// _38, out
// problem15.c:25: }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 80	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
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
	str	w1, [sp, 36]	// a_size, a_size
	str	x2, [sp, 24]	// b, b
	str	w3, [sp, 32]	// b_size, b_size
// problem15.c:34:     if (a_size != b_size) return 0;
	ldr	w1, [sp, 36]	// tmp103, a_size
	ldr	w0, [sp, 32]	// tmp104, b_size
	cmp	w1, w0	// tmp103, tmp104
	beq	.L6		//,
// problem15.c:34:     if (a_size != b_size) return 0;
	mov	w0, 0	// _11,
	b	.L7		//
.L6:
// problem15.c:35:     for (int i = 0; i < a_size; i++) {
	str	wzr, [sp, 60]	//, i
// problem15.c:35:     for (int i = 0; i < a_size; i++) {
	b	.L8		//
.L10:
// problem15.c:36:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldrsw	x0, [sp, 60]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 40]	// tmp105, a
	add	x0, x1, x0	// _3, tmp105, _2
// problem15.c:36:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldr	x2, [x0]	// _4, *_3
// problem15.c:36:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldrsw	x0, [sp, 60]	// _5, i
	lsl	x0, x0, 3	// _6, _5,
	ldr	x1, [sp, 24]	// tmp106, b
	add	x0, x1, x0	// _7, tmp106, _6
// problem15.c:36:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldr	x0, [x0]	// _8, *_7
	mov	x1, x0	//, _8
	mov	x0, x2	//, _4
	bl	strcmp		//
// problem15.c:36:         if (strcmp(a[i], b[i]) != 0) return 0;
	cmp	w0, 0	// _9,
	beq	.L9		//,
// problem15.c:36:         if (strcmp(a[i], b[i]) != 0) return 0;
	mov	w0, 0	// _11,
	b	.L7		//
.L9:
// problem15.c:35:     for (int i = 0; i < a_size; i++) {
	ldr	w0, [sp, 60]	// tmp108, i
	add	w0, w0, 1	// tmp107, tmp108,
	str	w0, [sp, 60]	// tmp107, i
.L8:
// problem15.c:35:     for (int i = 0; i < a_size; i++) {
	ldr	w1, [sp, 60]	// tmp109, i
	ldr	w0, [sp, 36]	// tmp110, a_size
	cmp	w1, w0	// tmp109, tmp110
	blt	.L10		//,
// problem15.c:38:     return 1;
	mov	w0, 1	// _11,
.L7:
// problem15.c:39: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.align	2
	.global	free_prefixes
	.type	free_prefixes, %function
free_prefixes:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// prefixes, prefixes
	str	w1, [sp, 20]	// count, count
// problem15.c:42:     for (int i = 0; i < count; i++) {
	str	wzr, [sp, 44]	//, i
// problem15.c:42:     for (int i = 0; i < count; i++) {
	b	.L12		//
.L13:
// problem15.c:43:         free(prefixes[i]);
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 24]	// tmp96, prefixes
	add	x0, x1, x0	// _3, tmp96, _2
// problem15.c:43:         free(prefixes[i]);
	ldr	x0, [x0]	// _4, *_3
	bl	free		//
// problem15.c:42:     for (int i = 0; i < count; i++) {
	ldr	w0, [sp, 44]	// tmp98, i
	add	w0, w0, 1	// tmp97, tmp98,
	str	w0, [sp, 44]	// tmp97, i
.L12:
// problem15.c:42:     for (int i = 0; i < count; i++) {
	ldr	w1, [sp, 44]	// tmp99, i
	ldr	w0, [sp, 20]	// tmp100, count
	cmp	w1, w0	// tmp99, tmp100
	blt	.L13		//,
// problem15.c:45:     free(prefixes);
	ldr	x0, [sp, 24]	//, prefixes
	bl	free		//
// problem15.c:46: }
	nop	
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE8:
	.size	free_prefixes, .-free_prefixes
	.section	.rodata
	.align	3
.LC11:
	.string	""
	.align	3
.LC12:
	.string	"problem15.c"
	.align	3
.LC13:
	.string	"issame(result, 0, NULL, 0)"
	.align	3
.LC5:
	.string	"asdfgh"
	.align	3
.LC15:
	.string	"issame(result, count, expected1, 6)"
	.align	3
.LC9:
	.string	"WWW"
	.align	3
.LC17:
	.string	"issame(result, count, expected2, 3)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB9:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!	//,,,
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp	//,
// problem15.c:48: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp103,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp102, tmp103,
	ldr	x1, [x0]	// tmp137,
	str	x1, [sp, 104]	// tmp137, D.5040
	mov	x1, 0	// tmp137
// problem15.c:52:     result = func0("", &count);
	add	x0, sp, 20	// tmp104,,
	mov	x1, x0	//, tmp104
	adrp	x0, .LC11	// tmp105,
	add	x0, x0, :lo12:.LC11	//, tmp105,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem15.c:53:     assert(issame(result, 0, NULL, 0));
	mov	w3, 0	//,
	mov	x2, 0	//,
	mov	w1, 0	//,
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _1,
	bne	.L15		//,
// problem15.c:53:     assert(issame(result, 0, NULL, 0));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp106,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp106,
	mov	w2, 53	//,
	adrp	x0, .LC12	// tmp107,
	add	x1, x0, :lo12:.LC12	//, tmp107,
	adrp	x0, .LC13	// tmp108,
	add	x0, x0, :lo12:.LC13	//, tmp108,
	bl	__assert_fail		//
.L15:
// problem15.c:54:     free_prefixes(result, count);
	ldr	w0, [sp, 20]	// count.0_2, count
	mov	w1, w0	//, count.0_2
	ldr	x0, [sp, 24]	//, result
	bl	free_prefixes		//
// problem15.c:56:     char *expected1[] = {"a", "as", "asd", "asdf", "asdfg", "asdfgh"};
	adrp	x0, .LC14	// tmp110,
	add	x1, x0, :lo12:.LC14	// tmp109, tmp110,
	add	x0, sp, 56	// tmp111,,
	ldp	q0, q1, [x1]	// tmp113, tmp114,
	stp	q0, q1, [x0]	// tmp113, tmp114, expected1
	ldr	q0, [x1, 32]	// tmp115,
	str	q0, [x0, 32]	// tmp115, expected1
// problem15.c:57:     result = func0("asdfgh", &count);
	add	x0, sp, 20	// tmp116,,
	mov	x1, x0	//, tmp116
	adrp	x0, .LC5	// tmp117,
	add	x0, x0, :lo12:.LC5	//, tmp117,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem15.c:58:     assert(issame(result, count, expected1, 6));
	ldr	w0, [sp, 20]	// count.1_3, count
	add	x1, sp, 56	// tmp118,,
	mov	w3, 6	//,
	mov	x2, x1	//, tmp118
	mov	w1, w0	//, count.1_3
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _4,
	bne	.L16		//,
// problem15.c:58:     assert(issame(result, count, expected1, 6));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 58	//,
	adrp	x0, .LC12	// tmp120,
	add	x1, x0, :lo12:.LC12	//, tmp120,
	adrp	x0, .LC15	// tmp121,
	add	x0, x0, :lo12:.LC15	//, tmp121,
	bl	__assert_fail		//
.L16:
// problem15.c:59:     free_prefixes(result, count);
	ldr	w0, [sp, 20]	// count.2_5, count
	mov	w1, w0	//, count.2_5
	ldr	x0, [sp, 24]	//, result
	bl	free_prefixes		//
// problem15.c:61:     char *expected2[] = {"W", "WW", "WWW"};
	adrp	x0, .LC16	// tmp123,
	add	x0, x0, :lo12:.LC16	// tmp122, tmp123,
	add	x2, sp, 32	// tmp124,,
	mov	x3, x0	// tmp125, tmp122
	ldp	x0, x1, [x3]	// tmp126,
	stp	x0, x1, [x2]	// tmp126, expected2
	ldr	x0, [x3, 16]	// tmp127,
	str	x0, [x2, 16]	// tmp127, expected2
// problem15.c:62:     result = func0("WWW", &count);
	add	x0, sp, 20	// tmp128,,
	mov	x1, x0	//, tmp128
	adrp	x0, .LC9	// tmp129,
	add	x0, x0, :lo12:.LC9	//, tmp129,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem15.c:63:     assert(issame(result, count, expected2, 3));
	ldr	w0, [sp, 20]	// count.3_6, count
	add	x1, sp, 32	// tmp130,,
	mov	w3, 3	//,
	mov	x2, x1	//, tmp130
	mov	w1, w0	//, count.3_6
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _7,
	bne	.L17		//,
// problem15.c:63:     assert(issame(result, count, expected2, 3));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp131,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp131,
	mov	w2, 63	//,
	adrp	x0, .LC12	// tmp132,
	add	x1, x0, :lo12:.LC12	//, tmp132,
	adrp	x0, .LC17	// tmp133,
	add	x0, x0, :lo12:.LC17	//, tmp133,
	bl	__assert_fail		//
.L17:
// problem15.c:64:     free_prefixes(result, count);
	ldr	w0, [sp, 20]	// count.4_8, count
	mov	w1, w0	//, count.4_8
	ldr	x0, [sp, 24]	//, result
	bl	free_prefixes		//
// problem15.c:66:     return 0;
	mov	w0, 0	// _27,
// problem15.c:67: }
	mov	w1, w0	// <retval>, _27
	adrp	x0, :got:__stack_chk_guard	// tmp136,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp135, tmp136,
	ldr	x3, [sp, 104]	// tmp138, D.5040
	ldr	x2, [x0]	// tmp139,
	subs	x3, x3, x2	// tmp138, tmp139
	mov	x2, 0	// tmp139
	beq	.L19		//,
	bl	__stack_chk_fail		//
.L19:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 112	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"a"
	.align	3
.LC1:
	.string	"as"
	.align	3
.LC2:
	.string	"asd"
	.align	3
.LC3:
	.string	"asdf"
	.align	3
.LC4:
	.string	"asdfg"
	.data
	.align	3
.LC14:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC5
	.section	.rodata
	.align	3
.LC7:
	.string	"W"
	.align	3
.LC8:
	.string	"WW"
	.data
	.align	3
.LC16:
	.xword	.LC7
	.xword	.LC8
	.xword	.LC9
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
