	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
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
// eval/problem146//code.c:5: int* func0(int nums[], int size) {
	adrp	x0, :got:__stack_chk_guard	// tmp158,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp157, tmp158,
	ldr	x1, [x0]	// tmp211,
	str	x1, [sp, 88]	// tmp211, D.4983
	mov	x1, 0	// tmp211
// eval/problem146//code.c:6:     int* sumdigit = (int*)malloc(size * sizeof(int));
	ldrsw	x0, [sp, 20]	// _1, size
	lsl	x0, x0, 2	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 64]	// tmp159, sumdigit
// eval/problem146//code.c:7:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 36]	//, i
// eval/problem146//code.c:7:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L7:
// eval/problem146//code.c:9:         sprintf(w, "%d", abs(nums[i]));
	ldrsw	x0, [sp, 36]	// _3, i
	lsl	x0, x0, 2	// _4, _3,
	ldr	x1, [sp, 24]	// tmp160, nums
	add	x0, x1, x0	// _5, tmp160, _4
	ldr	w0, [x0]	// _6, *_5
// eval/problem146//code.c:9:         sprintf(w, "%d", abs(nums[i]));
	cmp	w0, 0	// _6,
	csneg	w0, w0, w0, ge	// _7, _6, _6,
	add	x3, sp, 72	// tmp161,,
	mov	w2, w0	//, _7
	adrp	x0, .LC0	// tmp162,
	add	x1, x0, :lo12:.LC0	//, tmp162,
	mov	x0, x3	//, tmp161
	bl	sprintf		//
// eval/problem146//code.c:10:         int sum = 0, length = strlen(w);
	str	wzr, [sp, 40]	//, sum
// eval/problem146//code.c:10:         int sum = 0, length = strlen(w);
	add	x0, sp, 72	// tmp163,,
	bl	strlen		//
// eval/problem146//code.c:10:         int sum = 0, length = strlen(w);
	str	w0, [sp, 60]	// tmp164, length
// eval/problem146//code.c:11:         for (int j = 1; j < length; j++)
	mov	w0, 1	// tmp165,
	str	w0, [sp, 44]	// tmp165, j
// eval/problem146//code.c:11:         for (int j = 1; j < length; j++)
	b	.L3		//
.L4:
// eval/problem146//code.c:12:             sum += w[j] - '0';
	ldrsw	x0, [sp, 44]	// tmp166, j
	add	x1, sp, 72	// tmp167,,
	ldrb	w0, [x1, x0]	// _9, w[j_67]
// eval/problem146//code.c:12:             sum += w[j] - '0';
	sub	w0, w0, #48	// _11, _10,
// eval/problem146//code.c:12:             sum += w[j] - '0';
	ldr	w1, [sp, 40]	// tmp169, sum
	add	w0, w1, w0	// tmp168, tmp169, _11
	str	w0, [sp, 40]	// tmp168, sum
// eval/problem146//code.c:11:         for (int j = 1; j < length; j++)
	ldr	w0, [sp, 44]	// tmp171, j
	add	w0, w0, 1	// tmp170, tmp171,
	str	w0, [sp, 44]	// tmp170, j
.L3:
// eval/problem146//code.c:11:         for (int j = 1; j < length; j++)
	ldr	w1, [sp, 44]	// tmp172, j
	ldr	w0, [sp, 60]	// tmp173, length
	cmp	w1, w0	// tmp172, tmp173
	blt	.L4		//,
// eval/problem146//code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	ldrsw	x0, [sp, 36]	// _12, i
	lsl	x0, x0, 2	// _13, _12,
	ldr	x1, [sp, 24]	// tmp174, nums
	add	x0, x1, x0	// _14, tmp174, _13
	ldr	w0, [x0]	// _15, *_14
// eval/problem146//code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	cmp	w0, 0	// _15,
	ble	.L5		//,
// eval/problem146//code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	ldrb	w0, [sp, 72]	// _16, w[0]
// eval/problem146//code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	sub	w0, w0, #48	// _18, _17,
// eval/problem146//code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	ldr	w1, [sp, 40]	// tmp176, sum
	add	w0, w1, w0	// tmp175, tmp176, _18
	str	w0, [sp, 40]	// tmp175, sum
	b	.L6		//
.L5:
// eval/problem146//code.c:14:         else sum -= w[0] - '0';
	ldrb	w0, [sp, 72]	// _19, w[0]
// eval/problem146//code.c:14:         else sum -= w[0] - '0';
	sub	w0, w0, #48	// _21, _20,
// eval/problem146//code.c:14:         else sum -= w[0] - '0';
	ldr	w1, [sp, 40]	// tmp178, sum
	sub	w0, w1, w0	// tmp177, tmp178, _21
	str	w0, [sp, 40]	// tmp177, sum
.L6:
// eval/problem146//code.c:15:         sumdigit[i] = sum;
	ldrsw	x0, [sp, 36]	// _22, i
	lsl	x0, x0, 2	// _23, _22,
	ldr	x1, [sp, 64]	// tmp179, sumdigit
	add	x0, x1, x0	// _24, tmp179, _23
// eval/problem146//code.c:15:         sumdigit[i] = sum;
	ldr	w1, [sp, 40]	// tmp180, sum
	str	w1, [x0]	// tmp180, *_24
// eval/problem146//code.c:7:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 36]	// tmp182, i
	add	w0, w0, 1	// tmp181, tmp182,
	str	w0, [sp, 36]	// tmp181, i
.L2:
// eval/problem146//code.c:7:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 36]	// tmp183, i
	ldr	w0, [sp, 20]	// tmp184, size
	cmp	w1, w0	// tmp183, tmp184
	blt	.L7		//,
// eval/problem146//code.c:18:     for (int i = 0; i < size; i++)
	str	wzr, [sp, 48]	//, i
