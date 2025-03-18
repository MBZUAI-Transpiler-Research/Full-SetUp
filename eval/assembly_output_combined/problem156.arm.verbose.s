	.arch armv8-a
	.file	"problem156.c"
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
// problem156.c:5:     int even_count = 0, odd_count = 0;
	str	wzr, [sp, 20]	//, even_count
// problem156.c:5:     int even_count = 0, odd_count = 0;
	str	wzr, [sp, 24]	//, odd_count
// problem156.c:6:     num = abs(num);
	ldr	w0, [sp, 12]	// tmp96, num
	cmp	w0, 0	// tmp96,
	csneg	w0, w0, w0, ge	// tmp95, tmp96, tmp96,
	str	w0, [sp, 12]	// tmp95, num
.L4:
// problem156.c:9:         int digit = num % 10;
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
// problem156.c:10:         if (digit % 2 == 0) {
	ldr	w0, [sp, 28]	// digit.0_1, digit
	and	w0, w0, 1	// _2, digit.0_1,
// problem156.c:10:         if (digit % 2 == 0) {
	cmp	w0, 0	// _2,
	bne	.L2		//,
// problem156.c:11:             even_count++;
	ldr	w0, [sp, 20]	// tmp109, even_count
	add	w0, w0, 1	// tmp108, tmp109,
	str	w0, [sp, 20]	// tmp108, even_count
	b	.L3		//
.L2:
// problem156.c:13:             odd_count++;
	ldr	w0, [sp, 24]	// tmp111, odd_count
	add	w0, w0, 1	// tmp110, tmp111,
	str	w0, [sp, 24]	// tmp110, odd_count
.L3:
// problem156.c:15:         num /= 10;
	ldr	w0, [sp, 12]	// tmp113, num
	mov	w1, 26215	// tmp115,
	movk	w1, 0x6666, lsl 16	// tmp115,,
	smull	x1, w0, w1	// tmp114, tmp113, tmp115
	lsr	x1, x1, 32	// tmp116, tmp114,
	asr	w1, w1, 2	// tmp117, tmp116,
	asr	w0, w0, 31	// tmp118, tmp113,
	sub	w0, w1, w0	// tmp112, tmp117, tmp118
	str	w0, [sp, 12]	// tmp112, num
// problem156.c:16:     } while (num > 0);
	ldr	w0, [sp, 12]	// tmp119, num
	cmp	w0, 0	// tmp119,
	bgt	.L4		//,
// problem156.c:18:     result[0] = even_count;
	ldr	x0, [sp]	// tmp120, result
	ldr	w1, [sp, 20]	// tmp121, even_count
	str	w1, [x0]	// tmp121, *result_18(D)
// problem156.c:19:     result[1] = odd_count;
	ldr	x0, [sp]	// tmp122, result
	add	x0, x0, 4	// _3, tmp122,
// problem156.c:19:     result[1] = odd_count;
	ldr	w1, [sp, 24]	// tmp123, odd_count
	str	w1, [x0]	// tmp123, *_3
// problem156.c:20: }
	nop	
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	2
	.global	issame
	.type	issame, %function
issame:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 40]	// a, a
	str	x1, [sp, 32]	// b, b
	str	w2, [sp, 28]	// size, size
// problem156.c:28:     return memcmp(a, b, size * sizeof(int)) == 0;
	ldrsw	x0, [sp, 28]	// _1, size
	lsl	x0, x0, 2	// _2, _1,
	mov	x2, x0	//, _2
	ldr	x1, [sp, 32]	//, b
	ldr	x0, [sp, 40]	//, a
	bl	memcmp		//
// problem156.c:28:     return memcmp(a, b, size * sizeof(int)) == 0;
	cmp	w0, 0	// _3,
	cset	w0, eq	// tmp99,
	and	w0, w0, 255	// _4, tmp98
// problem156.c:29: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC0:
	.string	"problem156.c"
	.align	3
.LC1:
	.string	"issame(result, (int[]){0, 1}, 2)"
	.align	3
.LC2:
	.string	"issame(result, (int[]){1, 1}, 2)"
	.align	3
.LC3:
	.string	"issame(result, (int[]){2, 2}, 2)"
	.align	3
.LC4:
	.string	"issame(result, (int[]){3, 3}, 2)"
	.align	3
.LC5:
	.string	"issame(result, (int[]){1, 0}, 2)"
	.align	3
.LC6:
	.string	"issame(result, (int[]){2, 3}, 2)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, 32]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 32	//,,
// problem156.c:31: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp102,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp102,
	ldr	x1, [x0]	// tmp166,
	str	x1, [sp, 24]	// tmp166, D.5652
	mov	x1, 0	// tmp166
// problem156.c:34:     func0(7, result);
	add	x0, sp, 8	// tmp103,,
	mov	x1, x0	//, tmp103
	mov	w0, 7	//,
	bl	func0		//
