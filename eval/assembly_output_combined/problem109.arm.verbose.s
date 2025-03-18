	.arch armv8-a
	.file	"problem109.c"
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
	str	x0, [sp, 8]	// n, n
	str	w1, [sp, 4]	// size, size
// problem109.c:5:     int num = 0;
	str	wzr, [sp, 16]	//, num
// problem109.c:6:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 20]	//, i
// problem109.c:6:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L7:
// problem109.c:7:         if (n[i] > 0) {
	ldrsw	x0, [sp, 20]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp103, n
	add	x0, x1, x0	// _3, tmp103, _2
	ldr	w0, [x0]	// _4, *_3
// problem109.c:7:         if (n[i] > 0) {
	cmp	w0, 0	// _4,
	ble	.L3		//,
// problem109.c:8:             num += 1;
	ldr	w0, [sp, 16]	// tmp105, num
	add	w0, w0, 1	// tmp104, tmp105,
	str	w0, [sp, 16]	// tmp104, num
	b	.L4		//
.L3:
// problem109.c:10:             int sum = 0;
	str	wzr, [sp, 24]	//, sum
// problem109.c:11:             int w = abs(n[i]);
	ldrsw	x0, [sp, 20]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 8]	// tmp106, n
	add	x0, x1, x0	// _7, tmp106, _6
	ldr	w0, [x0]	// _8, *_7
// problem109.c:11:             int w = abs(n[i]);
	cmp	w0, 0	// _8,
	csneg	w0, w0, w0, ge	// tmp107, _8, _8,
	str	w0, [sp, 28]	// tmp107, w
// problem109.c:12:             while (w >= 10) {
	b	.L5		//
.L6:
// problem109.c:13:                 sum += w % 10;
	ldr	w2, [sp, 28]	// tmp108, w
	mov	w0, 26215	// tmp110,
	movk	w0, 0x6666, lsl 16	// tmp110,,
	smull	x0, w2, w0	// tmp109, tmp108, tmp110
	lsr	x0, x0, 32	// tmp111, tmp109,
	asr	w1, w0, 2	// tmp112, tmp111,
	asr	w0, w2, 31	// tmp113, tmp108,
	sub	w1, w1, w0	// _9, tmp112, tmp113
	mov	w0, w1	// tmp114, _9
	lsl	w0, w0, 2	// tmp115, tmp114,
	add	w0, w0, w1	// tmp114, tmp114, _9
	lsl	w0, w0, 1	// tmp116, tmp114,
	sub	w1, w2, w0	// _9, tmp108, tmp114
// problem109.c:13:                 sum += w % 10;
	ldr	w0, [sp, 24]	// tmp118, sum
	add	w0, w0, w1	// tmp117, tmp118, _9
	str	w0, [sp, 24]	// tmp117, sum
// problem109.c:14:                 w = w / 10;
	ldr	w0, [sp, 28]	// tmp120, w
	mov	w1, 26215	// tmp122,
	movk	w1, 0x6666, lsl 16	// tmp122,,
	smull	x1, w0, w1	// tmp121, tmp120, tmp122
	lsr	x1, x1, 32	// tmp123, tmp121,
	asr	w1, w1, 2	// tmp124, tmp123,
	asr	w0, w0, 31	// tmp125, tmp120,
	sub	w0, w1, w0	// tmp119, tmp124, tmp125
	str	w0, [sp, 28]	// tmp119, w
.L5:
// problem109.c:12:             while (w >= 10) {
	ldr	w0, [sp, 28]	// tmp126, w
	cmp	w0, 9	// tmp126,
	bgt	.L6		//,
// problem109.c:16:             sum -= w;
	ldr	w1, [sp, 24]	// tmp128, sum
	ldr	w0, [sp, 28]	// tmp129, w
	sub	w0, w1, w0	// tmp127, tmp128, tmp129
	str	w0, [sp, 24]	// tmp127, sum
