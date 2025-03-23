	.arch armv8-a
	.file	"problem146.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC10:
	.string	"%d"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x0, [sp, 24]	// nums, nums
	str	w1, [sp, 20]	// size, size
// problem146.c:5: int* func0(int nums[], int size) {
	adrp	x0, :got:__stack_chk_guard	// tmp158,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp157, tmp158,
	ldr	x1, [x0]	// tmp211,
	str	x1, [sp, 88]	// tmp211, D.5067
	mov	x1, 0	// tmp211
// problem146.c:6:     int* sumdigit = (int*)malloc(size * sizeof(int));
	ldrsw	x0, [sp, 20]	// _1, size
	lsl	x0, x0, 2	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 64]	// tmp159, sumdigit
// problem146.c:7:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 36]	//, i
// problem146.c:7:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L7:
// problem146.c:9:         sprintf(w, "%d", abs(nums[i]));
	ldrsw	x0, [sp, 36]	// _3, i
	lsl	x0, x0, 2	// _4, _3,
	ldr	x1, [sp, 24]	// tmp160, nums
	add	x0, x1, x0	// _5, tmp160, _4
	ldr	w0, [x0]	// _6, *_5
// problem146.c:9:         sprintf(w, "%d", abs(nums[i]));
	cmp	w0, 0	// _6,
	csneg	w0, w0, w0, ge	// _7, _6, _6,
	add	x3, sp, 72	// tmp161,,
	mov	w2, w0	//, _7
	adrp	x0, .LC10	// tmp162,
	add	x1, x0, :lo12:.LC10	//, tmp162,
	mov	x0, x3	//, tmp161
	bl	sprintf		//
// problem146.c:10:         int sum = 0, length = strlen(w);
	str	wzr, [sp, 40]	//, sum
// problem146.c:10:         int sum = 0, length = strlen(w);
	add	x0, sp, 72	// tmp163,,
	bl	strlen		//
// problem146.c:10:         int sum = 0, length = strlen(w);
	str	w0, [sp, 60]	// tmp164, length
// problem146.c:11:         for (int j = 1; j < length; j++)
	mov	w0, 1	// tmp165,
	str	w0, [sp, 44]	// tmp165, j
// problem146.c:11:         for (int j = 1; j < length; j++)
	b	.L3		//
.L4:
// problem146.c:12:             sum += w[j] - '0';
	ldrsw	x0, [sp, 44]	// tmp166, j
	add	x1, sp, 72	// tmp167,,
	ldrb	w0, [x1, x0]	// _9, w[j_67]
// problem146.c:12:             sum += w[j] - '0';
	sub	w0, w0, #48	// _11, _10,
// problem146.c:12:             sum += w[j] - '0';
	ldr	w1, [sp, 40]	// tmp169, sum
	add	w0, w1, w0	// tmp168, tmp169, _11
	str	w0, [sp, 40]	// tmp168, sum
// problem146.c:11:         for (int j = 1; j < length; j++)
	ldr	w0, [sp, 44]	// tmp171, j
	add	w0, w0, 1	// tmp170, tmp171,
	str	w0, [sp, 44]	// tmp170, j
.L3:
// problem146.c:11:         for (int j = 1; j < length; j++)
	ldr	w1, [sp, 44]	// tmp172, j
	ldr	w0, [sp, 60]	// tmp173, length
	cmp	w1, w0	// tmp172, tmp173
	blt	.L4		//,
// problem146.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	ldrsw	x0, [sp, 36]	// _12, i
	lsl	x0, x0, 2	// _13, _12,
	ldr	x1, [sp, 24]	// tmp174, nums
	add	x0, x1, x0	// _14, tmp174, _13
	ldr	w0, [x0]	// _15, *_14
// problem146.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	cmp	w0, 0	// _15,
	ble	.L5		//,
