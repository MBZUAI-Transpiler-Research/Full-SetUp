	.arch armv8-a
	.file	"problem90.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]	// s, s
	str	x1, [sp]	// out, out
// problem90.c:6:     for (i = 0; s[i] != '\0'; i++) {
	str	wzr, [sp, 24]	//, i
// problem90.c:6:     for (i = 0; s[i] != '\0'; i++) {
	b	.L2		//
.L3:
// problem90.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	ldrsw	x0, [sp, 24]	// _1, i
	ldr	x1, [sp, 8]	// tmp106, s
	add	x0, x1, x0	// _2, tmp106, _1
	ldrb	w0, [x0]	// _3, *_2
// problem90.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	sub	w1, w0, #93	// _5, _4,
// problem90.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	mov	w0, 60495	// tmp108,
	movk	w0, 0x4ec4, lsl 16	// tmp108,,
	smull	x0, w1, w0	// tmp107, _5, tmp108
	lsr	x0, x0, 32	// tmp109, tmp107,
	asr	w2, w0, 3	// tmp110, tmp109,
	asr	w0, w1, 31	// tmp111, _5,
	sub	w0, w2, w0	// _6, tmp110, tmp111
	mov	w2, 26	// tmp113,
	mul	w0, w0, w2	// tmp112, _6, tmp113
	sub	w0, w1, w0	// _6, _5, tmp112
// problem90.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	add	w0, w0, 97	// tmp114, _6,
	str	w0, [sp, 28]	// tmp114, w
// problem90.c:8:         out[i] = (char)w;
	ldrsw	x0, [sp, 24]	// _7, i
	ldr	x1, [sp]	// tmp115, out
	add	x0, x1, x0	// _8, tmp115, _7
// problem90.c:8:         out[i] = (char)w;
	ldr	w1, [sp, 28]	// tmp116, w
	and	w1, w1, 255	// _9, tmp116
// problem90.c:8:         out[i] = (char)w;
	strb	w1, [x0]	// tmp117, *_8
// problem90.c:6:     for (i = 0; s[i] != '\0'; i++) {
	ldr	w0, [sp, 24]	// tmp119, i
	add	w0, w0, 1	// tmp118, tmp119,
	str	w0, [sp, 24]	// tmp118, i
.L2:
// problem90.c:6:     for (i = 0; s[i] != '\0'; i++) {
	ldrsw	x0, [sp, 24]	// _10, i
	ldr	x1, [sp, 8]	// tmp120, s
	add	x0, x1, x0	// _11, tmp120, _10
	ldrb	w0, [x0]	// _12, *_11
// problem90.c:6:     for (i = 0; s[i] != '\0'; i++) {
	cmp	w0, 0	// _12,
	bne	.L3		//,
// problem90.c:10:     out[i] = '\0';
	ldrsw	x0, [sp, 24]	// _13, i
	ldr	x1, [sp]	// tmp121, out
	add	x0, x1, x0	// _14, tmp121, _13
// problem90.c:10:     out[i] = '\0';
	strb	wzr, [x0]	//, *_14
// problem90.c:11: }
	nop	
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"hi"
	.align	3
.LC1:
	.string	"lm"
	.align	3
.LC2:
	.string	"problem90.c"
	.align	3
.LC3:
	.string	"strcmp(encrypted, \"lm\") == 0"
	.align	3
.LC4:
	.string	"asdfghjkl"
	.align	3
.LC5:
	.string	"ewhjklnop"
	.align	3
.LC6:
	.string	"strcmp(encrypted, \"ewhjklnop\") == 0"
	.align	3
.LC7:
	.string	"gf"
	.align	3
.LC8:
	.string	"kj"
	.align	3
.LC9:
	.string	"strcmp(encrypted, \"kj\") == 0"
	.align	3
.LC10:
	.string	"et"
	.align	3
.LC11:
	.string	"ix"
	.align	3
.LC12:
	.string	"strcmp(encrypted, \"ix\") == 0"
	.align	3
.LC13:
	.string	"faewfawefaewg"
	.align	3
.LC14:
	.string	"jeiajeaijeiak"
	.align	3
.LC15:
	.string	"strcmp(encrypted, \"jeiajeaijeiak\") == 0"
	.align	3
.LC16:
	.string	"hellomyfriend"
	.align	3
.LC17:
	.string	"lippsqcjvmirh"
	.align	3
.LC18:
	.string	"strcmp(encrypted, \"lippsqcjvmirh\") == 0"
	.align	3
.LC19:
	.string	"dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh"
	.align	3
.LC20:
	.string	"hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl"
	.align	3
.LC21:
	.string	"strcmp(encrypted, \"hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl\") == 0"
	.align	3
.LC22:
	.string	"a"
	.align	3
.LC23:
	.string	"e"
	.align	3
