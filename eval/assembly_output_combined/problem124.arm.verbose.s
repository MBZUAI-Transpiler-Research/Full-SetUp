	.arch armv8-a
	.file	"problem124.c"
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
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	w0, [sp, 44]	// n, n
	str	x1, [sp, 32]	// out, out
	str	x2, [sp, 24]	// size, size
// problem124.c:5:     int capacity = 10;
	mov	w0, 10	// tmp122,
	str	w0, [sp, 48]	// tmp122, capacity
// problem124.c:6:     *size = 1;
	ldr	x0, [sp, 24]	// tmp123, size
	mov	w1, 1	// tmp124,
	str	w1, [x0]	// tmp124, *size_45(D)
// problem124.c:7:     out[0] = 1;
	ldr	x0, [sp, 32]	// tmp125, out
	mov	w1, 1	// tmp126,
	str	w1, [x0]	// tmp126, *out_47(D)
// problem124.c:9:     while (n != 1) {
	b	.L2		//
.L5:
// problem124.c:10:         if (n % 2 == 1) {
	ldr	w0, [sp, 44]	// tmp127, n
	cmp	w0, 0	// tmp127,
	and	w0, w0, 1	// tmp128, tmp127,
	csneg	w0, w0, w0, ge	// _1, tmp128, tmp128,
// problem124.c:10:         if (n % 2 == 1) {
	cmp	w0, 1	// _1,
	bne	.L3		//,
// problem124.c:11:             if (*size >= capacity) {
	ldr	x0, [sp, 24]	// tmp129, size
	ldr	w0, [x0]	// _2, *size_45(D)
// problem124.c:11:             if (*size >= capacity) {
	ldr	w1, [sp, 48]	// tmp130, capacity
	cmp	w1, w0	// tmp130, _2
	bgt	.L4		//,
// problem124.c:12:                 capacity *= 2;
	ldr	w0, [sp, 48]	// tmp132, capacity
	lsl	w0, w0, 1	// tmp131, tmp132,
	str	w0, [sp, 48]	// tmp131, capacity
// problem124.c:13:                 out = (int*)realloc(out, capacity * sizeof(int));
	ldrsw	x0, [sp, 48]	// _3, capacity
	lsl	x0, x0, 2	// _4, _3,
	mov	x1, x0	//, _4
	ldr	x0, [sp, 32]	//, out
	bl	realloc		//
	str	x0, [sp, 32]	//, out
.L4:
// problem124.c:15:             out[(*size)++] = n;
	ldr	x0, [sp, 24]	// tmp133, size
	ldr	w0, [x0]	// _5, *size_45(D)
// problem124.c:15:             out[(*size)++] = n;
	add	w2, w0, 1	// _7, _5,
	ldr	x1, [sp, 24]	// tmp134, size
	str	w2, [x1]	// _7, *size_45(D)
	sxtw	x0, w0	// _8, _5
// problem124.c:15:             out[(*size)++] = n;
	lsl	x0, x0, 2	// _9, _8,
	ldr	x1, [sp, 32]	// tmp135, out
	add	x0, x1, x0	// _10, tmp135, _9
// problem124.c:15:             out[(*size)++] = n;
	ldr	w1, [sp, 44]	// tmp136, n
	str	w1, [x0]	// tmp136, *_10
// problem124.c:16:             n = n * 3 + 1;
	ldr	w1, [sp, 44]	// tmp137, n
	mov	w0, w1	// tmp138, tmp137
	lsl	w0, w0, 1	// tmp139, tmp138,
	add	w0, w0, w1	// _11, tmp138, tmp137
// problem124.c:16:             n = n * 3 + 1;
	add	w0, w0, 1	// tmp140, _11,
	str	w0, [sp, 44]	// tmp140, n
	b	.L2		//
.L3:
// problem124.c:18:             n = n / 2;
	ldr	w0, [sp, 44]	// tmp142, n
	lsr	w1, w0, 31	// tmp143, tmp142,
	add	w0, w1, w0	// tmp144, tmp143, tmp142
	asr	w0, w0, 1	// tmp145, tmp144,
	str	w0, [sp, 44]	// tmp145, n
.L2:
// problem124.c:9:     while (n != 1) {
	ldr	w0, [sp, 44]	// tmp146, n
	cmp	w0, 1	// tmp146,
	bne	.L5		//,
// problem124.c:22:     for (int i = 1; i < *size; i++) {
	mov	w0, 1	// tmp147,
	str	w0, [sp, 52]	// tmp147, i
