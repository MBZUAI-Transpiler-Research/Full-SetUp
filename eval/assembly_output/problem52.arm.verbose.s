	.arch armv8-a
	.file	"problem52.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
	sub	sp, sp, #96	//,,
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80	//,,
// problem52.c:23: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp103,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp103,
	ldr	x1, [x0]	// tmp180,
	str	x1, [sp, 72]	// tmp180, D.5628
	mov	x1, 0	// tmp180
// problem52.c:24:     char test1[] = "";
	strb	wzr, [sp, 8]	//, test1
// problem52.c:25:     func0(test1);
	add	x0, sp, 8	// tmp104,,
	bl	func0		//
// problem52.c:26:     assert(strcmp(test1, "") == 0);
	ldrb	w0, [sp, 8]	// _11, MEM[(const unsigned char * {ref-all})&test1]
	cmp	w0, 0	// _1,
	beq	.L6		//,
// problem52.c:26:     assert(strcmp(test1, "") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp105,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp105,
	mov	w2, 26	//,
	adrp	x0, .LC1	// tmp106,
	add	x1, x0, :lo12:.LC1	//, tmp106,
	adrp	x0, .LC2	// tmp107,
	add	x0, x0, :lo12:.LC2	//, tmp107,
	bl	__assert_fail		//
.L6:
// problem52.c:28:     char test2[] = "abcdef\nghijklm";
	adrp	x0, .LC3	// tmp109,
	add	x1, x0, :lo12:.LC3	// tmp108, tmp109,
	add	x0, sp, 56	// tmp110,,
	ldr	x2, [x1]	// tmp112,
	str	x2, [x0]	// tmp112, test2
	ldr	x1, [x1, 7]	// tmp113,
	str	x1, [x0, 7]	// tmp113, test2
// problem52.c:29:     func0(test2);
	add	x0, sp, 56	// tmp114,,
	bl	func0		//
// problem52.c:30:     assert(strcmp(test2, "bcdf\nghjklm") == 0);
	add	x2, sp, 56	// tmp115,,
	adrp	x0, .LC4	// tmp116,
	add	x1, x0, :lo12:.LC4	//, tmp116,
	mov	x0, x2	//, tmp115
	bl	strcmp		//
// problem52.c:30:     assert(strcmp(test2, "bcdf\nghjklm") == 0);
	cmp	w0, 0	// _2,
	beq	.L7		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp117,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp117,
	mov	w2, 30	//,
	adrp	x0, .LC1	// tmp118,
	add	x1, x0, :lo12:.LC1	//, tmp118,
	adrp	x0, .LC5	// tmp119,
	add	x0, x0, :lo12:.LC5	//, tmp119,
	bl	__assert_fail		//
.L7:
// problem52.c:32:     char test3[] = "fedcba";
	adrp	x0, .LC6	// tmp121,
	add	x1, x0, :lo12:.LC6	// tmp120, tmp121,
	add	x0, sp, 48	// tmp122,,
	ldr	w2, [x1]	// tmp124,
	str	w2, [x0]	// tmp124, test3
	ldr	w1, [x1, 3]	// tmp125,
	str	w1, [x0, 3]	// tmp125, test3
// problem52.c:33:     func0(test3);
	add	x0, sp, 48	// tmp126,,
	bl	func0		//
// problem52.c:34:     assert(strcmp(test3, "fdcb") == 0);
	add	x2, sp, 48	// tmp127,,
	adrp	x0, .LC7	// tmp128,
	add	x1, x0, :lo12:.LC7	//, tmp128,
	mov	x0, x2	//, tmp127
	bl	strcmp		//
// problem52.c:34:     assert(strcmp(test3, "fdcb") == 0);
	cmp	w0, 0	// _3,
	beq	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp129,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp129,
	mov	w2, 34	//,
	adrp	x0, .LC1	// tmp130,
	add	x1, x0, :lo12:.LC1	//, tmp130,
	adrp	x0, .LC8	// tmp131,
	add	x0, x0, :lo12:.LC8	//, tmp131,
	bl	__assert_fail		//
.L8:
// problem52.c:36:     char test4[] = "eeeee";
	adrp	x0, .LC9	// tmp133,
	add	x1, x0, :lo12:.LC9	// tmp132, tmp133,
	add	x0, sp, 24	// tmp134,,
	ldr	w2, [x1]	// tmp136,
	str	w2, [x0]	// tmp136, test4
	ldrh	w1, [x1, 4]	// tmp137,
	strh	w1, [x0, 4]	// tmp137, test4
// problem52.c:37:     func0(test4);
	add	x0, sp, 24	// tmp138,,
	bl	func0		//
// problem52.c:38:     assert(strcmp(test4, "") == 0);
	ldrb	w0, [sp, 24]	// _21, MEM[(const unsigned char * {ref-all})&test4]
	cmp	w0, 0	// _4,
	beq	.L9		//,
