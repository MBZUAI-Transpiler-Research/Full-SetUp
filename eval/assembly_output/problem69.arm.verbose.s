	.arch armv8-a
	.file	"problem69.c"
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
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// arr, arr
	str	w1, [sp, 20]	// length, length
	str	x2, [sp, 8]	// output, output
// problem69.c:5:     int smallestEven = INT_MAX;
	mov	w0, 2147483647	// tmp108,
	str	w0, [sp, 36]	// tmp108, smallestEven
// problem69.c:6:     int index = -1;
	mov	w0, -1	// tmp109,
	str	w0, [sp, 40]	// tmp109, index
// problem69.c:8:     for (int i = 0; i < length; ++i) {
	str	wzr, [sp, 44]	//, i
// problem69.c:8:     for (int i = 0; i < length; ++i) {
	b	.L2		//
.L5:
// problem69.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp110, arr
	add	x0, x1, x0	// _3, tmp110, _2
	ldr	w0, [x0]	// _4, *_3
// problem69.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	and	w0, w0, 1	// _6, _5,
// problem69.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	cmp	w0, 0	// _6,
	bne	.L3		//,
// problem69.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	ldrsw	x0, [sp, 44]	// _7, i
	lsl	x0, x0, 2	// _8, _7,
	ldr	x1, [sp, 24]	// tmp111, arr
	add	x0, x1, x0	// _9, tmp111, _8
	ldr	w0, [x0]	// _10, *_9
// problem69.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	ldr	w1, [sp, 36]	// tmp112, smallestEven
	cmp	w1, w0	// tmp112, _10
	bgt	.L4		//,
// problem69.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	ldr	w0, [sp, 40]	// tmp113, index
	cmn	w0, #1	// tmp113,
	bne	.L3		//,
.L4:
// problem69.c:10:             smallestEven = arr[i];
	ldrsw	x0, [sp, 44]	// _11, i
	lsl	x0, x0, 2	// _12, _11,
	ldr	x1, [sp, 24]	// tmp114, arr
	add	x0, x1, x0	// _13, tmp114, _12
// problem69.c:10:             smallestEven = arr[i];
	ldr	w0, [x0]	// tmp115, *_13
	str	w0, [sp, 36]	// tmp115, smallestEven
// problem69.c:11:             index = i;
	ldr	w0, [sp, 44]	// tmp116, i
	str	w0, [sp, 40]	// tmp116, index
.L3:
// problem69.c:8:     for (int i = 0; i < length; ++i) {
	ldr	w0, [sp, 44]	// tmp118, i
	add	w0, w0, 1	// tmp117, tmp118,
	str	w0, [sp, 44]	// tmp117, i
.L2:
// problem69.c:8:     for (int i = 0; i < length; ++i) {
	ldr	w1, [sp, 44]	// tmp119, i
	ldr	w0, [sp, 20]	// tmp120, length
	cmp	w1, w0	// tmp119, tmp120
	blt	.L5		//,
// problem69.c:15:     if (index == -1) {
	ldr	w0, [sp, 40]	// tmp121, index
	cmn	w0, #1	// tmp121,
	bne	.L6		//,
// problem69.c:16:         return NULL;
	mov	x0, 0	// _20,
	b	.L7		//
.L6:
// problem69.c:19:     output[0] = smallestEven;
	ldr	x0, [sp, 8]	// tmp122, output
	ldr	w1, [sp, 36]	// tmp123, smallestEven
	str	w1, [x0]	// tmp123, *output_27(D)
// problem69.c:20:     output[1] = index;
	ldr	x0, [sp, 8]	// tmp124, output
	add	x0, x0, 4	// _14, tmp124,
// problem69.c:20:     output[1] = index;
	ldr	w1, [sp, 40]	// tmp125, index
	str	w1, [x0]	// tmp125, *_14
// problem69.c:21:     return output;
	ldr	x0, [sp, 8]	// _20, output
.L7:
// problem69.c:22: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
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
	str	w2, [sp, 12]	// a_length, a_length
	str	w3, [sp, 8]	// b_length, b_length
