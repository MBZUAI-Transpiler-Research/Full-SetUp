	.arch armv8-a
	.file	"code.c"
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
	stp	x29, x30, [sp, -128]!	//,,,
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp	//,
	str	x0, [sp, 40]	// numbers, numbers
	str	w1, [sp, 36]	// size, size
	str	x2, [sp, 24]	// new_size, new_size
// eval/problem27//code.c:5:     int* out = (int*)malloc(size * sizeof(int));
	ldrsw	x0, [sp, 36]	// _1, size
	lsl	x0, x0, 2	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 104]	// tmp128, out
// eval/problem27//code.c:6:     int* has1 = (int*)calloc(size, sizeof(int));
	ldrsw	x0, [sp, 36]	// _3, size
	mov	x1, 4	//,
	bl	calloc		//
	str	x0, [sp, 112]	// tmp129, has1
// eval/problem27//code.c:7:     int* has2 = (int*)calloc(size, sizeof(int));
	ldrsw	x0, [sp, 36]	// _4, size
	mov	x1, 4	//,
	bl	calloc		//
	str	x0, [sp, 120]	// tmp130, has2
// eval/problem27//code.c:8:     int has1_count = 0;
	str	wzr, [sp, 52]	//, has1_count
// eval/problem27//code.c:9:     int has2_count = 0;
	str	wzr, [sp, 56]	//, has2_count
// eval/problem27//code.c:10:     int out_count = 0;
	str	wzr, [sp, 60]	//, out_count
// eval/problem27//code.c:12:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 64]	//, i
// eval/problem27//code.c:12:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L14:
// eval/problem27//code.c:13:         int num = numbers[i];
	ldrsw	x0, [sp, 64]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 40]	// tmp131, numbers
	add	x0, x1, x0	// _7, tmp131, _6
// eval/problem27//code.c:13:         int num = numbers[i];
	ldr	w0, [x0]	// tmp132, *_7
	str	w0, [sp, 100]	// tmp132, num
// eval/problem27//code.c:14:         int in_has2 = 0;
	str	wzr, [sp, 68]	//, in_has2
// eval/problem27//code.c:16:         for (int j = 0; j < has2_count; j++) {
	str	wzr, [sp, 72]	//, j
// eval/problem27//code.c:16:         for (int j = 0; j < has2_count; j++) {
	b	.L3		//
.L6:
// eval/problem27//code.c:17:             if (has2[j] == num) {
	ldrsw	x0, [sp, 72]	// _8, j
	lsl	x0, x0, 2	// _9, _8,
	ldr	x1, [sp, 120]	// tmp133, has2
	add	x0, x1, x0	// _10, tmp133, _9
	ldr	w0, [x0]	// _11, *_10
// eval/problem27//code.c:17:             if (has2[j] == num) {
	ldr	w1, [sp, 100]	// tmp134, num
	cmp	w1, w0	// tmp134, _11
	bne	.L4		//,
// eval/problem27//code.c:18:                 in_has2 = 1;
	mov	w0, 1	// tmp135,
	str	w0, [sp, 68]	// tmp135, in_has2
// eval/problem27//code.c:19:                 break;
	b	.L5		//
.L4:
// eval/problem27//code.c:16:         for (int j = 0; j < has2_count; j++) {
	ldr	w0, [sp, 72]	// tmp137, j
	add	w0, w0, 1	// tmp136, tmp137,
	str	w0, [sp, 72]	// tmp136, j
.L3:
// eval/problem27//code.c:16:         for (int j = 0; j < has2_count; j++) {
	ldr	w1, [sp, 72]	// tmp138, j
	ldr	w0, [sp, 56]	// tmp139, has2_count
	cmp	w1, w0	// tmp138, tmp139
	blt	.L6		//,
.L5:
// eval/problem27//code.c:22:         if (in_has2) continue;
	ldr	w0, [sp, 68]	// tmp140, in_has2
	cmp	w0, 0	// tmp140,
	bne	.L23		//,
// eval/problem27//code.c:24:         int in_has1 = 0;
	str	wzr, [sp, 76]	//, in_has1
// eval/problem27//code.c:25:         for (int j = 0; j < has1_count; j++) {
	str	wzr, [sp, 80]	//, j
