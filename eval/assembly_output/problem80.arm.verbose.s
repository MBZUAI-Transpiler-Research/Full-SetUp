	.arch armv8-a
	.file	"problem80.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"db"
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
	str	w0, [sp, 28]	// decimal, decimal
// problem80.c:6:     char* out = malloc(64);
	mov	x0, 64	//,
	bl	malloc		//
	str	x0, [sp, 48]	// tmp116, out
// problem80.c:7:     if (!out) {
	ldr	x0, [sp, 48]	// tmp117, out
	cmp	x0, 0	// tmp117,
	bne	.L2		//,
// problem80.c:8:         return NULL;
	mov	x0, 0	// _24,
	b	.L3		//
.L2:
// problem80.c:10:     int index = 62;
	mov	w0, 62	// tmp118,
	str	w0, [sp, 36]	// tmp118, index
// problem80.c:11:     out[63] = '\0';
	ldr	x0, [sp, 48]	// tmp119, out
	add	x0, x0, 63	// _1, tmp119,
// problem80.c:11:     out[63] = '\0';
	strb	wzr, [x0]	//, *_1
// problem80.c:13:     if (decimal == 0) {
	ldr	w0, [sp, 28]	// tmp120, decimal
	cmp	w0, 0	// tmp120,
	bne	.L6		//,
// problem80.c:14:         out[index--] = '0';
	ldr	w0, [sp, 36]	// index.0_2, index
	sub	w1, w0, #1	// tmp121, index.0_2,
	str	w1, [sp, 36]	// tmp121, index
	sxtw	x0, w0	// _3, index.0_2
// problem80.c:14:         out[index--] = '0';
	ldr	x1, [sp, 48]	// tmp122, out
	add	x0, x1, x0	// _4, tmp122, _3
// problem80.c:14:         out[index--] = '0';
	mov	w1, 48	// tmp123,
	strb	w1, [x0]	// tmp123, *_4
	b	.L5		//
.L7:
// problem80.c:17:             out[index--] = '0' + (decimal % 2);
	ldr	w0, [sp, 28]	// tmp124, decimal
	cmp	w0, 0	// tmp124,
	and	w0, w0, 1	// tmp125, tmp124,
	csneg	w0, w0, w0, ge	// _5, tmp125, tmp125,
// problem80.c:17:             out[index--] = '0' + (decimal % 2);
	and	w1, w0, 255	// _6, _5
// problem80.c:17:             out[index--] = '0' + (decimal % 2);
	ldr	w0, [sp, 36]	// index.1_7, index
	sub	w2, w0, #1	// tmp126, index.1_7,
	str	w2, [sp, 36]	// tmp126, index
	sxtw	x0, w0	// _8, index.1_7
// problem80.c:17:             out[index--] = '0' + (decimal % 2);
	ldr	x2, [sp, 48]	// tmp127, out
	add	x0, x2, x0	// _9, tmp127, _8
// problem80.c:17:             out[index--] = '0' + (decimal % 2);
	add	w1, w1, 48	// tmp128, _6,
	and	w1, w1, 255	// _10, tmp128
// problem80.c:17:             out[index--] = '0' + (decimal % 2);
	strb	w1, [x0]	// tmp129, *_9
// problem80.c:18:             decimal /= 2;
	ldr	w0, [sp, 28]	// tmp131, decimal
	lsr	w1, w0, 31	// tmp132, tmp131,
	add	w0, w1, w0	// tmp133, tmp132, tmp131
	asr	w0, w0, 1	// tmp134, tmp133,
	str	w0, [sp, 28]	// tmp134, decimal
.L6:
// problem80.c:16:         while (decimal > 0) {
	ldr	w0, [sp, 28]	// tmp135, decimal
	cmp	w0, 0	// tmp135,
	bgt	.L7		//,
.L5:
// problem80.c:22:     out[index--] = 'b';
	ldr	w0, [sp, 36]	// index.2_11, index
	sub	w1, w0, #1	// tmp136, index.2_11,
	str	w1, [sp, 36]	// tmp136, index
	sxtw	x0, w0	// _12, index.2_11
// problem80.c:22:     out[index--] = 'b';
	ldr	x1, [sp, 48]	// tmp137, out
	add	x0, x1, x0	// _13, tmp137, _12
