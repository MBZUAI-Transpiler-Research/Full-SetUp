	.arch armv8-a
	.file	"problem95.c"
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
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 8]	// lst, lst
	str	w1, [sp, 4]	// size, size
// problem95.c:4:     int largest = 0, sum = 0, num, temp;
	str	wzr, [sp, 24]	//, largest
// problem95.c:4:     int largest = 0, sum = 0, num, temp;
	str	wzr, [sp, 28]	//, sum
// problem95.c:6:     for (int i = 0; i < size; ++i) {
	str	wzr, [sp, 32]	//, i
// problem95.c:6:     for (int i = 0; i < size; ++i) {
	b	.L2		//
.L8:
// problem95.c:7:         num = lst[i];
	ldrsw	x0, [sp, 32]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp100, lst
	add	x0, x1, x0	// _3, tmp100, _2
// problem95.c:7:         num = lst[i];
	ldr	w0, [x0]	// tmp101, *_3
	str	w0, [sp, 44]	// tmp101, num
// problem95.c:8:         if (num > 1) {
	ldr	w0, [sp, 44]	// tmp102, num
	cmp	w0, 1	// tmp102,
	ble	.L3		//,
// problem95.c:9:             int prime = 1;
	mov	w0, 1	// tmp103,
	str	w0, [sp, 36]	// tmp103, prime
// problem95.c:10:             for (int j = 2; j * j <= num; ++j) {
	mov	w0, 2	// tmp104,
	str	w0, [sp, 40]	// tmp104, j
// problem95.c:10:             for (int j = 2; j * j <= num; ++j) {
	b	.L4		//
.L7:
// problem95.c:11:                 if (num % j == 0) {
	ldr	w0, [sp, 44]	// tmp105, num
	ldr	w1, [sp, 40]	// tmp118, j
	sdiv	w2, w0, w1	// tmp117, tmp105, tmp118
	ldr	w1, [sp, 40]	// tmp120, j
	mul	w1, w2, w1	// tmp119, tmp117, tmp120
	sub	w0, w0, w1	// _4, tmp105, tmp119
// problem95.c:11:                 if (num % j == 0) {
	cmp	w0, 0	// _4,
	bne	.L5		//,
// problem95.c:12:                     prime = 0;
	str	wzr, [sp, 36]	//, prime
// problem95.c:13:                     break;
	b	.L6		//
.L5:
// problem95.c:10:             for (int j = 2; j * j <= num; ++j) {
	ldr	w0, [sp, 40]	// tmp122, j
	add	w0, w0, 1	// tmp121, tmp122,
	str	w0, [sp, 40]	// tmp121, j
.L4:
// problem95.c:10:             for (int j = 2; j * j <= num; ++j) {
	ldr	w0, [sp, 40]	// tmp123, j
	mul	w0, w0, w0	// _5, tmp123, tmp123
// problem95.c:10:             for (int j = 2; j * j <= num; ++j) {
	ldr	w1, [sp, 44]	// tmp124, num
	cmp	w1, w0	// tmp124, _5
	bge	.L7		//,
.L6:
// problem95.c:16:             if (prime) {
	ldr	w0, [sp, 36]	// tmp125, prime
	cmp	w0, 0	// tmp125,
	beq	.L3		//,
// problem95.c:17:                 largest = num > largest ? num : largest;
	ldr	w0, [sp, 44]	// tmp127, num
	ldr	w2, [sp, 24]	// tmp128, largest
	ldr	w1, [sp, 24]	// tmp129, largest
	cmp	w2, w0	// tmp128, tmp127
	csel	w0, w1, w0, ge	// tmp126, tmp129, tmp127,
	str	w0, [sp, 24]	// tmp126, largest
.L3:
// problem95.c:6:     for (int i = 0; i < size; ++i) {
	ldr	w0, [sp, 32]	// tmp131, i
	add	w0, w0, 1	// tmp130, tmp131,
	str	w0, [sp, 32]	// tmp130, i
.L2:
// problem95.c:6:     for (int i = 0; i < size; ++i) {
	ldr	w1, [sp, 32]	// tmp132, i
	ldr	w0, [sp, 4]	// tmp133, size
	cmp	w1, w0	// tmp132, tmp133
	blt	.L8		//,
// problem95.c:22:     while (largest > 0) {
	b	.L9		//