// problem146.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	ldrb	w0, [sp, 72]	// _16, w[0]
// problem146.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	sub	w0, w0, #48	// _18, _17,
// problem146.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	ldr	w1, [sp, 40]	// tmp176, sum
	add	w0, w1, w0	// tmp175, tmp176, _18
	str	w0, [sp, 40]	// tmp175, sum
	b	.L6		//
.L5:
// problem146.c:14:         else sum -= w[0] - '0';
	ldrb	w0, [sp, 72]	// _19, w[0]
// problem146.c:14:         else sum -= w[0] - '0';
	sub	w0, w0, #48	// _21, _20,
// problem146.c:14:         else sum -= w[0] - '0';
	ldr	w1, [sp, 40]	// tmp178, sum
	sub	w0, w1, w0	// tmp177, tmp178, _21
	str	w0, [sp, 40]	// tmp177, sum
.L6:
// problem146.c:15:         sumdigit[i] = sum;
	ldrsw	x0, [sp, 36]	// _22, i
	lsl	x0, x0, 2	// _23, _22,
	ldr	x1, [sp, 64]	// tmp179, sumdigit
	add	x0, x1, x0	// _24, tmp179, _23
// problem146.c:15:         sumdigit[i] = sum;
	ldr	w1, [sp, 40]	// tmp180, sum
	str	w1, [x0]	// tmp180, *_24
// problem146.c:7:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 36]	// tmp182, i
	add	w0, w0, 1	// tmp181, tmp182,
	str	w0, [sp, 36]	// tmp181, i
.L2:
// problem146.c:7:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 36]	// tmp183, i
	ldr	w0, [sp, 20]	// tmp184, size
	cmp	w1, w0	// tmp183, tmp184
	blt	.L7		//,
// problem146.c:18:     for (int i = 0; i < size; i++)
	str	wzr, [sp, 48]	//, i
// problem146.c:18:     for (int i = 0; i < size; i++)
	b	.L8		//
.L12:
// problem146.c:19:         for (int j = 1; j < size; j++)
	mov	w0, 1	// tmp185,
	str	w0, [sp, 52]	// tmp185, j
// problem146.c:19:         for (int j = 1; j < size; j++)
	b	.L9		//
.L11:
// problem146.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	ldrsw	x0, [sp, 52]	// _25, j
	lsl	x0, x0, 2	// _26, _25,
	sub	x0, x0, #4	// _27, _26,
	ldr	x1, [sp, 64]	// tmp186, sumdigit
	add	x0, x1, x0	// _28, tmp186, _27
	ldr	w1, [x0]	// _29, *_28
// problem146.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	ldrsw	x0, [sp, 52]	// _30, j
	lsl	x0, x0, 2	// _31, _30,
	ldr	x2, [sp, 64]	// tmp187, sumdigit
	add	x0, x2, x0	// _32, tmp187, _31
	ldr	w0, [x0]	// _33, *_32
// problem146.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	cmp	w1, w0	// _29, _33
	ble	.L10		//,
// problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldrsw	x0, [sp, 52]	// _34, j
	lsl	x0, x0, 2	// _35, _34,
	ldr	x1, [sp, 64]	// tmp188, sumdigit
	add	x0, x1, x0	// _36, tmp188, _35
// problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldr	w0, [x0]	// tmp189, *_36
	str	w0, [sp, 56]	// tmp189, m
// problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldrsw	x0, [sp, 52]	// _37, j
	lsl	x0, x0, 2	// _38, _37,
	sub	x0, x0, #4	// _39, _38,
	ldr	x1, [sp, 64]	// tmp190, sumdigit
	add	x1, x1, x0	// _40, tmp190, _39
// problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldrsw	x0, [sp, 52]	// _41, j
	lsl	x0, x0, 2	// _42, _41,
	ldr	x2, [sp, 64]	// tmp191, sumdigit
	add	x0, x2, x0	// _43, tmp191, _42
// problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldr	w1, [x1]	// _44, *_40
// problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	str	w1, [x0]	// _44, *_43
// problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldrsw	x0, [sp, 52]	// _45, j
	lsl	x0, x0, 2	// _46, _45,
	sub	x0, x0, #4	// _47, _46,
	ldr	x1, [sp, 64]	// tmp192, sumdigit
	add	x0, x1, x0	// _48, tmp192, _47
// problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldr	w1, [sp, 56]	// tmp193, m
	str	w1, [x0]	// tmp193, *_48
// problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldrsw	x0, [sp, 52]	// _49, j
	lsl	x0, x0, 2	// _50, _49,
	ldr	x1, [sp, 24]	// tmp194, nums
	add	x0, x1, x0	// _51, tmp194, _50
// problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldr	w0, [x0]	// tmp195, *_51
	str	w0, [sp, 56]	// tmp195, m
// problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldrsw	x0, [sp, 52]	// _52, j
	lsl	x0, x0, 2	// _53, _52,
	sub	x0, x0, #4	// _54, _53,
	ldr	x1, [sp, 24]	// tmp196, nums
	add	x1, x1, x0	// _55, tmp196, _54
// problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldrsw	x0, [sp, 52]	// _56, j
	lsl	x0, x0, 2	// _57, _56,
	ldr	x2, [sp, 24]	// tmp197, nums
	add	x0, x2, x0	// _58, tmp197, _57
// problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldr	w1, [x1]	// _59, *_55
// problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	str	w1, [x0]	// _59, *_58
// problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldrsw	x0, [sp, 52]	// _60, j
	lsl	x0, x0, 2	// _61, _60,
	sub	x0, x0, #4	// _62, _61,
	ldr	x1, [sp, 24]	// tmp198, nums
	add	x0, x1, x0	// _63, tmp198, _62
// problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldr	w1, [sp, 56]	// tmp199, m
	str	w1, [x0]	// tmp199, *_63
.L10:
// problem146.c:19:         for (int j = 1; j < size; j++)
	ldr	w0, [sp, 52]	// tmp201, j
	add	w0, w0, 1	// tmp200, tmp201,
	str	w0, [sp, 52]	// tmp200, j
.L9:
// problem146.c:19:         for (int j = 1; j < size; j++)
	ldr	w1, [sp, 52]	// tmp202, j
	ldr	w0, [sp, 20]	// tmp203, size
	cmp	w1, w0	// tmp202, tmp203
	blt	.L11		//,
// problem146.c:18:     for (int i = 0; i < size; i++)
	ldr	w0, [sp, 48]	// tmp205, i
	add	w0, w0, 1	// tmp204, tmp205,
	str	w0, [sp, 48]	// tmp204, i
.L8:
// problem146.c:18:     for (int i = 0; i < size; i++)
	ldr	w1, [sp, 48]	// tmp206, i
	ldr	w0, [sp, 20]	// tmp207, size
	cmp	w1, w0	// tmp206, tmp207
	blt	.L12		//,
// problem146.c:25:     free(sumdigit);
	ldr	x0, [sp, 64]	//, sumdigit
	bl	free		//
// problem146.c:26:     return nums;
	ldr	x0, [sp, 24]	// _82, nums
	mov	x1, x0	// <retval>, _82
// problem146.c:27: }
	adrp	x0, :got:__stack_chk_guard	// tmp210,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp209, tmp210,
	ldr	x3, [sp, 88]	// tmp212, D.5067
	ldr	x2, [x0]	// tmp213,
	subs	x3, x3, x2	// tmp212, tmp213
	mov	x2, 0	// tmp213
	beq	.L14		//,
	bl	__stack_chk_fail		//
.L14:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp], 96	//,,,
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
	str	w2, [sp, 12]	// size_a, size_a
	str	w3, [sp, 8]	// size_b, size_b
// problem146.c:35:     if (size_a != size_b) return 0;
	ldr	w1, [sp, 12]	// tmp102, size_a
	ldr	w0, [sp, 8]	// tmp103, size_b
	cmp	w1, w0	// tmp102, tmp103
	beq	.L16		//,