// problem109.c:17:             if (sum > 0) num += 1;
	ldr	w0, [sp, 24]	// tmp130, sum
	cmp	w0, 0	// tmp130,
	ble	.L4		//,
// problem109.c:17:             if (sum > 0) num += 1;
	ldr	w0, [sp, 16]	// tmp132, num
	add	w0, w0, 1	// tmp131, tmp132,
	str	w0, [sp, 16]	// tmp131, num
.L4:
// problem109.c:6:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 20]	// tmp134, i
	add	w0, w0, 1	// tmp133, tmp134,
	str	w0, [sp, 20]	// tmp133, i
.L2:
// problem109.c:6:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 20]	// tmp135, i
	ldr	w0, [sp, 4]	// tmp136, size
	cmp	w1, w0	// tmp135, tmp136
	blt	.L7		//,
// problem109.c:20:     return num;
	ldr	w0, [sp, 16]	// _18, num
// problem109.c:21: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC5:
	.string	"problem109.c"
	.align	3
.LC6:
	.string	"func0((int[]){}, 0) == 0"
	.align	3
.LC7:
	.string	"func0((int[]){-1, -2, 0}, 3) == 0"
	.align	3
.LC8:
	.string	"func0((int[]){1, 1, 2, -2, 3, 4, 5}, 7) == 6"
	.align	3
.LC9:
	.string	"func0((int[]){1, 6, 9, -6, 0, 1, 5}, 7) == 5"
	.align	3
.LC10:
	.string	"func0((int[]){1, 100, 98, -7, 1, -1}, 6) == 4"
	.align	3
.LC11:
	.string	"func0((int[]){12, 23, 34, -45, -56, 0}, 6) == 5"
	.align	3
.LC12:
	.string	"func0((int[]){-0, 1}, 2) == 1"
	.align	3
.LC13:
	.string	"func0((int[]){1}, 1) == 1"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #64	//,,
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, 48]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 48	//,,
// problem109.c:27: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp102,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp102,
	ldr	x1, [x0]	// tmp169,
	str	x1, [sp, 40]	// tmp169, D.5446
	mov	x1, 0	// tmp169
// problem109.c:28:     assert(func0((int[]){}, 0) == 0);
	add	x0, sp, 8	// tmp103,,
	mov	w1, 0	//,
	bl	func0		//
// problem109.c:28:     assert(func0((int[]){}, 0) == 0);
	cmp	w0, 0	// _1,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp104,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp104,
	mov	w2, 28	//,
	adrp	x0, .LC5	// tmp105,
	add	x1, x0, :lo12:.LC5	//, tmp105,
	adrp	x0, .LC6	// tmp106,
	add	x0, x0, :lo12:.LC6	//, tmp106,
	bl	__assert_fail		//
.L10:
// problem109.c:29:     assert(func0((int[]){-1, -2, 0}, 3) == 0);
	adrp	x0, .LC0	// tmp108,
	add	x1, x0, :lo12:.LC0	// tmp107, tmp108,
	add	x0, sp, 8	// tmp109,,
	ldr	x2, [x1]	// tmp111,
	str	x2, [x0]	// tmp111, MEM[(int[3] *)_52]
	ldr	w1, [x1, 8]	// tmp112,
	str	w1, [x0, 8]	// tmp112, MEM[(int[3] *)_52]
	add	x0, sp, 8	// tmp113,,
	mov	w1, 3	//,
	bl	func0		//
// problem109.c:29:     assert(func0((int[]){-1, -2, 0}, 3) == 0);
	cmp	w0, 0	// _2,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp114,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp114,
	mov	w2, 29	//,
	adrp	x0, .LC5	// tmp115,
	add	x1, x0, :lo12:.LC5	//, tmp115,
	adrp	x0, .LC7	// tmp116,
	add	x0, x0, :lo12:.LC7	//, tmp116,
	bl	__assert_fail		//