// eval/problem27//code.c:25:         for (int j = 0; j < has1_count; j++) {
	b	.L9		//
.L12:
// eval/problem27//code.c:26:             if (has1[j] == num) {
	ldrsw	x0, [sp, 80]	// _12, j
	lsl	x0, x0, 2	// _13, _12,
	ldr	x1, [sp, 112]	// tmp141, has1
	add	x0, x1, x0	// _14, tmp141, _13
	ldr	w0, [x0]	// _15, *_14
// eval/problem27//code.c:26:             if (has1[j] == num) {
	ldr	w1, [sp, 100]	// tmp142, num
	cmp	w1, w0	// tmp142, _15
	bne	.L10		//,
// eval/problem27//code.c:27:                 in_has1 = 1;
	mov	w0, 1	// tmp143,
	str	w0, [sp, 76]	// tmp143, in_has1
// eval/problem27//code.c:28:                 break;
	b	.L11		//
.L10:
// eval/problem27//code.c:25:         for (int j = 0; j < has1_count; j++) {
	ldr	w0, [sp, 80]	// tmp145, j
	add	w0, w0, 1	// tmp144, tmp145,
	str	w0, [sp, 80]	// tmp144, j
.L9:
// eval/problem27//code.c:25:         for (int j = 0; j < has1_count; j++) {
	ldr	w1, [sp, 80]	// tmp146, j
	ldr	w0, [sp, 52]	// tmp147, has1_count
	cmp	w1, w0	// tmp146, tmp147
	blt	.L12		//,
.L11:
// eval/problem27//code.c:31:         if (in_has1) {
	ldr	w0, [sp, 76]	// tmp148, in_has1
	cmp	w0, 0	// tmp148,
	beq	.L13		//,
// eval/problem27//code.c:32:             has2[has2_count++] = num;
	ldr	w0, [sp, 56]	// has2_count.0_16, has2_count
	add	w1, w0, 1	// tmp149, has2_count.0_16,
	str	w1, [sp, 56]	// tmp149, has2_count
	sxtw	x0, w0	// _17, has2_count.0_16
// eval/problem27//code.c:32:             has2[has2_count++] = num;
	lsl	x0, x0, 2	// _18, _17,
	ldr	x1, [sp, 120]	// tmp150, has2
	add	x0, x1, x0	// _19, tmp150, _18
// eval/problem27//code.c:32:             has2[has2_count++] = num;
	ldr	w1, [sp, 100]	// tmp151, num
	str	w1, [x0]	// tmp151, *_19
	b	.L8		//
.L13:
// eval/problem27//code.c:34:             has1[has1_count++] = num;
	ldr	w0, [sp, 52]	// has1_count.1_20, has1_count
	add	w1, w0, 1	// tmp152, has1_count.1_20,
	str	w1, [sp, 52]	// tmp152, has1_count
	sxtw	x0, w0	// _21, has1_count.1_20
// eval/problem27//code.c:34:             has1[has1_count++] = num;
	lsl	x0, x0, 2	// _22, _21,
	ldr	x1, [sp, 112]	// tmp153, has1
	add	x0, x1, x0	// _23, tmp153, _22
// eval/problem27//code.c:34:             has1[has1_count++] = num;
	ldr	w1, [sp, 100]	// tmp154, num
	str	w1, [x0]	// tmp154, *_23
	b	.L8		//
.L23:
// eval/problem27//code.c:22:         if (in_has2) continue;
	nop	
.L8:
// eval/problem27//code.c:12:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 64]	// tmp156, i
	add	w0, w0, 1	// tmp155, tmp156,
	str	w0, [sp, 64]	// tmp155, i
.L2:
// eval/problem27//code.c:12:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 64]	// tmp157, i
	ldr	w0, [sp, 36]	// tmp158, size
	cmp	w1, w0	// tmp157, tmp158
	blt	.L14		//,
// eval/problem27//code.c:38:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 84]	//, i
// eval/problem27//code.c:38:     for (int i = 0; i < size; i++) {
	b	.L15		//
.L21:
// eval/problem27//code.c:39:         int num = numbers[i];
	ldrsw	x0, [sp, 84]	// _24, i
	lsl	x0, x0, 2	// _25, _24,
	ldr	x1, [sp, 40]	// tmp159, numbers
	add	x0, x1, x0	// _26, tmp159, _25
