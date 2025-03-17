	.arch armv8-a
	.file	"problem146.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
	sub	sp, sp, #96	//,,
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80	//,,
	str	x0, [sp, 8]	// nums, nums
	str	w1, [sp, 4]	// size, size
// problem146.c:5: int* func0(int nums[], int size) {
	adrp	x0, :got:__stack_chk_guard	// tmp157,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp157,
	ldr	x1, [x0]	// tmp209,
	str	x1, [sp, 72]	// tmp209, D.5683
	mov	x1, 0	// tmp209
// problem146.c:6:     int* sumdigit = (int*)malloc(size * sizeof(int));
	ldrsw	x0, [sp, 4]	// _1, size
	lsl	x0, x0, 2	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 48]	// tmp158, sumdigit
// problem146.c:7:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 20]	//, i
// problem146.c:7:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L7:
// problem146.c:9:         sprintf(w, "%d", abs(nums[i]));
	ldrsw	x0, [sp, 20]	// _3, i
	lsl	x0, x0, 2	// _4, _3,
	ldr	x1, [sp, 8]	// tmp159, nums
	add	x0, x1, x0	// _5, tmp159, _4
	ldr	w0, [x0]	// _6, *_5
// problem146.c:9:         sprintf(w, "%d", abs(nums[i]));
	cmp	w0, 0	// _6,
	csneg	w0, w0, w0, ge	// _7, _6, _6,
	add	x3, sp, 56	// tmp160,,
	mov	w2, w0	//, _7
	adrp	x0, .LC10	// tmp161,
	add	x1, x0, :lo12:.LC10	//, tmp161,
	mov	x0, x3	//, tmp160
	bl	sprintf		//
// problem146.c:10:         int sum = 0, length = strlen(w);
	str	wzr, [sp, 24]	//, sum
// problem146.c:10:         int sum = 0, length = strlen(w);
	add	x0, sp, 56	// tmp162,,
	bl	strlen		//
// problem146.c:10:         int sum = 0, length = strlen(w);
	str	w0, [sp, 44]	// tmp163, length
// problem146.c:11:         for (int j = 1; j < length; j++)
	mov	w0, 1	// tmp164,
	str	w0, [sp, 28]	// tmp164, j
// problem146.c:11:         for (int j = 1; j < length; j++)
	b	.L3		//
.L4:
// problem146.c:12:             sum += w[j] - '0';
	ldrsw	x0, [sp, 28]	// tmp165, j
	add	x1, sp, 56	// tmp166,,
	ldrb	w0, [x1, x0]	// _9, w[j_67]
// problem146.c:12:             sum += w[j] - '0';
	sub	w0, w0, #48	// _11, _10,
// problem146.c:12:             sum += w[j] - '0';
	ldr	w1, [sp, 24]	// tmp168, sum
	add	w0, w1, w0	// tmp167, tmp168, _11
	str	w0, [sp, 24]	// tmp167, sum
// problem146.c:11:         for (int j = 1; j < length; j++)
	ldr	w0, [sp, 28]	// tmp170, j
	add	w0, w0, 1	// tmp169, tmp170,
	str	w0, [sp, 28]	// tmp169, j
.L3:
// problem146.c:11:         for (int j = 1; j < length; j++)
	ldr	w1, [sp, 28]	// tmp171, j
	ldr	w0, [sp, 44]	// tmp172, length
	cmp	w1, w0	// tmp171, tmp172
	blt	.L4		//,
// problem146.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	ldrsw	x0, [sp, 20]	// _12, i
	lsl	x0, x0, 2	// _13, _12,
	ldr	x1, [sp, 8]	// tmp173, nums
	add	x0, x1, x0	// _14, tmp173, _13
	ldr	w0, [x0]	// _15, *_14
// problem146.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	cmp	w0, 0	// _15,
	ble	.L5		//,
// problem146.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	ldrb	w0, [sp, 56]	// _16, w[0]
// problem146.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	sub	w0, w0, #48	// _18, _17,
// problem146.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	ldr	w1, [sp, 24]	// tmp175, sum
	add	w0, w1, w0	// tmp174, tmp175, _18
	str	w0, [sp, 24]	// tmp174, sum
	b	.L6		//