.LC24:
	.string	"strcmp(encrypted, \"e\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!	//,,,
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp	//,
// problem90.c:19: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp103,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp102, tmp103,
	ldr	x1, [x0]	// tmp163,
	str	x1, [sp, 120]	// tmp163, D.4491
	mov	x1, 0	// tmp163
// problem90.c:22:     func0("hi", encrypted);
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	adrp	x0, .LC0	// tmp105,
	add	x0, x0, :lo12:.LC0	//, tmp105,
	bl	func0		//
// problem90.c:23:     assert(strcmp(encrypted, "lm") == 0);
	add	x2, sp, 16	// tmp106,,
	adrp	x0, .LC1	// tmp107,
	add	x1, x0, :lo12:.LC1	//, tmp107,
	mov	x0, x2	//, tmp106
	bl	strcmp		//
	cmp	w0, 0	// _1,
	beq	.L5		//,
// problem90.c:23:     assert(strcmp(encrypted, "lm") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp108,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp108,
	mov	w2, 23	//,
	adrp	x0, .LC2	// tmp109,
	add	x1, x0, :lo12:.LC2	//, tmp109,
	adrp	x0, .LC3	// tmp110,
	add	x0, x0, :lo12:.LC3	//, tmp110,
	bl	__assert_fail		//
.L5:
// problem90.c:25:     func0("asdfghjkl", encrypted);
	add	x0, sp, 16	// tmp111,,
	mov	x1, x0	//, tmp111
	adrp	x0, .LC4	// tmp112,
	add	x0, x0, :lo12:.LC4	//, tmp112,
	bl	func0		//
// problem90.c:26:     assert(strcmp(encrypted, "ewhjklnop") == 0);
	add	x2, sp, 16	// tmp113,,
	adrp	x0, .LC5	// tmp114,
	add	x1, x0, :lo12:.LC5	//, tmp114,
	mov	x0, x2	//, tmp113
	bl	strcmp		//
	cmp	w0, 0	// _2,
	beq	.L6		//,
// problem90.c:26:     assert(strcmp(encrypted, "ewhjklnop") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp115,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp115,
	mov	w2, 26	//,
	adrp	x0, .LC2	// tmp116,
	add	x1, x0, :lo12:.LC2	//, tmp116,
	adrp	x0, .LC6	// tmp117,
	add	x0, x0, :lo12:.LC6	//, tmp117,
	bl	__assert_fail		//
.L6:
// problem90.c:28:     func0("gf", encrypted);
	add	x0, sp, 16	// tmp118,,
	mov	x1, x0	//, tmp118
	adrp	x0, .LC7	// tmp119,
	add	x0, x0, :lo12:.LC7	//, tmp119,
	bl	func0		//
// problem90.c:29:     assert(strcmp(encrypted, "kj") == 0);
	add	x2, sp, 16	// tmp120,,
	adrp	x0, .LC8	// tmp121,
	add	x1, x0, :lo12:.LC8	//, tmp121,
	mov	x0, x2	//, tmp120
	bl	strcmp		//
	cmp	w0, 0	// _3,
	beq	.L7		//,
// problem90.c:29:     assert(strcmp(encrypted, "kj") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp122,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp122,
	mov	w2, 29	//,
	adrp	x0, .LC2	// tmp123,
	add	x1, x0, :lo12:.LC2	//, tmp123,
	adrp	x0, .LC9	// tmp124,
	add	x0, x0, :lo12:.LC9	//, tmp124,
	bl	__assert_fail		//
.L7:
// problem90.c:31:     func0("et", encrypted);
	add	x0, sp, 16	// tmp125,,
	mov	x1, x0	//, tmp125
	adrp	x0, .LC10	// tmp126,
	add	x0, x0, :lo12:.LC10	//, tmp126,
	bl	func0		//
// problem90.c:32:     assert(strcmp(encrypted, "ix") == 0);
	add	x2, sp, 16	// tmp127,,
	adrp	x0, .LC11	// tmp128,
	add	x1, x0, :lo12:.LC11	//, tmp128,
	mov	x0, x2	//, tmp127
	bl	strcmp		//
	cmp	w0, 0	// _4,
	beq	.L8		//,
// problem90.c:32:     assert(strcmp(encrypted, "ix") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp129,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp129,
	mov	w2, 32	//,
	adrp	x0, .LC2	// tmp130,
	add	x1, x0, :lo12:.LC2	//, tmp130,
	adrp	x0, .LC12	// tmp131,
	add	x0, x0, :lo12:.LC12	//, tmp131,
	bl	__assert_fail		//
.L8:
// problem90.c:34:     func0("faewfawefaewg", encrypted);
	add	x0, sp, 16	// tmp132,,
	mov	x1, x0	//, tmp132
	adrp	x0, .LC13	// tmp133,
	add	x0, x0, :lo12:.LC13	//, tmp133,
	bl	func0		//
