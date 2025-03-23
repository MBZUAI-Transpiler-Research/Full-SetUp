	.arch armv8-a
	.file	"problem52.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"AEIOUaeiou"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// text, text
// problem52.c:6:     const char *vowels = "AEIOUaeiou";
	adrp	x0, .LC0	// tmp99,
	add	x0, x0, :lo12:.LC0	// tmp98, tmp99,
	str	x0, [sp, 40]	// tmp98, vowels
// problem52.c:7:     char *out = text;
	ldr	x0, [sp, 24]	// tmp100, text
	str	x0, [sp, 32]	// tmp100, out
// problem52.c:8:     while (*text != '\0') {
	b	.L2		//
.L4:
// problem52.c:9:         if (strchr(vowels, *text) == NULL) {
	ldr	x0, [sp, 24]	// tmp101, text
	ldrb	w0, [x0]	// _1, *text_7
// problem52.c:9:         if (strchr(vowels, *text) == NULL) {
	mov	w1, w0	//, _2
	ldr	x0, [sp, 40]	//, vowels
	bl	strchr		//
// problem52.c:9:         if (strchr(vowels, *text) == NULL) {
	cmp	x0, 0	// _3,
	bne	.L3		//,
// problem52.c:10:             *out++ = *text;
	ldr	x0, [sp, 32]	// out.0_4, out
	add	x1, x0, 1	// tmp102, out.0_4,
	str	x1, [sp, 32]	// tmp102, out
// problem52.c:10:             *out++ = *text;
	ldr	x1, [sp, 24]	// tmp103, text
	ldrb	w1, [x1]	// _5, *text_7
// problem52.c:10:             *out++ = *text;
	strb	w1, [x0]	// tmp104, *out.0_4
.L3:
// problem52.c:12:         text++;
	ldr	x0, [sp, 24]	// tmp106, text
	add	x0, x0, 1	// tmp105, tmp106,
	str	x0, [sp, 24]	// tmp105, text
.L2:
// problem52.c:8:     while (*text != '\0') {
	ldr	x0, [sp, 24]	// tmp107, text
	ldrb	w0, [x0]	// _6, *text_7
// problem52.c:8:     while (*text != '\0') {
	cmp	w0, 0	// _6,
	bne	.L4		//,
// problem52.c:14:     *out = '\0';
	ldr	x0, [sp, 32]	// tmp108, out
	strb	wzr, [x0]	//, *out_9
// problem52.c:15: }
	nop	
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"problem52.c"
	.align	3
.LC2:
	.string	"strcmp(test1, \"\") == 0"
	.align	3
.LC4:
	.string	"bcdf\nghjklm"
	.align	3
.LC5:
	.string	"strcmp(test2, \"bcdf\\nghjklm\") == 0"
	.align	3
.LC7:
	.string	"fdcb"
	.align	3
.LC8:
	.string	"strcmp(test3, \"fdcb\") == 0"
	.align	3
.LC10:
	.string	"strcmp(test4, \"\") == 0"
	.align	3
.LC12:
	.string	"cB"
	.align	3
.LC13:
	.string	"strcmp(test5, \"cB\") == 0"
	.align	3
.LC15:
	.string	"strcmp(test6, \"cB\") == 0"
	.align	3
.LC16:
	.string	"ybcd"
	.align	3
.LC17:
	.string	"strcmp(test7, \"ybcd\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
// problem52.c:23: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp104,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp103, tmp104,
	ldr	x1, [x0]	// tmp182,
	str	x1, [sp, 88]	// tmp182, D.5012
	mov	x1, 0	// tmp182
// problem52.c:24:     char test1[] = "";
	strb	wzr, [sp, 24]	//, test1
// problem52.c:25:     func0(test1);
	add	x0, sp, 24	// tmp105,,
	bl	func0		//
// problem52.c:26:     assert(strcmp(test1, "") == 0);
	ldrb	w0, [sp, 24]	// _11, MEM[(const unsigned char * {ref-all})&test1]
	cmp	w0, 0	// _1,
	beq	.L6		//,
// problem52.c:26:     assert(strcmp(test1, "") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp106,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp106,
	mov	w2, 26	//,
	adrp	x0, .LC1	// tmp107,
	add	x1, x0, :lo12:.LC1	//, tmp107,
	adrp	x0, .LC2	// tmp108,
	add	x0, x0, :lo12:.LC2	//, tmp108,
	bl	__assert_fail		//