.L5:
// problem146.c:14:         else sum -= w[0] - '0';
	ldrb	w0, [sp, 56]	// _19, w[0]
// problem146.c:14:         else sum -= w[0] - '0';
	sub	w0, w0, #48	// _21, _20,
// problem146.c:14:         else sum -= w[0] - '0';
	ldr	w1, [sp, 24]	// tmp177, sum
	sub	w0, w1, w0	// tmp176, tmp177, _21
	str	w0, [sp, 24]	// tmp176, sum
.L6:
// problem146.c:15:         sumdigit[i] = sum;
	ldrsw	x0, [sp, 20]	// _22, i
	lsl	x0, x0, 2	// _23, _22,
	ldr	x1, [sp, 48]	// tmp178, sumdigit
	add	x0, x1, x0	// _24, tmp178, _23
// problem146.c:15:         sumdigit[i] = sum;
	ldr	w1, [sp, 24]	// tmp179, sum
	str	w1, [x0]	// tmp179, *_24
// problem146.c:7:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 20]	// tmp181, i
	add	w0, w0, 1	// tmp180, tmp181,
	str	w0, [sp, 20]	// tmp180, i
.L2:
// problem146.c:7:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 20]	// tmp182, i
	ldr	w0, [sp, 4]	// tmp183, size
	cmp	w1, w0	// tmp182, tmp183
	blt	.L7		//,
// problem146.c:18:     for (int i = 0; i < size; i++)
	str	wzr, [sp, 32]	//, i
// problem146.c:18:     for (int i = 0; i < size; i++)
	b	.L8		//
.L12:
// problem146.c:19:         for (int j = 1; j < size; j++)
	mov	w0, 1	// tmp184,
	str	w0, [sp, 36]	// tmp184, j
// problem146.c:19:         for (int j = 1; j < size; j++)
	b	.L9		//
.L11:
// problem146.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	ldrsw	x0, [sp, 36]	// _25, j
	lsl	x0, x0, 2	// _26, _25,
	sub	x0, x0, #4	// _27, _26,
	ldr	x1, [sp, 48]	// tmp185, sumdigit
	add	x0, x1, x0	// _28, tmp185, _27
	ldr	w1, [x0]	// _29, *_28
// problem146.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	ldrsw	x0, [sp, 36]	// _30, j
	lsl	x0, x0, 2	// _31, _30,
	ldr	x2, [sp, 48]	// tmp186, sumdigit
	add	x0, x2, x0	// _32, tmp186, _31
	ldr	w0, [x0]	// _33, *_32
// problem146.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	cmp	w1, w0	// _29, _33
	ble	.L10		//,
// problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldrsw	x0, [sp, 36]	// _34, j
	lsl	x0, x0, 2	// _35, _34,
	ldr	x1, [sp, 48]	// tmp187, sumdigit
	add	x0, x1, x0	// _36, tmp187, _35
// problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldr	w0, [x0]	// tmp188, *_36
	str	w0, [sp, 40]	// tmp188, m
// problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldrsw	x0, [sp, 36]	// _37, j
	lsl	x0, x0, 2	// _38, _37,
	sub	x0, x0, #4	// _39, _38,
	ldr	x1, [sp, 48]	// tmp189, sumdigit
	add	x1, x1, x0	// _40, tmp189, _39
// problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldrsw	x0, [sp, 36]	// _41, j
	lsl	x0, x0, 2	// _42, _41,
	ldr	x2, [sp, 48]	// tmp190, sumdigit
	add	x0, x2, x0	// _43, tmp190, _42
// problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldr	w1, [x1]	// _44, *_40
// problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	str	w1, [x0]	// _44, *_43
// problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldrsw	x0, [sp, 36]	// _45, j
	lsl	x0, x0, 2	// _46, _45,
	sub	x0, x0, #4	// _47, _46,
	ldr	x1, [sp, 48]	// tmp191, sumdigit
	add	x0, x1, x0	// _48, tmp191, _47
// problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldr	w1, [sp, 40]	// tmp192, m
	str	w1, [x0]	// tmp192, *_48
// problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldrsw	x0, [sp, 36]	// _49, j
	lsl	x0, x0, 2	// _50, _49,
	ldr	x1, [sp, 8]	// tmp193, nums
	add	x0, x1, x0	// _51, tmp193, _50
// problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldr	w0, [x0]	// tmp194, *_51
	str	w0, [sp, 40]	// tmp194, m
// problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldrsw	x0, [sp, 36]	// _52, j
	lsl	x0, x0, 2	// _53, _52,
	sub	x0, x0, #4	// _54, _53,
	ldr	x1, [sp, 8]	// tmp195, nums
	add	x1, x1, x0	// _55, tmp195, _54
// problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldrsw	x0, [sp, 36]	// _56, j
	lsl	x0, x0, 2	// _57, _56,
	ldr	x2, [sp, 8]	// tmp196, nums
	add	x0, x2, x0	// _58, tmp196, _57
// problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldr	w1, [x1]	// _59, *_55
// problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	str	w1, [x0]	// _59, *_58
// problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldrsw	x0, [sp, 36]	// _60, j
	lsl	x0, x0, 2	// _61, _60,
	sub	x0, x0, #4	// _62, _61,
	ldr	x1, [sp, 8]	// tmp197, nums
	add	x0, x1, x0	// _63, tmp197, _62
// problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldr	w1, [sp, 40]	// tmp198, m
	str	w1, [x0]	// tmp198, *_63
.L10:
// problem146.c:19:         for (int j = 1; j < size; j++)
	ldr	w0, [sp, 36]	// tmp200, j
	add	w0, w0, 1	// tmp199, tmp200,
	str	w0, [sp, 36]	// tmp199, j
.L9:
// problem146.c:19:         for (int j = 1; j < size; j++)
	ldr	w1, [sp, 36]	// tmp201, j
	ldr	w0, [sp, 4]	// tmp202, size
	cmp	w1, w0	// tmp201, tmp202
	blt	.L11		//,
// problem146.c:18:     for (int i = 0; i < size; i++)
	ldr	w0, [sp, 32]	// tmp204, i
	add	w0, w0, 1	// tmp203, tmp204,
	str	w0, [sp, 32]	// tmp203, i
.L8:
// problem146.c:18:     for (int i = 0; i < size; i++)
	ldr	w1, [sp, 32]	// tmp205, i
	ldr	w0, [sp, 4]	// tmp206, size
	cmp	w1, w0	// tmp205, tmp206
	blt	.L12		//,
// problem146.c:25:     free(sumdigit);
	ldr	x0, [sp, 48]	//, sumdigit
	bl	free		//
// problem146.c:26:     return nums;
	ldr	x0, [sp, 8]	// _82, nums
// problem146.c:26:     return nums;
	mov	x1, x0	// <retval>, _82
// problem146.c:27: }
	adrp	x0, :got:__stack_chk_guard	// tmp208,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp208,
	ldr	x3, [sp, 72]	// tmp210, D.5683
	ldr	x2, [x0]	// tmp211,
	subs	x3, x3, x2	// tmp210, tmp211
	mov	x2, 0	// tmp211
	beq	.L14		//,
	bl	__stack_chk_fail		//
.L14:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp, 80]	//,,
	add	sp, sp, 96	//,,
	.cfi_restore 29
	.cfi_restore 30
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
// problem146.c:35:     if (size_a != size_b) return 0;
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
// problem146.c:37:         if (a[i] != b[i]) return 0;
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
	sub	sp, sp, #448	//,,
	.cfi_def_cfa_offset 448
	stp	x29, x30, [sp, 432]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 432	//,,
// problem146.c:42: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp106,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp106,
	ldr	x1, [x0]	// tmp206,
	str	x1, [sp, 424]	// tmp206, D.5687
	mov	x1, 0	// tmp206
// problem146.c:43:     int test1[] = {1, 11, -1, -11, -12};
	adrp	x0, .LC0	// tmp108,
	add	x0, x0, :lo12:.LC0	// tmp107, tmp108,
	add	x2, sp, 24	// tmp109,,
	mov	x3, x0	// tmp110, tmp107
	ldp	x0, x1, [x3]	// tmp111,
	stp	x0, x1, [x2]	// tmp111, test1
	ldr	w0, [x3, 16]	// tmp112,
	str	w0, [x2, 16]	// tmp112, test1
