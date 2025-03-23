	.arch armv8-a
	.file	"problem85.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
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
	str	w0, [sp, 28]	// N, N
// problem85.c:4: char* func0(int N) {
	adrp	x0, :got:__stack_chk_guard	// tmp124,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp123, tmp124,
	ldr	x1, [x0]	// tmp174,
	str	x1, [sp, 72]	// tmp174, D.5013
	mov	x1, 0	// tmp174
// problem85.c:6:     sprintf(str, "%d", N);
	add	x3, sp, 64	// tmp125,,
	ldr	w2, [sp, 28]	//, N
	adrp	x0, .LC0	// tmp126,
	add	x1, x0, :lo12:.LC0	//, tmp126,
	mov	x0, x3	//, tmp125
	bl	sprintf		//
// problem85.c:7:     int sum = 0;
	str	wzr, [sp, 40]	//, sum
// problem85.c:8:     for (int i = 0; str[i] != '\0'; i++)
	str	wzr, [sp, 44]	//, i
// problem85.c:8:     for (int i = 0; str[i] != '\0'; i++)
	b	.L2		//
.L3:
// problem85.c:9:         sum += str[i] - '0';
	ldrsw	x0, [sp, 44]	// tmp127, i
	add	x1, sp, 64	// tmp128,,
	ldrb	w0, [x1, x0]	// _1, str[i_32]
// problem85.c:9:         sum += str[i] - '0';
	sub	w0, w0, #48	// _3, _2,
// problem85.c:9:         sum += str[i] - '0';
	ldr	w1, [sp, 40]	// tmp130, sum
	add	w0, w1, w0	// tmp129, tmp130, _3
	str	w0, [sp, 40]	// tmp129, sum
// problem85.c:8:     for (int i = 0; str[i] != '\0'; i++)
	ldr	w0, [sp, 44]	// tmp132, i
	add	w0, w0, 1	// tmp131, tmp132,
	str	w0, [sp, 44]	// tmp131, i
.L2:
// problem85.c:8:     for (int i = 0; str[i] != '\0'; i++)
	ldrsw	x0, [sp, 44]	// tmp133, i
	add	x1, sp, 64	// tmp134,,
	ldrb	w0, [x1, x0]	// _4, str[i_32]
// problem85.c:8:     for (int i = 0; str[i] != '\0'; i++)
	cmp	w0, 0	// _4,
	bne	.L3		//,
// problem85.c:11:     char* bi = malloc(33);
	mov	x0, 33	//,
	bl	malloc		//
	str	x0, [sp, 56]	// tmp135, bi
// problem85.c:12:     int index = 0;
	str	wzr, [sp, 48]	//, index
// problem85.c:13:     if (sum == 0) {
	ldr	w0, [sp, 40]	// tmp136, sum
	cmp	w0, 0	// tmp136,
	bne	.L6		//,
// problem85.c:14:         bi[index++] = '0';
	ldr	w0, [sp, 48]	// index.0_5, index
	add	w1, w0, 1	// tmp137, index.0_5,
	str	w1, [sp, 48]	// tmp137, index
	sxtw	x0, w0	// _6, index.0_5
// problem85.c:14:         bi[index++] = '0';
	ldr	x1, [sp, 56]	// tmp138, bi
	add	x0, x1, x0	// _7, tmp138, _6
// problem85.c:14:         bi[index++] = '0';
	mov	w1, 48	// tmp139,
	strb	w1, [x0]	// tmp139, *_7
	b	.L5		//
.L7:
// problem85.c:17:             bi[index++] = (sum % 2) + '0';
	ldr	w0, [sp, 40]	// tmp140, sum
	cmp	w0, 0	// tmp140,
	and	w0, w0, 1	// tmp141, tmp140,
	csneg	w0, w0, w0, ge	// _8, tmp141, tmp141,
// problem85.c:17:             bi[index++] = (sum % 2) + '0';
	and	w1, w0, 255	// _9, _8
// problem85.c:17:             bi[index++] = (sum % 2) + '0';
	ldr	w0, [sp, 48]	// index.1_10, index
	add	w2, w0, 1	// tmp142, index.1_10,
	str	w2, [sp, 48]	// tmp142, index
	sxtw	x0, w0	// _11, index.1_10
// problem85.c:17:             bi[index++] = (sum % 2) + '0';
	ldr	x2, [sp, 56]	// tmp143, bi
	add	x0, x2, x0	// _12, tmp143, _11
// problem85.c:17:             bi[index++] = (sum % 2) + '0';
	add	w1, w1, 48	// tmp144, _9,
	and	w1, w1, 255	// _13, tmp144
// problem85.c:17:             bi[index++] = (sum % 2) + '0';
	strb	w1, [x0]	// tmp145, *_12