// problem90.c:35:     assert(strcmp(encrypted, "jeiajeaijeiak") == 0);
	add	x2, sp, 16	// tmp134,,
	adrp	x0, .LC14	// tmp135,
	add	x1, x0, :lo12:.LC14	//, tmp135,
	mov	x0, x2	//, tmp134
	bl	strcmp		//
	cmp	w0, 0	// _5,
	beq	.L9		//,
// problem90.c:35:     assert(strcmp(encrypted, "jeiajeaijeiak") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp136,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp136,
	mov	w2, 35	//,
	adrp	x0, .LC2	// tmp137,
	add	x1, x0, :lo12:.LC2	//, tmp137,
	adrp	x0, .LC15	// tmp138,
	add	x0, x0, :lo12:.LC15	//, tmp138,
	bl	__assert_fail		//
.L9:
// problem90.c:37:     func0("hellomyfriend", encrypted);
	add	x0, sp, 16	// tmp139,,
	mov	x1, x0	//, tmp139
	adrp	x0, .LC16	// tmp140,
	add	x0, x0, :lo12:.LC16	//, tmp140,
	bl	func0		//
// problem90.c:38:     assert(strcmp(encrypted, "lippsqcjvmirh") == 0);
	add	x2, sp, 16	// tmp141,,
	adrp	x0, .LC17	// tmp142,
	add	x1, x0, :lo12:.LC17	//, tmp142,
	mov	x0, x2	//, tmp141
	bl	strcmp		//
	cmp	w0, 0	// _6,
	beq	.L10		//,
// problem90.c:38:     assert(strcmp(encrypted, "lippsqcjvmirh") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp143,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp143,
	mov	w2, 38	//,
	adrp	x0, .LC2	// tmp144,
	add	x1, x0, :lo12:.LC2	//, tmp144,
	adrp	x0, .LC18	// tmp145,
	add	x0, x0, :lo12:.LC18	//, tmp145,
	bl	__assert_fail		//
.L10:
// problem90.c:40:     func0("dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh", encrypted);
	add	x0, sp, 16	// tmp146,,
	mov	x1, x0	//, tmp146
	adrp	x0, .LC19	// tmp147,
	add	x0, x0, :lo12:.LC19	//, tmp147,
	bl	func0		//
// problem90.c:41:     assert(strcmp(encrypted, "hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl") == 0);
	add	x2, sp, 16	// tmp148,,
	adrp	x0, .LC20	// tmp149,
	add	x1, x0, :lo12:.LC20	//, tmp149,
	mov	x0, x2	//, tmp148
	bl	strcmp		//
	cmp	w0, 0	// _7,
	beq	.L11		//,
// problem90.c:41:     assert(strcmp(encrypted, "hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp150,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp150,
	mov	w2, 41	//,
	adrp	x0, .LC2	// tmp151,
	add	x1, x0, :lo12:.LC2	//, tmp151,
	adrp	x0, .LC21	// tmp152,
	add	x0, x0, :lo12:.LC21	//, tmp152,
	bl	__assert_fail		//
.L11:
// problem90.c:43:     func0("a", encrypted);
	add	x0, sp, 16	// tmp153,,
	mov	x1, x0	//, tmp153
	adrp	x0, .LC22	// tmp154,
	add	x0, x0, :lo12:.LC22	//, tmp154,
	bl	func0		//
// problem90.c:44:     assert(strcmp(encrypted, "e") == 0);
	add	x2, sp, 16	// tmp155,,
	adrp	x0, .LC23	// tmp156,
	add	x1, x0, :lo12:.LC23	//, tmp156,
	mov	x0, x2	//, tmp155
	bl	strcmp		//
	cmp	w0, 0	// _8,
	beq	.L12		//,
// problem90.c:44:     assert(strcmp(encrypted, "e") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp157,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp157,
	mov	w2, 44	//,
	adrp	x0, .LC2	// tmp158,
	add	x1, x0, :lo12:.LC2	//, tmp158,
	adrp	x0, .LC24	// tmp159,
	add	x0, x0, :lo12:.LC24	//, tmp159,
	bl	__assert_fail		//
.L12:
// problem90.c:46:     return 0;
	mov	w0, 0	// _26,
// problem90.c:47: }
	mov	w1, w0	// <retval>, _26
	adrp	x0, :got:__stack_chk_guard	// tmp162,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp161, tmp162,
	ldr	x3, [sp, 120]	// tmp164, D.4491
	ldr	x2, [x0]	// tmp165,
	subs	x3, x3, x2	// tmp164, tmp165
	mov	x2, 0	// tmp165
	beq	.L14		//,
	bl	__stack_chk_fail		//
.L14:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 128	//,,,
	.cfi_restore 30
	.cfi_restore 29
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
