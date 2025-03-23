	.arch armv8-a
	.file	"code.c"
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
	str	x0, [sp, 24]	// txt, txt
// eval/problem135//code.c:6:     int len = strlen(txt);
	ldr	x0, [sp, 24]	//, txt
	bl	strlen		//
// eval/problem135//code.c:6:     int len = strlen(txt);
	str	w0, [sp, 44]	// tmp117, len
// eval/problem135//code.c:7:     if (len == 0) return 0;
	ldr	w0, [sp, 44]	// tmp118, len
	cmp	w0, 0	// tmp118,
	bne	.L2		//,
// eval/problem135//code.c:7:     if (len == 0) return 0;
	mov	w0, 0	// _24,
	b	.L3		//
.L2:
// eval/problem135//code.c:8:     char last_char = txt[len - 1];
	ldrsw	x0, [sp, 44]	// _2, len
	sub	x0, x0, #1	// _3, _2,
	ldr	x1, [sp, 24]	// tmp119, txt
	add	x0, x1, x0	// _4, tmp119, _3
// eval/problem135//code.c:8:     char last_char = txt[len - 1];
	ldrb	w0, [x0]	// tmp120, *_4
	strb	w0, [sp, 42]	// tmp120, last_char
// eval/problem135//code.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	bl	__ctype_b_loc		//
	ldr	x1, [x0]	// _6, *_5
	ldrb	w0, [sp, 42]	// _7, last_char
	lsl	x0, x0, 1	// _8, _7,
	add	x0, x1, x0	// _9, _6, _8
	ldrh	w0, [x0]	// _10, *_9
	and	w0, w0, 1024	// _12, _11,
// eval/problem135//code.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	cmp	w0, 0	// _12,
	bne	.L4		//,
// eval/problem135//code.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	mov	w0, 0	// _24,
	b	.L3		//
.L4:
// eval/problem135//code.c:10:     if (len == 1) return 1;
	ldr	w0, [sp, 44]	// tmp121, len
	cmp	w0, 1	// tmp121,
	bne	.L5		//,
// eval/problem135//code.c:10:     if (len == 1) return 1;
	mov	w0, 1	// _24,
	b	.L3		//
.L5:
// eval/problem135//code.c:11:     char second_last_char = txt[len - 2];
	ldrsw	x0, [sp, 44]	// _13, len
	sub	x0, x0, #2	// _14, _13,
	ldr	x1, [sp, 24]	// tmp122, txt
	add	x0, x1, x0	// _15, tmp122, _14
// eval/problem135//code.c:11:     char second_last_char = txt[len - 2];
	ldrb	w0, [x0]	// tmp123, *_15
	strb	w0, [sp, 43]	// tmp123, second_last_char
// eval/problem135//code.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	bl	__ctype_b_loc		//
	ldr	x1, [x0]	// _17, *_16
	ldrb	w0, [sp, 43]	// _18, second_last_char
	lsl	x0, x0, 1	// _19, _18,
	add	x0, x1, x0	// _20, _17, _19
	ldrh	w0, [x0]	// _21, *_20
	and	w0, w0, 1024	// _23, _22,
// eval/problem135//code.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	cmp	w0, 0	// _23,
	beq	.L6		//,
// eval/problem135//code.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	mov	w0, 0	// _24,
	b	.L3		//
.L6:
// eval/problem135//code.c:13:     return 1;
	mov	w0, 1	// _24,
.L3:
// eval/problem135//code.c:14: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