// problem85.c:18:             sum /= 2;
	ldr	w0, [sp, 40]	// tmp147, sum
	lsr	w1, w0, 31	// tmp148, tmp147,
	add	w0, w1, w0	// tmp149, tmp148, tmp147
	asr	w0, w0, 1	// tmp150, tmp149,
	str	w0, [sp, 40]	// tmp150, sum
.L6:
// problem85.c:16:         while (sum > 0) {
	ldr	w0, [sp, 40]	// tmp151, sum
	cmp	w0, 0	// tmp151,
	bgt	.L7		//,
.L5:
// problem85.c:21:     bi[index] = '\0';
	ldrsw	x0, [sp, 48]	// _14, index
	ldr	x1, [sp, 56]	// tmp152, bi
	add	x0, x1, x0	// _15, tmp152, _14
// problem85.c:21:     bi[index] = '\0';
	strb	wzr, [x0]	//, *_15
// problem85.c:23:     for (int i = 0; i < index / 2; i++) {
	str	wzr, [sp, 52]	//, i
// problem85.c:23:     for (int i = 0; i < index / 2; i++) {
	b	.L8		//
.L9:
// problem85.c:24:         char temp = bi[i];
	ldrsw	x0, [sp, 52]	// _16, i
	ldr	x1, [sp, 56]	// tmp153, bi
	add	x0, x1, x0	// _17, tmp153, _16
// problem85.c:24:         char temp = bi[i];
	ldrb	w0, [x0]	// tmp154, *_17
	strb	w0, [sp, 39]	// tmp154, temp
// problem85.c:25:         bi[i] = bi[index - i - 1];
	ldr	w1, [sp, 48]	// tmp155, index
	ldr	w0, [sp, 52]	// tmp156, i
	sub	w0, w1, w0	// _18, tmp155, tmp156
	sxtw	x0, w0	// _19, _18
// problem85.c:25:         bi[i] = bi[index - i - 1];
	sub	x0, x0, #1	// _20, _19,
	ldr	x1, [sp, 56]	// tmp157, bi
	add	x1, x1, x0	// _21, tmp157, _20
// problem85.c:25:         bi[i] = bi[index - i - 1];
	ldrsw	x0, [sp, 52]	// _22, i
	ldr	x2, [sp, 56]	// tmp158, bi
	add	x0, x2, x0	// _23, tmp158, _22
// problem85.c:25:         bi[i] = bi[index - i - 1];
	ldrb	w1, [x1]	// _24, *_21
// problem85.c:25:         bi[i] = bi[index - i - 1];
	strb	w1, [x0]	// tmp159, *_23
// problem85.c:26:         bi[index - i - 1] = temp;
	ldr	w1, [sp, 48]	// tmp160, index
	ldr	w0, [sp, 52]	// tmp161, i
	sub	w0, w1, w0	// _25, tmp160, tmp161
	sxtw	x0, w0	// _26, _25
// problem85.c:26:         bi[index - i - 1] = temp;
	sub	x0, x0, #1	// _27, _26,
	ldr	x1, [sp, 56]	// tmp162, bi
	add	x0, x1, x0	// _28, tmp162, _27
// problem85.c:26:         bi[index - i - 1] = temp;
	ldrb	w1, [sp, 39]	// tmp163, temp
	strb	w1, [x0]	// tmp163, *_28
// problem85.c:23:     for (int i = 0; i < index / 2; i++) {
	ldr	w0, [sp, 52]	// tmp165, i
	add	w0, w0, 1	// tmp164, tmp165,
	str	w0, [sp, 52]	// tmp164, i
.L8:
// problem85.c:23:     for (int i = 0; i < index / 2; i++) {
	ldr	w0, [sp, 48]	// tmp166, index
	lsr	w1, w0, 31	// tmp167, tmp166,
	add	w0, w1, w0	// tmp168, tmp167, tmp166
	asr	w0, w0, 1	// tmp169, tmp168,
	mov	w1, w0	// _29, tmp169
// problem85.c:23:     for (int i = 0; i < index / 2; i++) {
	ldr	w0, [sp, 52]	// tmp170, i
	cmp	w0, w1	// tmp170, _29
	blt	.L9		//,
// problem85.c:29:     return bi;
	ldr	x0, [sp, 56]	// _54, bi
	mov	x1, x0	// <retval>, _54
// problem85.c:30: }
	adrp	x0, :got:__stack_chk_guard	// tmp173,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp172, tmp173,
	ldr	x3, [sp, 72]	// tmp175, D.5013
	ldr	x2, [x0]	// tmp176,
	subs	x3, x3, x2	// tmp175, tmp176
	mov	x2, 0	// tmp176
	beq	.L11		//,
	bl	__stack_chk_fail		//
.L11:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp], 80	//,,,
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
	.string	"1"
	.align	3
.LC2:
	.string	"problem85.c"
	.align	3
