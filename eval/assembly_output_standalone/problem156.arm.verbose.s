	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]	// num, num
	str	x1, [sp]	// result, result
// eval/problem156//code.c:5:     int even_count = 0, odd_count = 0;
	str	wzr, [sp, 20]	//, even_count
// eval/problem156//code.c:5:     int even_count = 0, odd_count = 0;
	str	wzr, [sp, 24]	//, odd_count
// eval/problem156//code.c:6:     num = abs(num);
	ldr	w0, [sp, 12]	// tmp96, num
	cmp	w0, 0	// tmp96,
	csneg	w0, w0, w0, ge	// tmp95, tmp96, tmp96,
	str	w0, [sp, 12]	// tmp95, num
.L4:
// eval/problem156//code.c:9:         int digit = num % 10;
	ldr	w1, [sp, 12]	// tmp98, num
	mov	w0, 26215	// tmp100,
	movk	w0, 0x6666, lsl 16	// tmp100,,
	smull	x0, w1, w0	// tmp99, tmp98, tmp100
	lsr	x0, x0, 32	// tmp101, tmp99,
	asr	w2, w0, 2	// tmp102, tmp101,
	asr	w0, w1, 31	// tmp103, tmp98,
	sub	w2, w2, w0	// tmp97, tmp102, tmp103
	mov	w0, w2	// tmp104, tmp97
	lsl	w0, w0, 2	// tmp105, tmp104,
	add	w0, w0, w2	// tmp104, tmp104, tmp97
	lsl	w0, w0, 1	// tmp106, tmp104,
	sub	w0, w1, w0	// tmp107, tmp98, tmp104
	str	w0, [sp, 28]	// tmp107, digit
// eval/problem156//code.c:10:         if (digit % 2 == 0) {
	ldr	w0, [sp, 28]	// digit.0_1, digit
	and	w0, w0, 1	// _2, digit.0_1,
// eval/problem156//code.c:10:         if (digit % 2 == 0) {
	cmp	w0, 0	// _2,
	bne	.L2		//,
// eval/problem156//code.c:11:             even_count++;
	ldr	w0, [sp, 20]	// tmp109, even_count
	add	w0, w0, 1	// tmp108, tmp109,
	str	w0, [sp, 20]	// tmp108, even_count
	b	.L3		//
.L2:
// eval/problem156//code.c:13:             odd_count++;
	ldr	w0, [sp, 24]	// tmp111, odd_count
	add	w0, w0, 1	// tmp110, tmp111,
	str	w0, [sp, 24]	// tmp110, odd_count
.L3:
// eval/problem156//code.c:15:         num /= 10;
	ldr	w0, [sp, 12]	// tmp113, num
	mov	w1, 26215	// tmp115,
	movk	w1, 0x6666, lsl 16	// tmp115,,
	smull	x1, w0, w1	// tmp114, tmp113, tmp115
	lsr	x1, x1, 32	// tmp116, tmp114,
	asr	w1, w1, 2	// tmp117, tmp116,
	asr	w0, w0, 31	// tmp118, tmp113,
	sub	w0, w1, w0	// tmp112, tmp117, tmp118
	str	w0, [sp, 12]	// tmp112, num
// eval/problem156//code.c:16:     } while (num > 0);
	ldr	w0, [sp, 12]	// tmp119, num
	cmp	w0, 0	// tmp119,
	bgt	.L4		//,
// eval/problem156//code.c:18:     result[0] = even_count;
	ldr	x0, [sp]	// tmp120, result
	ldr	w1, [sp, 20]	// tmp121, even_count
	str	w1, [x0]	// tmp121, *result_18(D)
// eval/problem156//code.c:19:     result[1] = odd_count;
	ldr	x0, [sp]	// tmp122, result
	add	x0, x0, 4	// _3, tmp122,
// eval/problem156//code.c:19:     result[1] = odd_count;
	ldr	w1, [sp, 24]	// tmp123, odd_count
	str	w1, [x0]	// tmp123, *_3
// eval/problem156//code.c:20: }
	nop	
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
