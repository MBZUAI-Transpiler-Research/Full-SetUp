	.arch armv8-a
	.file	"problem156.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
// problem156.c:31: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp103,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp102, tmp103,
	ldr	x1, [x0]	// tmp168,
	str	x1, [sp, 40]	// tmp168, D.5036
	mov	x1, 0	// tmp168
// problem156.c:34:     func0(7, result);
	add	x0, sp, 24	// tmp104,,
	mov	x1, x0	//, tmp104
	mov	w0, 7	//,
	bl	func0		//
// problem156.c:35:     assert(issame(result, (int[]){0, 1}, 2));
	str	wzr, [sp, 32]	//, MEM[(int[2] *)_69][0]
	mov	w0, 1	// tmp105,
	str	w0, [sp, 36]	// tmp105, MEM[(int[2] *)_69][1]
	add	x1, sp, 32	// tmp106,,
	add	x0, sp, 24	// tmp107,,
	mov	w2, 2	//,
	bl	issame		//
	cmp	w0, 0	// _1,
	bne	.L8		//,
// problem156.c:35:     assert(issame(result, (int[]){0, 1}, 2));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp108,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp108,
	mov	w2, 35	//,
	adrp	x0, .LC0	// tmp109,
	add	x1, x0, :lo12:.LC0	//, tmp109,
	adrp	x0, .LC1	// tmp110,
	add	x0, x0, :lo12:.LC1	//, tmp110,
	bl	__assert_fail		//
.L8:
// problem156.c:37:     func0(-78, result);
	add	x0, sp, 24	// tmp111,,
	mov	x1, x0	//, tmp111
	mov	w0, -78	//,
	bl	func0		//
// problem156.c:38:     assert(issame(result, (int[]){1, 1}, 2));
	mov	w0, 1	// tmp112,
	str	w0, [sp, 32]	// tmp112, MEM[(int[2] *)_69][0]
	mov	w0, 1	// tmp113,
	str	w0, [sp, 36]	// tmp113, MEM[(int[2] *)_69][1]
	add	x1, sp, 32	// tmp114,,
	add	x0, sp, 24	// tmp115,,
	mov	w2, 2	//,
	bl	issame		//
	cmp	w0, 0	// _2,
	bne	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 38	//,
	adrp	x0, .LC0	// tmp117,
	add	x1, x0, :lo12:.LC0	//, tmp117,
	adrp	x0, .LC2	// tmp118,
	add	x0, x0, :lo12:.LC2	//, tmp118,
	bl	__assert_fail		//
.L9:
// problem156.c:40:     func0(3452, result);
	add	x0, sp, 24	// tmp119,,
	mov	x1, x0	//, tmp119
	mov	w0, 3452	//,
	bl	func0		//
// problem156.c:41:     assert(issame(result, (int[]){2, 2}, 2));
	mov	w0, 2	// tmp120,
	str	w0, [sp, 32]	// tmp120, MEM[(int[2] *)_69][0]
	mov	w0, 2	// tmp121,
	str	w0, [sp, 36]	// tmp121, MEM[(int[2] *)_69][1]
	add	x1, sp, 32	// tmp122,,
	add	x0, sp, 24	// tmp123,,
	mov	w2, 2	//,
	bl	issame		//
	cmp	w0, 0	// _3,
	bne	.L10		//,
// problem156.c:41:     assert(issame(result, (int[]){2, 2}, 2));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp124,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp124,
	mov	w2, 41	//,
	adrp	x0, .LC0	// tmp125,
	add	x1, x0, :lo12:.LC0	//, tmp125,
	adrp	x0, .LC3	// tmp126,
	add	x0, x0, :lo12:.LC3	//, tmp126,
	bl	__assert_fail		//
.L10:
// problem156.c:43:     func0(346211, result);
	add	x0, sp, 24	// tmp127,,
	mov	x1, x0	//, tmp127
	mov	w0, 18531	//,
	movk	w0, 0x5, lsl 16	//,,
	bl	func0		//
// problem156.c:44:     assert(issame(result, (int[]){3, 3}, 2));
	mov	w0, 3	// tmp128,
	str	w0, [sp, 32]	// tmp128, MEM[(int[2] *)_69][0]
	mov	w0, 3	// tmp129,
	str	w0, [sp, 36]	// tmp129, MEM[(int[2] *)_69][1]
	add	x1, sp, 32	// tmp130,,
	add	x0, sp, 24	// tmp131,,
	mov	w2, 2	//,
	bl	issame		//
	cmp	w0, 0	// _4,
	bne	.L11		//,
// problem156.c:44:     assert(issame(result, (int[]){3, 3}, 2));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp132,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp132,
	mov	w2, 44	//,
	adrp	x0, .LC0	// tmp133,
	add	x1, x0, :lo12:.LC0	//, tmp133,
	adrp	x0, .LC4	// tmp134,
	add	x0, x0, :lo12:.LC4	//, tmp134,
	bl	__assert_fail		//
.L11:
// problem156.c:46:     func0(-345821, result);
	add	x0, sp, 24	// tmp135,,
	mov	x1, x0	//, tmp135
	mov	w0, 47395	//,
	movk	w0, 0xfffa, lsl 16	//,,
	bl	func0		//
