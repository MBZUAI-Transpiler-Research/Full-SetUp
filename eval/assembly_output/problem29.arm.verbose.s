	.arch armv8-a
	.file	"problem29.c"
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
	str	x0, [sp, 24]	// strings, strings
	str	w1, [sp, 20]	// count, count
// problem29.c:6:     int length = 0;
	str	wzr, [sp, 44]	//, length
// problem29.c:7:     for (int i = 0; i < count; i++) {
	str	wzr, [sp, 48]	//, i
// problem29.c:7:     for (int i = 0; i < count; i++) {
	b	.L2		//
.L3:
// problem29.c:8:         length += strlen(strings[i]);
	ldrsw	x0, [sp, 48]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 24]	// tmp108, strings
	add	x0, x1, x0	// _3, tmp108, _2
// problem29.c:8:         length += strlen(strings[i]);
	ldr	x0, [x0]	// _4, *_3
	bl	strlen		//
// problem29.c:8:         length += strlen(strings[i]);
	mov	w1, w0	// _6, _5
	ldr	w0, [sp, 44]	// length.0_7, length
	add	w0, w1, w0	// _8, _6, length.0_7
	str	w0, [sp, 44]	// _8, length
// problem29.c:7:     for (int i = 0; i < count; i++) {
	ldr	w0, [sp, 48]	// tmp110, i
	add	w0, w0, 1	// tmp109, tmp110,
	str	w0, [sp, 48]	// tmp109, i
.L2:
// problem29.c:7:     for (int i = 0; i < count; i++) {
	ldr	w1, [sp, 48]	// tmp111, i
	ldr	w0, [sp, 20]	// tmp112, count
	cmp	w1, w0	// tmp111, tmp112
	blt	.L3		//,
// problem29.c:11:     char* out = (char*)malloc(length + 1);
	ldr	w0, [sp, 44]	// tmp113, length
	add	w0, w0, 1	// _9, tmp113,
// problem29.c:11:     char* out = (char*)malloc(length + 1);
	sxtw	x0, w0	// _10, _9
	bl	malloc		//
	str	x0, [sp, 56]	// tmp114, out
// problem29.c:12:     if (!out) {
	ldr	x0, [sp, 56]	// tmp115, out
	cmp	x0, 0	// tmp115,
	bne	.L4		//,
// problem29.c:13:         return NULL; 
	mov	x0, 0	// _18,
	b	.L5		//
.L4:
// problem29.c:16:     out[0] = '\0';
	ldr	x0, [sp, 56]	// tmp116, out
	strb	wzr, [x0]	//, *out_26
// problem29.c:18:     for (int i = 0; i < count; i++) {
	str	wzr, [sp, 52]	//, i
// problem29.c:18:     for (int i = 0; i < count; i++) {
	b	.L6		//
.L7:
// problem29.c:19:         strcat(out, strings[i]);
	ldrsw	x0, [sp, 52]	// _11, i
	lsl	x0, x0, 3	// _12, _11,
	ldr	x1, [sp, 24]	// tmp117, strings
	add	x0, x1, x0	// _13, tmp117, _12
// problem29.c:19:         strcat(out, strings[i]);
	ldr	x0, [x0]	// _14, *_13
	mov	x1, x0	//, _14
	ldr	x0, [sp, 56]	//, out
	bl	strcat		//
// problem29.c:18:     for (int i = 0; i < count; i++) {
	ldr	w0, [sp, 52]	// tmp119, i
	add	w0, w0, 1	// tmp118, tmp119,
	str	w0, [sp, 52]	// tmp118, i
.L6:
// problem29.c:18:     for (int i = 0; i < count; i++) {
	ldr	w1, [sp, 52]	// tmp120, i
	ldr	w0, [sp, 20]	// tmp121, count
	cmp	w1, w0	// tmp120, tmp121
	blt	.L7		//,
// problem29.c:22:     return out;
	ldr	x0, [sp, 56]	// _18, out
.L5:
// problem29.c:23: }
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
.LC7:
	.string	"problem29.c"
	.align	3
.LC8:
	.string	"strcmp(result, \"\") == 0"
	.align	3
.LC10:
	.string	"xyz"
	.align	3
.LC11:
	.string	"strcmp(result, \"xyz\") == 0"
	.align	3
.LC13:
	.string	"xyzwk"
	.align	3
.LC14:
	.string	"strcmp(result, \"xyzwk\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #112	//,,
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 96]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 96	//,,
// problem29.c:31: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp98,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp98,
	ldr	x1, [x0]	// tmp129,
	str	x1, [sp, 88]	// tmp129, D.5630
	mov	x1, 0	// tmp129
