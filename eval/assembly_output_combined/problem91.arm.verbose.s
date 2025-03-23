	.arch armv8-a
	.file	"problem91.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]	// lst, lst
	str	w1, [sp, 4]	// size, size
// problem91.c:5:     if (size < 2) return -1;
	ldr	w0, [sp, 4]	// tmp112, size
	cmp	w0, 1	// tmp112,
	bgt	.L2		//,
// problem91.c:5:     if (size < 2) return -1;
	mov	w0, -1	// _24,
// problem91.c:5:     if (size < 2) return -1;
	b	.L3		//
.L2:
// problem91.c:7:     int first = INT_MAX, second = INT_MAX;
	mov	w0, 2147483647	// tmp113,
	str	w0, [sp, 20]	// tmp113, first
// problem91.c:7:     int first = INT_MAX, second = INT_MAX;
	mov	w0, 2147483647	// tmp114,
	str	w0, [sp, 24]	// tmp114, second
// problem91.c:8:     for (int i = 0; i < size; ++i) {
	str	wzr, [sp, 28]	//, i
// problem91.c:8:     for (int i = 0; i < size; ++i) {
	b	.L4		//
.L7:
// problem91.c:9:         if (lst[i] < first) {
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp115, lst
	add	x0, x1, x0	// _3, tmp115, _2
	ldr	w0, [x0]	// _4, *_3
// problem91.c:9:         if (lst[i] < first) {
	ldr	w1, [sp, 20]	// tmp116, first
	cmp	w1, w0	// tmp116, _4
	ble	.L5		//,
// problem91.c:10:             second = first;
	ldr	w0, [sp, 20]	// tmp117, first
	str	w0, [sp, 24]	// tmp117, second
// problem91.c:11:             first = lst[i];
	ldrsw	x0, [sp, 28]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 8]	// tmp118, lst
	add	x0, x1, x0	// _7, tmp118, _6
// problem91.c:11:             first = lst[i];
	ldr	w0, [x0]	// tmp119, *_7
	str	w0, [sp, 20]	// tmp119, first
	b	.L6		//
.L5:
// problem91.c:12:         } else if (lst[i] < second && lst[i] != first) {
	ldrsw	x0, [sp, 28]	// _8, i
	lsl	x0, x0, 2	// _9, _8,
	ldr	x1, [sp, 8]	// tmp120, lst
	add	x0, x1, x0	// _10, tmp120, _9
	ldr	w0, [x0]	// _11, *_10
// problem91.c:12:         } else if (lst[i] < second && lst[i] != first) {
	ldr	w1, [sp, 24]	// tmp121, second
	cmp	w1, w0	// tmp121, _11
	ble	.L6		//,
// problem91.c:12:         } else if (lst[i] < second && lst[i] != first) {
	ldrsw	x0, [sp, 28]	// _12, i
	lsl	x0, x0, 2	// _13, _12,
	ldr	x1, [sp, 8]	// tmp122, lst
	add	x0, x1, x0	// _14, tmp122, _13
	ldr	w0, [x0]	// _15, *_14
// problem91.c:12:         } else if (lst[i] < second && lst[i] != first) {
	ldr	w1, [sp, 20]	// tmp123, first
	cmp	w1, w0	// tmp123, _15
	beq	.L6		//,
// problem91.c:13:             second = lst[i];
	ldrsw	x0, [sp, 28]	// _16, i
	lsl	x0, x0, 2	// _17, _16,
	ldr	x1, [sp, 8]	// tmp124, lst
	add	x0, x1, x0	// _18, tmp124, _17
// problem91.c:13:             second = lst[i];
	ldr	w0, [x0]	// tmp125, *_18
	str	w0, [sp, 24]	// tmp125, second
.L6:
// problem91.c:8:     for (int i = 0; i < size; ++i) {
	ldr	w0, [sp, 28]	// tmp127, i
	add	w0, w0, 1	// tmp126, tmp127,
	str	w0, [sp, 28]	// tmp126, i
.L4:
// problem91.c:8:     for (int i = 0; i < size; ++i) {
	ldr	w1, [sp, 28]	// tmp128, i
	ldr	w0, [sp, 4]	// tmp129, size
	cmp	w1, w0	// tmp128, tmp129
	blt	.L7		//,