.L6:
// problem52.c:28:     char test2[] = "abcdef\nghijklm";
	adrp	x0, .LC3	// tmp110,
	add	x1, x0, :lo12:.LC3	// tmp109, tmp110,
	add	x0, sp, 72	// tmp111,,
	ldr	x2, [x1]	// tmp113,
	str	x2, [x0]	// tmp113, test2
	ldr	x1, [x1, 7]	// tmp114,
	str	x1, [x0, 7]	// tmp114, test2
// problem52.c:29:     func0(test2);
	add	x0, sp, 72	// tmp115,,
	bl	func0		//
// problem52.c:30:     assert(strcmp(test2, "bcdf\nghjklm") == 0);
	add	x2, sp, 72	// tmp116,,
	adrp	x0, .LC4	// tmp117,
	add	x1, x0, :lo12:.LC4	//, tmp117,
	mov	x0, x2	//, tmp116
	bl	strcmp		//
	cmp	w0, 0	// _2,
	beq	.L7		//,
// problem52.c:30:     assert(strcmp(test2, "bcdf\nghjklm") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp118,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp118,
	mov	w2, 30	//,
	adrp	x0, .LC1	// tmp119,
	add	x1, x0, :lo12:.LC1	//, tmp119,
	adrp	x0, .LC5	// tmp120,
	add	x0, x0, :lo12:.LC5	//, tmp120,
	bl	__assert_fail		//
.L7:
// problem52.c:32:     char test3[] = "fedcba";
	adrp	x0, .LC6	// tmp122,
	add	x1, x0, :lo12:.LC6	// tmp121, tmp122,
	add	x0, sp, 64	// tmp123,,
	ldr	w2, [x1]	// tmp125,
	str	w2, [x0]	// tmp125, test3
	ldr	w1, [x1, 3]	// tmp126,
	str	w1, [x0, 3]	// tmp126, test3
// problem52.c:33:     func0(test3);
	add	x0, sp, 64	// tmp127,,
	bl	func0		//
// problem52.c:34:     assert(strcmp(test3, "fdcb") == 0);
	add	x2, sp, 64	// tmp128,,
	adrp	x0, .LC7	// tmp129,
	add	x1, x0, :lo12:.LC7	//, tmp129,
	mov	x0, x2	//, tmp128
	bl	strcmp		//
	cmp	w0, 0	// _3,
	beq	.L8		//,
// problem52.c:34:     assert(strcmp(test3, "fdcb") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp130,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp130,
	mov	w2, 34	//,
	adrp	x0, .LC1	// tmp131,
	add	x1, x0, :lo12:.LC1	//, tmp131,
	adrp	x0, .LC8	// tmp132,
	add	x0, x0, :lo12:.LC8	//, tmp132,
	bl	__assert_fail		//
.L8:
// problem52.c:36:     char test4[] = "eeeee";
	adrp	x0, .LC9	// tmp134,
	add	x1, x0, :lo12:.LC9	// tmp133, tmp134,
	add	x0, sp, 40	// tmp135,,
	ldr	w2, [x1]	// tmp137,
	str	w2, [x0]	// tmp137, test4
	ldrh	w1, [x1, 4]	// tmp138,
	strh	w1, [x0, 4]	// tmp138, test4
// problem52.c:37:     func0(test4);
	add	x0, sp, 40	// tmp139,,
	bl	func0		//
// problem52.c:38:     assert(strcmp(test4, "") == 0);
	ldrb	w0, [sp, 40]	// _21, MEM[(const unsigned char * {ref-all})&test4]
	cmp	w0, 0	// _4,
	beq	.L9		//,
// problem52.c:38:     assert(strcmp(test4, "") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp140,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp140,
	mov	w2, 38	//,
	adrp	x0, .LC1	// tmp141,
	add	x1, x0, :lo12:.LC1	//, tmp141,
	adrp	x0, .LC10	// tmp142,
	add	x0, x0, :lo12:.LC10	//, tmp142,
	bl	__assert_fail		//
.L9:
// problem52.c:40:     char test5[] = "acBAA";
	adrp	x0, .LC11	// tmp144,
	add	x1, x0, :lo12:.LC11	// tmp143, tmp144,
	add	x0, sp, 48	// tmp145,,
	ldr	w2, [x1]	// tmp147,
	str	w2, [x0]	// tmp147, test5
	ldrh	w1, [x1, 4]	// tmp148,
	strh	w1, [x0, 4]	// tmp148, test5