// problem124.c:22:     for (int i = 1; i < *size; i++) {
	b	.L6		//
.L10:
// problem124.c:23:         int key = out[i];
	ldrsw	x0, [sp, 52]	// _12, i
	lsl	x0, x0, 2	// _13, _12,
	ldr	x1, [sp, 32]	// tmp148, out
	add	x0, x1, x0	// _14, tmp148, _13
// problem124.c:23:         int key = out[i];
	ldr	w0, [x0]	// tmp149, *_14
	str	w0, [sp, 60]	// tmp149, key
// problem124.c:24:         int j = i - 1;
	ldr	w0, [sp, 52]	// tmp151, i
	sub	w0, w0, #1	// tmp150, tmp151,
	str	w0, [sp, 56]	// tmp150, j
// problem124.c:26:         while (j >= 0 && out[j] > key) {
	b	.L7		//
.L9:
// problem124.c:27:             out[j + 1] = out[j];
	ldrsw	x0, [sp, 56]	// _15, j
	lsl	x0, x0, 2	// _16, _15,
	ldr	x1, [sp, 32]	// tmp152, out
	add	x1, x1, x0	// _17, tmp152, _16
// problem124.c:27:             out[j + 1] = out[j];
	ldrsw	x0, [sp, 56]	// _18, j
	add	x0, x0, 1	// _19, _18,
	lsl	x0, x0, 2	// _20, _19,
	ldr	x2, [sp, 32]	// tmp153, out
	add	x0, x2, x0	// _21, tmp153, _20
// problem124.c:27:             out[j + 1] = out[j];
	ldr	w1, [x1]	// _22, *_17
// problem124.c:27:             out[j + 1] = out[j];
	str	w1, [x0]	// _22, *_21
// problem124.c:28:             j = j - 1;
	ldr	w0, [sp, 56]	// tmp155, j
	sub	w0, w0, #1	// tmp154, tmp155,
	str	w0, [sp, 56]	// tmp154, j
.L7:
// problem124.c:26:         while (j >= 0 && out[j] > key) {
	ldr	w0, [sp, 56]	// tmp156, j
	cmp	w0, 0	// tmp156,
	blt	.L8		//,
// problem124.c:26:         while (j >= 0 && out[j] > key) {
	ldrsw	x0, [sp, 56]	// _23, j
	lsl	x0, x0, 2	// _24, _23,
	ldr	x1, [sp, 32]	// tmp157, out
	add	x0, x1, x0	// _25, tmp157, _24
	ldr	w0, [x0]	// _26, *_25
// problem124.c:26:         while (j >= 0 && out[j] > key) {
	ldr	w1, [sp, 60]	// tmp158, key
	cmp	w1, w0	// tmp158, _26
	blt	.L9		//,
.L8:
// problem124.c:30:         out[j + 1] = key;
	ldrsw	x0, [sp, 56]	// _27, j
	add	x0, x0, 1	// _28, _27,
	lsl	x0, x0, 2	// _29, _28,
	ldr	x1, [sp, 32]	// tmp159, out
	add	x0, x1, x0	// _30, tmp159, _29
// problem124.c:30:         out[j + 1] = key;
	ldr	w1, [sp, 60]	// tmp160, key
	str	w1, [x0]	// tmp160, *_30
// problem124.c:22:     for (int i = 1; i < *size; i++) {
	ldr	w0, [sp, 52]	// tmp162, i
	add	w0, w0, 1	// tmp161, tmp162,
	str	w0, [sp, 52]	// tmp161, i
.L6:
// problem124.c:22:     for (int i = 1; i < *size; i++) {
	ldr	x0, [sp, 24]	// tmp163, size
	ldr	w0, [x0]	// _31, *size_45(D)
// problem124.c:22:     for (int i = 1; i < *size; i++) {
	ldr	w1, [sp, 52]	// tmp164, i
	cmp	w1, w0	// tmp164, _31
	blt	.L10		//,
// problem124.c:32: }
	nop	
	nop	
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
	str	w1, [sp, 20]	// size_a, size_a
	str	x2, [sp, 8]	// b, b
	str	w3, [sp, 16]	// size_b, size_b
// problem124.c:40:     if (size_a != size_b) return 0;
	ldr	w1, [sp, 20]	// tmp102, size_a
	ldr	w0, [sp, 16]	// tmp103, size_b
	cmp	w1, w0	// tmp102, tmp103
	beq	.L12		//,
// problem124.c:40:     if (size_a != size_b) return 0;
	mov	w0, 0	// _10,
	b	.L13		//