// problem80.c:22:     out[index--] = 'b';
	mov	w1, 98	// tmp138,
	strb	w1, [x0]	// tmp138, *_13
// problem80.c:23:     out[index--] = 'd';
	ldr	w0, [sp, 36]	// index.3_14, index
	sub	w1, w0, #1	// tmp139, index.3_14,
	str	w1, [sp, 36]	// tmp139, index
	sxtw	x0, w0	// _15, index.3_14
// problem80.c:23:     out[index--] = 'd';
	ldr	x1, [sp, 48]	// tmp140, out
	add	x0, x1, x0	// _16, tmp140, _15
// problem80.c:23:     out[index--] = 'd';
	mov	w1, 100	// tmp141,
	strb	w1, [x0]	// tmp141, *_16
// problem80.c:25:     int start = index + 1;
	ldr	w0, [sp, 36]	// tmp143, index
	add	w0, w0, 1	// tmp142, tmp143,
	str	w0, [sp, 40]	// tmp142, start
// problem80.c:26:     int len = 62 - start;
	mov	w1, 62	// tmp145,
	ldr	w0, [sp, 40]	// tmp146, start
	sub	w0, w1, w0	// tmp144, tmp145, tmp146
	str	w0, [sp, 44]	// tmp144, len
// problem80.c:27:     char* formatted_out = malloc(len + 3);
	ldr	w0, [sp, 44]	// tmp147, len
	add	w0, w0, 3	// _17, tmp147,
// problem80.c:27:     char* formatted_out = malloc(len + 3);
	sxtw	x0, w0	// _18, _17
	bl	malloc		//
	str	x0, [sp, 56]	// tmp148, formatted_out
// problem80.c:28:     if (!formatted_out) {
	ldr	x0, [sp, 56]	// tmp149, formatted_out
	cmp	x0, 0	// tmp149,
	bne	.L8		//,
// problem80.c:29:         free(out);
	ldr	x0, [sp, 48]	//, out
	bl	free		//
// problem80.c:30:         return NULL;
	mov	x0, 0	// _24,
	b	.L3		//
.L8:
// problem80.c:33:     strcpy(formatted_out, &out[start]);
	ldrsw	x0, [sp, 40]	// _19, start
// problem80.c:33:     strcpy(formatted_out, &out[start]);
	ldr	x1, [sp, 48]	// tmp150, out
	add	x0, x1, x0	// _20, tmp150, _19
// problem80.c:33:     strcpy(formatted_out, &out[start]);
	mov	x1, x0	//, _20
	ldr	x0, [sp, 56]	//, formatted_out
	bl	strcpy		//
// problem80.c:35:     strcat(formatted_out, "db");
	ldr	x0, [sp, 56]	//, formatted_out
	bl	strlen		//
	mov	x1, x0	// _48, tmp151
// problem80.c:35:     strcat(formatted_out, "db");
	ldr	x0, [sp, 56]	// tmp152, formatted_out
	add	x2, x0, x1	// _49, tmp152, _48
	adrp	x0, .LC0	// tmp154,
	add	x1, x0, :lo12:.LC0	// tmp153, tmp154,
	mov	x0, x2	// tmp155, _49
	ldrh	w2, [x1]	// tmp157, MEM <char[1:3]> [(void *)"db"]
	strh	w2, [x0]	// tmp157, MEM <char[1:3]> [(void *)_49]
	ldrb	w1, [x1, 2]	// tmp158, MEM <char[1:3]> [(void *)"db"]
	strb	w1, [x0, 2]	// tmp158, MEM <char[1:3]> [(void *)_49]
// problem80.c:37:     free(out);
	ldr	x0, [sp, 48]	//, out
	bl	free		//
// problem80.c:39:     return formatted_out;
	ldr	x0, [sp, 56]	// _24, formatted_out
.L3:
// problem80.c:40: }
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
.LC1:
	.string	"db0db"
	.align	3
.LC2:
	.string	"problem80.c"
	.align	3
.LC3:
	.string	"strcmp(binary, \"db0db\") == 0"
	.align	3
.LC4:
	.string	"db100000db"
	.align	3
.LC5:
	.string	"strcmp(binary, \"db100000db\") == 0"
	.align	3
.LC6:
	.string	"db1100111db"
	.align	3
.LC7:
	.string	"strcmp(binary, \"db1100111db\") == 0"
	.align	3