// problem146.c:35:     if (size_a != size_b) return 0;
	mov	w0, 0	// _10,
	b	.L17		//
.L16:
// problem146.c:36:     for (int i = 0; i < size_a; i++) {
	str	wzr, [sp, 44]	//, i
// problem146.c:36:     for (int i = 0; i < size_a; i++) {
	b	.L18		//
.L20:
// problem146.c:37:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp104, a
	add	x0, x1, x0	// _3, tmp104, _2
	ldr	w1, [x0]	// _4, *_3
// problem146.c:37:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 16]	// tmp105, b
	add	x0, x2, x0	// _7, tmp105, _6
	ldr	w0, [x0]	// _8, *_7
// problem146.c:37:         if (a[i] != b[i]) return 0;
	cmp	w1, w0	// _4, _8
	beq	.L19		//,
// problem146.c:37:         if (a[i] != b[i]) return 0;
	mov	w0, 0	// _10,
	b	.L17		//
.L19:
// problem146.c:36:     for (int i = 0; i < size_a; i++) {
	ldr	w0, [sp, 44]	// tmp107, i
	add	w0, w0, 1	// tmp106, tmp107,
	str	w0, [sp, 44]	// tmp106, i
.L18:
// problem146.c:36:     for (int i = 0; i < size_a; i++) {
	ldr	w1, [sp, 44]	// tmp108, i
	ldr	w0, [sp, 12]	// tmp109, size_a
	cmp	w1, w0	// tmp108, tmp109
	blt	.L20		//,
// problem146.c:39:     return 1;
	mov	w0, 1	// _10,
.L17:
// problem146.c:40: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC11:
	.string	"problem146.c"
	.align	3
.LC12:
	.string	"issame(func0(test1, 5), expected1, 5, 5)"
	.align	3
.LC13:
	.string	"issame(func0(test2, 15), expected2, 15, 15)"
	.align	3
.LC14:
	.string	"issame(func0(test3, 0), expected3, 0, 0)"
	.align	3
.LC15:
	.string	"issame(func0(test4, 8), expected4, 8, 8)"
	.align	3
.LC16:
	.string	"issame(func0(test5, 11), expected5, 11, 11)"
	.align	3
.LC17:
	.string	"issame(func0(test6, 7), expected6, 7, 7)"
	.align	3
.LC18:
	.string	"All tests passed!"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -448]!	//,,,
	.cfi_def_cfa_offset 448
	.cfi_offset 29, -448
	.cfi_offset 30, -440
	mov	x29, sp	//,
// problem146.c:42: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x1, [x0]	// tmp208,
	str	x1, [sp, 440]	// tmp208, D.5071
	mov	x1, 0	// tmp208
// problem146.c:43:     int test1[] = {1, 11, -1, -11, -12};
	adrp	x0, .LC0	// tmp109,
	add	x0, x0, :lo12:.LC0	// tmp108, tmp109,
	add	x2, sp, 40	// tmp110,,
	mov	x3, x0	// tmp111, tmp108
	ldp	x0, x1, [x3]	// tmp112,
	stp	x0, x1, [x2]	// tmp112, test1
	ldr	w0, [x3, 16]	// tmp113,
	str	w0, [x2, 16]	// tmp113, test1
// problem146.c:44:     int expected1[] = {-1, -11, 1, -12, 11};
	adrp	x0, .LC1	// tmp115,
	add	x0, x0, :lo12:.LC1	// tmp114, tmp115,
	add	x2, sp, 64	// tmp116,,
	mov	x3, x0	// tmp117, tmp114
	ldp	x0, x1, [x3]	// tmp118,
	stp	x0, x1, [x2]	// tmp118, expected1
	ldr	w0, [x3, 16]	// tmp119,
	str	w0, [x2, 16]	// tmp119, expected1
