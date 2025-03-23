	.arch armv8-a
	.file	"problem92.c"
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
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// S, S
// problem92.c:6:     int isstart = 1;
	mov	w0, 1	// tmp142,
	str	w0, [sp, 32]	// tmp142, isstart
// problem92.c:7:     int isi = 0;
	str	wzr, [sp, 36]	//, isi
// problem92.c:8:     int sum = 0;
	str	wzr, [sp, 40]	//, sum
// problem92.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	str	wzr, [sp, 44]	//, i
// problem92.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	b	.L2		//
.L9:
// problem92.c:10:         if (isspace(S[i]) && isi) {
	bl	__ctype_b_loc		//
	ldr	x1, [x0]	// _2, *_1
	ldrsw	x0, [sp, 44]	// _3, i
	ldr	x2, [sp, 24]	// tmp143, S
	add	x0, x2, x0	// _4, tmp143, _3
	ldrb	w0, [x0]	// _5, *_4
	and	x0, x0, 255	// _6, _5
	lsl	x0, x0, 1	// _7, _6,
	add	x0, x1, x0	// _8, _2, _7
	ldrh	w0, [x0]	// _9, *_8
	and	w0, w0, 8192	// _11, _10,
// problem92.c:10:         if (isspace(S[i]) && isi) {
	cmp	w0, 0	// _11,
	beq	.L3		//,
// problem92.c:10:         if (isspace(S[i]) && isi) {
	ldr	w0, [sp, 36]	// tmp144, isi
	cmp	w0, 0	// tmp144,
	beq	.L3		//,
// problem92.c:11:             isi = 0;
	str	wzr, [sp, 36]	//, isi
// problem92.c:12:             sum += 1;
	ldr	w0, [sp, 40]	// tmp146, sum
	add	w0, w0, 1	// tmp145, tmp146,
	str	w0, [sp, 40]	// tmp145, sum
.L3:
// problem92.c:14:         if (S[i] == 'I' && isstart) {
	ldrsw	x0, [sp, 44]	// _12, i
	ldr	x1, [sp, 24]	// tmp147, S
	add	x0, x1, x0	// _13, tmp147, _12
	ldrb	w0, [x0]	// _14, *_13
// problem92.c:14:         if (S[i] == 'I' && isstart) {
	cmp	w0, 73	// _14,
	bne	.L4		//,
// problem92.c:14:         if (S[i] == 'I' && isstart) {
	ldr	w0, [sp, 32]	// tmp148, isstart
	cmp	w0, 0	// tmp148,
	beq	.L4		//,
// problem92.c:15:             isi = 1;
	mov	w0, 1	// tmp149,
	str	w0, [sp, 36]	// tmp149, isi
	b	.L5		//
.L4:
// problem92.c:16:         } else if (!isspace(S[i])) {
	bl	__ctype_b_loc		//
	ldr	x1, [x0]	// _16, *_15
	ldrsw	x0, [sp, 44]	// _17, i
	ldr	x2, [sp, 24]	// tmp150, S
	add	x0, x2, x0	// _18, tmp150, _17
	ldrb	w0, [x0]	// _19, *_18
	and	x0, x0, 255	// _20, _19
	lsl	x0, x0, 1	// _21, _20,
	add	x0, x1, x0	// _22, _16, _21
	ldrh	w0, [x0]	// _23, *_22
	and	w0, w0, 8192	// _25, _24,
// problem92.c:16:         } else if (!isspace(S[i])) {
	cmp	w0, 0	// _25,
	bne	.L5		//,
// problem92.c:17:             isi = 0;
	str	wzr, [sp, 36]	//, isi
.L5:
// problem92.c:19:         if (!isspace(S[i])) {
	bl	__ctype_b_loc		//
	ldr	x1, [x0]	// _27, *_26
	ldrsw	x0, [sp, 44]	// _28, i
	ldr	x2, [sp, 24]	// tmp151, S
	add	x0, x2, x0	// _29, tmp151, _28
	ldrb	w0, [x0]	// _30, *_29
	and	x0, x0, 255	// _31, _30
	lsl	x0, x0, 1	// _32, _31,
	add	x0, x1, x0	// _33, _27, _32
	ldrh	w0, [x0]	// _34, *_33
	and	w0, w0, 8192	// _36, _35,
// problem92.c:19:         if (!isspace(S[i])) {
	cmp	w0, 0	// _36,
	bne	.L6		//,
// problem92.c:20:             isstart = 0;
	str	wzr, [sp, 32]	//, isstart
.L6:
// problem92.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	ldrsw	x0, [sp, 44]	// _37, i
	ldr	x1, [sp, 24]	// tmp152, S
	add	x0, x1, x0	// _38, tmp152, _37
	ldrb	w0, [x0]	// _39, *_38
// problem92.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	cmp	w0, 46	// _39,
	beq	.L7		//,
// problem92.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	ldrsw	x0, [sp, 44]	// _40, i
	ldr	x1, [sp, 24]	// tmp153, S
	add	x0, x1, x0	// _41, tmp153, _40
	ldrb	w0, [x0]	// _42, *_41
// problem92.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	cmp	w0, 63	// _42,
	beq	.L7		//,
// problem92.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	ldrsw	x0, [sp, 44]	// _43, i
	ldr	x1, [sp, 24]	// tmp154, S
	add	x0, x1, x0	// _44, tmp154, _43
	ldrb	w0, [x0]	// _45, *_44
// problem92.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	cmp	w0, 33	// _45,
	bne	.L8		//,
.L7:
// problem92.c:23:             isstart = 1;
	mov	w0, 1	// tmp155,
	str	w0, [sp, 32]	// tmp155, isstart