.L12:
// problem124.c:41:     for (int i = 0; i < size_a; i++) {
	str	wzr, [sp, 44]	//, i
// problem124.c:41:     for (int i = 0; i < size_a; i++) {
	b	.L14		//
.L16:
// problem124.c:42:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp104, a
	add	x0, x1, x0	// _3, tmp104, _2
	ldr	w1, [x0]	// _4, *_3
// problem124.c:42:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 8]	// tmp105, b
	add	x0, x2, x0	// _7, tmp105, _6
	ldr	w0, [x0]	// _8, *_7
// problem124.c:42:         if (a[i] != b[i]) return 0;
	cmp	w1, w0	// _4, _8
	beq	.L15		//,
// problem124.c:42:         if (a[i] != b[i]) return 0;
	mov	w0, 0	// _10,
	b	.L13		//
.L15:
// problem124.c:41:     for (int i = 0; i < size_a; i++) {
	ldr	w0, [sp, 44]	// tmp107, i
	add	w0, w0, 1	// tmp106, tmp107,
	str	w0, [sp, 44]	// tmp106, i
.L14:
// problem124.c:41:     for (int i = 0; i < size_a; i++) {
	ldr	w1, [sp, 44]	// tmp108, i
	ldr	w0, [sp, 20]	// tmp109, size_a
	cmp	w1, w0	// tmp108, tmp109
	blt	.L16		//,
// problem124.c:44:     return 1;
	mov	w0, 1	// _10,
.L13:
// problem124.c:45: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC2:
	.string	"problem124.c"
	.align	3
.LC3:
	.string	"issame(result, size, expected1, 6)"
	.align	3
.LC4:
	.string	"issame(result, size, expected2, 2)"
	.align	3
.LC5:
	.string	"issame(result, size, expected3, 3)"
	.align	3
.LC6:
	.string	"issame(result, size, expected4, 1)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
// problem124.c:47: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp103,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp102, tmp103,
	ldr	x1, [x0]	// tmp146,
	str	x1, [sp, 88]	// tmp146, D.4854
	mov	x1, 0	// tmp146
// problem124.c:52:     int expected1[] = {1, 5, 7, 11, 13, 17};
	adrp	x0, .LC0	// tmp105,
	add	x0, x0, :lo12:.LC0	// tmp104, tmp105,
	add	x2, sp, 64	// tmp106,,
	mov	x3, x0	// tmp107, tmp104
	ldp	x0, x1, [x3]	// tmp108,
	stp	x0, x1, [x2]	// tmp108, expected1
	ldr	x0, [x3, 16]	// tmp109,
	str	x0, [x2, 16]	// tmp109, expected1
// problem124.c:53:     result = (int*)malloc(100 * sizeof(int));
	mov	x0, 400	//,
	bl	malloc		//
	str	x0, [sp, 24]	// tmp110, result
// problem124.c:54:     func0(14, result, &size);
	add	x0, sp, 20	// tmp111,,
	mov	x2, x0	//, tmp111
	ldr	x1, [sp, 24]	//, result
	mov	w0, 14	//,
	bl	func0		//
// problem124.c:55:     assert(issame(result, size, expected1, 6));
	ldr	w0, [sp, 20]	// size.0_1, size
	add	x1, sp, 64	// tmp112,,
	mov	w3, 6	//,
	mov	x2, x1	//, tmp112
	mov	w1, w0	//, size.0_1
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _2,
	bne	.L18		//,
// problem124.c:55:     assert(issame(result, size, expected1, 6));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp113,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp113,
	mov	w2, 55	//,
	adrp	x0, .LC2	// tmp114,
	add	x1, x0, :lo12:.LC2	//, tmp114,
	adrp	x0, .LC3	// tmp115,
	add	x0, x0, :lo12:.LC3	//, tmp115,
	bl	__assert_fail		//
.L18:
// problem124.c:56:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem124.c:59:     int expected2[] = {1, 5};
	mov	w0, 1	// tmp116,
	str	w0, [sp, 40]	// tmp116, expected2[0]
	mov	w0, 5	// tmp117,
	str	w0, [sp, 44]	// tmp117, expected2[1]
// problem124.c:60:     result = (int*)malloc(100 * sizeof(int));
	mov	x0, 400	//,
	bl	malloc		//
	str	x0, [sp, 24]	// tmp118, result
// problem124.c:61:     func0(5, result, &size);
	add	x0, sp, 20	// tmp119,,
	mov	x2, x0	//, tmp119
	ldr	x1, [sp, 24]	//, result
	mov	w0, 5	//,
	bl	func0		//
