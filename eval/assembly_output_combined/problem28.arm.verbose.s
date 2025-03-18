	.arch armv8-a
	.file	"problem28.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// str, str
	str	x1, [sp, 16]	// out, out
// problem28.c:5:     int length = strlen(str);
	ldr	x0, [sp, 24]	//, str
	bl	strlen		//
// problem28.c:5:     int length = strlen(str);
	str	w0, [sp, 44]	// tmp99, length
// problem28.c:6:     for (int i = 0; i < length; i++) {
	str	wzr, [sp, 40]	//, i
// problem28.c:6:     for (int i = 0; i < length; i++) {
	b	.L2		//
.L5:
// problem28.c:7:         char w = str[i];
	ldrsw	x0, [sp, 40]	// _2, i
	ldr	x1, [sp, 24]	// tmp100, str
	add	x0, x1, x0	// _3, tmp100, _2
// problem28.c:7:         char w = str[i];
	ldrb	w0, [x0]	// tmp101, *_3
	strb	w0, [sp, 39]	// tmp101, w
// problem28.c:8:         if (w >= 'a' && w <= 'z') {
	ldrb	w0, [sp, 39]	// tmp102, w
	cmp	w0, 96	// tmp102,
	bls	.L3		//,
// problem28.c:8:         if (w >= 'a' && w <= 'z') {
	ldrb	w0, [sp, 39]	// tmp103, w
	cmp	w0, 122	// tmp103,
	bhi	.L3		//,
// problem28.c:9:             w -= 32;
	ldrb	w0, [sp, 39]	// tmp104, w
	sub	w0, w0, #32	// tmp105, tmp104,
	strb	w0, [sp, 39]	// tmp106, w
	b	.L4		//
.L3:
// problem28.c:10:         } else if (w >= 'A' && w <= 'Z') {
	ldrb	w0, [sp, 39]	// tmp107, w
	cmp	w0, 64	// tmp107,
	bls	.L4		//,
// problem28.c:10:         } else if (w >= 'A' && w <= 'Z') {
	ldrb	w0, [sp, 39]	// tmp108, w
	cmp	w0, 90	// tmp108,
	bhi	.L4		//,
// problem28.c:11:             w += 32;
	ldrb	w0, [sp, 39]	// tmp109, w
	add	w0, w0, 32	// tmp110, tmp109,
	strb	w0, [sp, 39]	// tmp111, w
.L4:
// problem28.c:13:         out[i] = w;
	ldrsw	x0, [sp, 40]	// _4, i
	ldr	x1, [sp, 16]	// tmp112, out
	add	x0, x1, x0	// _5, tmp112, _4
// problem28.c:13:         out[i] = w;
	ldrb	w1, [sp, 39]	// tmp113, w
	strb	w1, [x0]	// tmp113, *_5
// problem28.c:6:     for (int i = 0; i < length; i++) {
	ldr	w0, [sp, 40]	// tmp115, i
	add	w0, w0, 1	// tmp114, tmp115,
	str	w0, [sp, 40]	// tmp114, i
.L2:
// problem28.c:6:     for (int i = 0; i < length; i++) {
	ldr	w1, [sp, 40]	// tmp116, i
	ldr	w0, [sp, 44]	// tmp117, length
	cmp	w1, w0	// tmp116, tmp117
	blt	.L5		//,
// problem28.c:15:     out[length] = '\0';
	ldrsw	x0, [sp, 44]	// _6, length
	ldr	x1, [sp, 16]	// tmp118, out
	add	x0, x1, x0	// _7, tmp118, _6
// problem28.c:15:     out[length] = '\0';
	strb	wzr, [x0]	//, *_7
// problem28.c:16: }
	nop	
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.align	3
.LC1:
	.string	"problem28.c"
	.align	3
.LC2:
	.string	"strcmp(result, \"\") == 0"
	.align	3
.LC3:
	.string	"Hello!"
	.align	3
.LC4:
	.string	"hELLO!"
	.align	3