// eval/problem27//code.c:39:         int num = numbers[i];
	ldr	w0, [x0]	// tmp160, *_26
	str	w0, [sp, 96]	// tmp160, num
// eval/problem27//code.c:40:         int in_has2 = 0;
	str	wzr, [sp, 88]	//, in_has2
// eval/problem27//code.c:41:         for (int j = 0; j < has2_count; j++) {
	str	wzr, [sp, 92]	//, j
// eval/problem27//code.c:41:         for (int j = 0; j < has2_count; j++) {
	b	.L16		//
.L19:
// eval/problem27//code.c:42:             if (has2[j] == num) {
	ldrsw	x0, [sp, 92]	// _27, j
	lsl	x0, x0, 2	// _28, _27,
	ldr	x1, [sp, 120]	// tmp161, has2
	add	x0, x1, x0	// _29, tmp161, _28
	ldr	w0, [x0]	// _30, *_29
// eval/problem27//code.c:42:             if (has2[j] == num) {
	ldr	w1, [sp, 96]	// tmp162, num
	cmp	w1, w0	// tmp162, _30
	bne	.L17		//,
// eval/problem27//code.c:43:                 in_has2 = 1;
	mov	w0, 1	// tmp163,
	str	w0, [sp, 88]	// tmp163, in_has2
// eval/problem27//code.c:44:                 break;
	b	.L18		//
.L17:
// eval/problem27//code.c:41:         for (int j = 0; j < has2_count; j++) {
	ldr	w0, [sp, 92]	// tmp165, j
	add	w0, w0, 1	// tmp164, tmp165,
	str	w0, [sp, 92]	// tmp164, j
.L16:
// eval/problem27//code.c:41:         for (int j = 0; j < has2_count; j++) {
	ldr	w1, [sp, 92]	// tmp166, j
	ldr	w0, [sp, 56]	// tmp167, has2_count
	cmp	w1, w0	// tmp166, tmp167
	blt	.L19		//,
.L18:
// eval/problem27//code.c:47:         if (!in_has2) {
	ldr	w0, [sp, 88]	// tmp168, in_has2
	cmp	w0, 0	// tmp168,
	bne	.L20		//,
// eval/problem27//code.c:48:             out[out_count++] = num;
	ldr	w0, [sp, 60]	// out_count.2_31, out_count
	add	w1, w0, 1	// tmp169, out_count.2_31,
	str	w1, [sp, 60]	// tmp169, out_count
	sxtw	x0, w0	// _32, out_count.2_31
// eval/problem27//code.c:48:             out[out_count++] = num;
	lsl	x0, x0, 2	// _33, _32,
	ldr	x1, [sp, 104]	// tmp170, out
	add	x0, x1, x0	// _34, tmp170, _33
// eval/problem27//code.c:48:             out[out_count++] = num;
	ldr	w1, [sp, 96]	// tmp171, num
	str	w1, [x0]	// tmp171, *_34
.L20:
// eval/problem27//code.c:38:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 84]	// tmp173, i
	add	w0, w0, 1	// tmp172, tmp173,
	str	w0, [sp, 84]	// tmp172, i
.L15:
// eval/problem27//code.c:38:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 84]	// tmp174, i
	ldr	w0, [sp, 36]	// tmp175, size
	cmp	w1, w0	// tmp174, tmp175
	blt	.L21		//,
// eval/problem27//code.c:52:     *new_size = out_count;
	ldr	x0, [sp, 24]	// tmp176, new_size
	ldr	w1, [sp, 60]	// tmp177, out_count
	str	w1, [x0]	// tmp177, *new_size_66(D)
// eval/problem27//code.c:53:     free(has1);
	ldr	x0, [sp, 112]	//, has1
	bl	free		//
// eval/problem27//code.c:54:     free(has2);
	ldr	x0, [sp, 120]	//, has2
	bl	free		//
// eval/problem27//code.c:55:     return out;
	ldr	x0, [sp, 104]	// _70, out
// eval/problem27//code.c:56: }
	ldp	x29, x30, [sp], 128	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