// eval/problem146//code.c:18:     for (int i = 0; i < size; i++)
	b	.L8		//
.L12:
// eval/problem146//code.c:19:         for (int j = 1; j < size; j++)
	mov	w0, 1	// tmp185,
	str	w0, [sp, 52]	// tmp185, j
// eval/problem146//code.c:19:         for (int j = 1; j < size; j++)
	b	.L9		//
.L11:
// eval/problem146//code.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	ldrsw	x0, [sp, 52]	// _25, j
	lsl	x0, x0, 2	// _26, _25,
	sub	x0, x0, #4	// _27, _26,
	ldr	x1, [sp, 64]	// tmp186, sumdigit
	add	x0, x1, x0	// _28, tmp186, _27
	ldr	w1, [x0]	// _29, *_28
// eval/problem146//code.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	ldrsw	x0, [sp, 52]	// _30, j
	lsl	x0, x0, 2	// _31, _30,
	ldr	x2, [sp, 64]	// tmp187, sumdigit
	add	x0, x2, x0	// _32, tmp187, _31
	ldr	w0, [x0]	// _33, *_32
// eval/problem146//code.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	cmp	w1, w0	// _29, _33
	ble	.L10		//,
// eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldrsw	x0, [sp, 52]	// _34, j
	lsl	x0, x0, 2	// _35, _34,
	ldr	x1, [sp, 64]	// tmp188, sumdigit
	add	x0, x1, x0	// _36, tmp188, _35
// eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldr	w0, [x0]	// tmp189, *_36
	str	w0, [sp, 56]	// tmp189, m
// eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldrsw	x0, [sp, 52]	// _37, j
	lsl	x0, x0, 2	// _38, _37,
	sub	x0, x0, #4	// _39, _38,
	ldr	x1, [sp, 64]	// tmp190, sumdigit
	add	x1, x1, x0	// _40, tmp190, _39
// eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldrsw	x0, [sp, 52]	// _41, j
	lsl	x0, x0, 2	// _42, _41,
	ldr	x2, [sp, 64]	// tmp191, sumdigit
	add	x0, x2, x0	// _43, tmp191, _42
// eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldr	w1, [x1]	// _44, *_40
// eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	str	w1, [x0]	// _44, *_43
// eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldrsw	x0, [sp, 52]	// _45, j
	lsl	x0, x0, 2	// _46, _45,
	sub	x0, x0, #4	// _47, _46,
	ldr	x1, [sp, 64]	// tmp192, sumdigit
	add	x0, x1, x0	// _48, tmp192, _47
// eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldr	w1, [sp, 56]	// tmp193, m
	str	w1, [x0]	// tmp193, *_48
// eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldrsw	x0, [sp, 52]	// _49, j
	lsl	x0, x0, 2	// _50, _49,
	ldr	x1, [sp, 24]	// tmp194, nums
	add	x0, x1, x0	// _51, tmp194, _50
// eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldr	w0, [x0]	// tmp195, *_51
	str	w0, [sp, 56]	// tmp195, m
// eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldrsw	x0, [sp, 52]	// _52, j
	lsl	x0, x0, 2	// _53, _52,
	sub	x0, x0, #4	// _54, _53,
	ldr	x1, [sp, 24]	// tmp196, nums
	add	x1, x1, x0	// _55, tmp196, _54
// eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldrsw	x0, [sp, 52]	// _56, j
	lsl	x0, x0, 2	// _57, _56,
	ldr	x2, [sp, 24]	// tmp197, nums
	add	x0, x2, x0	// _58, tmp197, _57
// eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldr	w1, [x1]	// _59, *_55
// eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	str	w1, [x0]	// _59, *_58
// eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldrsw	x0, [sp, 52]	// _60, j
	lsl	x0, x0, 2	// _61, _60,
	sub	x0, x0, #4	// _62, _61,
	ldr	x1, [sp, 24]	// tmp198, nums
	add	x0, x1, x0	// _63, tmp198, _62
// eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldr	w1, [sp, 56]	// tmp199, m
	str	w1, [x0]	// tmp199, *_63
.L10:
// eval/problem146//code.c:19:         for (int j = 1; j < size; j++)
	ldr	w0, [sp, 52]	// tmp201, j
	add	w0, w0, 1	// tmp200, tmp201,
	str	w0, [sp, 52]	// tmp200, j
.L9:
// eval/problem146//code.c:19:         for (int j = 1; j < size; j++)
	ldr	w1, [sp, 52]	// tmp202, j
	ldr	w0, [sp, 20]	// tmp203, size
	cmp	w1, w0	// tmp202, tmp203
	blt	.L11		//,
// eval/problem146//code.c:18:     for (int i = 0; i < size; i++)
	ldr	w0, [sp, 48]	// tmp205, i
	add	w0, w0, 1	// tmp204, tmp205,
	str	w0, [sp, 48]	// tmp204, i
.L8:
// eval/problem146//code.c:18:     for (int i = 0; i < size; i++)
	ldr	w1, [sp, 48]	// tmp206, i
	ldr	w0, [sp, 20]	// tmp207, size
	cmp	w1, w0	// tmp206, tmp207
	blt	.L12		//,
// eval/problem146//code.c:25:     free(sumdigit);
	ldr	x0, [sp, 64]	//, sumdigit
	bl	free		//
// eval/problem146//code.c:26:     return nums;
	ldr	x0, [sp, 24]	// _82, nums
	mov	x1, x0	// <retval>, _82
// eval/problem146//code.c:27: }
	adrp	x0, :got:__stack_chk_guard	// tmp210,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp209, tmp210,
	ldr	x3, [sp, 88]	// tmp212, D.4983
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
