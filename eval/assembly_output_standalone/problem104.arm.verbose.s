	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
// eval/problem104//code.c:5:     if (n > m) return "-1";
	ldr	w1, [sp, 28]	// tmp106, n
	ldr	w0, [sp, 24]	// tmp107, m
	cmp	w1, w0	// tmp106, tmp107
	ble	.L2		//,
// eval/problem104//code.c:5:     if (n > m) return "-1";
	adrp	x0, .LC0	// tmp108,
	add	x0, x0, :lo12:.LC0	// _15, tmp108,
// eval/problem104//code.c:5:     if (n > m) return "-1";
	b	.L3		//
.L2:
// eval/problem104//code.c:6:     int num = (m + n) / 2;
	ldr	w1, [sp, 24]	// tmp109, m
	ldr	w0, [sp, 28]	// tmp110, n
	add	w0, w1, w0	// _1, tmp109, tmp110
// eval/problem104//code.c:6:     int num = (m + n) / 2;
	lsr	w1, w0, 31	// tmp111, _1,
	add	w0, w1, w0	// tmp112, tmp111, _1
	asr	w0, w0, 1	// tmp113, tmp112,
	str	w0, [sp, 32]	// tmp113, num
// eval/problem104//code.c:7:     char* out = (char*)malloc(33);
	mov	x0, 33	//,
	bl	malloc		//
	str	x0, [sp, 40]	// tmp114, out
// eval/problem104//code.c:8:     out[0] = '\0';
	ldr	x0, [sp, 40]	// tmp115, out
	strb	wzr, [x0]	//, *out_23
// eval/problem104//code.c:10:     int index = 32;
	mov	w0, 32	// tmp116,
	str	w0, [sp, 36]	// tmp116, index
// eval/problem104//code.c:11:     out[index--] = '\0';
	ldr	w0, [sp, 36]	// index.0_2, index
	sub	w1, w0, #1	// tmp117, index.0_2,
	str	w1, [sp, 36]	// tmp117, index
	sxtw	x0, w0	// _3, index.0_2
// eval/problem104//code.c:11:     out[index--] = '\0';
	ldr	x1, [sp, 40]	// tmp118, out
	add	x0, x1, x0	// _4, tmp118, _3
// eval/problem104//code.c:11:     out[index--] = '\0';
	strb	wzr, [x0]	//, *_4
.L4:
// eval/problem104//code.c:14:         out[index--] = '0' + num % 2;
	ldr	w0, [sp, 32]	// tmp119, num
	cmp	w0, 0	// tmp119,
	and	w0, w0, 1	// tmp120, tmp119,
	csneg	w0, w0, w0, ge	// _5, tmp120, tmp120,
// eval/problem104//code.c:14:         out[index--] = '0' + num % 2;
	and	w1, w0, 255	// _6, _5
// eval/problem104//code.c:14:         out[index--] = '0' + num % 2;
	ldr	w0, [sp, 36]	// index.1_7, index
	sub	w2, w0, #1	// tmp121, index.1_7,
	str	w2, [sp, 36]	// tmp121, index
	sxtw	x0, w0	// _8, index.1_7
// eval/problem104//code.c:14:         out[index--] = '0' + num % 2;
	ldr	x2, [sp, 40]	// tmp122, out
	add	x0, x2, x0	// _9, tmp122, _8
// eval/problem104//code.c:14:         out[index--] = '0' + num % 2;
	add	w1, w1, 48	// tmp123, _6,
	and	w1, w1, 255	// _10, tmp123
// eval/problem104//code.c:14:         out[index--] = '0' + num % 2;
	strb	w1, [x0]	// tmp124, *_9
// eval/problem104//code.c:15:         num /= 2;
	ldr	w0, [sp, 32]	// tmp126, num
	lsr	w1, w0, 31	// tmp127, tmp126,
	add	w0, w1, w0	// tmp128, tmp127, tmp126
	asr	w0, w0, 1	// tmp129, tmp128,
	str	w0, [sp, 32]	// tmp129, num
// eval/problem104//code.c:16:     } while (num > 0);
	ldr	w0, [sp, 32]	// tmp130, num
	cmp	w0, 0	// tmp130,
	bgt	.L4		//,
// eval/problem104//code.c:18:     return &out[index + 1]; 
	ldrsw	x0, [sp, 36]	// _11, index
	add	x0, x0, 1	// _12, _11,
// eval/problem104//code.c:18:     return &out[index + 1]; 
	ldr	x1, [sp, 40]	// tmp131, out
	add	x0, x1, x0	// _15, tmp131, _12
.L3:
// eval/problem104//code.c:19: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