.L10:
// problem95.c:23:         sum += largest % 10;
	ldr	w2, [sp, 24]	// tmp134, largest
	mov	w0, 26215	// tmp136,
	movk	w0, 0x6666, lsl 16	// tmp136,,
	smull	x0, w2, w0	// tmp135, tmp134, tmp136
	lsr	x0, x0, 32	// tmp137, tmp135,
	asr	w1, w0, 2	// tmp138, tmp137,
	asr	w0, w2, 31	// tmp139, tmp134,
	sub	w1, w1, w0	// _6, tmp138, tmp139
	mov	w0, w1	// tmp140, _6
	lsl	w0, w0, 2	// tmp141, tmp140,
	add	w0, w0, w1	// tmp140, tmp140, _6
	lsl	w0, w0, 1	// tmp142, tmp140,
	sub	w1, w2, w0	// _6, tmp134, tmp140
// problem95.c:23:         sum += largest % 10;
	ldr	w0, [sp, 28]	// tmp144, sum
	add	w0, w0, w1	// tmp143, tmp144, _6
	str	w0, [sp, 28]	// tmp143, sum
// problem95.c:24:         largest /= 10;
	ldr	w0, [sp, 24]	// tmp146, largest
	mov	w1, 26215	// tmp148,
	movk	w1, 0x6666, lsl 16	// tmp148,,
	smull	x1, w0, w1	// tmp147, tmp146, tmp148
	lsr	x1, x1, 32	// tmp149, tmp147,
	asr	w1, w1, 2	// tmp150, tmp149,
	asr	w0, w0, 31	// tmp151, tmp146,
	sub	w0, w1, w0	// tmp145, tmp150, tmp151
	str	w0, [sp, 24]	// tmp145, largest
.L9:
// problem95.c:22:     while (largest > 0) {
	ldr	w0, [sp, 24]	// tmp152, largest
	cmp	w0, 0	// tmp152,
	bgt	.L10		//,
// problem95.c:27:     return sum;
	ldr	w0, [sp, 28]	// _18, sum
// problem95.c:28: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC7:
	.string	"problem95.c"
	.align	3
.LC8:
	.string	"func0(lst1, sizeof(lst1)/sizeof(lst1[0])) == 10"
	.align	3
.LC9:
	.string	"func0(lst2, sizeof(lst2)/sizeof(lst2[0])) == 25"
	.align	3
.LC10:
	.string	"func0(lst3, sizeof(lst3)/sizeof(lst3[0])) == 13"
	.align	3
.LC11:
	.string	"func0(lst4, sizeof(lst4)/sizeof(lst4[0])) == 11"
	.align	3
.LC12:
	.string	"func0(lst5, sizeof(lst5)/sizeof(lst5[0])) == 3"
	.align	3
.LC13:
	.string	"func0(lst6, sizeof(lst6)/sizeof(lst6[0])) == 7"
	.align	3
.LC14:
	.string	"func0(lst7, sizeof(lst7)/sizeof(lst7[0])) == 19"
	.align	3
.LC15:
	.string	"func0(lst8, sizeof(lst8)/sizeof(lst8[0])) == 19"
	.align	3
.LC16:
	.string	"func0(lst9, sizeof(lst9)/sizeof(lst9[0])) == 10"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -400]!	//,,,
	.cfi_def_cfa_offset 400
	.cfi_offset 29, -400
	.cfi_offset 30, -392
	mov	x29, sp	//,
// problem95.c:34: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp104,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp103, tmp104,
	ldr	x1, [x0]	// tmp202,
	str	x1, [sp, 392]	// tmp202, D.4346
	mov	x1, 0	// tmp202
// problem95.c:35:     int lst1[] = {0,3,2,1,3,5,7,4,5,5,5,2,181,32,4,32,3,2,32,324,4,3};
	adrp	x0, .LC0	// tmp106,
	add	x1, x0, :lo12:.LC0	// tmp105, tmp106,
	add	x0, sp, 304	// tmp107,,
	ldp	q0, q1, [x1]	// tmp109, tmp110,
	stp	q0, q1, [x0]	// tmp109, tmp110, lst1
	ldp	q0, q1, [x1, 32]	// tmp111, tmp112,
	stp	q0, q1, [x0, 32]	// tmp111, tmp112, lst1
	ldr	q0, [x1, 64]	// tmp113,
	str	q0, [x0, 64]	// tmp113, lst1
	ldr	x1, [x1, 80]	// tmp114,
	str	x1, [x0, 80]	// tmp114, lst1
