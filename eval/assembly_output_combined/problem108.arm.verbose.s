	.arch armv8-a
	.file	"problem108.c"
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
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	w0, [sp, 28]	// n, n
// problem108.c:5:     int* counts = (int*)malloc(2 * sizeof(int));
	mov	x0, 8	//,
	bl	malloc		//
	str	x0, [sp, 56]	// tmp104, counts
// problem108.c:6:     counts[0] = 0;
	ldr	x0, [sp, 56]	// tmp105, counts
	str	wzr, [x0]	//, *counts_18
// problem108.c:7:     counts[1] = 0;
	ldr	x0, [sp, 56]	// tmp106, counts
	add	x0, x0, 4	// _1, tmp106,
// problem108.c:7:     counts[1] = 0;
	str	wzr, [x0]	//, *_1
// problem108.c:9:     for (int i = 1; i <= n; i++) {
	mov	w0, 1	// tmp107,
	str	w0, [sp, 40]	// tmp107, i
// problem108.c:9:     for (int i = 1; i <= n; i++) {
	b	.L2		//
.L7:
// problem108.c:10:         int reversed = 0, original = i;
	str	wzr, [sp, 44]	//, reversed
// problem108.c:10:         int reversed = 0, original = i;
	ldr	w0, [sp, 40]	// tmp108, i
	str	w0, [sp, 52]	// tmp108, original
// problem108.c:12:         int number = i;
	ldr	w0, [sp, 40]	// tmp109, i
	str	w0, [sp, 48]	// tmp109, number
// problem108.c:13:         while (number != 0) {
	b	.L3		//
.L4:
// problem108.c:14:             reversed = reversed * 10 + number % 10;
	ldr	w1, [sp, 44]	// tmp110, reversed
	mov	w0, w1	// tmp111, tmp110
	lsl	w0, w0, 2	// tmp112, tmp111,
	add	w0, w0, w1	// tmp111, tmp111, tmp110
	lsl	w0, w0, 1	// tmp113, tmp111,
	mov	w3, w0	// _2, tmp111
// problem108.c:14:             reversed = reversed * 10 + number % 10;
	ldr	w2, [sp, 48]	// tmp114, number
	mov	w0, 26215	// tmp116,
	movk	w0, 0x6666, lsl 16	// tmp116,,
	smull	x0, w2, w0	// tmp115, tmp114, tmp116
	lsr	x0, x0, 32	// tmp117, tmp115,
	asr	w1, w0, 2	// tmp118, tmp117,
	asr	w0, w2, 31	// tmp119, tmp114,
	sub	w1, w1, w0	// _3, tmp118, tmp119
	mov	w0, w1	// tmp120, _3
	lsl	w0, w0, 2	// tmp121, tmp120,
	add	w0, w0, w1	// tmp120, tmp120, _3
	lsl	w0, w0, 1	// tmp122, tmp120,
	sub	w1, w2, w0	// _3, tmp114, tmp120
// problem108.c:14:             reversed = reversed * 10 + number % 10;
	add	w0, w3, w1	// tmp123, _2, _3
	str	w0, [sp, 44]	// tmp123, reversed
// problem108.c:15:             number /= 10;
	ldr	w0, [sp, 48]	// tmp125, number
	mov	w1, 26215	// tmp127,
	movk	w1, 0x6666, lsl 16	// tmp127,,
	smull	x1, w0, w1	// tmp126, tmp125, tmp127
	lsr	x1, x1, 32	// tmp128, tmp126,
	asr	w1, w1, 2	// tmp129, tmp128,
	asr	w0, w0, 31	// tmp130, tmp125,
	sub	w0, w1, w0	// tmp124, tmp129, tmp130
	str	w0, [sp, 48]	// tmp124, number
.L3:
// problem108.c:13:         while (number != 0) {
	ldr	w0, [sp, 48]	// tmp131, number
	cmp	w0, 0	// tmp131,
	bne	.L4		//,
// problem108.c:18:         if (original == reversed) {
	ldr	w1, [sp, 52]	// tmp132, original
	ldr	w0, [sp, 44]	// tmp133, reversed
	cmp	w1, w0	// tmp132, tmp133
	bne	.L5		//,
// problem108.c:19:             if (original % 2 == 0) counts[0]++;
	ldr	w0, [sp, 52]	// original.0_4, original
	and	w0, w0, 1	// _5, original.0_4,
// problem108.c:19:             if (original % 2 == 0) counts[0]++;
	cmp	w0, 0	// _5,
	bne	.L6		//,
// problem108.c:19:             if (original % 2 == 0) counts[0]++;
	ldr	x0, [sp, 56]	// tmp134, counts
	ldr	w0, [x0]	// _6, *counts_18