// problem146.c:45:     assert(issame(func0(test1, 5), expected1, 5, 5));
	add	x0, sp, 40	// tmp120,,
	mov	w1, 5	//,
	bl	func0		//
	mov	x4, x0	// _1,
	add	x0, sp, 64	// tmp121,,
	mov	w3, 5	//,
	mov	w2, 5	//,
	mov	x1, x0	//, tmp121
	mov	x0, x4	//, _1
	bl	issame		//
	cmp	w0, 0	// _2,
	bne	.L22		//,
// problem146.c:45:     assert(issame(func0(test1, 5), expected1, 5, 5));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp122,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp122,
	mov	w2, 45	//,
	adrp	x0, .LC11	// tmp123,
	add	x1, x0, :lo12:.LC11	//, tmp123,
	adrp	x0, .LC12	// tmp124,
	add	x0, x0, :lo12:.LC12	//, tmp124,
	bl	__assert_fail		//
.L22:
// problem146.c:47:     int test2[] = {1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46};
	adrp	x0, .LC2	// tmp126,
	add	x1, x0, :lo12:.LC2	// tmp125, tmp126,
	add	x0, sp, 312	// tmp127,,
	ldp	q0, q1, [x1]	// tmp129, tmp130,
	stp	q0, q1, [x0]	// tmp129, tmp130, test2
	ldr	q0, [x1, 32]	// tmp131,
	str	q0, [x0, 32]	// tmp131, test2
	ldr	q0, [x1, 44]	// tmp132,
	str	q0, [x0, 44]	// tmp132, test2
// problem146.c:48:     int expected2[] = {0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457};
	adrp	x0, .LC3	// tmp134,
	add	x1, x0, :lo12:.LC3	// tmp133, tmp134,
	add	x0, sp, 376	// tmp135,,
	ldp	q0, q1, [x1]	// tmp137, tmp138,
	stp	q0, q1, [x0]	// tmp137, tmp138, expected2
	ldr	q0, [x1, 32]	// tmp139,
	str	q0, [x0, 32]	// tmp139, expected2
	ldr	q0, [x1, 44]	// tmp140,
	str	q0, [x0, 44]	// tmp140, expected2
// problem146.c:49:     assert(issame(func0(test2, 15), expected2, 15, 15));
	add	x0, sp, 312	// tmp141,,
	mov	w1, 15	//,
	bl	func0		//
	mov	x4, x0	// _3,
	add	x0, sp, 376	// tmp142,,
	mov	w3, 15	//,
	mov	w2, 15	//,
	mov	x1, x0	//, tmp142
	mov	x0, x4	//, _3
	bl	issame		//
	cmp	w0, 0	// _4,
	bne	.L23		//,
// problem146.c:49:     assert(issame(func0(test2, 15), expected2, 15, 15));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp143,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp143,
	mov	w2, 49	//,
	adrp	x0, .LC11	// tmp144,
	add	x1, x0, :lo12:.LC11	//, tmp144,
	adrp	x0, .LC13	// tmp145,
	add	x0, x0, :lo12:.LC13	//, tmp145,
	bl	__assert_fail		//
.L23:
// problem146.c:53:     assert(issame(func0(test3, 0), expected3, 0, 0));
	add	x0, sp, 24	// tmp146,,
	mov	w1, 0	//,
	bl	func0		//
	mov	x4, x0	// _5,
	add	x0, sp, 32	// tmp147,,
	mov	w3, 0	//,
	mov	w2, 0	//,
	mov	x1, x0	//, tmp147
	mov	x0, x4	//, _5
	bl	issame		//
	cmp	w0, 0	// _6,
	bne	.L24		//,
// problem146.c:53:     assert(issame(func0(test3, 0), expected3, 0, 0));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp148,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp148,
	mov	w2, 53	//,
	adrp	x0, .LC11	// tmp149,
	add	x1, x0, :lo12:.LC11	//, tmp149,
	adrp	x0, .LC14	// tmp150,
	add	x0, x0, :lo12:.LC14	//, tmp150,
	bl	__assert_fail		//