// problem124.c:62:     assert(issame(result, size, expected2, 2));
	ldr	w0, [sp, 20]	// size.1_3, size
	add	x1, sp, 40	// tmp120,,
	mov	w3, 2	//,
	mov	x2, x1	//, tmp120
	mov	w1, w0	//, size.1_3
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _4,
	bne	.L19		//,
// problem124.c:62:     assert(issame(result, size, expected2, 2));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp121,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp121,
	mov	w2, 62	//,
	adrp	x0, .LC2	// tmp122,
	add	x1, x0, :lo12:.LC2	//, tmp122,
	adrp	x0, .LC4	// tmp123,
	add	x0, x0, :lo12:.LC4	//, tmp123,
	bl	__assert_fail		//
.L19:
// problem124.c:63:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem124.c:66:     int expected3[] = {1, 3, 5};
	adrp	x0, .LC1	// tmp125,
	add	x1, x0, :lo12:.LC1	// tmp124, tmp125,
	add	x0, sp, 48	// tmp126,,
	ldr	x2, [x1]	// tmp128,
	str	x2, [x0]	// tmp128, expected3
	ldr	w1, [x1, 8]	// tmp129,
	str	w1, [x0, 8]	// tmp129, expected3
// problem124.c:67:     result = (int*)malloc(100 * sizeof(int));
	mov	x0, 400	//,
	bl	malloc		//
	str	x0, [sp, 24]	// tmp130, result
// problem124.c:68:     func0(12, result, &size);
	add	x0, sp, 20	// tmp131,,
	mov	x2, x0	//, tmp131
	ldr	x1, [sp, 24]	//, result
	mov	w0, 12	//,
	bl	func0		//
// problem124.c:69:     assert(issame(result, size, expected3, 3));
	ldr	w0, [sp, 20]	// size.2_5, size
	add	x1, sp, 48	// tmp132,,
	mov	w3, 3	//,
	mov	x2, x1	//, tmp132
	mov	w1, w0	//, size.2_5
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _6,
	bne	.L20		//,
// problem124.c:69:     assert(issame(result, size, expected3, 3));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp133,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp133,
	mov	w2, 69	//,
	adrp	x0, .LC2	// tmp134,
	add	x1, x0, :lo12:.LC2	//, tmp134,
	adrp	x0, .LC5	// tmp135,
	add	x0, x0, :lo12:.LC5	//, tmp135,
	bl	__assert_fail		//
.L20:
// problem124.c:70:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem124.c:73:     int expected4[] = {1};
	mov	w0, 1	// tmp136,
	str	w0, [sp, 32]	// tmp136, expected4[0]
// problem124.c:74:     result = (int*)malloc(100 * sizeof(int));
	mov	x0, 400	//,
	bl	malloc		//
	str	x0, [sp, 24]	// tmp137, result
// problem124.c:75:     func0(1, result, &size);
	add	x0, sp, 20	// tmp138,,
	mov	x2, x0	//, tmp138
	ldr	x1, [sp, 24]	//, result
	mov	w0, 1	//,
	bl	func0		//
// problem124.c:76:     assert(issame(result, size, expected4, 1));
	ldr	w0, [sp, 20]	// size.3_7, size
	add	x1, sp, 32	// tmp139,,
	mov	w3, 1	//,
	mov	x2, x1	//, tmp139
	mov	w1, w0	//, size.3_7
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _8,
	bne	.L21		//,
// problem124.c:76:     assert(issame(result, size, expected4, 1));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp140,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp140,
	mov	w2, 76	//,
	adrp	x0, .LC2	// tmp141,
	add	x1, x0, :lo12:.LC2	//, tmp141,
	adrp	x0, .LC6	// tmp142,
	add	x0, x0, :lo12:.LC6	//, tmp142,
	bl	__assert_fail		//
.L21:
// problem124.c:77:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem124.c:79:     return 0;
	mov	w0, 0	// _39,
// problem124.c:80: }
	mov	w1, w0	// <retval>, _39
	adrp	x0, :got:__stack_chk_guard	// tmp145,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp144, tmp145,
	ldr	x3, [sp, 88]	// tmp147, D.4854
	ldr	x2, [x0]	// tmp148,
	subs	x3, x3, x2	// tmp147, tmp148
	mov	x2, 0	// tmp148
	beq	.L23		//,
	bl	__stack_chk_fail		//
.L23:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	1
	.word	5
	.word	7
	.word	11
	.word	13
	.word	17
	.align	3
.LC1:
	.word	1
	.word	3
	.word	5
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
