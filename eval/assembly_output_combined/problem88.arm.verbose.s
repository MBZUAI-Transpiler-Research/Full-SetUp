	.arch armv8-a
	.file	"problem88.c"
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
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 56]	// lst, lst
	str	w1, [sp, 52]	// lst_size, lst_size
	str	x2, [sp, 40]	// row_sizes, row_sizes
	str	w3, [sp, 48]	// x, x
	str	x4, [sp, 32]	// return_size, return_size
// problem88.c:5:     int **out = (int **)malloc(100 * sizeof(int *));
	mov	x0, 800	//,
	bl	malloc		//
	str	x0, [sp, 88]	// tmp119, out
// problem88.c:6:     int count = 0;
	str	wzr, [sp, 76]	//, count
// problem88.c:7:     for (int i = 0; i < lst_size; i++) {
	str	wzr, [sp, 80]	//, i
// problem88.c:7:     for (int i = 0; i < lst_size; i++) {
	b	.L2		//
.L6:
// problem88.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	ldrsw	x0, [sp, 80]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 40]	// tmp120, row_sizes
	add	x0, x1, x0	// _3, tmp120, _2
	ldr	w0, [x0]	// _4, *_3
// problem88.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	sub	w0, w0, #1	// tmp121, _4,
	str	w0, [sp, 84]	// tmp121, j
// problem88.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	b	.L3		//
.L5:
// problem88.c:9:             if (lst[i][j] == x) {
	ldrsw	x0, [sp, 80]	// _5, i
	lsl	x0, x0, 3	// _6, _5,
	ldr	x1, [sp, 56]	// tmp122, lst
	add	x0, x1, x0	// _7, tmp122, _6
	ldr	x1, [x0]	// _8, *_7
// problem88.c:9:             if (lst[i][j] == x) {
	ldrsw	x0, [sp, 84]	// _9, j
	lsl	x0, x0, 2	// _10, _9,
	add	x0, x1, x0	// _11, _8, _10
	ldr	w0, [x0]	// _12, *_11
// problem88.c:9:             if (lst[i][j] == x) {
	ldr	w1, [sp, 48]	// tmp123, x
	cmp	w1, w0	// tmp123, _12
	bne	.L4		//,
// problem88.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	ldrsw	x0, [sp, 76]	// _13, count
	lsl	x0, x0, 3	// _14, _13,
	ldr	x1, [sp, 88]	// tmp124, out
	add	x19, x1, x0	// _15, tmp124, _14
// problem88.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	mov	x0, 8	//,
	bl	malloc		//
// problem88.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	str	x0, [x19]	// _16, *_15
// problem88.c:11:                 out[count][0] = i;
	ldrsw	x0, [sp, 76]	// _17, count
	lsl	x0, x0, 3	// _18, _17,
	ldr	x1, [sp, 88]	// tmp126, out
	add	x0, x1, x0	// _19, tmp126, _18
	ldr	x0, [x0]	// _20, *_19
// problem88.c:11:                 out[count][0] = i;
	ldr	w1, [sp, 80]	// tmp127, i
	str	w1, [x0]	// tmp127, *_20
// problem88.c:12:                 out[count][1] = j;
	ldrsw	x0, [sp, 76]	// _21, count
	lsl	x0, x0, 3	// _22, _21,
	ldr	x1, [sp, 88]	// tmp128, out
	add	x0, x1, x0	// _23, tmp128, _22
	ldr	x0, [x0]	// _24, *_23
// problem88.c:12:                 out[count][1] = j;
	add	x0, x0, 4	// _25, _24,
// problem88.c:12:                 out[count][1] = j;
	ldr	w1, [sp, 84]	// tmp129, j
	str	w1, [x0]	// tmp129, *_25
// problem88.c:13:                 count++;
	ldr	w0, [sp, 76]	// tmp131, count
	add	w0, w0, 1	// tmp130, tmp131,
	str	w0, [sp, 76]	// tmp130, count
.L4:
// problem88.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	ldr	w0, [sp, 84]	// tmp133, j
	sub	w0, w0, #1	// tmp132, tmp133,
	str	w0, [sp, 84]	// tmp132, j
.L3:
// problem88.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	ldr	w0, [sp, 84]	// tmp134, j
	cmp	w0, 0	// tmp134,
	bge	.L5		//,
// problem88.c:7:     for (int i = 0; i < lst_size; i++) {
	ldr	w0, [sp, 80]	// tmp136, i
	add	w0, w0, 1	// tmp135, tmp136,
	str	w0, [sp, 80]	// tmp135, i