.L11:
// problem109.c:30:     assert(func0((int[]){1, 1, 2, -2, 3, 4, 5}, 7) == 6);
	adrp	x0, .LC1	// tmp118,
	add	x1, x0, :lo12:.LC1	// tmp117, tmp118,
	add	x0, sp, 8	// tmp119,,
	ldr	q0, [x1]	// tmp121,
	str	q0, [x0]	// tmp121, MEM[(int[7] *)_52]
	ldr	q0, [x1, 12]	// tmp122,
	str	q0, [x0, 12]	// tmp122, MEM[(int[7] *)_52]
	add	x0, sp, 8	// tmp123,,
	mov	w1, 7	//,
	bl	func0		//
// problem109.c:30:     assert(func0((int[]){1, 1, 2, -2, 3, 4, 5}, 7) == 6);
	cmp	w0, 6	// _3,
	beq	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp124,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp124,
	mov	w2, 30	//,
	adrp	x0, .LC5	// tmp125,
	add	x1, x0, :lo12:.LC5	//, tmp125,
	adrp	x0, .LC8	// tmp126,
	add	x0, x0, :lo12:.LC8	//, tmp126,
	bl	__assert_fail		//
.L12:
// problem109.c:31:     assert(func0((int[]){1, 6, 9, -6, 0, 1, 5}, 7) == 5);
	adrp	x0, .LC2	// tmp128,
	add	x1, x0, :lo12:.LC2	// tmp127, tmp128,
	add	x0, sp, 8	// tmp129,,
	ldr	q0, [x1]	// tmp131,
	str	q0, [x0]	// tmp131, MEM[(int[7] *)_52]
	ldr	q0, [x1, 12]	// tmp132,
	str	q0, [x0, 12]	// tmp132, MEM[(int[7] *)_52]
	add	x0, sp, 8	// tmp133,,
	mov	w1, 7	//,
	bl	func0		//
// problem109.c:31:     assert(func0((int[]){1, 6, 9, -6, 0, 1, 5}, 7) == 5);
	cmp	w0, 5	// _4,
	beq	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp134,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp134,
	mov	w2, 31	//,
	adrp	x0, .LC5	// tmp135,
	add	x1, x0, :lo12:.LC5	//, tmp135,
	adrp	x0, .LC9	// tmp136,
	add	x0, x0, :lo12:.LC9	//, tmp136,
	bl	__assert_fail		//
.L13:
// problem109.c:32:     assert(func0((int[]){1, 100, 98, -7, 1, -1}, 6) == 4);
	adrp	x0, .LC3	// tmp138,
	add	x0, x0, :lo12:.LC3	// tmp137, tmp138,
	add	x2, sp, 8	// tmp139,,
	mov	x3, x0	// tmp140, tmp137
	ldp	x0, x1, [x3]	// tmp141,
	stp	x0, x1, [x2]	// tmp141, MEM[(int[6] *)_52]
	ldr	x0, [x3, 16]	// tmp142,
	str	x0, [x2, 16]	// tmp142, MEM[(int[6] *)_52]
	add	x0, sp, 8	// tmp143,,
	mov	w1, 6	//,
	bl	func0		//
// problem109.c:32:     assert(func0((int[]){1, 100, 98, -7, 1, -1}, 6) == 4);
	cmp	w0, 4	// _5,
	beq	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp144,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp144,
	mov	w2, 32	//,
	adrp	x0, .LC5	// tmp145,
	add	x1, x0, :lo12:.LC5	//, tmp145,
	adrp	x0, .LC10	// tmp146,
	add	x0, x0, :lo12:.LC10	//, tmp146,
	bl	__assert_fail		//
