	.arch armv8-a
	.file	"problem1.c"
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
	str	x0, [sp, 8]	// numbers, numbers
	str	w1, [sp, 4]	// size, size
	str	s0, [sp]	// threshold, threshold
// problem1.c:7:     for (i = 0; i < size; i++) {
	str	wzr, [sp, 24]	//, i
// problem1.c:7:     for (i = 0; i < size; i++) {
	b	.L2		//
.L8:
// problem1.c:8:         for (j = i + 1; j < size; j++) {
	ldr	w0, [sp, 24]	// tmp105, i
	add	w0, w0, 1	// tmp104, tmp105,
	str	w0, [sp, 28]	// tmp104, j
// problem1.c:8:         for (j = i + 1; j < size; j++) {
	b	.L3		//
.L7:
// problem1.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	ldrsw	x0, [sp, 24]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp106, numbers
	add	x0, x1, x0	// _3, tmp106, _2
	ldr	s1, [x0]	// _4, *_3
// problem1.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	ldrsw	x0, [sp, 28]	// _5, j
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 8]	// tmp107, numbers
	add	x0, x1, x0	// _7, tmp107, _6
	ldr	s0, [x0]	// _8, *_7
// problem1.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	fsub	s0, s1, s0	// _9, _4, _8
// problem1.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	fabs	s0, s0	// _10, _9
// problem1.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	ldr	s1, [sp]	// tmp108, threshold
	fcmpe	s1, s0	// tmp108, _10
	bgt	.L9		//,
	b	.L10		//
.L9:
// problem1.c:10:                 return 1;
	mov	w0, 1	// _13,
	b	.L6		//
.L10:
// problem1.c:8:         for (j = i + 1; j < size; j++) {
	ldr	w0, [sp, 28]	// tmp110, j
	add	w0, w0, 1	// tmp109, tmp110,
	str	w0, [sp, 28]	// tmp109, j
.L3:
// problem1.c:8:         for (j = i + 1; j < size; j++) {
	ldr	w1, [sp, 28]	// tmp111, j
	ldr	w0, [sp, 4]	// tmp112, size
	cmp	w1, w0	// tmp111, tmp112
	blt	.L7		//,
// problem1.c:7:     for (i = 0; i < size; i++) {
	ldr	w0, [sp, 24]	// tmp114, i
	add	w0, w0, 1	// tmp113, tmp114,
	str	w0, [sp, 24]	// tmp113, i
.L2:
// problem1.c:7:     for (i = 0; i < size; i++) {
	ldr	w1, [sp, 24]	// tmp115, i
	ldr	w0, [sp, 4]	// tmp116, size
	cmp	w1, w0	// tmp115, tmp116
	blt	.L8		//,
// problem1.c:14:     return 0;
	mov	w0, 0	// _13,
.L6:
// problem1.c:15: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC4:
	.string	"Testing case 1"
	.align	3
.LC5:
	.string	"problem1.c"
	.align	3
.LC6:
	.string	"func0(a, 6, 0.3) == 1"
	.align	3
.LC7:
	.string	"func0(a, 6, 0.05) == 0"
	.align	3
.LC8:
	.string	"Testing case 2"
	.align	3
.LC9:
	.string	"func0(b, 5, 0.95) == 1"
	.align	3
.LC10:
	.string	"func0(b, 5, 0.8) == 0"
	.align	3
.LC11:
	.string	"Testing case 3"
	.align	3
.LC12:
	.string	"func0(c, 5, 2.0) == 1"
	.align	3
.LC13:
	.string	"Testing case 4"
	.align	3
.LC14:
	.string	"func0(d, 5, 1.0) == 1"
	.align	3
.LC15:
	.string	"func0(d, 5, 0.5) == 0"
	.align	3
.LC16:
	.string	"All tests passed"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #128	//,,
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, 112]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 112	//,,
// problem1.c:22: int main(){
	adrp	x0, :got:__stack_chk_guard	// tmp101,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp101,
	ldr	x1, [x0]	// tmp165,
	str	x1, [sp, 104]	// tmp165, D.6625
	mov	x1, 0	// tmp165
// problem1.c:24:     float a[] = {1.0, 2.0, 3.9, 4.0, 5.0, 2.2};
	adrp	x0, .LC0	// tmp103,
	add	x0, x0, :lo12:.LC0	// tmp102, tmp103,
	add	x2, sp, 80	// tmp104,,
	mov	x3, x0	// tmp105, tmp102
	ldp	x0, x1, [x3]	// tmp106,
	stp	x0, x1, [x2]	// tmp106, a
	ldr	x0, [x3, 16]	// tmp107,
	str	x0, [x2, 16]	// tmp107, a