// problem146.c:44:     int expected1[] = {-1, -11, 1, -12, 11};
	adrp	x0, .LC1	// tmp114,
	add	x0, x0, :lo12:.LC1	// tmp113, tmp114,
	add	x2, sp, 48	// tmp115,,
	mov	x3, x0	// tmp116, tmp113
	ldp	x0, x1, [x3]	// tmp117,
	stp	x0, x1, [x2]	// tmp117, expected1
	ldr	w0, [x3, 16]	// tmp118,
	str	w0, [x2, 16]	// tmp118, expected1
// problem146.c:45:     assert(issame(func0(test1, 5), expected1, 5, 5));
	add	x0, sp, 24	// tmp119,,
	mov	w1, 5	//,
	bl	func0		//
	mov	x4, x0	// _1,
// problem146.c:45:     assert(issame(func0(test1, 5), expected1, 5, 5));
	add	x0, sp, 48	// tmp120,,
	mov	w3, 5	//,
	mov	w2, 5	//,
	mov	x1, x0	//, tmp120
	mov	x0, x4	//, _1
	bl	issame		//
// problem146.c:45:     assert(issame(func0(test1, 5), expected1, 5, 5));
	cmp	w0, 0	// _2,
	bne	.L22		//,
// problem146.c:45:     assert(issame(func0(test1, 5), expected1, 5, 5));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp121,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp121,
	mov	w2, 45	//,
	adrp	x0, .LC11	// tmp122,
	add	x1, x0, :lo12:.LC11	//, tmp122,
	adrp	x0, .LC12	// tmp123,
	add	x0, x0, :lo12:.LC12	//, tmp123,
	bl	__assert_fail		//
.L22:
// problem146.c:47:     int test2[] = {1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46};
	adrp	x0, .LC2	// tmp125,
	add	x1, x0, :lo12:.LC2	// tmp124, tmp125,
	add	x0, sp, 296	// tmp126,,
	ldp	q0, q1, [x1]	// tmp128, tmp129,
	stp	q0, q1, [x0]	// tmp128, tmp129, test2
	ldr	q0, [x1, 32]	// tmp130,
	str	q0, [x0, 32]	// tmp130, test2
	ldr	q0, [x1, 44]	// tmp131,
	str	q0, [x0, 44]	// tmp131, test2
// problem146.c:48:     int expected2[] = {0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457};
	adrp	x0, .LC3	// tmp133,
	add	x1, x0, :lo12:.LC3	// tmp132, tmp133,
	add	x0, sp, 360	// tmp134,,
	ldp	q0, q1, [x1]	// tmp136, tmp137,
	stp	q0, q1, [x0]	// tmp136, tmp137, expected2
	ldr	q0, [x1, 32]	// tmp138,
	str	q0, [x0, 32]	// tmp138, expected2
	ldr	q0, [x1, 44]	// tmp139,
	str	q0, [x0, 44]	// tmp139, expected2
// problem146.c:49:     assert(issame(func0(test2, 15), expected2, 15, 15));
	add	x0, sp, 296	// tmp140,,
	mov	w1, 15	//,
	bl	func0		//
	mov	x4, x0	// _3,
// problem146.c:49:     assert(issame(func0(test2, 15), expected2, 15, 15));
	add	x0, sp, 360	// tmp141,,
	mov	w3, 15	//,
	mov	w2, 15	//,
	mov	x1, x0	//, tmp141
	mov	x0, x4	//, _3
	bl	issame		//
// problem146.c:49:     assert(issame(func0(test2, 15), expected2, 15, 15));
	cmp	w0, 0	// _4,
	bne	.L23		//,
// problem146.c:49:     assert(issame(func0(test2, 15), expected2, 15, 15));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp142,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp142,
	mov	w2, 49	//,
	adrp	x0, .LC11	// tmp143,
	add	x1, x0, :lo12:.LC11	//, tmp143,
	adrp	x0, .LC13	// tmp144,
	add	x0, x0, :lo12:.LC13	//, tmp144,
	bl	__assert_fail		//