// problem29.c:34:     result = func0(empty_strings, 0);
	add	x0, sp, 16	// tmp99,,
	mov	w1, 0	//,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem29.c:35:     assert(strcmp(result, "") == 0);
	ldr	x0, [sp, 8]	// tmp100, result
	ldrb	w0, [x0]	// _7, MEM[(const unsigned char * {ref-all})result_6]
	cmp	w0, 0	// _1,
	beq	.L9		//,
// problem29.c:35:     assert(strcmp(result, "") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp101,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp101,
	mov	w2, 35	//,
	adrp	x0, .LC7	// tmp102,
	add	x1, x0, :lo12:.LC7	//, tmp102,
	adrp	x0, .LC8	// tmp103,
	add	x0, x0, :lo12:.LC8	//, tmp103,
	bl	__assert_fail		//
.L9:
// problem29.c:36:     free(result);
	ldr	x0, [sp, 8]	//, result
	bl	free		//
// problem29.c:38:     char* strings1[] = {"x", "y", "z"};
	adrp	x0, .LC9	// tmp105,
	add	x0, x0, :lo12:.LC9	// tmp104, tmp105,
	add	x2, sp, 24	// tmp106,,
	mov	x3, x0	// tmp107, tmp104
	ldp	x0, x1, [x3]	// tmp108,
	stp	x0, x1, [x2]	// tmp108, strings1
	ldr	x0, [x3, 16]	// tmp109,
	str	x0, [x2, 16]	// tmp109, strings1
// problem29.c:39:     result = func0(strings1, 3);
	add	x0, sp, 24	// tmp110,,
	mov	w1, 3	//,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem29.c:40:     assert(strcmp(result, "xyz") == 0);
	adrp	x0, .LC10	// tmp111,
	add	x1, x0, :lo12:.LC10	//, tmp111,
	ldr	x0, [sp, 8]	//, result
	bl	strcmp		//
// problem29.c:40:     assert(strcmp(result, "xyz") == 0);
	cmp	w0, 0	// _2,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp112,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp112,
	mov	w2, 40	//,
	adrp	x0, .LC7	// tmp113,
	add	x1, x0, :lo12:.LC7	//, tmp113,
	adrp	x0, .LC11	// tmp114,
	add	x0, x0, :lo12:.LC11	//, tmp114,
	bl	__assert_fail		//
.L10:
// problem29.c:41:     free(result);
	ldr	x0, [sp, 8]	//, result
	bl	free		//
// problem29.c:43:     char* strings2[] = {"x", "y", "z", "w", "k"};
	adrp	x0, .LC12	// tmp116,
	add	x1, x0, :lo12:.LC12	// tmp115, tmp116,
	add	x0, sp, 48	// tmp117,,
	ldp	q0, q1, [x1]	// tmp119, tmp120,
	stp	q0, q1, [x0]	// tmp119, tmp120, strings2
	ldr	x1, [x1, 32]	// tmp121,
	str	x1, [x0, 32]	// tmp121, strings2
// problem29.c:44:     result = func0(strings2, 5);
	add	x0, sp, 48	// tmp122,,
	mov	w1, 5	//,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem29.c:45:     assert(strcmp(result, "xyzwk") == 0);
	adrp	x0, .LC13	// tmp123,
	add	x1, x0, :lo12:.LC13	//, tmp123,
	ldr	x0, [sp, 8]	//, result
	bl	strcmp		//
// problem29.c:45:     assert(strcmp(result, "xyzwk") == 0);
	cmp	w0, 0	// _3,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp124,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp124,
	mov	w2, 45	//,
	adrp	x0, .LC7	// tmp125,
	add	x1, x0, :lo12:.LC7	//, tmp125,
	adrp	x0, .LC14	// tmp126,
	add	x0, x0, :lo12:.LC14	//, tmp126,
	bl	__assert_fail		//
.L11:
// problem29.c:46:     free(result);
	ldr	x0, [sp, 8]	//, result
	bl	free		//
// problem29.c:48:     return 0;
	mov	w0, 0	// _20,
// problem29.c:49: }
	mov	w1, w0	// <retval>, _20
	adrp	x0, :got:__stack_chk_guard	// tmp128,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp128,
	ldr	x3, [sp, 88]	// tmp130, D.5630
	ldr	x2, [x0]	// tmp131,
	subs	x3, x3, x2	// tmp130, tmp131
	mov	x2, 0	// tmp131
	beq	.L13		//,
	bl	__stack_chk_fail		//
.L13:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 96]	//,,
	add	sp, sp, 112	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"x"
	.align	3
.LC1:
	.string	"y"
	.align	3
.LC2:
	.string	"z"
	.data
	.align	3
.LC9:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.section	.rodata
	.align	3
.LC4:
	.string	"w"
	.align	3
.LC5:
	.string	"k"
	.data
	.align	3
.LC12:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.xword	.LC4
	.xword	.LC5
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