// problem1.c:25:     printf("Testing case 1\n");
	adrp	x0, .LC4	// tmp108,
	add	x0, x0, :lo12:.LC4	//, tmp108,
	bl	puts		//
// problem1.c:26:     assert(func0(a, 6, 0.3) == 1);
	add	x0, sp, 80	// tmp109,,
	mov	w1, 39322	// tmp164,
	movk	w1, 0x3e99, lsl 16	// tmp164,,
	fmov	s0, w1	//, tmp164
	mov	w1, 6	//,
	bl	func0		//
// problem1.c:26:     assert(func0(a, 6, 0.3) == 1);
	cmp	w0, 1	// _1,
	beq	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp110,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp110,
	mov	w2, 26	//,
	adrp	x0, .LC5	// tmp111,
	add	x1, x0, :lo12:.LC5	//, tmp111,
	adrp	x0, .LC6	// tmp112,
	add	x0, x0, :lo12:.LC6	//, tmp112,
	bl	__assert_fail		//
.L12:
// problem1.c:27:     assert(func0(a, 6, 0.05) == 0);
	add	x0, sp, 80	// tmp113,,
	mov	w1, 52429	// tmp163,
	movk	w1, 0x3d4c, lsl 16	// tmp163,,
	fmov	s0, w1	//, tmp163
	mov	w1, 6	//,
	bl	func0		//
// problem1.c:27:     assert(func0(a, 6, 0.05) == 0);
	cmp	w0, 0	// _2,
	beq	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp114,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp114,
	mov	w2, 27	//,
	adrp	x0, .LC5	// tmp115,
	add	x1, x0, :lo12:.LC5	//, tmp115,
	adrp	x0, .LC7	// tmp116,
	add	x0, x0, :lo12:.LC7	//, tmp116,
	bl	__assert_fail		//
.L13:
// problem1.c:29:     float b[] = {1.0, 2.0, 5.9, 4.0, 5.0};
	adrp	x0, .LC1	// tmp118,
	add	x0, x0, :lo12:.LC1	// tmp117, tmp118,
	add	x2, sp, 8	// tmp119,,
	mov	x3, x0	// tmp120, tmp117
	ldp	x0, x1, [x3]	// tmp121,
	stp	x0, x1, [x2]	// tmp121, b
	ldr	w0, [x3, 16]	// tmp122,
	str	w0, [x2, 16]	// tmp122, b
// problem1.c:30:     printf("Testing case 2\n");
	adrp	x0, .LC8	// tmp123,
	add	x0, x0, :lo12:.LC8	//, tmp123,
	bl	puts		//
// problem1.c:31:     assert(func0(b, 5, 0.95) == 1);
	add	x0, sp, 8	// tmp124,,
	mov	w1, 13107	// tmp162,
	movk	w1, 0x3f73, lsl 16	// tmp162,,
	fmov	s0, w1	//, tmp162
	mov	w1, 5	//,
	bl	func0		//
// problem1.c:31:     assert(func0(b, 5, 0.95) == 1);
	cmp	w0, 1	// _3,
	beq	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp125,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp125,
	mov	w2, 31	//,
	adrp	x0, .LC5	// tmp126,
	add	x1, x0, :lo12:.LC5	//, tmp126,
	adrp	x0, .LC9	// tmp127,
	add	x0, x0, :lo12:.LC9	//, tmp127,
	bl	__assert_fail		//
.L14:
// problem1.c:32:     assert(func0(b, 5, 0.8) == 0);
	add	x0, sp, 8	// tmp128,,
	mov	w1, 52429	// tmp161,
	movk	w1, 0x3f4c, lsl 16	// tmp161,,
	fmov	s0, w1	//, tmp161
	mov	w1, 5	//,
	bl	func0		//
// problem1.c:32:     assert(func0(b, 5, 0.8) == 0);
	cmp	w0, 0	// _4,
	beq	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp129,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp129,
	mov	w2, 32	//,
	adrp	x0, .LC5	// tmp130,
	add	x1, x0, :lo12:.LC5	//, tmp130,
	adrp	x0, .LC10	// tmp131,
	add	x0, x0, :lo12:.LC10	//, tmp131,
	bl	__assert_fail		//
.L15:
// problem1.c:34:     float c[] = {1.0, 2.0, 3.0, 4.0, 5.0};
	adrp	x0, .LC2	// tmp133,
	add	x0, x0, :lo12:.LC2	// tmp132, tmp133,
	add	x2, sp, 32	// tmp134,,
	mov	x3, x0	// tmp135, tmp132
	ldp	x0, x1, [x3]	// tmp136,
	stp	x0, x1, [x2]	// tmp136, c
	ldr	w0, [x3, 16]	// tmp137,
	str	w0, [x2, 16]	// tmp137, c