.LC3:
	.string	"strcmp(result, \"1\") == 0"
	.align	3
.LC4:
	.string	"110"
	.align	3
.LC5:
	.string	"strcmp(result, \"110\") == 0"
	.align	3
.LC6:
	.string	"1100"
	.align	3
.LC7:
	.string	"strcmp(result, \"1100\") == 0"
	.align	3
.LC8:
	.string	"1001"
	.align	3
.LC9:
	.string	"strcmp(result, \"1001\") == 0"
	.align	3
.LC10:
	.string	"10010"
	.align	3
.LC11:
	.string	"strcmp(result, \"10010\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
// problem85.c:41:     result = func0(1000);
	mov	w0, 1000	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem85.c:42:     assert(strcmp(result, "1") == 0);
	adrp	x0, .LC1	// tmp99,
	add	x1, x0, :lo12:.LC1	//, tmp99,
	ldr	x0, [sp, 24]	//, result
	bl	strcmp		//
	cmp	w0, 0	// _1,
	beq	.L13		//,
// problem85.c:42:     assert(strcmp(result, "1") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp100,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp100,
	mov	w2, 42	//,
	adrp	x0, .LC2	// tmp101,
	add	x1, x0, :lo12:.LC2	//, tmp101,
	adrp	x0, .LC3	// tmp102,
	add	x0, x0, :lo12:.LC3	//, tmp102,
	bl	__assert_fail		//
.L13:
// problem85.c:43:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem85.c:45:     result = func0(150);
	mov	w0, 150	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem85.c:46:     assert(strcmp(result, "110") == 0);
	adrp	x0, .LC4	// tmp103,
	add	x1, x0, :lo12:.LC4	//, tmp103,
	ldr	x0, [sp, 24]	//, result
	bl	strcmp		//
	cmp	w0, 0	// _2,
	beq	.L14		//,
// problem85.c:46:     assert(strcmp(result, "110") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp104,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp104,
	mov	w2, 46	//,
	adrp	x0, .LC2	// tmp105,
	add	x1, x0, :lo12:.LC2	//, tmp105,
	adrp	x0, .LC5	// tmp106,
	add	x0, x0, :lo12:.LC5	//, tmp106,
	bl	__assert_fail		//
.L14:
// problem85.c:47:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem85.c:49:     result = func0(147);
	mov	w0, 147	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem85.c:50:     assert(strcmp(result, "1100") == 0);
	adrp	x0, .LC6	// tmp107,
	add	x1, x0, :lo12:.LC6	//, tmp107,
	ldr	x0, [sp, 24]	//, result
	bl	strcmp		//
	cmp	w0, 0	// _3,
	beq	.L15		//,
// problem85.c:50:     assert(strcmp(result, "1100") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp108,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp108,
	mov	w2, 50	//,
	adrp	x0, .LC2	// tmp109,
	add	x1, x0, :lo12:.LC2	//, tmp109,
	adrp	x0, .LC7	// tmp110,
	add	x0, x0, :lo12:.LC7	//, tmp110,
	bl	__assert_fail		//
.L15:
// problem85.c:51:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem85.c:53:     result = func0(333);
	mov	w0, 333	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem85.c:54:     assert(strcmp(result, "1001") == 0);
	adrp	x0, .LC8	// tmp111,
	add	x1, x0, :lo12:.LC8	//, tmp111,
	ldr	x0, [sp, 24]	//, result
	bl	strcmp		//
	cmp	w0, 0	// _4,
	beq	.L16		//,
// problem85.c:54:     assert(strcmp(result, "1001") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp112,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp112,
	mov	w2, 54	//,
	adrp	x0, .LC2	// tmp113,
	add	x1, x0, :lo12:.LC2	//, tmp113,
	adrp	x0, .LC9	// tmp114,
	add	x0, x0, :lo12:.LC9	//, tmp114,
	bl	__assert_fail		//
.L16:
// problem85.c:55:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem85.c:57:     result = func0(963);
	mov	w0, 963	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem85.c:58:     assert(strcmp(result, "10010") == 0);
	adrp	x0, .LC10	// tmp115,
	add	x1, x0, :lo12:.LC10	//, tmp115,
	ldr	x0, [sp, 24]	//, result
	bl	strcmp		//
	cmp	w0, 0	// _5,
	beq	.L17		//,
// problem85.c:58:     assert(strcmp(result, "10010") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 58	//,
	adrp	x0, .LC2	// tmp117,
	add	x1, x0, :lo12:.LC2	//, tmp117,
	adrp	x0, .LC11	// tmp118,
	add	x0, x0, :lo12:.LC11	//, tmp118,
	bl	__assert_fail		//
.L17:
// problem85.c:59:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem85.c:61:     return 0;
	mov	w0, 0	// _27,
// problem85.c:62: }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