.L23:
// problem146.c:53:     assert(issame(func0(test3, 0), expected3, 0, 0));
	add	x0, sp, 8	// tmp145,,
	mov	w1, 0	//,
	bl	func0		//
	mov	x4, x0	// _5,
// problem146.c:53:     assert(issame(func0(test3, 0), expected3, 0, 0));
	add	x0, sp, 16	// tmp146,,
	mov	w3, 0	//,
	mov	w2, 0	//,
	mov	x1, x0	//, tmp146
	mov	x0, x4	//, _5
	bl	issame		//
// problem146.c:53:     assert(issame(func0(test3, 0), expected3, 0, 0));
	cmp	w0, 0	// _6,
	bne	.L24		//,
// problem146.c:53:     assert(issame(func0(test3, 0), expected3, 0, 0));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp147,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp147,
	mov	w2, 53	//,
	adrp	x0, .LC11	// tmp148,
	add	x1, x0, :lo12:.LC11	//, tmp148,
	adrp	x0, .LC14	// tmp149,
	add	x0, x0, :lo12:.LC14	//, tmp149,
	bl	__assert_fail		//
.L24:
// problem146.c:55:     int test4[] = {1, -11, -32, 43, 54, -98, 2, -3};
	adrp	x0, .LC4	// tmp151,
	add	x1, x0, :lo12:.LC4	// tmp150, tmp151,
	add	x0, sp, 136	// tmp152,,
	ldp	q0, q1, [x1]	// tmp154, tmp155,
	stp	q0, q1, [x0]	// tmp154, tmp155, test4
// problem146.c:56:     int expected4[] = {-3, -32, -98, -11, 1, 2, 43, 54};
	adrp	x0, .LC5	// tmp157,
	add	x1, x0, :lo12:.LC5	// tmp156, tmp157,
	add	x0, sp, 168	// tmp158,,
	ldp	q0, q1, [x1]	// tmp160, tmp161,
	stp	q0, q1, [x0]	// tmp160, tmp161, expected4
// problem146.c:57:     assert(issame(func0(test4, 8), expected4, 8, 8));
	add	x0, sp, 136	// tmp162,,
	mov	w1, 8	//,
	bl	func0		//
	mov	x4, x0	// _7,
// problem146.c:57:     assert(issame(func0(test4, 8), expected4, 8, 8));
	add	x0, sp, 168	// tmp163,,
	mov	w3, 8	//,
	mov	w2, 8	//,
	mov	x1, x0	//, tmp163
	mov	x0, x4	//, _7
	bl	issame		//
// problem146.c:57:     assert(issame(func0(test4, 8), expected4, 8, 8));
	cmp	w0, 0	// _8,
	bne	.L25		//,
// problem146.c:57:     assert(issame(func0(test4, 8), expected4, 8, 8));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp164,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp164,
	mov	w2, 57	//,
	adrp	x0, .LC11	// tmp165,
	add	x1, x0, :lo12:.LC11	//, tmp165,
	adrp	x0, .LC15	// tmp166,
	add	x0, x0, :lo12:.LC15	//, tmp166,
	bl	__assert_fail		//
.L25:
// problem146.c:59:     int test5[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
	adrp	x0, .LC6	// tmp168,
	add	x1, x0, :lo12:.LC6	// tmp167, tmp168,
	add	x0, sp, 200	// tmp169,,
	ldp	q0, q1, [x1]	// tmp171, tmp172,
	stp	q0, q1, [x0]	// tmp171, tmp172, test5
	ldr	q0, [x1, 28]	// tmp173,
	str	q0, [x0, 28]	// tmp173, test5
// problem146.c:60:     int expected5[] = {1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9};
	adrp	x0, .LC7	// tmp175,
	add	x1, x0, :lo12:.LC7	// tmp174, tmp175,
	add	x0, sp, 248	// tmp176,,
	ldp	q0, q1, [x1]	// tmp178, tmp179,
	stp	q0, q1, [x0]	// tmp178, tmp179, expected5
	ldr	q0, [x1, 28]	// tmp180,
	str	q0, [x0, 28]	// tmp180, expected5