// problem95.c:36:     assert(func0(lst1, sizeof(lst1)/sizeof(lst1[0])) == 10);
	add	x0, sp, 304	// tmp115,,
	mov	w1, 22	//,
	bl	func0		//
	cmp	w0, 10	// _1,
	beq	.L13		//,
// problem95.c:36:     assert(func0(lst1, sizeof(lst1)/sizeof(lst1[0])) == 10);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 36	//,
	adrp	x0, .LC7	// tmp117,
	add	x1, x0, :lo12:.LC7	//, tmp117,
	adrp	x0, .LC8	// tmp118,
	add	x0, x0, :lo12:.LC8	//, tmp118,
	bl	__assert_fail		//
.L13:
// problem95.c:38:     int lst2[] = {1,0,1,8,2,4597,2,1,3,40,1,2,1,2,4,2,5,1};
	adrp	x0, .LC1	// tmp120,
	add	x1, x0, :lo12:.LC1	// tmp119, tmp120,
	add	x0, sp, 232	// tmp121,,
	ldp	q0, q1, [x1]	// tmp123, tmp124,
	stp	q0, q1, [x0]	// tmp123, tmp124, lst2
	ldp	q0, q1, [x1, 32]	// tmp125, tmp126,
	stp	q0, q1, [x0, 32]	// tmp125, tmp126, lst2
	ldr	x1, [x1, 64]	// tmp127,
	str	x1, [x0, 64]	// tmp127, lst2
// problem95.c:39:     assert(func0(lst2, sizeof(lst2)/sizeof(lst2[0])) == 25);
	add	x0, sp, 232	// tmp128,,
	mov	w1, 18	//,
	bl	func0		//
	cmp	w0, 25	// _2,
	beq	.L14		//,
// problem95.c:39:     assert(func0(lst2, sizeof(lst2)/sizeof(lst2[0])) == 25);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp129,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp129,
	mov	w2, 39	//,
	adrp	x0, .LC7	// tmp130,
	add	x1, x0, :lo12:.LC7	//, tmp130,
	adrp	x0, .LC9	// tmp131,
	add	x0, x0, :lo12:.LC9	//, tmp131,
	bl	__assert_fail		//
.L14:
// problem95.c:41:     int lst3[] = {1,3,1,32,5107,34,83278,109,163,23,2323,32,30,1,9,3};
	adrp	x0, .LC2	// tmp133,
	add	x1, x0, :lo12:.LC2	// tmp132, tmp133,
	add	x0, sp, 168	// tmp134,,
	ldp	q0, q1, [x1]	// tmp136, tmp137,
	stp	q0, q1, [x0]	// tmp136, tmp137, lst3
	ldp	q0, q1, [x1, 32]	// tmp138, tmp139,
	stp	q0, q1, [x0, 32]	// tmp138, tmp139, lst3
// problem95.c:42:     assert(func0(lst3, sizeof(lst3)/sizeof(lst3[0])) == 13);
	add	x0, sp, 168	// tmp140,,
	mov	w1, 16	//,
	bl	func0		//
	cmp	w0, 13	// _3,
	beq	.L15		//,
// problem95.c:42:     assert(func0(lst3, sizeof(lst3)/sizeof(lst3[0])) == 13);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp141,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp141,
	mov	w2, 42	//,
	adrp	x0, .LC7	// tmp142,
	add	x1, x0, :lo12:.LC7	//, tmp142,
	adrp	x0, .LC10	// tmp143,
	add	x0, x0, :lo12:.LC10	//, tmp143,
	bl	__assert_fail		//
.L15:
// problem95.c:44:     int lst4[] = {0,724,32,71,99,32,6,0,5,91,83,0,5,6};
	adrp	x0, .LC3	// tmp145,
	add	x1, x0, :lo12:.LC3	// tmp144, tmp145,
	add	x0, sp, 112	// tmp146,,
	ldp	q0, q1, [x1]	// tmp148, tmp149,
	stp	q0, q1, [x0]	// tmp148, tmp149, lst4
	ldr	q0, [x1, 32]	// tmp150,
	str	q0, [x0, 32]	// tmp150, lst4
	ldr	x1, [x1, 48]	// tmp151,
	str	x1, [x0, 48]	// tmp151, lst4
