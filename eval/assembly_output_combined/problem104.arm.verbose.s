	.arch armv8-a
	.file	"problem104.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"-1"
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
	str	w0, [sp, 28]	// n, n
	str	w1, [sp, 24]	// m, m
// problem104.c:5:     if (n > m) return "-1";
	ldr	w1, [sp, 28]	// tmp106, n
	ldr	w0, [sp, 24]	// tmp107, m
	cmp	w1, w0	// tmp106, tmp107
	ble	.L2		//,
// problem104.c:5:     if (n > m) return "-1";
	adrp	x0, .LC0	// tmp108,
	add	x0, x0, :lo12:.LC0	// _15, tmp108,
	b	.L3		//
.L2:
// problem104.c:6:     int num = (m + n) / 2;
	ldr	w1, [sp, 24]	// tmp109, m
	ldr	w0, [sp, 28]	// tmp110, n
	add	w0, w1, w0	// _1, tmp109, tmp110
// problem104.c:6:     int num = (m + n) / 2;
	lsr	w1, w0, 31	// tmp111, _1,
	add	w0, w1, w0	// tmp112, tmp111, _1
	asr	w0, w0, 1	// tmp113, tmp112,
	str	w0, [sp, 32]	// tmp113, num
// problem104.c:7:     char* out = (char*)malloc(33);
	mov	x0, 33	//,
	bl	malloc		//
	str	x0, [sp, 40]	// tmp114, out
// problem104.c:8:     out[0] = '\0';
	ldr	x0, [sp, 40]	// tmp115, out
	strb	wzr, [x0]	//, *out_23
// problem104.c:10:     int index = 32;
	mov	w0, 32	// tmp116,
	str	w0, [sp, 36]	// tmp116, index
// problem104.c:11:     out[index--] = '\0';
	ldr	w0, [sp, 36]	// index.0_2, index
	sub	w1, w0, #1	// tmp117, index.0_2,
	str	w1, [sp, 36]	// tmp117, index
	sxtw	x0, w0	// _3, index.0_2
// problem104.c:11:     out[index--] = '\0';
	ldr	x1, [sp, 40]	// tmp118, out
	add	x0, x1, x0	// _4, tmp118, _3
// problem104.c:11:     out[index--] = '\0';
	strb	wzr, [x0]	//, *_4
.L4:
// problem104.c:14:         out[index--] = '0' + num % 2;
	ldr	w0, [sp, 32]	// tmp119, num
	cmp	w0, 0	// tmp119,
	and	w0, w0, 1	// tmp120, tmp119,
	csneg	w0, w0, w0, ge	// _5, tmp120, tmp120,
// problem104.c:14:         out[index--] = '0' + num % 2;
	and	w1, w0, 255	// _6, _5
// problem104.c:14:         out[index--] = '0' + num % 2;
	ldr	w0, [sp, 36]	// index.1_7, index
	sub	w2, w0, #1	// tmp121, index.1_7,
	str	w2, [sp, 36]	// tmp121, index
	sxtw	x0, w0	// _8, index.1_7
// problem104.c:14:         out[index--] = '0' + num % 2;
	ldr	x2, [sp, 40]	// tmp122, out
	add	x0, x2, x0	// _9, tmp122, _8
// problem104.c:14:         out[index--] = '0' + num % 2;
	add	w1, w1, 48	// tmp123, _6,
	and	w1, w1, 255	// _10, tmp123
// problem104.c:14:         out[index--] = '0' + num % 2;
	strb	w1, [x0]	// tmp124, *_9
// problem104.c:15:         num /= 2;
	ldr	w0, [sp, 32]	// tmp126, num
	lsr	w1, w0, 31	// tmp127, tmp126,
	add	w0, w1, w0	// tmp128, tmp127, tmp126
	asr	w0, w0, 1	// tmp129, tmp128,
	str	w0, [sp, 32]	// tmp129, num
// problem104.c:16:     } while (num > 0);
	ldr	w0, [sp, 32]	// tmp130, num
	cmp	w0, 0	// tmp130,
	bgt	.L4		//,
// problem104.c:18:     return &out[index + 1]; 
	ldrsw	x0, [sp, 36]	// _11, index
	add	x0, x0, 1	// _12, _11,