.L24:
// problem146.c:55:     int test4[] = {1, -11, -32, 43, 54, -98, 2, -3};
	adrp	x0, .LC4	// tmp152,
	add	x1, x0, :lo12:.LC4	// tmp151, tmp152,
	add	x0, sp, 152	// tmp153,,
	ldp	q0, q1, [x1]	// tmp155, tmp156,
	stp	q0, q1, [x0]	// tmp155, tmp156, test4
// problem146.c:56:     int expected4[] = {-3, -32, -98, -11, 1, 2, 43, 54};
	adrp	x0, .LC5	// tmp158,
	add	x1, x0, :lo12:.LC5	// tmp157, tmp158,
	add	x0, sp, 184	// tmp159,,
	ldp	q0, q1, [x1]	// tmp161, tmp162,
	stp	q0, q1, [x0]	// tmp161, tmp162, expected4
// problem146.c:57:     assert(issame(func0(test4, 8), expected4, 8, 8));
	add	x0, sp, 152	// tmp163,,
	mov	w1, 8	//,
	bl	func0		//
	mov	x4, x0	// _7,
	add	x0, sp, 184	// tmp164,,
	mov	w3, 8	//,
	mov	w2, 8	//,
	mov	x1, x0	//, tmp164
	mov	x0, x4	//, _7
	bl	issame		//
	cmp	w0, 0	// _8,
	bne	.L25		//,
// problem146.c:57:     assert(issame(func0(test4, 8), expected4, 8, 8));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp165,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp165,
	mov	w2, 57	//,
	adrp	x0, .LC11	// tmp166,
	add	x1, x0, :lo12:.LC11	//, tmp166,
	adrp	x0, .LC15	// tmp167,
	add	x0, x0, :lo12:.LC15	//, tmp167,
	bl	__assert_fail		//
.L25:
// problem146.c:59:     int test5[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
	adrp	x0, .LC6	// tmp169,
	add	x1, x0, :lo12:.LC6	// tmp168, tmp169,
	add	x0, sp, 216	// tmp170,,
	ldp	q0, q1, [x1]	// tmp172, tmp173,
	stp	q0, q1, [x0]	// tmp172, tmp173, test5
	ldr	q0, [x1, 28]	// tmp174,
	str	q0, [x0, 28]	// tmp174, test5
// problem146.c:60:     int expected5[] = {1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9};
	adrp	x0, .LC7	// tmp176,
	add	x1, x0, :lo12:.LC7	// tmp175, tmp176,
	add	x0, sp, 264	// tmp177,,
	ldp	q0, q1, [x1]	// tmp179, tmp180,
	stp	q0, q1, [x0]	// tmp179, tmp180, expected5
	ldr	q0, [x1, 28]	// tmp181,
	str	q0, [x0, 28]	// tmp181, expected5
// problem146.c:61:     assert(issame(func0(test5, 11), expected5, 11, 11));
	add	x0, sp, 216	// tmp182,,
	mov	w1, 11	//,
	bl	func0		//
	mov	x4, x0	// _9,
	add	x0, sp, 264	// tmp183,,
	mov	w3, 11	//,
	mov	w2, 11	//,
	mov	x1, x0	//, tmp183
	mov	x0, x4	//, _9
	bl	issame		//
	cmp	w0, 0	// _10,
	bne	.L26		//,
// problem146.c:61:     assert(issame(func0(test5, 11), expected5, 11, 11));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp184,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp184,
	mov	w2, 61	//,
	adrp	x0, .LC11	// tmp185,
	add	x1, x0, :lo12:.LC11	//, tmp185,
	adrp	x0, .LC16	// tmp186,
	add	x0, x0, :lo12:.LC16	//, tmp186,
	bl	__assert_fail		//