// problem108.c:19:             if (original % 2 == 0) counts[0]++;
	add	w1, w0, 1	// _7, _6,
	ldr	x0, [sp, 56]	// tmp135, counts
	str	w1, [x0]	// _7, *counts_18
	b	.L5		//
.L6:
// problem108.c:20:             else counts[1]++;
	ldr	x0, [sp, 56]	// tmp136, counts
	add	x0, x0, 4	// _8, tmp136,
	ldr	w1, [x0]	// _9, *_8
// problem108.c:20:             else counts[1]++;
	add	w1, w1, 1	// _10, _9,
	str	w1, [x0]	// _10, *_8
.L5:
// problem108.c:9:     for (int i = 1; i <= n; i++) {
	ldr	w0, [sp, 40]	// tmp138, i
	add	w0, w0, 1	// tmp137, tmp138,
	str	w0, [sp, 40]	// tmp137, i
.L2:
// problem108.c:9:     for (int i = 1; i <= n; i++) {
	ldr	w1, [sp, 40]	// tmp139, i
	ldr	w0, [sp, 28]	// tmp140, n
	cmp	w1, w0	// tmp139, tmp140
	ble	.L7		//,
// problem108.c:24:     return counts;
	ldr	x0, [sp, 56]	// _23, counts
// problem108.c:25: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
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
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// a, a
	str	x1, [sp, 16]	// b, b
	str	w2, [sp, 12]	// size, size
// problem108.c:34:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 44]	//, i
// problem108.c:34:     for (int i = 0; i < size; i++) {
	b	.L10		//
.L13:
// problem108.c:35:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp102, a
	add	x0, x1, x0	// _3, tmp102, _2
	ldr	w1, [x0]	// _4, *_3
// problem108.c:35:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 16]	// tmp103, b
	add	x0, x2, x0	// _7, tmp103, _6
	ldr	w0, [x0]	// _8, *_7
// problem108.c:35:         if (a[i] != b[i]) return 0;
	cmp	w1, w0	// _4, _8
	beq	.L11		//,
// problem108.c:35:         if (a[i] != b[i]) return 0;
	mov	w0, 0	// _10,
// problem108.c:35:         if (a[i] != b[i]) return 0;
	b	.L12		//
.L11:
// problem108.c:34:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 44]	// tmp105, i
	add	w0, w0, 1	// tmp104, tmp105,
	str	w0, [sp, 44]	// tmp104, i
.L10:
// problem108.c:34:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 44]	// tmp106, i
	ldr	w0, [sp, 12]	// tmp107, size
	cmp	w1, w0	// tmp106, tmp107
	blt	.L13		//,
// problem108.c:37:     return 1;
	mov	w0, 1	// _10,
.L12:
// problem108.c:38: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC0:
	.string	"problem108.c"
	.align	3
.LC1:
	.string	"issame(result, expected1, 2)"
	.align	3
.LC2:
	.string	"issame(result, expected2, 2)"
	.align	3
.LC3:
	.string	"issame(result, expected3, 2)"
	.align	3
.LC4:
	.string	"issame(result, expected4, 2)"
	.align	3
.LC5:
	.string	"issame(result, expected5, 2)"
	.align	3
.LC6:
	.string	"issame(result, expected6, 2)"
	.align	3
.LC7:
	.string	"issame(result, expected7, 2)"
	.align	3
.LC8:
	.string	"issame(result, expected8, 2)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #96	//,,
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80	//,,
// problem108.c:40: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp102,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp102,
	ldr	x1, [x0]	// tmp152,
	str	x1, [sp, 72]	// tmp152, D.5446
	mov	x1, 0	// tmp152
// problem108.c:43:     result = func0(123);
	mov	w0, 123	//,
	bl	func0		//
	str	x0, [sp]	//, result
// problem108.c:44:     int expected1[] = {8, 13};
	mov	w0, 8	// tmp103,
	str	w0, [sp, 8]	// tmp103, expected1[0]
	mov	w0, 13	// tmp104,
	str	w0, [sp, 12]	// tmp104, expected1[1]
// problem108.c:45:     assert(issame(result, expected1, 2));
	add	x0, sp, 8	// tmp105,,
	mov	w2, 2	//,
	mov	x1, x0	//, tmp105
	ldr	x0, [sp]	//, result
	bl	issame		//
// problem108.c:45:     assert(issame(result, expected1, 2));
	cmp	w0, 0	// _1,
	bne	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp106,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp106,
	mov	w2, 45	//,
	adrp	x0, .LC0	// tmp107,
	add	x1, x0, :lo12:.LC0	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	__assert_fail		//