// problem52.c:38:     assert(strcmp(test4, "") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp139,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp139,
	mov	w2, 38	//,
	adrp	x0, .LC1	// tmp140,
	add	x1, x0, :lo12:.LC1	//, tmp140,
	adrp	x0, .LC10	// tmp141,
	add	x0, x0, :lo12:.LC10	//, tmp141,
	bl	__assert_fail		//
.L9:
// problem52.c:40:     char test5[] = "acBAA";
	adrp	x0, .LC11	// tmp143,
	add	x1, x0, :lo12:.LC11	// tmp142, tmp143,
	add	x0, sp, 32	// tmp144,,
	ldr	w2, [x1]	// tmp146,
	str	w2, [x0]	// tmp146, test5
	ldrh	w1, [x1, 4]	// tmp147,
	strh	w1, [x0, 4]	// tmp147, test5
// problem52.c:41:     func0(test5);
	add	x0, sp, 32	// tmp148,,
	bl	func0		//
// problem52.c:42:     assert(strcmp(test5, "cB") == 0);
	add	x2, sp, 32	// tmp149,,
	adrp	x0, .LC12	// tmp150,
	add	x1, x0, :lo12:.LC12	//, tmp150,
	mov	x0, x2	//, tmp149
	bl	strcmp		//
// problem52.c:42:     assert(strcmp(test5, "cB") == 0);
	cmp	w0, 0	// _5,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp151,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp151,
	mov	w2, 42	//,
	adrp	x0, .LC1	// tmp152,
	add	x1, x0, :lo12:.LC1	//, tmp152,
	adrp	x0, .LC13	// tmp153,
	add	x0, x0, :lo12:.LC13	//, tmp153,
	bl	__assert_fail		//
.L10:
// problem52.c:44:     char test6[] = "EcBOO";
	adrp	x0, .LC14	// tmp155,
	add	x1, x0, :lo12:.LC14	// tmp154, tmp155,
	add	x0, sp, 40	// tmp156,,
	ldr	w2, [x1]	// tmp158,
	str	w2, [x0]	// tmp158, test6
	ldrh	w1, [x1, 4]	// tmp159,
	strh	w1, [x0, 4]	// tmp159, test6
// problem52.c:45:     func0(test6);
	add	x0, sp, 40	// tmp160,,
	bl	func0		//
// problem52.c:46:     assert(strcmp(test6, "cB") == 0);
	add	x2, sp, 40	// tmp161,,
	adrp	x0, .LC12	// tmp162,
	add	x1, x0, :lo12:.LC12	//, tmp162,
	mov	x0, x2	//, tmp161
	bl	strcmp		//
// problem52.c:46:     assert(strcmp(test6, "cB") == 0);
	cmp	w0, 0	// _6,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp163,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp163,
	mov	w2, 46	//,
	adrp	x0, .LC1	// tmp164,
	add	x1, x0, :lo12:.LC1	//, tmp164,
	adrp	x0, .LC15	// tmp165,
	add	x0, x0, :lo12:.LC15	//, tmp165,
	bl	__assert_fail		//
.L11:
// problem52.c:48:     char test7[] = "ybcd";
	adrp	x0, .LC16	// tmp167,
	add	x1, x0, :lo12:.LC16	// tmp166, tmp167,
	add	x0, sp, 16	// tmp168,,
	ldr	w2, [x1]	// tmp170,
	str	w2, [x0]	// tmp170, test7
	ldrb	w1, [x1, 4]	// tmp171,
	strb	w1, [x0, 4]	// tmp171, test7
// problem52.c:49:     func0(test7);
	add	x0, sp, 16	// tmp172,,
	bl	func0		//
// problem52.c:50:     assert(strcmp(test7, "ybcd") == 0);
	add	x2, sp, 16	// tmp173,,
	adrp	x0, .LC16	// tmp174,
	add	x1, x0, :lo12:.LC16	//, tmp174,
	mov	x0, x2	//, tmp173
	bl	strcmp		//
// problem52.c:50:     assert(strcmp(test7, "ybcd") == 0);
	cmp	w0, 0	// _7,
	beq	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp175,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp175,
	mov	w2, 50	//,
	adrp	x0, .LC1	// tmp176,
	add	x1, x0, :lo12:.LC1	//, tmp176,
	adrp	x0, .LC17	// tmp177,
	add	x0, x0, :lo12:.LC17	//, tmp177,
	bl	__assert_fail		//
.L12:
// problem52.c:52:     return 0;
	mov	w0, 0	// _32,
// problem52.c:53: }
	mov	w1, w0	// <retval>, _32
	adrp	x0, :got:__stack_chk_guard	// tmp179,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp179,
	ldr	x3, [sp, 72]	// tmp181, D.5628
	ldr	x2, [x0]	// tmp182,
	subs	x3, x3, x2	// tmp181, tmp182
	mov	x2, 0	// tmp182
	beq	.L14		//,
	bl	__stack_chk_fail		//
.L14:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 80]	//,,
	add	sp, sp, 96	//,,
	.cfi_restore 29
	.cfi_restore 30
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