.LC5:
	.string	"strcmp(result, \"hELLO!\") == 0"
	.align	3
.LC6:
	.string	"These violent delights have violent ends"
	.align	3
.LC7:
	.string	"tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS"
	.align	3
.LC8:
	.string	"strcmp(result, \"tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #128	//,,
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, 112]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 112	//,,
// problem28.c:23: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp98,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp98,
	ldr	x1, [x0]	// tmp120,
	str	x1, [sp, 104]	// tmp120, D.5095
	mov	x1, 0	// tmp120
// problem28.c:26:     func0("", result);
	mov	x0, sp	// tmp99,
	mov	x1, x0	//, tmp99
	adrp	x0, .LC0	// tmp100,
	add	x0, x0, :lo12:.LC0	//, tmp100,
	bl	func0		//
// problem28.c:27:     assert(strcmp(result, "") == 0);
	ldrb	w0, [sp]	// _6, MEM[(const unsigned char * {ref-all})&result]
	cmp	w0, 0	// _1,
	beq	.L7		//,
// problem28.c:27:     assert(strcmp(result, "") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp101,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp101,
	mov	w2, 27	//,
	adrp	x0, .LC1	// tmp102,
	add	x1, x0, :lo12:.LC1	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	__assert_fail		//
.L7:
// problem28.c:29:     func0("Hello!", result);
	mov	x0, sp	// tmp104,
	mov	x1, x0	//, tmp104
	adrp	x0, .LC3	// tmp105,
	add	x0, x0, :lo12:.LC3	//, tmp105,
	bl	func0		//
// problem28.c:30:     assert(strcmp(result, "hELLO!") == 0);
	mov	x2, sp	// tmp106,
	adrp	x0, .LC4	// tmp107,
	add	x1, x0, :lo12:.LC4	//, tmp107,
	mov	x0, x2	//, tmp106
	bl	strcmp		//
// problem28.c:30:     assert(strcmp(result, "hELLO!") == 0);
	cmp	w0, 0	// _2,
	beq	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp108,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp108,
	mov	w2, 30	//,
	adrp	x0, .LC1	// tmp109,
	add	x1, x0, :lo12:.LC1	//, tmp109,
	adrp	x0, .LC5	// tmp110,
	add	x0, x0, :lo12:.LC5	//, tmp110,
	bl	__assert_fail		//
.L8:
// problem28.c:32:     func0("These violent delights have violent ends", result);
	mov	x0, sp	// tmp111,
	mov	x1, x0	//, tmp111
	adrp	x0, .LC6	// tmp112,
	add	x0, x0, :lo12:.LC6	//, tmp112,
	bl	func0		//
// problem28.c:33:     assert(strcmp(result, "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS") == 0);
	mov	x2, sp	// tmp113,
	adrp	x0, .LC7	// tmp114,
	add	x1, x0, :lo12:.LC7	//, tmp114,
	mov	x0, x2	//, tmp113
	bl	strcmp		//
// problem28.c:33:     assert(strcmp(result, "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS") == 0);
	cmp	w0, 0	// _3,
	beq	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp115,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp115,
	mov	w2, 33	//,
	adrp	x0, .LC1	// tmp116,
	add	x1, x0, :lo12:.LC1	//, tmp116,
	adrp	x0, .LC8	// tmp117,
	add	x0, x0, :lo12:.LC8	//, tmp117,
	bl	__assert_fail		//
.L9:
// problem28.c:35:     return 0;
	mov	w0, 0	// _12,
// problem28.c:36: }
	mov	w1, w0	// <retval>, _12
	adrp	x0, :got:__stack_chk_guard	// tmp119,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp119,
	ldr	x3, [sp, 104]	// tmp121, D.5095
	ldr	x2, [x0]	// tmp122,
	subs	x3, x3, x2	// tmp121, tmp122
	mov	x2, 0	// tmp122
	beq	.L11		//,
	bl	__stack_chk_fail		//
.L11:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 112]	//,,
	add	sp, sp, 128	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