.L15:
// problem108.c:46:     free(result);
	ldr	x0, [sp]	//, result
	bl	free		//
// problem108.c:48:     result = func0(12);
	mov	w0, 12	//,
	bl	func0		//
	str	x0, [sp]	//, result
// problem108.c:49:     int expected2[] = {4, 6};
	mov	w0, 4	// tmp109,
	str	w0, [sp, 16]	// tmp109, expected2[0]
	mov	w0, 6	// tmp110,
	str	w0, [sp, 20]	// tmp110, expected2[1]
// problem108.c:50:     assert(issame(result, expected2, 2));
	add	x0, sp, 16	// tmp111,,
	mov	w2, 2	//,
	mov	x1, x0	//, tmp111
	ldr	x0, [sp]	//, result
	bl	issame		//
// problem108.c:50:     assert(issame(result, expected2, 2));
	cmp	w0, 0	// _2,
	bne	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp112,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp112,
	mov	w2, 50	//,
	adrp	x0, .LC0	// tmp113,
	add	x1, x0, :lo12:.LC0	//, tmp113,
	adrp	x0, .LC2	// tmp114,
	add	x0, x0, :lo12:.LC2	//, tmp114,
	bl	__assert_fail		//
.L16:
// problem108.c:51:     free(result);
	ldr	x0, [sp]	//, result
	bl	free		//
// problem108.c:53:     result = func0(3);
	mov	w0, 3	//,
	bl	func0		//
	str	x0, [sp]	//, result
// problem108.c:54:     int expected3[] = {1, 2};
	mov	w0, 1	// tmp115,
	str	w0, [sp, 24]	// tmp115, expected3[0]
	mov	w0, 2	// tmp116,
	str	w0, [sp, 28]	// tmp116, expected3[1]
// problem108.c:55:     assert(issame(result, expected3, 2));
	add	x0, sp, 24	// tmp117,,
	mov	w2, 2	//,
	mov	x1, x0	//, tmp117
	ldr	x0, [sp]	//, result
	bl	issame		//
// problem108.c:55:     assert(issame(result, expected3, 2));
	cmp	w0, 0	// _3,
	bne	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp118,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp118,
	mov	w2, 55	//,
	adrp	x0, .LC0	// tmp119,
	add	x1, x0, :lo12:.LC0	//, tmp119,
	adrp	x0, .LC3	// tmp120,
	add	x0, x0, :lo12:.LC3	//, tmp120,
	bl	__assert_fail		//
.L17:
// problem108.c:56:     free(result);
	ldr	x0, [sp]	//, result
	bl	free		//
// problem108.c:58:     result = func0(63);
	mov	w0, 63	//,
	bl	func0		//
	str	x0, [sp]	//, result
// problem108.c:59:     int expected4[] = {6, 8};
	mov	w0, 6	// tmp121,
	str	w0, [sp, 32]	// tmp121, expected4[0]
	mov	w0, 8	// tmp122,
	str	w0, [sp, 36]	// tmp122, expected4[1]
// problem108.c:60:     assert(issame(result, expected4, 2));
	add	x0, sp, 32	// tmp123,,
	mov	w2, 2	//,
	mov	x1, x0	//, tmp123
	ldr	x0, [sp]	//, result
	bl	issame		//
// problem108.c:60:     assert(issame(result, expected4, 2));
	cmp	w0, 0	// _4,
	bne	.L18		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp124,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp124,
	mov	w2, 60	//,
	adrp	x0, .LC0	// tmp125,
	add	x1, x0, :lo12:.LC0	//, tmp125,
	adrp	x0, .LC4	// tmp126,
	add	x0, x0, :lo12:.LC4	//, tmp126,
	bl	__assert_fail		//
.L18:
// problem108.c:61:     free(result);
	ldr	x0, [sp]	//, result
	bl	free		//
// problem108.c:63:     result = func0(25);
	mov	w0, 25	//,
	bl	func0		//
	str	x0, [sp]	//, result
// problem108.c:64:     int expected5[] = {5, 6};
	mov	w0, 5	// tmp127,
	str	w0, [sp, 40]	// tmp127, expected5[0]
	mov	w0, 6	// tmp128,
	str	w0, [sp, 44]	// tmp128, expected5[1]
// problem108.c:65:     assert(issame(result, expected5, 2));
	add	x0, sp, 40	// tmp129,,
	mov	w2, 2	//,
	mov	x1, x0	//, tmp129
	ldr	x0, [sp]	//, result
	bl	issame		//