// problem69.c:31:     if (a_length != b_length) return 0;
	ldr	w1, [sp, 12]	// tmp102, a_length
	ldr	w0, [sp, 8]	// tmp103, b_length
	cmp	w1, w0	// tmp102, tmp103
	beq	.L9		//,
// problem69.c:31:     if (a_length != b_length) return 0;
	mov	w0, 0	// _10,
// problem69.c:31:     if (a_length != b_length) return 0;
	b	.L10		//
.L9:
// problem69.c:32:     for (int i = 0; i < a_length; ++i) {
	str	wzr, [sp, 44]	//, i
// problem69.c:32:     for (int i = 0; i < a_length; ++i) {
	b	.L11		//
.L13:
// problem69.c:33:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp104, a
	add	x0, x1, x0	// _3, tmp104, _2
	ldr	w1, [x0]	// _4, *_3
// problem69.c:33:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 16]	// tmp105, b
	add	x0, x2, x0	// _7, tmp105, _6
	ldr	w0, [x0]	// _8, *_7
// problem69.c:33:         if (a[i] != b[i]) return 0;
	cmp	w1, w0	// _4, _8
	beq	.L12		//,
// problem69.c:33:         if (a[i] != b[i]) return 0;
	mov	w0, 0	// _10,
// problem69.c:33:         if (a[i] != b[i]) return 0;
	b	.L10		//
.L12:
// problem69.c:32:     for (int i = 0; i < a_length; ++i) {
	ldr	w0, [sp, 44]	// tmp107, i
	add	w0, w0, 1	// tmp106, tmp107,
	str	w0, [sp, 44]	// tmp106, i
.L11:
// problem69.c:32:     for (int i = 0; i < a_length; ++i) {
	ldr	w1, [sp, 44]	// tmp108, i
	ldr	w0, [sp, 12]	// tmp109, a_length
	cmp	w1, w0	// tmp108, tmp109
	blt	.L13		//,
// problem69.c:35:     return 1;
	mov	w0, 1	// _10,
.L10:
// problem69.c:36: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC5:
	.string	"problem69.c"
	.align	3
.LC6:
	.string	"issame(result, expect1, 2, 2)"
	.align	3
.LC7:
	.string	"issame(result, expect2, 2, 2)"
	.align	3
.LC8:
	.string	"result == NULL"
	.align	3
.LC9:
	.string	"issame(result, expect4, 2, 2)"
	.align	3
.LC10:
	.string	"issame(result, expect5, 2, 2)"
	.align	3
.LC11:
	.string	"issame(result, expect6, 2, 2)"
	.align	3
.LC12:
	.string	"issame(result, expect7, 2, 2)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #240	//,,
	.cfi_def_cfa_offset 240
	stp	x29, x30, [sp, 224]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 224	//,,
// problem69.c:38: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp100,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp100,
	ldr	x1, [x0]	// tmp199,
	str	x1, [sp, 216]	// tmp199, D.5464
	mov	x1, 0	// tmp199
// problem69.c:42:     int test1[] = {4, 2, 3};
	adrp	x0, .LC0	// tmp102,
	add	x1, x0, :lo12:.LC0	// tmp101, tmp102,
	add	x0, sp, 80	// tmp103,,
	ldr	x2, [x1]	// tmp105,
	str	x2, [x0]	// tmp105, test1
	ldr	w1, [x1, 8]	// tmp106,
	str	w1, [x0, 8]	// tmp106, test1
// problem69.c:43:     int expect1[] = {2, 1};
	mov	w0, 2	// tmp107,
	str	w0, [sp, 32]	// tmp107, expect1[0]
	mov	w0, 1	// tmp108,
	str	w0, [sp, 36]	// tmp108, expect1[1]
// problem69.c:44:     result = func0(test1, 3, output);
	add	x1, sp, 24	// tmp109,,
	add	x0, sp, 80	// tmp110,,
	mov	x2, x1	//, tmp109
	mov	w1, 3	//,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem69.c:45:     assert(issame(result, expect1, 2, 2));
	add	x0, sp, 32	// tmp111,,
	mov	w3, 2	//,
	mov	w2, 2	//,
	mov	x1, x0	//, tmp111
	ldr	x0, [sp, 8]	//, result
	bl	issame		//