// problem104.c:18:     return &out[index + 1]; 
	ldr	x1, [sp, 40]	// tmp131, out
	add	x0, x1, x0	// _15, tmp131, _12
.L3:
// problem104.c:19: }
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
	.string	"11"
	.align	3
.LC2:
	.string	"problem104.c"
	.align	3
.LC3:
	.string	"strcmp(func0(1, 5), \"11\") == 0"
	.align	3
.LC4:
	.string	"1010"
	.align	3
.LC5:
	.string	"strcmp(func0(7, 13), \"1010\") == 0"
	.align	3
.LC6:
	.string	"1111001010"
	.align	3
.LC7:
	.string	"strcmp(func0(964, 977), \"1111001010\") == 0"
	.align	3
.LC8:
	.string	"1111100100"
	.align	3
.LC9:
	.string	"strcmp(func0(996, 997), \"1111100100\") == 0"
	.align	3
.LC10:
	.string	"1011000001"
	.align	3
.LC11:
	.string	"strcmp(func0(560, 851), \"1011000001\") == 0"
	.align	3
.LC12:
	.string	"101101101"
	.align	3
.LC13:
	.string	"strcmp(func0(185, 546), \"101101101\") == 0"
	.align	3
.LC14:
	.string	"110101101"
	.align	3
.LC15:
	.string	"strcmp(func0(362, 496), \"110101101\") == 0"
	.align	3
.LC16:
	.string	"1001110010"
	.align	3
.LC17:
	.string	"strcmp(func0(350, 902), \"1001110010\") == 0"
	.align	3
.LC18:
	.string	"11010111"
	.align	3
.LC19:
	.string	"strcmp(func0(197, 233), \"11010111\") == 0"
	.align	3
.LC20:
	.string	"strcmp(func0(7, 5), \"-1\") == 0"
	.align	3
.LC21:
	.string	"strcmp(func0(5, 1), \"-1\") == 0"
	.align	3
.LC22:
	.string	"101"
	.align	3
.LC23:
	.string	"strcmp(func0(5, 5), \"101\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp	//,
// problem104.c:27:     assert(strcmp(func0(1, 5), "11") == 0);
	mov	w1, 5	//,
	mov	w0, 1	//,
	bl	func0		//
	mov	x2, x0	// _1,
	adrp	x0, .LC1	// tmp118,
	add	x1, x0, :lo12:.LC1	//, tmp118,
	mov	x0, x2	//, _1
	bl	strcmp		//
	cmp	w0, 0	// _2,
	beq	.L6		//,
// problem104.c:27:     assert(strcmp(func0(1, 5), "11") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 27	//,
	adrp	x0, .LC2	// tmp120,
	add	x1, x0, :lo12:.LC2	//, tmp120,
	adrp	x0, .LC3	// tmp121,
	add	x0, x0, :lo12:.LC3	//, tmp121,
	bl	__assert_fail		//
.L6:
// problem104.c:28:     assert(strcmp(func0(7, 13), "1010") == 0);
	mov	w1, 13	//,
	mov	w0, 7	//,
	bl	func0		//
	mov	x2, x0	// _3,
	adrp	x0, .LC4	// tmp122,
	add	x1, x0, :lo12:.LC4	//, tmp122,
	mov	x0, x2	//, _3
	bl	strcmp		//
	cmp	w0, 0	// _4,
	beq	.L7		//,
// problem104.c:28:     assert(strcmp(func0(7, 13), "1010") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp123,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp123,
	mov	w2, 28	//,
	adrp	x0, .LC2	// tmp124,
	add	x1, x0, :lo12:.LC2	//, tmp124,
	adrp	x0, .LC5	// tmp125,
	add	x0, x0, :lo12:.LC5	//, tmp125,
	bl	__assert_fail		//
.L7:
// problem104.c:29:     assert(strcmp(func0(964, 977), "1111001010") == 0);
	mov	w1, 977	//,
	mov	w0, 964	//,
	bl	func0		//
	mov	x2, x0	// _5,
	adrp	x0, .LC6	// tmp126,
	add	x1, x0, :lo12:.LC6	//, tmp126,
	mov	x0, x2	//, _5
	bl	strcmp		//
	cmp	w0, 0	// _6,
	beq	.L8		//,