.LC8:
	.string	"db1111db"
	.align	3
.LC9:
	.string	"strcmp(binary, \"db1111db\") == 0"
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
// problem80.c:51:     binary = func0(0);
	mov	w0, 0	//,
	bl	func0		//
	str	x0, [sp, 24]	//, binary
// problem80.c:52:     assert(strcmp(binary, "db0db") == 0);
	adrp	x0, .LC1	// tmp98,
	add	x1, x0, :lo12:.LC1	//, tmp98,
	ldr	x0, [sp, 24]	//, binary
	bl	strcmp		//
// problem80.c:52:     assert(strcmp(binary, "db0db") == 0);
	cmp	w0, 0	// _1,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp99,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp99,
	mov	w2, 52	//,
	adrp	x0, .LC2	// tmp100,
	add	x1, x0, :lo12:.LC2	//, tmp100,
	adrp	x0, .LC3	// tmp101,
	add	x0, x0, :lo12:.LC3	//, tmp101,
	bl	__assert_fail		//
.L10:
// problem80.c:53:     free(binary);
	ldr	x0, [sp, 24]	//, binary
	bl	free		//
// problem80.c:55:     binary = func0(32);
	mov	w0, 32	//,
	bl	func0		//
	str	x0, [sp, 24]	//, binary
// problem80.c:56:     assert(strcmp(binary, "db100000db") == 0);
	adrp	x0, .LC4	// tmp102,
	add	x1, x0, :lo12:.LC4	//, tmp102,
	ldr	x0, [sp, 24]	//, binary
	bl	strcmp		//
// problem80.c:56:     assert(strcmp(binary, "db100000db") == 0);
	cmp	w0, 0	// _2,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp103,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp103,
	mov	w2, 56	//,
	adrp	x0, .LC2	// tmp104,
	add	x1, x0, :lo12:.LC2	//, tmp104,
	adrp	x0, .LC5	// tmp105,
	add	x0, x0, :lo12:.LC5	//, tmp105,
	bl	__assert_fail		//
.L11:
// problem80.c:57:     free(binary);
	ldr	x0, [sp, 24]	//, binary
	bl	free		//
// problem80.c:59:     binary = func0(103);
	mov	w0, 103	//,
	bl	func0		//
	str	x0, [sp, 24]	//, binary
// problem80.c:60:     assert(strcmp(binary, "db1100111db") == 0);
	adrp	x0, .LC6	// tmp106,
	add	x1, x0, :lo12:.LC6	//, tmp106,
	ldr	x0, [sp, 24]	//, binary
	bl	strcmp		//
// problem80.c:60:     assert(strcmp(binary, "db1100111db") == 0);
	cmp	w0, 0	// _3,
	beq	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp107,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp107,
	mov	w2, 60	//,
	adrp	x0, .LC2	// tmp108,
	add	x1, x0, :lo12:.LC2	//, tmp108,
	adrp	x0, .LC7	// tmp109,
	add	x0, x0, :lo12:.LC7	//, tmp109,
	bl	__assert_fail		//
.L12:
// problem80.c:61:     free(binary);
	ldr	x0, [sp, 24]	//, binary
	bl	free		//
// problem80.c:63:     binary = func0(15);
	mov	w0, 15	//,
	bl	func0		//
	str	x0, [sp, 24]	//, binary
// problem80.c:64:     assert(strcmp(binary, "db1111db") == 0);
	adrp	x0, .LC8	// tmp110,
	add	x1, x0, :lo12:.LC8	//, tmp110,
	ldr	x0, [sp, 24]	//, binary
	bl	strcmp		//
// problem80.c:64:     assert(strcmp(binary, "db1111db") == 0);
	cmp	w0, 0	// _4,
	beq	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp111,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp111,
	mov	w2, 64	//,
	adrp	x0, .LC2	// tmp112,
	add	x1, x0, :lo12:.LC2	//, tmp112,
	adrp	x0, .LC9	// tmp113,
	add	x0, x0, :lo12:.LC9	//, tmp113,
	bl	__assert_fail		//
.L13:
// problem80.c:65:     free(binary);
	ldr	x0, [sp, 24]	//, binary
	bl	free		//
// problem80.c:67:     return 0;
	mov	w0, 0	// _22,
// problem80.c:68: }
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
