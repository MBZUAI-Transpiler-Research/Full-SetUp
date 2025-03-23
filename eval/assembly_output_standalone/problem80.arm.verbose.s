	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
// eval/problem80//code.c:6:     char* out = malloc(64);
	mov	x0, 64	//,
	bl	malloc		//
	str	x0, [sp, 48]	// tmp116, out
// eval/problem80//code.c:7:     if (!out) {
	ldr	x0, [sp, 48]	// tmp117, out
	cmp	x0, 0	// tmp117,
	bne	.L2		//,
// eval/problem80//code.c:8:         return NULL;
	mov	x0, 0	// _24,
	b	.L3		//
.L2:
// eval/problem80//code.c:10:     int index = 62;
	mov	w0, 62	// tmp118,
	str	w0, [sp, 36]	// tmp118, index
// eval/problem80//code.c:11:     out[63] = '\0';
	ldr	x0, [sp, 48]	// tmp119, out
	add	x0, x0, 63	// _1, tmp119,
// eval/problem80//code.c:11:     out[63] = '\0';
	strb	wzr, [x0]	//, *_1
// eval/problem80//code.c:13:     if (decimal == 0) {
	ldr	w0, [sp, 28]	// tmp120, decimal
	cmp	w0, 0	// tmp120,
	bne	.L6		//,
// eval/problem80//code.c:14:         out[index--] = '0';
	ldr	w0, [sp, 36]	// index.0_2, index
	sub	w1, w0, #1	// tmp121, index.0_2,
	str	w1, [sp, 36]	// tmp121, index
	sxtw	x0, w0	// _3, index.0_2
// eval/problem80//code.c:14:         out[index--] = '0';
	ldr	x1, [sp, 48]	// tmp122, out
	add	x0, x1, x0	// _4, tmp122, _3
// eval/problem80//code.c:14:         out[index--] = '0';
	mov	w1, 48	// tmp123,
	strb	w1, [x0]	// tmp123, *_4
	b	.L5		//
.L7:
// eval/problem80//code.c:17:             out[index--] = '0' + (decimal % 2);
	ldr	w0, [sp, 28]	// tmp124, decimal
	cmp	w0, 0	// tmp124,
	and	w0, w0, 1	// tmp125, tmp124,
	csneg	w0, w0, w0, ge	// _5, tmp125, tmp125,
// eval/problem80//code.c:17:             out[index--] = '0' + (decimal % 2);
	and	w1, w0, 255	// _6, _5
// eval/problem80//code.c:17:             out[index--] = '0' + (decimal % 2);
	ldr	w0, [sp, 36]	// index.1_7, index
	sub	w2, w0, #1	// tmp126, index.1_7,
	str	w2, [sp, 36]	// tmp126, index
	sxtw	x0, w0	// _8, index.1_7
// eval/problem80//code.c:17:             out[index--] = '0' + (decimal % 2);
	ldr	x2, [sp, 48]	// tmp127, out
	add	x0, x2, x0	// _9, tmp127, _8
// eval/problem80//code.c:17:             out[index--] = '0' + (decimal % 2);
	add	w1, w1, 48	// tmp128, _6,
	and	w1, w1, 255	// _10, tmp128
// eval/problem80//code.c:17:             out[index--] = '0' + (decimal % 2);
	strb	w1, [x0]	// tmp129, *_9
// eval/problem80//code.c:18:             decimal /= 2;
	ldr	w0, [sp, 28]	// tmp131, decimal
	lsr	w1, w0, 31	// tmp132, tmp131,
	add	w0, w1, w0	// tmp133, tmp132, tmp131
	asr	w0, w0, 1	// tmp134, tmp133,
	str	w0, [sp, 28]	// tmp134, decimal
.L6:
// eval/problem80//code.c:16:         while (decimal > 0) {
	ldr	w0, [sp, 28]	// tmp135, decimal
	cmp	w0, 0	// tmp135,
	bgt	.L7		//,
.L5:
// eval/problem80//code.c:22:     out[index--] = 'b';
	ldr	w0, [sp, 36]	// index.2_11, index
	sub	w1, w0, #1	// tmp136, index.2_11,
	str	w1, [sp, 36]	// tmp136, index
	sxtw	x0, w0	// _12, index.2_11