.L2:
// problem88.c:7:     for (int i = 0; i < lst_size; i++) {
	ldr	w1, [sp, 80]	// tmp137, i
	ldr	w0, [sp, 52]	// tmp138, lst_size
	cmp	w1, w0	// tmp137, tmp138
	blt	.L6		//,
// problem88.c:17:     *return_size = count;
	ldr	x0, [sp, 32]	// tmp139, return_size
	ldr	w1, [sp, 76]	// tmp140, count
	str	w1, [x0]	// tmp140, *return_size_40(D)
// problem88.c:18:     return out;
	ldr	x0, [sp, 88]	// _42, out
// problem88.c:19: }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
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
	str	w1, [sp, 20]	// aSize, aSize
	str	x2, [sp, 8]	// b, b
	str	w3, [sp, 16]	// bSize, bSize
// problem88.c:28:     if (aSize != bSize) return 0;
	ldr	w1, [sp, 20]	// tmp116, aSize
	ldr	w0, [sp, 16]	// tmp117, bSize
	cmp	w1, w0	// tmp116, tmp117
	beq	.L9		//,
// problem88.c:28:     if (aSize != bSize) return 0;
	mov	w0, 0	// _24,
	b	.L10		//
.L9:
// problem88.c:30:     for (int i = 0; i < aSize; i++) {
	str	wzr, [sp, 44]	//, i
// problem88.c:30:     for (int i = 0; i < aSize; i++) {
	b	.L11		//
.L14:
// problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 24]	// tmp118, a
	add	x0, x1, x0	// _3, tmp118, _2
	ldr	x0, [x0]	// _4, *_3
// problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	ldr	w1, [x0]	// _5, *_4
// problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	ldrsw	x0, [sp, 44]	// _6, i
	lsl	x0, x0, 3	// _7, _6,
	ldr	x2, [sp, 8]	// tmp119, b
	add	x0, x2, x0	// _8, tmp119, _7
	ldr	x0, [x0]	// _9, *_8
// problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	ldr	w0, [x0]	// _10, *_9
// problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	cmp	w1, w0	// _5, _10
	bne	.L12		//,
// problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	ldrsw	x0, [sp, 44]	// _11, i
	lsl	x0, x0, 3	// _12, _11,
	ldr	x1, [sp, 24]	// tmp120, a
	add	x0, x1, x0	// _13, tmp120, _12
	ldr	x0, [x0]	// _14, *_13
// problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	add	x0, x0, 4	// _15, _14,
	ldr	w1, [x0]	// _16, *_15
// problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	ldrsw	x0, [sp, 44]	// _17, i
	lsl	x0, x0, 3	// _18, _17,
	ldr	x2, [sp, 8]	// tmp121, b
	add	x0, x2, x0	// _19, tmp121, _18
	ldr	x0, [x0]	// _20, *_19
// problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	add	x0, x0, 4	// _21, _20,
	ldr	w0, [x0]	// _22, *_21
// problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	cmp	w1, w0	// _16, _22
	beq	.L13		//,
.L12:
// problem88.c:31:         if (a[i][0] != b[i][0] || a[i][1] != b[i][1]) return 0;
	mov	w0, 0	// _24,
	b	.L10		//
.L13:
// problem88.c:30:     for (int i = 0; i < aSize; i++) {
	ldr	w0, [sp, 44]	// tmp123, i
	add	w0, w0, 1	// tmp122, tmp123,
	str	w0, [sp, 44]	// tmp122, i
.L11:
// problem88.c:30:     for (int i = 0; i < aSize; i++) {
	ldr	w1, [sp, 44]	// tmp124, i
	ldr	w0, [sp, 20]	// tmp125, aSize
	cmp	w1, w0	// tmp124, tmp125
	blt	.L14		//,
// problem88.c:33:     return 1;
	mov	w0, 1	// _24,
.L10:
// problem88.c:34: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.align	2
	.global	free_result
	.type	free_result, %function
free_result:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// result, result
	str	w1, [sp, 20]	// size, size
// problem88.c:37:     for (int i = 0; i < size; ++i) {
	str	wzr, [sp, 44]	//, i
// problem88.c:37:     for (int i = 0; i < size; ++i) {
	b	.L16		//
.L17:
// problem88.c:38:         free(result[i]);
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 24]	// tmp96, result
	add	x0, x1, x0	// _3, tmp96, _2