// problem104.c:29:     assert(strcmp(func0(964, 977), "1111001010") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp127,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp127,
	mov	w2, 29	//,
	adrp	x0, .LC2	// tmp128,
	add	x1, x0, :lo12:.LC2	//, tmp128,
	adrp	x0, .LC7	// tmp129,
	add	x0, x0, :lo12:.LC7	//, tmp129,
	bl	__assert_fail		//
.L8:
// problem104.c:30:     assert(strcmp(func0(996, 997), "1111100100") == 0);
	mov	w1, 997	//,
	mov	w0, 996	//,
	bl	func0		//
	mov	x2, x0	// _7,
	adrp	x0, .LC8	// tmp130,
	add	x1, x0, :lo12:.LC8	//, tmp130,
	mov	x0, x2	//, _7
	bl	strcmp		//
	cmp	w0, 0	// _8,
	beq	.L9		//,
// problem104.c:30:     assert(strcmp(func0(996, 997), "1111100100") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp131,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp131,
	mov	w2, 30	//,
	adrp	x0, .LC2	// tmp132,
	add	x1, x0, :lo12:.LC2	//, tmp132,
	adrp	x0, .LC9	// tmp133,
	add	x0, x0, :lo12:.LC9	//, tmp133,
	bl	__assert_fail		//
.L9:
// problem104.c:31:     assert(strcmp(func0(560, 851), "1011000001") == 0);
	mov	w1, 851	//,
	mov	w0, 560	//,
	bl	func0		//
	mov	x2, x0	// _9,
	adrp	x0, .LC10	// tmp134,
	add	x1, x0, :lo12:.LC10	//, tmp134,
	mov	x0, x2	//, _9
	bl	strcmp		//
	cmp	w0, 0	// _10,
	beq	.L10		//,
// problem104.c:31:     assert(strcmp(func0(560, 851), "1011000001") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp135,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp135,
	mov	w2, 31	//,
	adrp	x0, .LC2	// tmp136,
	add	x1, x0, :lo12:.LC2	//, tmp136,
	adrp	x0, .LC11	// tmp137,
	add	x0, x0, :lo12:.LC11	//, tmp137,
	bl	__assert_fail		//
.L10:
// problem104.c:32:     assert(strcmp(func0(185, 546), "101101101") == 0);
	mov	w1, 546	//,
	mov	w0, 185	//,
	bl	func0		//
	mov	x2, x0	// _11,
	adrp	x0, .LC12	// tmp138,
	add	x1, x0, :lo12:.LC12	//, tmp138,
	mov	x0, x2	//, _11
	bl	strcmp		//
	cmp	w0, 0	// _12,
	beq	.L11		//,
// problem104.c:32:     assert(strcmp(func0(185, 546), "101101101") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp139,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp139,
	mov	w2, 32	//,
	adrp	x0, .LC2	// tmp140,
	add	x1, x0, :lo12:.LC2	//, tmp140,
	adrp	x0, .LC13	// tmp141,
	add	x0, x0, :lo12:.LC13	//, tmp141,
	bl	__assert_fail		//
.L11:
// problem104.c:33:     assert(strcmp(func0(362, 496), "110101101") == 0);
	mov	w1, 496	//,
	mov	w0, 362	//,
	bl	func0		//
	mov	x2, x0	// _13,
	adrp	x0, .LC14	// tmp142,
	add	x1, x0, :lo12:.LC14	//, tmp142,
	mov	x0, x2	//, _13
	bl	strcmp		//
	cmp	w0, 0	// _14,
	beq	.L12		//,
// problem104.c:33:     assert(strcmp(func0(362, 496), "110101101") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp143,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp143,
	mov	w2, 33	//,
	adrp	x0, .LC2	// tmp144,
	add	x1, x0, :lo12:.LC2	//, tmp144,
	adrp	x0, .LC15	// tmp145,
	add	x0, x0, :lo12:.LC15	//, tmp145,
	bl	__assert_fail		//
.L12:
// problem104.c:34:     assert(strcmp(func0(350, 902), "1001110010") == 0);
	mov	w1, 902	//,
	mov	w0, 350	//,
	bl	func0		//
	mov	x2, x0	// _15,
	adrp	x0, .LC16	// tmp146,
	add	x1, x0, :lo12:.LC16	//, tmp146,
	mov	x0, x2	//, _15
	bl	strcmp		//
	cmp	w0, 0	// _16,
	beq	.L13		//,