// problem69.c:45:     assert(issame(result, expect1, 2, 2));
	cmp	w0, 0	// _1,
	bne	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp112,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp112,
	mov	w2, 45	//,
	adrp	x0, .LC5	// tmp113,
	add	x1, x0, :lo12:.LC5	//, tmp113,
	adrp	x0, .LC6	// tmp114,
	add	x0, x0, :lo12:.LC6	//, tmp114,
	bl	__assert_fail		//
.L15:
// problem69.c:47:     int test2[] = {1, 2, 3};
	adrp	x0, .LC1	// tmp116,
	add	x1, x0, :lo12:.LC1	// tmp115, tmp116,
	add	x0, sp, 96	// tmp117,,
	ldr	x2, [x1]	// tmp119,
	str	x2, [x0]	// tmp119, test2
	ldr	w1, [x1, 8]	// tmp120,
	str	w1, [x0, 8]	// tmp120, test2
// problem69.c:48:     int expect2[] = {2, 1};
	mov	w0, 2	// tmp121,
	str	w0, [sp, 40]	// tmp121, expect2[0]
	mov	w0, 1	// tmp122,
	str	w0, [sp, 44]	// tmp122, expect2[1]
// problem69.c:49:     result = func0(test2, 3, output);
	add	x1, sp, 24	// tmp123,,
	add	x0, sp, 96	// tmp124,,
	mov	x2, x1	//, tmp123
	mov	w1, 3	//,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem69.c:50:     assert(issame(result, expect2, 2, 2));
	add	x0, sp, 40	// tmp125,,
	mov	w3, 2	//,
	mov	w2, 2	//,
	mov	x1, x0	//, tmp125
	ldr	x0, [sp, 8]	//, result
	bl	issame		//
// problem69.c:50:     assert(issame(result, expect2, 2, 2));
	cmp	w0, 0	// _2,
	bne	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp126,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp126,
	mov	w2, 50	//,
	adrp	x0, .LC5	// tmp127,
	add	x1, x0, :lo12:.LC5	//, tmp127,
	adrp	x0, .LC7	// tmp128,
	add	x0, x0, :lo12:.LC7	//, tmp128,
	bl	__assert_fail		//
.L16:
// problem69.c:53:     result = func0(test3, 0, output);
	add	x1, sp, 24	// tmp129,,
	add	x0, sp, 16	// tmp130,,
	mov	x2, x1	//, tmp129
	mov	w1, 0	//,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem69.c:54:     assert(result == NULL);
	ldr	x0, [sp, 8]	// tmp131, result
	cmp	x0, 0	// tmp131,
	beq	.L17		//,
// problem69.c:54:     assert(result == NULL);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp132,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp132,
	mov	w2, 54	//,
	adrp	x0, .LC5	// tmp133,
	add	x1, x0, :lo12:.LC5	//, tmp133,
	adrp	x0, .LC8	// tmp134,
	add	x0, x0, :lo12:.LC8	//, tmp134,
	bl	__assert_fail		//
.L17:
// problem69.c:56:     int test4[] = {5, 0, 3, 0, 4, 2};
	adrp	x0, .LC2	// tmp136,
	add	x0, x0, :lo12:.LC2	// tmp135, tmp136,
	add	x2, sp, 168	// tmp137,,
	mov	x3, x0	// tmp138, tmp135
	ldp	x0, x1, [x3]	// tmp139,
	stp	x0, x1, [x2]	// tmp139, test4
	ldr	x0, [x3, 16]	// tmp140,
	str	x0, [x2, 16]	// tmp140, test4
// problem69.c:57:     int expect4[] = {0, 1};
	str	wzr, [sp, 48]	//, expect4[0]
	mov	w0, 1	// tmp141,
	str	w0, [sp, 52]	// tmp141, expect4[1]
// problem69.c:58:     result = func0(test4, 6, output);
	add	x1, sp, 24	// tmp142,,
	add	x0, sp, 168	// tmp143,,
	mov	x2, x1	//, tmp142
	mov	w1, 6	//,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem69.c:59:     assert(issame(result, expect4, 2, 2));
	add	x0, sp, 48	// tmp144,,
	mov	w3, 2	//,
	mov	w2, 2	//,
	mov	x1, x0	//, tmp144
	ldr	x0, [sp, 8]	//, result
	bl	issame		//