.L14:
// problem109.c:33:     assert(func0((int[]){12, 23, 34, -45, -56, 0}, 6) == 5);
	adrp	x0, .LC4	// tmp148,
	add	x0, x0, :lo12:.LC4	// tmp147, tmp148,
	add	x2, sp, 8	// tmp149,,
	mov	x3, x0	// tmp150, tmp147
	ldp	x0, x1, [x3]	// tmp151,
	stp	x0, x1, [x2]	// tmp151, MEM[(int[6] *)_52]
	ldr	x0, [x3, 16]	// tmp152,
	str	x0, [x2, 16]	// tmp152, MEM[(int[6] *)_52]
	add	x0, sp, 8	// tmp153,,
	mov	w1, 6	//,
	bl	func0		//
// problem109.c:33:     assert(func0((int[]){12, 23, 34, -45, -56, 0}, 6) == 5);
	cmp	w0, 5	// _6,
	beq	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp154,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp154,
	mov	w2, 33	//,
	adrp	x0, .LC5	// tmp155,
	add	x1, x0, :lo12:.LC5	//, tmp155,
	adrp	x0, .LC11	// tmp156,
	add	x0, x0, :lo12:.LC11	//, tmp156,
	bl	__assert_fail		//
.L15:
// problem109.c:34:     assert(func0((int[]){-0, 1}, 2) == 1);
	str	wzr, [sp, 8]	//, MEM[(int[2] *)_52][0]
	mov	w0, 1	// tmp157,
	str	w0, [sp, 12]	// tmp157, MEM[(int[2] *)_52][1]
	add	x0, sp, 8	// tmp158,,
	mov	w1, 2	//,
	bl	func0		//
// problem109.c:34:     assert(func0((int[]){-0, 1}, 2) == 1);
	cmp	w0, 1	// _7,
	beq	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp159,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp159,
	mov	w2, 34	//,
	adrp	x0, .LC5	// tmp160,
	add	x1, x0, :lo12:.LC5	//, tmp160,
	adrp	x0, .LC12	// tmp161,
	add	x0, x0, :lo12:.LC12	//, tmp161,
	bl	__assert_fail		//
.L16:
// problem109.c:35:     assert(func0((int[]){1}, 1) == 1);
	mov	w0, 1	// tmp162,
	str	w0, [sp, 8]	// tmp162, MEM[(int[1] *)_52][0]
	add	x0, sp, 8	// tmp163,,
	mov	w1, 1	//,
	bl	func0		//
// problem109.c:35:     assert(func0((int[]){1}, 1) == 1);
	cmp	w0, 1	// _8,
	beq	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp164,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp164,
	mov	w2, 35	//,
	adrp	x0, .LC5	// tmp165,
	add	x1, x0, :lo12:.LC5	//, tmp165,
	adrp	x0, .LC13	// tmp166,
	add	x0, x0, :lo12:.LC13	//, tmp166,
	bl	__assert_fail		//
.L17:
// problem109.c:37:     return 0;
	mov	w0, 0	// _42,
// problem109.c:38: }
	mov	w1, w0	// <retval>, _42
	adrp	x0, :got:__stack_chk_guard	// tmp168,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp168,
	ldr	x3, [sp, 40]	// tmp170, D.5446
	ldr	x2, [x0]	// tmp171,
	subs	x3, x3, x2	// tmp170, tmp171
	mov	x2, 0	// tmp171
	beq	.L19		//,
	bl	__stack_chk_fail		//
.L19:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 48]	//,,
	add	sp, sp, 64	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	-1
	.word	-2
	.word	0
	.align	3
.LC1:
	.word	1
	.word	1
	.word	2
	.word	-2
	.word	3
	.word	4
	.word	5
	.align	3
.LC2:
	.word	1
	.word	6
	.word	9
	.word	-6
	.word	0
	.word	1
	.word	5
	.align	3
.LC3:
	.word	1
	.word	100
	.word	98
	.word	-7
	.word	1
	.word	-1
	.align	3
.LC4:
	.word	12
	.word	23
	.word	34
	.word	-45
	.word	-56
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