// problem104.c:34:     assert(strcmp(func0(350, 902), "1001110010") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp147,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp147,
	mov	w2, 34	//,
	adrp	x0, .LC2	// tmp148,
	add	x1, x0, :lo12:.LC2	//, tmp148,
	adrp	x0, .LC17	// tmp149,
	add	x0, x0, :lo12:.LC17	//, tmp149,
	bl	__assert_fail		//
.L13:
// problem104.c:35:     assert(strcmp(func0(197, 233), "11010111") == 0);
	mov	w1, 233	//,
	mov	w0, 197	//,
	bl	func0		//
	mov	x2, x0	// _17,
	adrp	x0, .LC18	// tmp150,
	add	x1, x0, :lo12:.LC18	//, tmp150,
	mov	x0, x2	//, _17
	bl	strcmp		//
	cmp	w0, 0	// _18,
	beq	.L14		//,
// problem104.c:35:     assert(strcmp(func0(197, 233), "11010111") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp151,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp151,
	mov	w2, 35	//,
	adrp	x0, .LC2	// tmp152,
	add	x1, x0, :lo12:.LC2	//, tmp152,
	adrp	x0, .LC19	// tmp153,
	add	x0, x0, :lo12:.LC19	//, tmp153,
	bl	__assert_fail		//
.L14:
// problem104.c:36:     assert(strcmp(func0(7, 5), "-1") == 0);
	mov	w1, 5	//,
	mov	w0, 7	//,
	bl	func0		//
	mov	x2, x0	// _19,
	adrp	x0, .LC0	// tmp154,
	add	x1, x0, :lo12:.LC0	//, tmp154,
	mov	x0, x2	//, _19
	bl	strcmp		//
	cmp	w0, 0	// _20,
	beq	.L15		//,
// problem104.c:36:     assert(strcmp(func0(7, 5), "-1") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp155,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp155,
	mov	w2, 36	//,
	adrp	x0, .LC2	// tmp156,
	add	x1, x0, :lo12:.LC2	//, tmp156,
	adrp	x0, .LC20	// tmp157,
	add	x0, x0, :lo12:.LC20	//, tmp157,
	bl	__assert_fail		//
.L15:
// problem104.c:37:     assert(strcmp(func0(5, 1), "-1") == 0);
	mov	w1, 1	//,
	mov	w0, 5	//,
	bl	func0		//
	mov	x2, x0	// _21,
	adrp	x0, .LC0	// tmp158,
	add	x1, x0, :lo12:.LC0	//, tmp158,
	mov	x0, x2	//, _21
	bl	strcmp		//
	cmp	w0, 0	// _22,
	beq	.L16		//,
// problem104.c:37:     assert(strcmp(func0(5, 1), "-1") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp159,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp159,
	mov	w2, 37	//,
	adrp	x0, .LC2	// tmp160,
	add	x1, x0, :lo12:.LC2	//, tmp160,
	adrp	x0, .LC21	// tmp161,
	add	x0, x0, :lo12:.LC21	//, tmp161,
	bl	__assert_fail		//
.L16:
// problem104.c:38:     assert(strcmp(func0(5, 5), "101") == 0);
	mov	w1, 5	//,
	mov	w0, 5	//,
	bl	func0		//
	mov	x2, x0	// _23,
	adrp	x0, .LC22	// tmp162,
	add	x1, x0, :lo12:.LC22	//, tmp162,
	mov	x0, x2	//, _23
	bl	strcmp		//
	cmp	w0, 0	// _24,
	beq	.L17		//,
// problem104.c:38:     assert(strcmp(func0(5, 5), "101") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp163,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp163,
	mov	w2, 38	//,
	adrp	x0, .LC2	// tmp164,
	add	x1, x0, :lo12:.LC2	//, tmp164,
	adrp	x0, .LC23	// tmp165,
	add	x0, x0, :lo12:.LC23	//, tmp165,
	bl	__assert_fail		//
.L17:
// problem104.c:40:     return 0;
	mov	w0, 0	// _50,
// problem104.c:41: }
	ldp	x29, x30, [sp], 16	//,,,
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