.L8:
// problem92.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	ldr	w0, [sp, 44]	// tmp157, i
	add	w0, w0, 1	// tmp156, tmp157,
	str	w0, [sp, 44]	// tmp156, i
.L2:
// problem92.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	ldrsw	x0, [sp, 44]	// _46, i
	ldr	x1, [sp, 24]	// tmp158, S
	add	x0, x1, x0	// _47, tmp158, _46
	ldrb	w0, [x0]	// _48, *_47
// problem92.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	cmp	w0, 0	// _48,
	bne	.L9		//,
// problem92.c:26:     return sum;
	ldr	w0, [sp, 40]	// _64, sum
// problem92.c:27: }
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
	.string	"Hello world"
	.align	3
.LC1:
	.string	"problem92.c"
	.align	3
.LC2:
	.string	"func0(\"Hello world\") == 0"
	.align	3
.LC3:
	.string	"Is the sky blue?"
	.align	3
.LC4:
	.string	"func0(\"Is the sky blue?\") == 0"
	.align	3
.LC5:
	.string	"I love It !"
	.align	3
.LC6:
	.string	"func0(\"I love It !\") == 1"
	.align	3
.LC7:
	.string	"bIt"
	.align	3
.LC8:
	.string	"func0(\"bIt\") == 0"
	.align	3
.LC9:
	.string	"I feel good today. I will be productive. will kill It"
	.align	3
.LC10:
	.string	"func0(\"I feel good today. I will be productive. will kill It\") == 2"
	.align	3
.LC11:
	.string	"You and I are going for a walk"
	.align	3
.LC12:
	.string	"func0(\"You and I are going for a walk\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp	//,
// problem92.c:34:     assert(func0("Hello world") == 0);
	adrp	x0, .LC0	// tmp100,
	add	x0, x0, :lo12:.LC0	//, tmp100,
	bl	func0		//
	cmp	w0, 0	// _1,
	beq	.L12		//,
// problem92.c:34:     assert(func0("Hello world") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp101,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp101,
	mov	w2, 34	//,
	adrp	x0, .LC1	// tmp102,
	add	x1, x0, :lo12:.LC1	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	__assert_fail		//
.L12:
// problem92.c:35:     assert(func0("Is the sky blue?") == 0);
	adrp	x0, .LC3	// tmp104,
	add	x0, x0, :lo12:.LC3	//, tmp104,
	bl	func0		//
	cmp	w0, 0	// _2,
	beq	.L13		//,
// problem92.c:35:     assert(func0("Is the sky blue?") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp105,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp105,
	mov	w2, 35	//,
	adrp	x0, .LC1	// tmp106,
	add	x1, x0, :lo12:.LC1	//, tmp106,
	adrp	x0, .LC4	// tmp107,
	add	x0, x0, :lo12:.LC4	//, tmp107,
	bl	__assert_fail		//
.L13:
// problem92.c:36:     assert(func0("I love It !") == 1);
	adrp	x0, .LC5	// tmp108,
	add	x0, x0, :lo12:.LC5	//, tmp108,
	bl	func0		//
	cmp	w0, 1	// _3,
	beq	.L14		//,
// problem92.c:36:     assert(func0("I love It !") == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp109,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp109,
	mov	w2, 36	//,
	adrp	x0, .LC1	// tmp110,
	add	x1, x0, :lo12:.LC1	//, tmp110,
	adrp	x0, .LC6	// tmp111,
	add	x0, x0, :lo12:.LC6	//, tmp111,
	bl	__assert_fail		//
.L14:
// problem92.c:37:     assert(func0("bIt") == 0);
	adrp	x0, .LC7	// tmp112,
	add	x0, x0, :lo12:.LC7	//, tmp112,
	bl	func0		//
	cmp	w0, 0	// _4,
	beq	.L15		//,
// problem92.c:37:     assert(func0("bIt") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp113,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp113,
	mov	w2, 37	//,
	adrp	x0, .LC1	// tmp114,
	add	x1, x0, :lo12:.LC1	//, tmp114,
	adrp	x0, .LC8	// tmp115,
	add	x0, x0, :lo12:.LC8	//, tmp115,
	bl	__assert_fail		//
.L15:
// problem92.c:38:     assert(func0("I feel good today. I will be productive. will kill It") == 2);
	adrp	x0, .LC9	// tmp116,
	add	x0, x0, :lo12:.LC9	//, tmp116,
	bl	func0		//
	cmp	w0, 2	// _5,
	beq	.L16		//,
// problem92.c:38:     assert(func0("I feel good today. I will be productive. will kill It") == 2);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp117,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp117,
	mov	w2, 38	//,
	adrp	x0, .LC1	// tmp118,
	add	x1, x0, :lo12:.LC1	//, tmp118,
	adrp	x0, .LC10	// tmp119,
	add	x0, x0, :lo12:.LC10	//, tmp119,
	bl	__assert_fail		//
.L16:
// problem92.c:39:     assert(func0("You and I are going for a walk") == 0);
	adrp	x0, .LC11	// tmp120,
	add	x0, x0, :lo12:.LC11	//, tmp120,
	bl	func0		//
	cmp	w0, 0	// _6,
	beq	.L17		//,
// problem92.c:39:     assert(func0("You and I are going for a walk") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp121,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp121,
	mov	w2, 39	//,
	adrp	x0, .LC1	// tmp122,
	add	x1, x0, :lo12:.LC1	//, tmp122,
	adrp	x0, .LC12	// tmp123,
	add	x0, x0, :lo12:.LC12	//, tmp123,
	bl	__assert_fail		//
.L17:
// problem92.c:41:     return 0;
	mov	w0, 0	// _20,
// problem92.c:42: }
	ldp	x29, x30, [sp], 16	//,,,
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