// problem95.c:45:     assert(func0(lst4, sizeof(lst4)/sizeof(lst4[0])) == 11);
	add	x0, sp, 112	// tmp152,,
	mov	w1, 14	//,
	bl	func0		//
	cmp	w0, 11	// _4,
	beq	.L16		//,
// problem95.c:45:     assert(func0(lst4, sizeof(lst4)/sizeof(lst4[0])) == 11);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp153,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp153,
	mov	w2, 45	//,
	adrp	x0, .LC7	// tmp154,
	add	x1, x0, :lo12:.LC7	//, tmp154,
	adrp	x0, .LC11	// tmp155,
	add	x0, x0, :lo12:.LC11	//, tmp155,
	bl	__assert_fail		//
.L16:
// problem95.c:47:     int lst5[] = {0,81,12,3,1,21};
	adrp	x0, .LC4	// tmp157,
	add	x0, x0, :lo12:.LC4	// tmp156, tmp157,
	add	x2, sp, 64	// tmp158,,
	mov	x3, x0	// tmp159, tmp156
	ldp	x0, x1, [x3]	// tmp160,
	stp	x0, x1, [x2]	// tmp160, lst5
	ldr	x0, [x3, 16]	// tmp161,
	str	x0, [x2, 16]	// tmp161, lst5
// problem95.c:48:     assert(func0(lst5, sizeof(lst5)/sizeof(lst5[0])) == 3);
	add	x0, sp, 64	// tmp162,,
	mov	w1, 6	//,
	bl	func0		//
	cmp	w0, 3	// _5,
	beq	.L17		//,
// problem95.c:48:     assert(func0(lst5, sizeof(lst5)/sizeof(lst5[0])) == 3);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp163,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp163,
	mov	w2, 48	//,
	adrp	x0, .LC7	// tmp164,
	add	x1, x0, :lo12:.LC7	//, tmp164,
	adrp	x0, .LC12	// tmp165,
	add	x0, x0, :lo12:.LC12	//, tmp165,
	bl	__assert_fail		//
.L17:
// problem95.c:50:     int lst6[] = {0,8,1,2,1,7};
	adrp	x0, .LC5	// tmp167,
	add	x0, x0, :lo12:.LC5	// tmp166, tmp167,
	add	x2, sp, 88	// tmp168,,
	mov	x3, x0	// tmp169, tmp166
	ldp	x0, x1, [x3]	// tmp170,
	stp	x0, x1, [x2]	// tmp170, lst6
	ldr	x0, [x3, 16]	// tmp171,
	str	x0, [x2, 16]	// tmp171, lst6
// problem95.c:51:     assert(func0(lst6, sizeof(lst6)/sizeof(lst6[0])) == 7);
	add	x0, sp, 88	// tmp172,,
	mov	w1, 6	//,
	bl	func0		//
	cmp	w0, 7	// _6,
	beq	.L18		//,
// problem95.c:51:     assert(func0(lst6, sizeof(lst6)/sizeof(lst6[0])) == 7);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp173,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp173,
	mov	w2, 51	//,
	adrp	x0, .LC7	// tmp174,
	add	x1, x0, :lo12:.LC7	//, tmp174,
	adrp	x0, .LC13	// tmp175,
	add	x0, x0, :lo12:.LC13	//, tmp175,
	bl	__assert_fail		//
.L18:
// problem95.c:53:     int lst7[] = {8191};
	mov	w0, 8191	// tmp176,
	str	w0, [sp, 24]	// tmp176, lst7[0]
// problem95.c:54:     assert(func0(lst7, sizeof(lst7)/sizeof(lst7[0])) == 19);
	add	x0, sp, 24	// tmp177,,
	mov	w1, 1	//,
	bl	func0		//
	cmp	w0, 19	// _7,
	beq	.L19		//,
// problem95.c:54:     assert(func0(lst7, sizeof(lst7)/sizeof(lst7[0])) == 19);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp178,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp178,
	mov	w2, 54	//,
	adrp	x0, .LC7	// tmp179,
	add	x1, x0, :lo12:.LC7	//, tmp179,
	adrp	x0, .LC14	// tmp180,
	add	x0, x0, :lo12:.LC14	//, tmp180,
	bl	__assert_fail		//
