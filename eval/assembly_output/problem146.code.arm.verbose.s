	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
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
	sub	sp, sp, #96	//,,
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80	//,,
	str	x0, [sp, 8]	// nums, nums
	str	w1, [sp, 4]	// size, size
// code.c:5: int* func0(int nums[], int size) {
	adrp	x0, :got:__stack_chk_guard	// tmp157,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp157,
	ldr	x1, [x0]	// tmp209,
	str	x1, [sp, 72]	// tmp209, D.5599
	mov	x1, 0	// tmp209
// code.c:6:     int* sumdigit = (int*)malloc(size * sizeof(int));
	ldrsw	x0, [sp, 4]	// _1, size
	lsl	x0, x0, 2	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 48]	// tmp158, sumdigit
// code.c:7:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 20]	//, i
// code.c:7:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L7:
// code.c:9:         sprintf(w, "%d", abs(nums[i]));
	ldrsw	x0, [sp, 20]	// _3, i
	lsl	x0, x0, 2	// _4, _3,
	ldr	x1, [sp, 8]	// tmp159, nums
	add	x0, x1, x0	// _5, tmp159, _4
	ldr	w0, [x0]	// _6, *_5
// code.c:9:         sprintf(w, "%d", abs(nums[i]));
	cmp	w0, 0	// _6,
	csneg	w0, w0, w0, ge	// _7, _6, _6,
	add	x3, sp, 56	// tmp160,,
	mov	w2, w0	//, _7
	adrp	x0, .LC0	// tmp161,
	add	x1, x0, :lo12:.LC0	//, tmp161,
	mov	x0, x3	//, tmp160
	bl	sprintf		//
// code.c:10:         int sum = 0, length = strlen(w);
	str	wzr, [sp, 24]	//, sum
// code.c:10:         int sum = 0, length = strlen(w);
	add	x0, sp, 56	// tmp162,,
	bl	strlen		//
// code.c:10:         int sum = 0, length = strlen(w);
	str	w0, [sp, 44]	// tmp163, length
// code.c:11:         for (int j = 1; j < length; j++)
	mov	w0, 1	// tmp164,
	str	w0, [sp, 28]	// tmp164, j
// code.c:11:         for (int j = 1; j < length; j++)
	b	.L3		//
.L4:
// code.c:12:             sum += w[j] - '0';
	ldrsw	x0, [sp, 28]	// tmp165, j
	add	x1, sp, 56	// tmp166,,
	ldrb	w0, [x1, x0]	// _9, w[j_67]
// code.c:12:             sum += w[j] - '0';
	sub	w0, w0, #48	// _11, _10,
// code.c:12:             sum += w[j] - '0';
	ldr	w1, [sp, 24]	// tmp168, sum
	add	w0, w1, w0	// tmp167, tmp168, _11
	str	w0, [sp, 24]	// tmp167, sum
// code.c:11:         for (int j = 1; j < length; j++)
	ldr	w0, [sp, 28]	// tmp170, j
	add	w0, w0, 1	// tmp169, tmp170,
	str	w0, [sp, 28]	// tmp169, j
.L3:
// code.c:11:         for (int j = 1; j < length; j++)
	ldr	w1, [sp, 28]	// tmp171, j
	ldr	w0, [sp, 44]	// tmp172, length
	cmp	w1, w0	// tmp171, tmp172
	blt	.L4		//,
// code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	ldrsw	x0, [sp, 20]	// _12, i
	lsl	x0, x0, 2	// _13, _12,
	ldr	x1, [sp, 8]	// tmp173, nums
	add	x0, x1, x0	// _14, tmp173, _13
	ldr	w0, [x0]	// _15, *_14
// code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	cmp	w0, 0	// _15,
	ble	.L5		//,
// code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	ldrb	w0, [sp, 56]	// _16, w[0]
// code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	sub	w0, w0, #48	// _18, _17,
// code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	ldr	w1, [sp, 24]	// tmp175, sum
	add	w0, w1, w0	// tmp174, tmp175, _18
	str	w0, [sp, 24]	// tmp174, sum
	b	.L6		//
.L5:
// code.c:14:         else sum -= w[0] - '0';
	ldrb	w0, [sp, 56]	// _19, w[0]
// code.c:14:         else sum -= w[0] - '0';
	sub	w0, w0, #48	// _21, _20,
// code.c:14:         else sum -= w[0] - '0';
	ldr	w1, [sp, 24]	// tmp177, sum
	sub	w0, w1, w0	// tmp176, tmp177, _21
	str	w0, [sp, 24]	// tmp176, sum
.L6:
// code.c:15:         sumdigit[i] = sum;
	ldrsw	x0, [sp, 20]	// _22, i
	lsl	x0, x0, 2	// _23, _22,
	ldr	x1, [sp, 48]	// tmp178, sumdigit
	add	x0, x1, x0	// _24, tmp178, _23
// code.c:15:         sumdigit[i] = sum;
	ldr	w1, [sp, 24]	// tmp179, sum
	str	w1, [x0]	// tmp179, *_24
// code.c:7:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 20]	// tmp181, i
	add	w0, w0, 1	// tmp180, tmp181,
	str	w0, [sp, 20]	// tmp180, i
.L2:
// code.c:7:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 20]	// tmp182, i
	ldr	w0, [sp, 4]	// tmp183, size
	cmp	w1, w0	// tmp182, tmp183
	blt	.L7		//,
// code.c:18:     for (int i = 0; i < size; i++)
	str	wzr, [sp, 32]	//, i