// problem156.c:35:     assert(issame(result, (int[]){0, 1}, 2));
	str	wzr, [sp, 16]	//, MEM[(int[2] *)_69][0]
	mov	w0, 1	// tmp104,
	str	w0, [sp, 20]	// tmp104, MEM[(int[2] *)_69][1]
	add	x1, sp, 16	// tmp105,,
	add	x0, sp, 8	// tmp106,,
	mov	w2, 2	//,
	bl	issame		//
// problem156.c:35:     assert(issame(result, (int[]){0, 1}, 2));
	cmp	w0, 0	// _1,
	bne	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp107,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp107,
	mov	w2, 35	//,
	adrp	x0, .LC0	// tmp108,
	add	x1, x0, :lo12:.LC0	//, tmp108,
	adrp	x0, .LC1	// tmp109,
	add	x0, x0, :lo12:.LC1	//, tmp109,
	bl	__assert_fail		//
.L8:
// problem156.c:37:     func0(-78, result);
	add	x0, sp, 8	// tmp110,,
	mov	x1, x0	//, tmp110
	mov	w0, -78	//,
	bl	func0		//
// problem156.c:38:     assert(issame(result, (int[]){1, 1}, 2));
	mov	w0, 1	// tmp111,
	str	w0, [sp, 16]	// tmp111, MEM[(int[2] *)_69][0]
	mov	w0, 1	// tmp112,
	str	w0, [sp, 20]	// tmp112, MEM[(int[2] *)_69][1]
	add	x1, sp, 16	// tmp113,,
	add	x0, sp, 8	// tmp114,,
	mov	w2, 2	//,
	bl	issame		//
// problem156.c:38:     assert(issame(result, (int[]){1, 1}, 2));
	cmp	w0, 0	// _2,
	bne	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp115,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp115,
	mov	w2, 38	//,
	adrp	x0, .LC0	// tmp116,
	add	x1, x0, :lo12:.LC0	//, tmp116,
	adrp	x0, .LC2	// tmp117,
	add	x0, x0, :lo12:.LC2	//, tmp117,
	bl	__assert_fail		//
.L9:
// problem156.c:40:     func0(3452, result);
	add	x0, sp, 8	// tmp118,,
	mov	x1, x0	//, tmp118
	mov	w0, 3452	//,
	bl	func0		//
// problem156.c:41:     assert(issame(result, (int[]){2, 2}, 2));
	mov	w0, 2	// tmp119,
	str	w0, [sp, 16]	// tmp119, MEM[(int[2] *)_69][0]
	mov	w0, 2	// tmp120,
	str	w0, [sp, 20]	// tmp120, MEM[(int[2] *)_69][1]
	add	x1, sp, 16	// tmp121,,
	add	x0, sp, 8	// tmp122,,
	mov	w2, 2	//,
	bl	issame		//
// problem156.c:41:     assert(issame(result, (int[]){2, 2}, 2));
	cmp	w0, 0	// _3,
	bne	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp123,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp123,
	mov	w2, 41	//,
	adrp	x0, .LC0	// tmp124,
	add	x1, x0, :lo12:.LC0	//, tmp124,
	adrp	x0, .LC3	// tmp125,
	add	x0, x0, :lo12:.LC3	//, tmp125,
	bl	__assert_fail		//
.L10:
// problem156.c:43:     func0(346211, result);
	add	x0, sp, 8	// tmp126,,
	mov	x1, x0	//, tmp126
	mov	w0, 18531	//,
	movk	w0, 0x5, lsl 16	//,,
	bl	func0		//
// problem156.c:44:     assert(issame(result, (int[]){3, 3}, 2));
	mov	w0, 3	// tmp127,
	str	w0, [sp, 16]	// tmp127, MEM[(int[2] *)_69][0]
	mov	w0, 3	// tmp128,
	str	w0, [sp, 20]	// tmp128, MEM[(int[2] *)_69][1]
	add	x1, sp, 16	// tmp129,,
	add	x0, sp, 8	// tmp130,,
	mov	w2, 2	//,
	bl	issame		//
// problem156.c:44:     assert(issame(result, (int[]){3, 3}, 2));
	cmp	w0, 0	// _4,
	bne	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp131,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp131,
	mov	w2, 44	//,
	adrp	x0, .LC0	// tmp132,
	add	x1, x0, :lo12:.LC0	//, tmp132,
	adrp	x0, .LC4	// tmp133,
	add	x0, x0, :lo12:.LC4	//, tmp133,
	bl	__assert_fail		//
.L11:
// problem156.c:46:     func0(-345821, result);
	add	x0, sp, 8	// tmp134,,
	mov	x1, x0	//, tmp134
	mov	w0, 47395	//,
	movk	w0, 0xfffa, lsl 16	//,,
	bl	func0		//