// problem1.c:35:     printf("Testing case 3\n");
	adrp	x0, .LC11	// tmp138,
	add	x0, x0, :lo12:.LC11	//, tmp138,
	bl	puts		//
// problem1.c:36:     assert(func0(c, 5, 2.0) == 1);
	add	x0, sp, 32	// tmp139,,
	fmov	s0, 2.0e+0	//,
	mov	w1, 5	//,
	bl	func0		//
// problem1.c:36:     assert(func0(c, 5, 2.0) == 1);
	cmp	w0, 1	// _5,
	beq	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp140,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp140,
	mov	w2, 36	//,
	adrp	x0, .LC5	// tmp141,
	add	x1, x0, :lo12:.LC5	//, tmp141,
	adrp	x0, .LC12	// tmp142,
	add	x0, x0, :lo12:.LC12	//, tmp142,
	bl	__assert_fail		//
.L16:
// problem1.c:38:     float d[] = {1.1, 2.2, 3.1, 4.1, 5.1};
	adrp	x0, .LC3	// tmp144,
	add	x0, x0, :lo12:.LC3	// tmp143, tmp144,
	add	x2, sp, 56	// tmp145,,
	mov	x3, x0	// tmp146, tmp143
	ldp	x0, x1, [x3]	// tmp147,
	stp	x0, x1, [x2]	// tmp147, d
	ldr	w0, [x3, 16]	// tmp148,
	str	w0, [x2, 16]	// tmp148, d
// problem1.c:39:     printf("Testing case 4\n");
	adrp	x0, .LC13	// tmp149,
	add	x0, x0, :lo12:.LC13	//, tmp149,
	bl	puts		//
// problem1.c:40:     assert(func0(d, 5, 1.0) == 1);
	add	x0, sp, 56	// tmp150,,
	fmov	s0, 1.0e+0	//,
	mov	w1, 5	//,
	bl	func0		//
// problem1.c:40:     assert(func0(d, 5, 1.0) == 1);
	cmp	w0, 1	// _6,
	beq	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp151,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp151,
	mov	w2, 40	//,
	adrp	x0, .LC5	// tmp152,
	add	x1, x0, :lo12:.LC5	//, tmp152,
	adrp	x0, .LC14	// tmp153,
	add	x0, x0, :lo12:.LC14	//, tmp153,
	bl	__assert_fail		//
.L17:
// problem1.c:41:     assert(func0(d, 5, 0.5) == 0);
	add	x0, sp, 56	// tmp154,,
	fmov	s0, 5.0e-1	//,
	mov	w1, 5	//,
	bl	func0		//
// problem1.c:41:     assert(func0(d, 5, 0.5) == 0);
	cmp	w0, 0	// _7,
	beq	.L18		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp155,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp155,
	mov	w2, 41	//,
	adrp	x0, .LC5	// tmp156,
	add	x1, x0, :lo12:.LC5	//, tmp156,
	adrp	x0, .LC15	// tmp157,
	add	x0, x0, :lo12:.LC15	//, tmp157,
	bl	__assert_fail		//
.L18:
// problem1.c:43:     printf("All tests passed\n");
	adrp	x0, .LC16	// tmp158,
	add	x0, x0, :lo12:.LC16	//, tmp158,
	bl	puts		//
// problem1.c:44:     return 0;
	mov	w0, 0	// _32,
// problem1.c:45: }
	mov	w1, w0	// <retval>, _32
	adrp	x0, :got:__stack_chk_guard	// tmp160,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp160,
	ldr	x3, [sp, 104]	// tmp166, D.6625
	ldr	x2, [x0]	// tmp167,
	subs	x3, x3, x2	// tmp166, tmp167
	mov	x2, 0	// tmp167
	beq	.L20		//,
	bl	__stack_chk_fail		//
.L20:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 112]	//,,
	add	sp, sp, 128	//,,
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
	.word	1065353216
	.word	1073741824
	.word	1081711002
	.word	1082130432
	.word	1084227584
	.word	1074580685
	.align	3
.LC1:
	.word	1065353216
	.word	1073741824
	.word	1086115021
	.word	1082130432
	.word	1084227584
	.align	3
.LC2:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1082130432
	.word	1084227584
	.align	3
.LC3:
	.word	1066192077
	.word	1074580685
	.word	1078355558
	.word	1082340147
	.word	1084437299
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