.L26:
// problem146.c:63:     int test6[] = {0, 6, 6, -76, -21, 23, 4};
	adrp	x0, .LC8	// tmp188,
	add	x1, x0, :lo12:.LC8	// tmp187, tmp188,
	add	x0, sp, 88	// tmp189,,
	ldr	q0, [x1]	// tmp191,
	str	q0, [x0]	// tmp191, test6
	ldr	q0, [x1, 12]	// tmp192,
	str	q0, [x0, 12]	// tmp192, test6
// problem146.c:64:     int expected6[] = {-76, -21, 0, 4, 23, 6, 6};
	adrp	x0, .LC9	// tmp194,
	add	x1, x0, :lo12:.LC9	// tmp193, tmp194,
	add	x0, sp, 120	// tmp195,,
	ldr	q0, [x1]	// tmp197,
	str	q0, [x0]	// tmp197, expected6
	ldr	q0, [x1, 12]	// tmp198,
	str	q0, [x0, 12]	// tmp198, expected6
// problem146.c:65:     assert(issame(func0(test6, 7), expected6, 7, 7));
	add	x0, sp, 88	// tmp199,,
	mov	w1, 7	//,
	bl	func0		//
	mov	x4, x0	// _11,
	add	x0, sp, 120	// tmp200,,
	mov	w3, 7	//,
	mov	w2, 7	//,
	mov	x1, x0	//, tmp200
	mov	x0, x4	//, _11
	bl	issame		//
	cmp	w0, 0	// _12,
	bne	.L27		//,
// problem146.c:65:     assert(issame(func0(test6, 7), expected6, 7, 7));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp201,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp201,
	mov	w2, 65	//,
	adrp	x0, .LC11	// tmp202,
	add	x1, x0, :lo12:.LC11	//, tmp202,
	adrp	x0, .LC17	// tmp203,
	add	x0, x0, :lo12:.LC17	//, tmp203,
	bl	__assert_fail		//
.L27:
// problem146.c:67:     printf("All tests passed!\n");
	adrp	x0, .LC18	// tmp204,
	add	x0, x0, :lo12:.LC18	//, tmp204,
	bl	puts		//
// problem146.c:69:     return 0;
	mov	w0, 0	// _45,
// problem146.c:70: }
	mov	w1, w0	// <retval>, _45
	adrp	x0, :got:__stack_chk_guard	// tmp207,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp206, tmp207,
	ldr	x3, [sp, 440]	// tmp209, D.5071
	ldr	x2, [x0]	// tmp210,
	subs	x3, x3, x2	// tmp209, tmp210
	mov	x2, 0	// tmp210
	beq	.L29		//,
	bl	__stack_chk_fail		//
.L29:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 448	//,,,
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
	.word	11
	.word	-1
	.word	-11
	.word	-12
	.align	3
.LC1:
	.word	-1
	.word	-11
	.word	1
	.word	-12
	.word	11
	.align	3
.LC2:
	.word	1234
	.word	423
	.word	463
	.word	145
	.word	2
	.word	423
	.word	423
	.word	53
	.word	6
	.word	37
	.word	3457
	.word	3
	.word	56
	.word	0
	.word	46
	.align	3
.LC3:
	.word	0
	.word	2
	.word	3
	.word	6
	.word	53
	.word	423
	.word	423
	.word	423
	.word	1234
	.word	145
	.word	37
	.word	46
	.word	56
	.word	463
	.word	3457
	.align	3
.LC4:
	.word	1
	.word	-11
	.word	-32
	.word	43
	.word	54
	.word	-98
	.word	2
	.word	-3
	.align	3
.LC5:
	.word	-3
	.word	-32
	.word	-98
	.word	-11
	.word	1
	.word	2
	.word	43
	.word	54
	.align	3
.LC6:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.align	3
.LC7:
	.word	1
	.word	10
	.word	2
	.word	11
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.align	3
.LC8:
	.word	0
	.word	6
	.word	6
	.word	-76
	.word	-21
	.word	23
	.word	4
	.align	3
.LC9:
	.word	-76
	.word	-21
	.word	0
	.word	4
	.word	23
	.word	6
	.word	6
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