// problem52.c:41:     func0(test5);
	add	x0, sp, 48	// tmp149,,
	bl	func0		//
// problem52.c:42:     assert(strcmp(test5, "cB") == 0);
	add	x2, sp, 48	// tmp150,,
	adrp	x0, .LC12	// tmp151,
	add	x1, x0, :lo12:.LC12	//, tmp151,
	mov	x0, x2	//, tmp150
	bl	strcmp		//
	cmp	w0, 0	// _5,
	beq	.L10		//,
// problem52.c:42:     assert(strcmp(test5, "cB") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp152,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp152,
	mov	w2, 42	//,
	adrp	x0, .LC1	// tmp153,
	add	x1, x0, :lo12:.LC1	//, tmp153,
	adrp	x0, .LC13	// tmp154,
	add	x0, x0, :lo12:.LC13	//, tmp154,
	bl	__assert_fail		//
.L10:
// problem52.c:44:     char test6[] = "EcBOO";
	adrp	x0, .LC14	// tmp156,
	add	x1, x0, :lo12:.LC14	// tmp155, tmp156,
	add	x0, sp, 56	// tmp157,,
	ldr	w2, [x1]	// tmp159,
	str	w2, [x0]	// tmp159, test6
	ldrh	w1, [x1, 4]	// tmp160,
	strh	w1, [x0, 4]	// tmp160, test6
// problem52.c:45:     func0(test6);
	add	x0, sp, 56	// tmp161,,
	bl	func0		//
// problem52.c:46:     assert(strcmp(test6, "cB") == 0);
	add	x2, sp, 56	// tmp162,,
	adrp	x0, .LC12	// tmp163,
	add	x1, x0, :lo12:.LC12	//, tmp163,
	mov	x0, x2	//, tmp162
	bl	strcmp		//
	cmp	w0, 0	// _6,
	beq	.L11		//,
// problem52.c:46:     assert(strcmp(test6, "cB") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp164,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp164,
	mov	w2, 46	//,
	adrp	x0, .LC1	// tmp165,
	add	x1, x0, :lo12:.LC1	//, tmp165,
	adrp	x0, .LC15	// tmp166,
	add	x0, x0, :lo12:.LC15	//, tmp166,
	bl	__assert_fail		//
.L11:
// problem52.c:48:     char test7[] = "ybcd";
	adrp	x0, .LC16	// tmp168,
	add	x1, x0, :lo12:.LC16	// tmp167, tmp168,
	add	x0, sp, 32	// tmp169,,
	ldr	w2, [x1]	// tmp171,
	str	w2, [x0]	// tmp171, test7
	ldrb	w1, [x1, 4]	// tmp172,
	strb	w1, [x0, 4]	// tmp172, test7
// problem52.c:49:     func0(test7);
	add	x0, sp, 32	// tmp173,,
	bl	func0		//
// problem52.c:50:     assert(strcmp(test7, "ybcd") == 0);
	add	x2, sp, 32	// tmp174,,
	adrp	x0, .LC16	// tmp175,
	add	x1, x0, :lo12:.LC16	//, tmp175,
	mov	x0, x2	//, tmp174
	bl	strcmp		//
	cmp	w0, 0	// _7,
	beq	.L12		//,
// problem52.c:50:     assert(strcmp(test7, "ybcd") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp176,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp176,
	mov	w2, 50	//,
	adrp	x0, .LC1	// tmp177,
	add	x1, x0, :lo12:.LC1	//, tmp177,
	adrp	x0, .LC17	// tmp178,
	add	x0, x0, :lo12:.LC17	//, tmp178,
	bl	__assert_fail		//
.L12:
// problem52.c:52:     return 0;
	mov	w0, 0	// _32,
// problem52.c:53: }
	mov	w1, w0	// <retval>, _32
	adrp	x0, :got:__stack_chk_guard	// tmp181,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp180, tmp181,
	ldr	x3, [sp, 88]	// tmp183, D.5012
	ldr	x2, [x0]	// tmp184,
	subs	x3, x3, x2	// tmp183, tmp184
	mov	x2, 0	// tmp184
	beq	.L14		//,
	bl	__stack_chk_fail		//
.L14:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC3:
	.string	"abcdef\nghijklm"
	.align	3
.LC6:
	.string	"fedcba"
	.align	3
.LC9:
	.string	"eeeee"
	.align	3
.LC11:
	.string	"acBAA"
	.align	3
.LC14:
	.string	"EcBOO"
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