.L19:
// problem95.c:56:     int lst8[] = {8191, 123456, 127, 7};
	mov	w0, 8191	// tmp181,
	str	w0, [sp, 48]	// tmp181, lst8[0]
	mov	w0, 57920	// tmp182,
	movk	w0, 0x1, lsl 16	// tmp182,,
	str	w0, [sp, 52]	// tmp182, lst8[1]
	mov	w0, 127	// tmp183,
	str	w0, [sp, 56]	// tmp183, lst8[2]
	mov	w0, 7	// tmp184,
	str	w0, [sp, 60]	// tmp184, lst8[3]
// problem95.c:57:     assert(func0(lst8, sizeof(lst8)/sizeof(lst8[0])) == 19);
	add	x0, sp, 48	// tmp185,,
	mov	w1, 4	//,
	bl	func0		//
	cmp	w0, 19	// _8,
	beq	.L20		//,
// problem95.c:57:     assert(func0(lst8, sizeof(lst8)/sizeof(lst8[0])) == 19);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp186,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp186,
	mov	w2, 57	//,
	adrp	x0, .LC7	// tmp187,
	add	x1, x0, :lo12:.LC7	//, tmp187,
	adrp	x0, .LC15	// tmp188,
	add	x0, x0, :lo12:.LC15	//, tmp188,
	bl	__assert_fail		//
.L20:
// problem95.c:59:     int lst9[] = {127, 97, 8192};
	adrp	x0, .LC6	// tmp190,
	add	x1, x0, :lo12:.LC6	// tmp189, tmp190,
	add	x0, sp, 32	// tmp191,,
	ldr	x2, [x1]	// tmp193,
	str	x2, [x0]	// tmp193, lst9
	ldr	w1, [x1, 8]	// tmp194,
	str	w1, [x0, 8]	// tmp194, lst9
// problem95.c:60:     assert(func0(lst9, sizeof(lst9)/sizeof(lst9[0])) == 10);
	add	x0, sp, 32	// tmp195,,
	mov	w1, 3	//,
	bl	func0		//
	cmp	w0, 10	// _9,
	beq	.L21		//,
// problem95.c:60:     assert(func0(lst9, sizeof(lst9)/sizeof(lst9[0])) == 10);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp196,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp196,
	mov	w2, 60	//,
	adrp	x0, .LC7	// tmp197,
	add	x1, x0, :lo12:.LC7	//, tmp197,
	adrp	x0, .LC16	// tmp198,
	add	x0, x0, :lo12:.LC16	//, tmp198,
	bl	__assert_fail		//
.L21:
// problem95.c:62:     return 0;
	mov	w0, 0	// _41,
// problem95.c:63: }
	mov	w1, w0	// <retval>, _41
	adrp	x0, :got:__stack_chk_guard	// tmp201,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp200, tmp201,
	ldr	x3, [sp, 392]	// tmp203, D.4346
	ldr	x2, [x0]	// tmp204,
	subs	x3, x3, x2	// tmp203, tmp204
	mov	x2, 0	// tmp204
	beq	.L23		//,
	bl	__stack_chk_fail		//
.L23:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 400	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	3
	.word	2
	.word	1
	.word	3
	.word	5
	.word	7
	.word	4
	.word	5
	.word	5
	.word	5
	.word	2
	.word	181
	.word	32
	.word	4
	.word	32
	.word	3
	.word	2
	.word	32
	.word	324
	.word	4
	.word	3
	.align	3
.LC1:
	.word	1
	.word	0
	.word	1
	.word	8
	.word	2
	.word	4597
	.word	2
	.word	1
	.word	3
	.word	40
	.word	1
	.word	2
	.word	1
	.word	2
	.word	4
	.word	2
	.word	5
	.word	1
	.align	3
.LC2:
	.word	1
	.word	3
	.word	1
	.word	32
	.word	5107
	.word	34
	.word	83278
	.word	109
	.word	163
	.word	23
	.word	2323
	.word	32
	.word	30
	.word	1
	.word	9
	.word	3
	.align	3
.LC3:
	.word	0
	.word	724
	.word	32
	.word	71
	.word	99
	.word	32
	.word	6
	.word	0
	.word	5
	.word	91
	.word	83
	.word	0
	.word	5
	.word	6
	.align	3
.LC4:
	.word	0
	.word	81
	.word	12
	.word	3
	.word	1
	.word	21
	.align	3
.LC5:
	.word	0
	.word	8
	.word	1
	.word	2
	.word	1
	.word	7
	.align	3
.LC6:
	.word	127
	.word	97
	.word	8192
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