// code.c:18:     for (int i = 0; i < size; i++)
	b	.L8		//
.L12:
// code.c:19:         for (int j = 1; j < size; j++)
	mov	w0, 1	// tmp184,
	str	w0, [sp, 36]	// tmp184, j
// code.c:19:         for (int j = 1; j < size; j++)
	b	.L9		//
.L11:
// code.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	ldrsw	x0, [sp, 36]	// _25, j
	lsl	x0, x0, 2	// _26, _25,
	sub	x0, x0, #4	// _27, _26,
	ldr	x1, [sp, 48]	// tmp185, sumdigit
	add	x0, x1, x0	// _28, tmp185, _27
	ldr	w1, [x0]	// _29, *_28
// code.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	ldrsw	x0, [sp, 36]	// _30, j
	lsl	x0, x0, 2	// _31, _30,
	ldr	x2, [sp, 48]	// tmp186, sumdigit
	add	x0, x2, x0	// _32, tmp186, _31
	ldr	w0, [x0]	// _33, *_32
// code.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	cmp	w1, w0	// _29, _33
	ble	.L10		//,
// code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldrsw	x0, [sp, 36]	// _34, j
	lsl	x0, x0, 2	// _35, _34,
	ldr	x1, [sp, 48]	// tmp187, sumdigit
	add	x0, x1, x0	// _36, tmp187, _35
// code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldr	w0, [x0]	// tmp188, *_36
	str	w0, [sp, 40]	// tmp188, m
// code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldrsw	x0, [sp, 36]	// _37, j
	lsl	x0, x0, 2	// _38, _37,
	sub	x0, x0, #4	// _39, _38,
	ldr	x1, [sp, 48]	// tmp189, sumdigit
	add	x1, x1, x0	// _40, tmp189, _39
// code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldrsw	x0, [sp, 36]	// _41, j
	lsl	x0, x0, 2	// _42, _41,
	ldr	x2, [sp, 48]	// tmp190, sumdigit
	add	x0, x2, x0	// _43, tmp190, _42
// code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldr	w1, [x1]	// _44, *_40
// code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	str	w1, [x0]	// _44, *_43
// code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldrsw	x0, [sp, 36]	// _45, j
	lsl	x0, x0, 2	// _46, _45,
	sub	x0, x0, #4	// _47, _46,
	ldr	x1, [sp, 48]	// tmp191, sumdigit
	add	x0, x1, x0	// _48, tmp191, _47
// code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	ldr	w1, [sp, 40]	// tmp192, m
	str	w1, [x0]	// tmp192, *_48
// code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldrsw	x0, [sp, 36]	// _49, j
	lsl	x0, x0, 2	// _50, _49,
	ldr	x1, [sp, 8]	// tmp193, nums
	add	x0, x1, x0	// _51, tmp193, _50
// code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldr	w0, [x0]	// tmp194, *_51
	str	w0, [sp, 40]	// tmp194, m
// code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldrsw	x0, [sp, 36]	// _52, j
	lsl	x0, x0, 2	// _53, _52,
	sub	x0, x0, #4	// _54, _53,
	ldr	x1, [sp, 8]	// tmp195, nums
	add	x1, x1, x0	// _55, tmp195, _54
// code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldrsw	x0, [sp, 36]	// _56, j
	lsl	x0, x0, 2	// _57, _56,
	ldr	x2, [sp, 8]	// tmp196, nums
	add	x0, x2, x0	// _58, tmp196, _57
// code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldr	w1, [x1]	// _59, *_55
// code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	str	w1, [x0]	// _59, *_58
// code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldrsw	x0, [sp, 36]	// _60, j
	lsl	x0, x0, 2	// _61, _60,
	sub	x0, x0, #4	// _62, _61,
	ldr	x1, [sp, 8]	// tmp197, nums
	add	x0, x1, x0	// _63, tmp197, _62
// code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	ldr	w1, [sp, 40]	// tmp198, m
	str	w1, [x0]	// tmp198, *_63
.L10:
// code.c:19:         for (int j = 1; j < size; j++)
	ldr	w0, [sp, 36]	// tmp200, j
	add	w0, w0, 1	// tmp199, tmp200,
	str	w0, [sp, 36]	// tmp199, j
.L9:
// code.c:19:         for (int j = 1; j < size; j++)
	ldr	w1, [sp, 36]	// tmp201, j
	ldr	w0, [sp, 4]	// tmp202, size
	cmp	w1, w0	// tmp201, tmp202
	blt	.L11		//,
// code.c:18:     for (int i = 0; i < size; i++)
	ldr	w0, [sp, 32]	// tmp204, i
	add	w0, w0, 1	// tmp203, tmp204,
	str	w0, [sp, 32]	// tmp203, i
.L8:
// code.c:18:     for (int i = 0; i < size; i++)
	ldr	w1, [sp, 32]	// tmp205, i
	ldr	w0, [sp, 4]	// tmp206, size
	cmp	w1, w0	// tmp205, tmp206
	blt	.L12		//,
// code.c:25:     free(sumdigit);
	ldr	x0, [sp, 48]	//, sumdigit
	bl	free		//
// code.c:26:     return nums;
	ldr	x0, [sp, 8]	// _82, nums
// code.c:26:     return nums;
	mov	x1, x0	// <retval>, _82
// code.c:27: }
	adrp	x0, :got:__stack_chk_guard	// tmp208,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp208,
	ldr	x3, [sp, 72]	// tmp210, D.5599
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