// problem156.c:47:     assert(issame(result, (int[]){3, 3}, 2));
	mov	w0, 3	// tmp135,
	str	w0, [sp, 16]	// tmp135, MEM[(int[2] *)_69][0]
	mov	w0, 3	// tmp136,
	str	w0, [sp, 20]	// tmp136, MEM[(int[2] *)_69][1]
	add	x1, sp, 16	// tmp137,,
	add	x0, sp, 8	// tmp138,,
	mov	w2, 2	//,
	bl	issame		//
// problem156.c:47:     assert(issame(result, (int[]){3, 3}, 2));
	cmp	w0, 0	// _5,
	bne	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp139,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp139,
	mov	w2, 47	//,
	adrp	x0, .LC0	// tmp140,
	add	x1, x0, :lo12:.LC0	//, tmp140,
	adrp	x0, .LC4	// tmp141,
	add	x0, x0, :lo12:.LC4	//, tmp141,
	bl	__assert_fail		//
.L12:
// problem156.c:49:     func0(-2, result);
	add	x0, sp, 8	// tmp142,,
	mov	x1, x0	//, tmp142
	mov	w0, -2	//,
	bl	func0		//
// problem156.c:50:     assert(issame(result, (int[]){1, 0}, 2));
	mov	w0, 1	// tmp143,
	str	w0, [sp, 16]	// tmp143, MEM[(int[2] *)_69][0]
	str	wzr, [sp, 20]	//, MEM[(int[2] *)_69][1]
	add	x1, sp, 16	// tmp144,,
	add	x0, sp, 8	// tmp145,,
	mov	w2, 2	//,
	bl	issame		//
// problem156.c:50:     assert(issame(result, (int[]){1, 0}, 2));
	cmp	w0, 0	// _6,
	bne	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp146,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp146,
	mov	w2, 50	//,
	adrp	x0, .LC0	// tmp147,
	add	x1, x0, :lo12:.LC0	//, tmp147,
	adrp	x0, .LC5	// tmp148,
	add	x0, x0, :lo12:.LC5	//, tmp148,
	bl	__assert_fail		//
.L13:
// problem156.c:52:     func0(-45347, result);
	add	x0, sp, 8	// tmp149,,
	mov	x1, x0	//, tmp149
	mov	w0, -45347	//,
	bl	func0		//
// problem156.c:53:     assert(issame(result, (int[]){2, 3}, 2));
	mov	w0, 2	// tmp150,
	str	w0, [sp, 16]	// tmp150, MEM[(int[2] *)_69][0]
	mov	w0, 3	// tmp151,
	str	w0, [sp, 20]	// tmp151, MEM[(int[2] *)_69][1]
	add	x1, sp, 16	// tmp152,,
	add	x0, sp, 8	// tmp153,,
	mov	w2, 2	//,
	bl	issame		//
// problem156.c:53:     assert(issame(result, (int[]){2, 3}, 2));
	cmp	w0, 0	// _7,
	bne	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp154,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp154,
	mov	w2, 53	//,
	adrp	x0, .LC0	// tmp155,
	add	x1, x0, :lo12:.LC0	//, tmp155,
	adrp	x0, .LC6	// tmp156,
	add	x0, x0, :lo12:.LC6	//, tmp156,
	bl	__assert_fail		//
.L14:
// problem156.c:55:     func0(0, result);
	add	x0, sp, 8	// tmp157,,
	mov	x1, x0	//, tmp157
	mov	w0, 0	//,
	bl	func0		//
// problem156.c:56:     assert(issame(result, (int[]){1, 0}, 2));
	mov	w0, 1	// tmp158,
	str	w0, [sp, 16]	// tmp158, MEM[(int[2] *)_69][0]
	str	wzr, [sp, 20]	//, MEM[(int[2] *)_69][1]
	add	x1, sp, 16	// tmp159,,
	add	x0, sp, 8	// tmp160,,
	mov	w2, 2	//,
	bl	issame		//
// problem156.c:56:     assert(issame(result, (int[]){1, 0}, 2));
	cmp	w0, 0	// _8,
	bne	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp161,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp161,
	mov	w2, 56	//,
	adrp	x0, .LC0	// tmp162,
	add	x1, x0, :lo12:.LC0	//, tmp162,
	adrp	x0, .LC5	// tmp163,
	add	x0, x0, :lo12:.LC5	//, tmp163,
	bl	__assert_fail		//
.L15:
// problem156.c:58:     return 0;
	mov	w0, 0	// _58,
// problem156.c:59: }
	mov	w1, w0	// <retval>, _58
	adrp	x0, :got:__stack_chk_guard	// tmp165,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp165,
	ldr	x3, [sp, 24]	// tmp167, D.5652
	ldr	x2, [x0]	// tmp168,
	subs	x3, x3, x2	// tmp167, tmp168
	mov	x2, 0	// tmp168
	beq	.L17		//,
	bl	__stack_chk_fail		//
.L17:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 32]	//,,
	add	sp, sp, 48	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