// problem88.c:38:         free(result[i]);
	ldr	x0, [x0]	// _4, *_3
	bl	free		//
// problem88.c:37:     for (int i = 0; i < size; ++i) {
	ldr	w0, [sp, 44]	// tmp98, i
	add	w0, w0, 1	// tmp97, tmp98,
	str	w0, [sp, 44]	// tmp97, i
.L16:
// problem88.c:37:     for (int i = 0; i < size; ++i) {
	ldr	w1, [sp, 44]	// tmp99, i
	ldr	w0, [sp, 20]	// tmp100, size
	cmp	w1, w0	// tmp99, tmp100
	blt	.L17		//,
// problem88.c:40:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem88.c:41: }
	nop	
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE8:
	.size	free_result, .-free_result
	.section	.rodata
	.align	3
.LC4:
	.string	"problem88.c"
	.align	3
.LC5:
	.string	"issame(result, returnSize, expected1, 5)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB9:
	.cfi_startproc
	stp	x29, x30, [sp, -240]!	//,,,
	.cfi_def_cfa_offset 240
	.cfi_offset 29, -240
	.cfi_offset 30, -232
	mov	x29, sp	//,
// problem88.c:43: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp98,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp97, tmp98,
	ldr	x1, [x0]	// tmp148,
	str	x1, [sp, 232]	// tmp148, D.4868
	mov	x1, 0	// tmp148
// problem88.c:48:     rows = 3;
	mov	w0, 3	// tmp99,
	str	w0, [sp, 28]	// tmp99, rows
// problem88.c:49:     int cols1[] = {6, 6, 6};
	adrp	x0, .LC0	// tmp101,
	add	x1, x0, :lo12:.LC0	// tmp100, tmp101,
	add	x0, sp, 80	// tmp102,,
	ldr	x2, [x1]	// tmp104,
	str	x2, [x0]	// tmp104, cols1
	ldr	w1, [x1, 8]	// tmp105,
	str	w1, [x0, 8]	// tmp105, cols1
// problem88.c:50:     int *lst1[] = {(int[]){1,2,3,4,5,6}, (int[]){1,2,3,4,1,6}, (int[]){1,2,3,4,5,1}};
	adrp	x0, .LC1	// tmp107,
	add	x0, x0, :lo12:.LC1	// tmp106, tmp107,
	add	x2, sp, 120	// tmp108,,
	mov	x3, x0	// tmp109, tmp106
	ldp	x0, x1, [x3]	// tmp110,
	stp	x0, x1, [x2]	// tmp110, D.4832
	ldr	x0, [x3, 16]	// tmp111,
	str	x0, [x2, 16]	// tmp111, D.4832
// problem88.c:50:     int *lst1[] = {(int[]){1,2,3,4,5,6}, (int[]){1,2,3,4,1,6}, (int[]){1,2,3,4,5,1}};
	add	x0, sp, 120	// tmp112,,
	str	x0, [sp, 96]	// tmp112, lst1[0]
// problem88.c:50:     int *lst1[] = {(int[]){1,2,3,4,5,6}, (int[]){1,2,3,4,1,6}, (int[]){1,2,3,4,5,1}};
	adrp	x0, .LC2	// tmp114,
	add	x0, x0, :lo12:.LC2	// tmp113, tmp114,
	add	x2, sp, 144	// tmp115,,
	mov	x3, x0	// tmp116, tmp113
	ldp	x0, x1, [x3]	// tmp117,
	stp	x0, x1, [x2]	// tmp117, D.4833
	ldr	x0, [x3, 16]	// tmp118,
	str	x0, [x2, 16]	// tmp118, D.4833
// problem88.c:50:     int *lst1[] = {(int[]){1,2,3,4,5,6}, (int[]){1,2,3,4,1,6}, (int[]){1,2,3,4,5,1}};
	add	x0, sp, 144	// tmp119,,
	str	x0, [sp, 104]	// tmp119, lst1[1]
// problem88.c:50:     int *lst1[] = {(int[]){1,2,3,4,5,6}, (int[]){1,2,3,4,1,6}, (int[]){1,2,3,4,5,1}};
	adrp	x0, .LC3	// tmp121,
	add	x0, x0, :lo12:.LC3	// tmp120, tmp121,
	add	x2, sp, 168	// tmp122,,
	mov	x3, x0	// tmp123, tmp120
	ldp	x0, x1, [x3]	// tmp124,
	stp	x0, x1, [x2]	// tmp124, D.4834
	ldr	x0, [x3, 16]	// tmp125,
	str	x0, [x2, 16]	// tmp125, D.4834