// eval/problem80//code.c:22:     out[index--] = 'b';
	ldr	x1, [sp, 48]	// tmp137, out
	add	x0, x1, x0	// _13, tmp137, _12
// eval/problem80//code.c:22:     out[index--] = 'b';
	mov	w1, 98	// tmp138,
	strb	w1, [x0]	// tmp138, *_13
// eval/problem80//code.c:23:     out[index--] = 'd';
	ldr	w0, [sp, 36]	// index.3_14, index
	sub	w1, w0, #1	// tmp139, index.3_14,
	str	w1, [sp, 36]	// tmp139, index
	sxtw	x0, w0	// _15, index.3_14
// eval/problem80//code.c:23:     out[index--] = 'd';
	ldr	x1, [sp, 48]	// tmp140, out
	add	x0, x1, x0	// _16, tmp140, _15
// eval/problem80//code.c:23:     out[index--] = 'd';
	mov	w1, 100	// tmp141,
	strb	w1, [x0]	// tmp141, *_16
// eval/problem80//code.c:25:     int start = index + 1;
	ldr	w0, [sp, 36]	// tmp143, index
	add	w0, w0, 1	// tmp142, tmp143,
	str	w0, [sp, 40]	// tmp142, start
// eval/problem80//code.c:26:     int len = 62 - start;
	mov	w1, 62	// tmp145,
	ldr	w0, [sp, 40]	// tmp146, start
	sub	w0, w1, w0	// tmp144, tmp145, tmp146
	str	w0, [sp, 44]	// tmp144, len
// eval/problem80//code.c:27:     char* formatted_out = malloc(len + 3);
	ldr	w0, [sp, 44]	// tmp147, len
	add	w0, w0, 3	// _17, tmp147,
// eval/problem80//code.c:27:     char* formatted_out = malloc(len + 3);
	sxtw	x0, w0	// _18, _17
	bl	malloc		//
	str	x0, [sp, 56]	// tmp148, formatted_out
// eval/problem80//code.c:28:     if (!formatted_out) {
	ldr	x0, [sp, 56]	// tmp149, formatted_out
	cmp	x0, 0	// tmp149,
	bne	.L8		//,
// eval/problem80//code.c:29:         free(out);
	ldr	x0, [sp, 48]	//, out
	bl	free		//
// eval/problem80//code.c:30:         return NULL;
	mov	x0, 0	// _24,
	b	.L3		//
.L8:
// eval/problem80//code.c:33:     strcpy(formatted_out, &out[start]);
	ldrsw	x0, [sp, 40]	// _19, start
// eval/problem80//code.c:33:     strcpy(formatted_out, &out[start]);
	ldr	x1, [sp, 48]	// tmp150, out
	add	x0, x1, x0	// _20, tmp150, _19
// eval/problem80//code.c:33:     strcpy(formatted_out, &out[start]);
	mov	x1, x0	//, _20
	ldr	x0, [sp, 56]	//, formatted_out
	bl	strcpy		//
// eval/problem80//code.c:35:     strcat(formatted_out, "db");
	ldr	x0, [sp, 56]	//, formatted_out
	bl	strlen		//
	mov	x1, x0	// _48, tmp151
	ldr	x0, [sp, 56]	// tmp152, formatted_out
	add	x2, x0, x1	// _49, tmp152, _48
	adrp	x0, .LC0	// tmp154,
	add	x1, x0, :lo12:.LC0	// tmp153, tmp154,
	mov	x0, x2	// tmp155, _49
	ldrh	w2, [x1]	// tmp157, MEM <char[1:3]> [(void *)"db"]
	strh	w2, [x0]	// tmp157, MEM <char[1:3]> [(void *)_49]
	ldrb	w1, [x1, 2]	// tmp158, MEM <char[1:3]> [(void *)"db"]
	strb	w1, [x0, 2]	// tmp158, MEM <char[1:3]> [(void *)_49]
// eval/problem80//code.c:37:     free(out);
	ldr	x0, [sp, 48]	//, out
	bl	free		//
// eval/problem80//code.c:39:     return formatted_out;
	ldr	x0, [sp, 56]	// _24, formatted_out
.L3:
// eval/problem80//code.c:40: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