// problem69.c:59:     assert(issame(result, expect4, 2, 2));
	cmp	w0, 0	// _3,
	bne	.L18		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp145,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp145,
	mov	w2, 59	//,
	adrp	x0, .LC5	// tmp146,
	add	x1, x0, :lo12:.LC5	//, tmp146,
	adrp	x0, .LC9	// tmp147,
	add	x0, x0, :lo12:.LC9	//, tmp147,
	bl	__assert_fail		//
.L18:
// problem69.c:61:     int test5[] = {1, 2, 3, 0, 5, 3};
	adrp	x0, .LC3	// tmp149,
	add	x0, x0, :lo12:.LC3	// tmp148, tmp149,
	add	x2, sp, 192	// tmp150,,
	mov	x3, x0	// tmp151, tmp148
	ldp	x0, x1, [x3]	// tmp152,
	stp	x0, x1, [x2]	// tmp152, test5
	ldr	x0, [x3, 16]	// tmp153,
	str	x0, [x2, 16]	// tmp153, test5
// problem69.c:62:     int expect5[] = {0, 3};
	str	wzr, [sp, 56]	//, expect5[0]
	mov	w0, 3	// tmp154,
	str	w0, [sp, 60]	// tmp154, expect5[1]
// problem69.c:63:     result = func0(test5, 6, output);
	add	x1, sp, 24	// tmp155,,
	add	x0, sp, 192	// tmp156,,
	mov	x2, x1	//, tmp155
	mov	w1, 6	//,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem69.c:64:     assert(issame(result, expect5, 2, 2));
	add	x0, sp, 56	// tmp157,,
	mov	w3, 2	//,
	mov	w2, 2	//,
	mov	x1, x0	//, tmp157
	ldr	x0, [sp, 8]	//, result
	bl	issame		//
// problem69.c:64:     assert(issame(result, expect5, 2, 2));
	cmp	w0, 0	// _4,
	bne	.L19		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp158,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp158,
	mov	w2, 64	//,
	adrp	x0, .LC5	// tmp159,
	add	x1, x0, :lo12:.LC5	//, tmp159,
	adrp	x0, .LC10	// tmp160,
	add	x0, x0, :lo12:.LC10	//, tmp160,
	bl	__assert_fail		//
.L19:
// problem69.c:66:     int test6[] = {5, 4, 8, 4, 8};
	adrp	x0, .LC4	// tmp162,
	add	x0, x0, :lo12:.LC4	// tmp161, tmp162,
	add	x2, sp, 144	// tmp163,,
	mov	x3, x0	// tmp164, tmp161
	ldp	x0, x1, [x3]	// tmp165,
	stp	x0, x1, [x2]	// tmp165, test6
	ldr	w0, [x3, 16]	// tmp166,
	str	w0, [x2, 16]	// tmp166, test6
// problem69.c:67:     int expect6[] = {4, 1};
	mov	w0, 4	// tmp167,
	str	w0, [sp, 64]	// tmp167, expect6[0]
	mov	w0, 1	// tmp168,
	str	w0, [sp, 68]	// tmp168, expect6[1]
// problem69.c:68:     result = func0(test6, 5, output);
	add	x1, sp, 24	// tmp169,,
	add	x0, sp, 144	// tmp170,,
	mov	x2, x1	//, tmp169
	mov	w1, 5	//,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem69.c:69:     assert(issame(result, expect6, 2, 2));
	add	x0, sp, 64	// tmp171,,
	mov	w3, 2	//,
	mov	w2, 2	//,
	mov	x1, x0	//, tmp171
	ldr	x0, [sp, 8]	//, result
	bl	issame		//
// problem69.c:69:     assert(issame(result, expect6, 2, 2));
	cmp	w0, 0	// _5,
	bne	.L20		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp172,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp172,
	mov	w2, 69	//,
	adrp	x0, .LC5	// tmp173,
	add	x1, x0, :lo12:.LC5	//, tmp173,
	adrp	x0, .LC11	// tmp174,
	add	x0, x0, :lo12:.LC11	//, tmp174,
	bl	__assert_fail		//