// problem91.c:17:     if (second == INT_MAX) return -1;
	ldr	w1, [sp, 24]	// tmp130, second
	mov	w0, 2147483647	// tmp131,
	cmp	w1, w0	// tmp130, tmp131
	bne	.L8		//,
// problem91.c:17:     if (second == INT_MAX) return -1;
	mov	w0, -1	// _24,
// problem91.c:17:     if (second == INT_MAX) return -1;
	b	.L3		//
.L8:
// problem91.c:18:     return second;
	ldr	w0, [sp, 24]	// _24, second
.L3:
// problem91.c:19: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC3:
	.string	"problem91.c"
	.align	3
.LC4:
	.string	"func0(test1, 5) == 2"
	.align	3
.LC5:
	.string	"func0(test2, 5) == 2"
	.align	3
.LC6:
	.string	"func0((int[]){}, 0) == -1"
	.align	3
.LC7:
	.string	"func0(test4, 2) == -1"
	.align	3
.LC8:
	.string	"func0(test5, 5) == 1"
	.align	3
.LC9:
	.string	"func0(test6, 4) == -35"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #128	//,,
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, 112]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 112	//,,
// problem91.c:25: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp100,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp100,
	ldr	x1, [x0]	// tmp151,
	str	x1, [sp, 104]	// tmp151, D.4907
	mov	x1, 0	// tmp151
// problem91.c:26:     int test1[] = {1, 2, 3, 4, 5};
	adrp	x0, .LC0	// tmp102,
	add	x0, x0, :lo12:.LC0	// tmp101, tmp102,
	add	x2, sp, 32	// tmp103,,
	mov	x3, x0	// tmp104, tmp101
	ldp	x0, x1, [x3]	// tmp105,
	stp	x0, x1, [x2]	// tmp105, test1
	ldr	w0, [x3, 16]	// tmp106,
	str	w0, [x2, 16]	// tmp106, test1
// problem91.c:27:     assert(func0(test1, 5) == 2);
	add	x0, sp, 32	// tmp107,,
	mov	w1, 5	//,
	bl	func0		//
// problem91.c:27:     assert(func0(test1, 5) == 2);
	cmp	w0, 2	// _1,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp108,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp108,
	mov	w2, 27	//,
	adrp	x0, .LC3	// tmp109,
	add	x1, x0, :lo12:.LC3	//, tmp109,
	adrp	x0, .LC4	// tmp110,
	add	x0, x0, :lo12:.LC4	//, tmp110,
	bl	__assert_fail		//
.L10:
// problem91.c:29:     int test2[] = {5, 1, 4, 3, 2};
	adrp	x0, .LC1	// tmp112,
	add	x0, x0, :lo12:.LC1	// tmp111, tmp112,
	add	x2, sp, 56	// tmp113,,
	mov	x3, x0	// tmp114, tmp111
	ldp	x0, x1, [x3]	// tmp115,
	stp	x0, x1, [x2]	// tmp115, test2
	ldr	w0, [x3, 16]	// tmp116,
	str	w0, [x2, 16]	// tmp116, test2
// problem91.c:30:     assert(func0(test2, 5) == 2);
	add	x0, sp, 56	// tmp117,,
	mov	w1, 5	//,
	bl	func0		//
// problem91.c:30:     assert(func0(test2, 5) == 2);
	cmp	w0, 2	// _2,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp118,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp118,
	mov	w2, 30	//,
	adrp	x0, .LC3	// tmp119,
	add	x1, x0, :lo12:.LC3	//, tmp119,
	adrp	x0, .LC5	// tmp120,
	add	x0, x0, :lo12:.LC5	//, tmp120,
	bl	__assert_fail		//
.L11:
// problem91.c:32:     assert(func0((int[]){}, 0) == -1);
	add	x0, sp, 80	// tmp121,,
	mov	w1, 0	//,
	bl	func0		//
// problem91.c:32:     assert(func0((int[]){}, 0) == -1);
	cmn	w0, #1	// _3,
	beq	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp122,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp122,
	mov	w2, 32	//,
	adrp	x0, .LC3	// tmp123,
	add	x1, x0, :lo12:.LC3	//, tmp123,
	adrp	x0, .LC6	// tmp124,
	add	x0, x0, :lo12:.LC6	//, tmp124,
	bl	__assert_fail		//