// problem156.c:47:     assert(issame(result, (int[]){3, 3}, 2));
	mov	w0, 3	// tmp136,
	str	w0, [sp, 32]	// tmp136, MEM[(int[2] *)_69][0]
	mov	w0, 3	// tmp137,
	str	w0, [sp, 36]	// tmp137, MEM[(int[2] *)_69][1]
	add	x1, sp, 32	// tmp138,,
	add	x0, sp, 24	// tmp139,,
	mov	w2, 2	//,
	bl	issame		//
	cmp	w0, 0	// _5,
	bne	.L12		//,
// problem156.c:47:     assert(issame(result, (int[]){3, 3}, 2));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp140,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp140,
	mov	w2, 47	//,
	adrp	x0, .LC0	// tmp141,
	add	x1, x0, :lo12:.LC0	//, tmp141,
	adrp	x0, .LC4	// tmp142,
	add	x0, x0, :lo12:.LC4	//, tmp142,
	bl	__assert_fail		//
.L12:
// problem156.c:49:     func0(-2, result);
	add	x0, sp, 24	// tmp143,,
	mov	x1, x0	//, tmp143
	mov	w0, -2	//,
	bl	func0		//
// problem156.c:50:     assert(issame(result, (int[]){1, 0}, 2));
	mov	w0, 1	// tmp144,
	str	w0, [sp, 32]	// tmp144, MEM[(int[2] *)_69][0]
	str	wzr, [sp, 36]	//, MEM[(int[2] *)_69][1]
	add	x1, sp, 32	// tmp145,,
	add	x0, sp, 24	// tmp146,,
	mov	w2, 2	//,
	bl	issame		//
	cmp	w0, 0	// _6,
	bne	.L13		//,
// problem156.c:50:     assert(issame(result, (int[]){1, 0}, 2));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp147,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp147,
	mov	w2, 50	//,
	adrp	x0, .LC0	// tmp148,
	add	x1, x0, :lo12:.LC0	//, tmp148,
	adrp	x0, .LC5	// tmp149,
	add	x0, x0, :lo12:.LC5	//, tmp149,
	bl	__assert_fail		//
.L13:
// problem156.c:52:     func0(-45347, result);
	add	x0, sp, 24	// tmp150,,
	mov	x1, x0	//, tmp150
	mov	w0, -45347	//,
	bl	func0		//
// problem156.c:53:     assert(issame(result, (int[]){2, 3}, 2));
	mov	w0, 2	// tmp151,
	str	w0, [sp, 32]	// tmp151, MEM[(int[2] *)_69][0]
	mov	w0, 3	// tmp152,
	str	w0, [sp, 36]	// tmp152, MEM[(int[2] *)_69][1]
	add	x1, sp, 32	// tmp153,,
	add	x0, sp, 24	// tmp154,,
	mov	w2, 2	//,
	bl	issame		//
	cmp	w0, 0	// _7,
	bne	.L14		//,
// problem156.c:53:     assert(issame(result, (int[]){2, 3}, 2));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp155,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp155,
	mov	w2, 53	//,
	adrp	x0, .LC0	// tmp156,
	add	x1, x0, :lo12:.LC0	//, tmp156,
	adrp	x0, .LC6	// tmp157,
	add	x0, x0, :lo12:.LC6	//, tmp157,
	bl	__assert_fail		//
.L14:
// problem156.c:55:     func0(0, result);
	add	x0, sp, 24	// tmp158,,
	mov	x1, x0	//, tmp158
	mov	w0, 0	//,
	bl	func0		//
// problem156.c:56:     assert(issame(result, (int[]){1, 0}, 2));
	mov	w0, 1	// tmp159,
	str	w0, [sp, 32]	// tmp159, MEM[(int[2] *)_69][0]
	str	wzr, [sp, 36]	//, MEM[(int[2] *)_69][1]
	add	x1, sp, 32	// tmp160,,
	add	x0, sp, 24	// tmp161,,
	mov	w2, 2	//,
	bl	issame		//
	cmp	w0, 0	// _8,
	bne	.L15		//,
// problem156.c:56:     assert(issame(result, (int[]){1, 0}, 2));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp162,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp162,
	mov	w2, 56	//,
	adrp	x0, .LC0	// tmp163,
	add	x1, x0, :lo12:.LC0	//, tmp163,
	adrp	x0, .LC5	// tmp164,
	add	x0, x0, :lo12:.LC5	//, tmp164,
	bl	__assert_fail		//
.L15:
// problem156.c:58:     return 0;
	mov	w0, 0	// _58,
// problem156.c:59: }
	mov	w1, w0	// <retval>, _58
	adrp	x0, :got:__stack_chk_guard	// tmp167,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp166, tmp167,
	ldr	x3, [sp, 40]	// tmp169, D.5036
	ldr	x2, [x0]	// tmp170,
	subs	x3, x3, x2	// tmp169, tmp170
	mov	x2, 0	// tmp170
	beq	.L17		//,
// problem156.c:59: }
	bl	__stack_chk_fail		//
.L17:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