.L20:
// problem69.c:71:     int test7[] = {7, 6, 7, 1};
	mov	w0, 7	// tmp175,
	str	w0, [sp, 112]	// tmp175, test7[0]
	mov	w0, 6	// tmp176,
	str	w0, [sp, 116]	// tmp176, test7[1]
	mov	w0, 7	// tmp177,
	str	w0, [sp, 120]	// tmp177, test7[2]
	mov	w0, 1	// tmp178,
	str	w0, [sp, 124]	// tmp178, test7[3]
// problem69.c:72:     int expect7[] = {6, 1};
	mov	w0, 6	// tmp179,
	str	w0, [sp, 72]	// tmp179, expect7[0]
	mov	w0, 1	// tmp180,
	str	w0, [sp, 76]	// tmp180, expect7[1]
// problem69.c:73:     result = func0(test7, 4, output);
	add	x1, sp, 24	// tmp181,,
	add	x0, sp, 112	// tmp182,,
	mov	x2, x1	//, tmp181
	mov	w1, 4	//,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem69.c:74:     assert(issame(result, expect7, 2, 2));
	add	x0, sp, 72	// tmp183,,
	mov	w3, 2	//,
	mov	w2, 2	//,
	mov	x1, x0	//, tmp183
	ldr	x0, [sp, 8]	//, result
	bl	issame		//
// problem69.c:74:     assert(issame(result, expect7, 2, 2));
	cmp	w0, 0	// _6,
	bne	.L21		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp184,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp184,
	mov	w2, 74	//,
	adrp	x0, .LC5	// tmp185,
	add	x1, x0, :lo12:.LC5	//, tmp185,
	adrp	x0, .LC12	// tmp186,
	add	x0, x0, :lo12:.LC12	//, tmp186,
	bl	__assert_fail		//
.L21:
// problem69.c:76:     int test8[] = {7, 9, 7, 1};
	mov	w0, 7	// tmp187,
	str	w0, [sp, 128]	// tmp187, test8[0]
	mov	w0, 9	// tmp188,
	str	w0, [sp, 132]	// tmp188, test8[1]
	mov	w0, 7	// tmp189,
	str	w0, [sp, 136]	// tmp189, test8[2]
	mov	w0, 1	// tmp190,
	str	w0, [sp, 140]	// tmp190, test8[3]
// problem69.c:77:     result = func0(test8, 4, output);
	add	x1, sp, 24	// tmp191,,
	add	x0, sp, 128	// tmp192,,
	mov	x2, x1	//, tmp191
	mov	w1, 4	//,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem69.c:78:     assert(result == NULL);
	ldr	x0, [sp, 8]	// tmp193, result
	cmp	x0, 0	// tmp193,
	beq	.L22		//,
// problem69.c:78:     assert(result == NULL);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp194,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp194,
	mov	w2, 78	//,
	adrp	x0, .LC5	// tmp195,
	add	x1, x0, :lo12:.LC5	//, tmp195,
	adrp	x0, .LC8	// tmp196,
	add	x0, x0, :lo12:.LC8	//, tmp196,
	bl	__assert_fail		//
.L22:
// problem69.c:80:     return 0;
	mov	w0, 0	// _63,
// problem69.c:81: }
	mov	w1, w0	// <retval>, _63
	adrp	x0, :got:__stack_chk_guard	// tmp198,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp198,
	ldr	x3, [sp, 216]	// tmp200, D.5464
	ldr	x2, [x0]	// tmp201,
	subs	x3, x3, x2	// tmp200, tmp201
	mov	x2, 0	// tmp201
	beq	.L24		//,
	bl	__stack_chk_fail		//
.L24:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 224]	//,,
	add	sp, sp, 240	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	4
	.word	2
	.word	3
	.align	3
.LC1:
	.word	1
	.word	2
	.word	3
	.align	3
.LC2:
	.word	5
	.word	0
	.word	3
	.word	0
	.word	4
	.word	2
	.align	3
.LC3:
	.word	1
	.word	2
	.word	3
	.word	0
	.word	5
	.word	3
	.align	3
.LC4:
	.word	5
	.word	4
	.word	8
	.word	4
	.word	8
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