.L12:
// problem91.c:34:     int test4[] = {1, 1};
	mov	w0, 1	// tmp125,
	str	w0, [sp, 8]	// tmp125, test4[0]
	mov	w0, 1	// tmp126,
	str	w0, [sp, 12]	// tmp126, test4[1]
// problem91.c:35:     assert(func0(test4, 2) == -1);
	add	x0, sp, 8	// tmp127,,
	mov	w1, 2	//,
	bl	func0		//
// problem91.c:35:     assert(func0(test4, 2) == -1);
	cmn	w0, #1	// _4,
	beq	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp128,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp128,
	mov	w2, 35	//,
	adrp	x0, .LC3	// tmp129,
	add	x1, x0, :lo12:.LC3	//, tmp129,
	adrp	x0, .LC7	// tmp130,
	add	x0, x0, :lo12:.LC7	//, tmp130,
	bl	__assert_fail		//
.L13:
// problem91.c:37:     int test5[] = {1, 1, 1, 1, 0};
	adrp	x0, .LC2	// tmp132,
	add	x0, x0, :lo12:.LC2	// tmp131, tmp132,
	add	x2, sp, 80	// tmp133,,
	mov	x3, x0	// tmp134, tmp131
	ldp	x0, x1, [x3]	// tmp135,
	stp	x0, x1, [x2]	// tmp135, MEM[(int[5] *)_38]
	ldr	w0, [x3, 16]	// tmp136,
	str	w0, [x2, 16]	// tmp136, MEM[(int[5] *)_38]
// problem91.c:38:     assert(func0(test5, 5) == 1);
	add	x0, sp, 80	// tmp137,,
	mov	w1, 5	//,
	bl	func0		//
// problem91.c:38:     assert(func0(test5, 5) == 1);
	cmp	w0, 1	// _5,
	beq	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp138,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp138,
	mov	w2, 38	//,
	adrp	x0, .LC3	// tmp139,
	add	x1, x0, :lo12:.LC3	//, tmp139,
	adrp	x0, .LC8	// tmp140,
	add	x0, x0, :lo12:.LC8	//, tmp140,
	bl	__assert_fail		//
.L14:
// problem91.c:40:     int test6[] = {-35, 34, 12, -45};
	mov	w0, -35	// tmp141,
	str	w0, [sp, 16]	// tmp141, test6[0]
	mov	w0, 34	// tmp142,
	str	w0, [sp, 20]	// tmp142, test6[1]
	mov	w0, 12	// tmp143,
	str	w0, [sp, 24]	// tmp143, test6[2]
	mov	w0, -45	// tmp144,
	str	w0, [sp, 28]	// tmp144, test6[3]
// problem91.c:41:     assert(func0(test6, 4) == -35);
	add	x0, sp, 16	// tmp145,,
	mov	w1, 4	//,
	bl	func0		//
// problem91.c:41:     assert(func0(test6, 4) == -35);
	cmn	w0, #35	// _6,
	beq	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp146,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp146,
	mov	w2, 41	//,
	adrp	x0, .LC3	// tmp147,
	add	x1, x0, :lo12:.LC3	//, tmp147,
	adrp	x0, .LC9	// tmp148,
	add	x0, x0, :lo12:.LC9	//, tmp148,
	bl	__assert_fail		//
.L15:
// problem91.c:43:     return 0;
	mov	w0, 0	// _30,
// problem91.c:44: }
	mov	w1, w0	// <retval>, _30
	adrp	x0, :got:__stack_chk_guard	// tmp150,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp150,
	ldr	x3, [sp, 104]	// tmp152, D.4907
	ldr	x2, [x0]	// tmp153,
	subs	x3, x3, x2	// tmp152, tmp153
	mov	x2, 0	// tmp153
	beq	.L17		//,
	bl	__stack_chk_fail		//
.L17:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 112]	//,,
	add	sp, sp, 128	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.align	3
.LC1:
	.word	5
	.word	1
	.word	4
	.word	3
	.word	2
	.align	3
.LC2:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	0
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