// problem88.c:50:     int *lst1[] = {(int[]){1,2,3,4,5,6}, (int[]){1,2,3,4,1,6}, (int[]){1,2,3,4,5,1}};
	add	x0, sp, 168	// tmp126,,
	str	x0, [sp, 112]	// tmp126, lst1[2]
// problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	str	wzr, [sp, 40]	//, D.4836[0]
	str	wzr, [sp, 44]	//, D.4836[1]
// problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	add	x0, sp, 40	// tmp127,,
	str	x0, [sp, 192]	// tmp127, expected1[0]
// problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	mov	w0, 1	// tmp128,
	str	w0, [sp, 48]	// tmp128, D.4837[0]
	mov	w0, 4	// tmp129,
	str	w0, [sp, 52]	// tmp129, D.4837[1]
// problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	add	x0, sp, 48	// tmp130,,
	str	x0, [sp, 200]	// tmp130, expected1[1]
// problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	mov	w0, 1	// tmp131,
	str	w0, [sp, 56]	// tmp131, D.4838[0]
	str	wzr, [sp, 60]	//, D.4838[1]
// problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	add	x0, sp, 56	// tmp132,,
	str	x0, [sp, 208]	// tmp132, expected1[2]
// problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	mov	w0, 2	// tmp133,
	str	w0, [sp, 64]	// tmp133, D.4839[0]
	mov	w0, 5	// tmp134,
	str	w0, [sp, 68]	// tmp134, D.4839[1]
// problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	add	x0, sp, 64	// tmp135,,
	str	x0, [sp, 216]	// tmp135, expected1[3]
// problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	mov	w0, 2	// tmp136,
	str	w0, [sp, 72]	// tmp136, D.4840[0]
	str	wzr, [sp, 76]	//, D.4840[1]
// problem88.c:51:     int *expected1[] = {(int[]){0, 0}, (int[]){1, 4}, (int[]){1, 0}, (int[]){2, 5}, (int[]){2, 0}};
	add	x0, sp, 72	// tmp137,,
	str	x0, [sp, 224]	// tmp137, expected1[4]
// problem88.c:52:     result = func0(lst1, rows, cols1, 1, &returnSize);
	add	x2, sp, 24	// tmp138,,
	add	x1, sp, 80	// tmp139,,
	add	x0, sp, 96	// tmp140,,
	mov	x4, x2	//, tmp138
	mov	w3, 1	//,
	mov	x2, x1	//, tmp139
	ldr	w1, [sp, 28]	//, rows
	bl	func0		//
	str	x0, [sp, 32]	//, result
// problem88.c:53:     assert(issame(result, returnSize, expected1, 5));
	ldr	w0, [sp, 24]	// returnSize.0_1, returnSize
	add	x1, sp, 192	// tmp141,,
	mov	w3, 5	//,
	mov	x2, x1	//, tmp141
	mov	w1, w0	//, returnSize.0_1
	ldr	x0, [sp, 32]	//, result
	bl	issame		//
	cmp	w0, 0	// _2,
	bne	.L19		//,
// problem88.c:53:     assert(issame(result, returnSize, expected1, 5));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp142,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp142,
	mov	w2, 53	//,
	adrp	x0, .LC4	// tmp143,
	add	x1, x0, :lo12:.LC4	//, tmp143,
	adrp	x0, .LC5	// tmp144,
	add	x0, x0, :lo12:.LC5	//, tmp144,
	bl	__assert_fail		//
.L19:
// problem88.c:54:     free_result(result, returnSize);
	ldr	w0, [sp, 24]	// returnSize.1_3, returnSize
	mov	w1, w0	//, returnSize.1_3
	ldr	x0, [sp, 32]	//, result
	bl	free_result		//
// problem88.c:56:     return 0;
	mov	w0, 0	// _33,
// problem88.c:57: }
	mov	w1, w0	// <retval>, _33
	adrp	x0, :got:__stack_chk_guard	// tmp147,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp146, tmp147,
	ldr	x3, [sp, 232]	// tmp149, D.4868
	ldr	x2, [x0]	// tmp150,
	subs	x3, x3, x2	// tmp149, tmp150
	mov	x2, 0	// tmp150
	beq	.L21		//,
	bl	__stack_chk_fail		//
.L21:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 240	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	6
	.word	6
	.word	6
	.align	3
.LC1:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.align	3
.LC2:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	1
	.word	6
	.align	3
.LC3:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	1
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