// problem146.c:61:     assert(issame(func0(test5, 11), expected5, 11, 11));
	add	x0, sp, 200	// tmp181,,
	mov	w1, 11	//,
	bl	func0		//
	mov	x4, x0	// _9,
// problem146.c:61:     assert(issame(func0(test5, 11), expected5, 11, 11));
	add	x0, sp, 248	// tmp182,,
	mov	w3, 11	//,
	mov	w2, 11	//,
	mov	x1, x0	//, tmp182
	mov	x0, x4	//, _9
	bl	issame		//
// problem146.c:61:     assert(issame(func0(test5, 11), expected5, 11, 11));
	cmp	w0, 0	// _10,
	bne	.L26		//,
// problem146.c:61:     assert(issame(func0(test5, 11), expected5, 11, 11));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp183,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp183,
	mov	w2, 61	//,
	adrp	x0, .LC11	// tmp184,
	add	x1, x0, :lo12:.LC11	//, tmp184,
	adrp	x0, .LC16	// tmp185,
	add	x0, x0, :lo12:.LC16	//, tmp185,
	bl	__assert_fail		//
.L26:
// problem146.c:63:     int test6[] = {0, 6, 6, -76, -21, 23, 4};
	adrp	x0, .LC8	// tmp187,
	add	x1, x0, :lo12:.LC8	// tmp186, tmp187,
	add	x0, sp, 72	// tmp188,,
	ldr	q0, [x1]	// tmp190,
	str	q0, [x0]	// tmp190, test6
	ldr	q0, [x1, 12]	// tmp191,
	str	q0, [x0, 12]	// tmp191, test6
// problem146.c:64:     int expected6[] = {-76, -21, 0, 4, 23, 6, 6};
	adrp	x0, .LC9	// tmp193,
	add	x1, x0, :lo12:.LC9	// tmp192, tmp193,
	add	x0, sp, 104	// tmp194,,
	ldr	q0, [x1]	// tmp196,
	str	q0, [x0]	// tmp196, expected6
	ldr	q0, [x1, 12]	// tmp197,
	str	q0, [x0, 12]	// tmp197, expected6
// problem146.c:65:     assert(issame(func0(test6, 7), expected6, 7, 7));
	add	x0, sp, 72	// tmp198,,
	mov	w1, 7	//,
	bl	func0		//
	mov	x4, x0	// _11,
// problem146.c:65:     assert(issame(func0(test6, 7), expected6, 7, 7));
	add	x0, sp, 104	// tmp199,,
	mov	w3, 7	//,
	mov	w2, 7	//,
	mov	x1, x0	//, tmp199
	mov	x0, x4	//, _11
	bl	issame		//
// problem146.c:65:     assert(issame(func0(test6, 7), expected6, 7, 7));
	cmp	w0, 0	// _12,
	bne	.L27		//,
// problem146.c:65:     assert(issame(func0(test6, 7), expected6, 7, 7));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp200,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp200,
	mov	w2, 65	//,
	adrp	x0, .LC11	// tmp201,
	add	x1, x0, :lo12:.LC11	//, tmp201,
	adrp	x0, .LC17	// tmp202,
	add	x0, x0, :lo12:.LC17	//, tmp202,
	bl	__assert_fail		//
.L27:
// problem146.c:67:     printf("All tests passed!\n");
	adrp	x0, .LC18	// tmp203,
	add	x0, x0, :lo12:.LC18	//, tmp203,
	bl	puts		//
// problem146.c:69:     return 0;
	mov	w0, 0	// _43,
// problem146.c:70: }
	mov	w1, w0	// <retval>, _43
	adrp	x0, :got:__stack_chk_guard	// tmp205,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp205,
	ldr	x3, [sp, 424]	// tmp207, D.5687
	ldr	x2, [x0]	// tmp208,
	subs	x3, x3, x2	// tmp207, tmp208
	mov	x2, 0	// tmp208
	beq	.L29		//,
	bl	__stack_chk_fail		//
.L29:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 432]	//,,
	add	sp, sp, 448	//,,
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