// problem108.c:65:     assert(issame(result, expected5, 2));
	cmp	w0, 0	// _5,
	bne	.L19		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp130,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp130,
	mov	w2, 65	//,
	adrp	x0, .LC0	// tmp131,
	add	x1, x0, :lo12:.LC0	//, tmp131,
	adrp	x0, .LC5	// tmp132,
	add	x0, x0, :lo12:.LC5	//, tmp132,
	bl	__assert_fail		//
.L19:
// problem108.c:66:     free(result);
	ldr	x0, [sp]	//, result
	bl	free		//
// problem108.c:68:     result = func0(19);
	mov	w0, 19	//,
	bl	func0		//
	str	x0, [sp]	//, result
// problem108.c:69:     int expected6[] = {4, 6};
	mov	w0, 4	// tmp133,
	str	w0, [sp, 48]	// tmp133, expected6[0]
	mov	w0, 6	// tmp134,
	str	w0, [sp, 52]	// tmp134, expected6[1]
// problem108.c:70:     assert(issame(result, expected6, 2));
	add	x0, sp, 48	// tmp135,,
	mov	w2, 2	//,
	mov	x1, x0	//, tmp135
	ldr	x0, [sp]	//, result
	bl	issame		//
// problem108.c:70:     assert(issame(result, expected6, 2));
	cmp	w0, 0	// _6,
	bne	.L20		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp136,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp136,
	mov	w2, 70	//,
	adrp	x0, .LC0	// tmp137,
	add	x1, x0, :lo12:.LC0	//, tmp137,
	adrp	x0, .LC6	// tmp138,
	add	x0, x0, :lo12:.LC6	//, tmp138,
	bl	__assert_fail		//
.L20:
// problem108.c:71:     free(result);
	ldr	x0, [sp]	//, result
	bl	free		//
// problem108.c:73:     result = func0(9);
	mov	w0, 9	//,
	bl	func0		//
	str	x0, [sp]	//, result
// problem108.c:74:     int expected7[] = {4, 5};
	mov	w0, 4	// tmp139,
	str	w0, [sp, 56]	// tmp139, expected7[0]
	mov	w0, 5	// tmp140,
	str	w0, [sp, 60]	// tmp140, expected7[1]
// problem108.c:75:     assert(issame(result, expected7, 2));
	add	x0, sp, 56	// tmp141,,
	mov	w2, 2	//,
	mov	x1, x0	//, tmp141
	ldr	x0, [sp]	//, result
	bl	issame		//
// problem108.c:75:     assert(issame(result, expected7, 2));
	cmp	w0, 0	// _7,
	bne	.L21		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp142,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp142,
	mov	w2, 75	//,
	adrp	x0, .LC0	// tmp143,
	add	x1, x0, :lo12:.LC0	//, tmp143,
	adrp	x0, .LC7	// tmp144,
	add	x0, x0, :lo12:.LC7	//, tmp144,
	bl	__assert_fail		//
.L21:
// problem108.c:76:     free(result);
	ldr	x0, [sp]	//, result
	bl	free		//
// problem108.c:78:     result = func0(1);
	mov	w0, 1	//,
	bl	func0		//
	str	x0, [sp]	//, result
// problem108.c:79:     int expected8[] = {0, 1};
	str	wzr, [sp, 64]	//, expected8[0]
	mov	w0, 1	// tmp145,
	str	w0, [sp, 68]	// tmp145, expected8[1]
// problem108.c:80:     assert(issame(result, expected8, 2));
	add	x0, sp, 64	// tmp146,,
	mov	w2, 2	//,
	mov	x1, x0	//, tmp146
	ldr	x0, [sp]	//, result
	bl	issame		//
// problem108.c:80:     assert(issame(result, expected8, 2));
	cmp	w0, 0	// _8,
	bne	.L22		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp147,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp147,
	mov	w2, 80	//,
	adrp	x0, .LC0	// tmp148,
	add	x1, x0, :lo12:.LC0	//, tmp148,
	adrp	x0, .LC8	// tmp149,
	add	x0, x0, :lo12:.LC8	//, tmp149,
	bl	__assert_fail		//
.L22:
// problem108.c:81:     free(result);
	ldr	x0, [sp]	//, result
	bl	free		//
// problem108.c:83:     return 0;
	mov	w0, 0	// _66,
// problem108.c:84: }
	mov	w1, w0	// <retval>, _66
	adrp	x0, :got:__stack_chk_guard	// tmp151,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp151,
	ldr	x3, [sp, 72]	// tmp153, D.5446
	ldr	x2, [x0]	// tmp154,
	subs	x3, x3, x2	// tmp153, tmp154
	mov	x2, 0	// tmp154
	beq	.L24		//,
	bl	__stack_chk_fail		//
.L24:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 80]	//,,
	add	sp, sp, 96	//,,
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
