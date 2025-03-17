	.arch armv8-a
	.file	"problem59.c"
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
	stp	x29, x30, [sp, -80]!	//,,,
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp	//,
	str	x0, [sp, 40]	// l1, l1
	str	w1, [sp, 36]	// size1, size1
	str	x2, [sp, 24]	// l2, l2
	str	w3, [sp, 32]	// size2, size2
	str	x4, [sp, 16]	// out_size, out_size
// problem59.c:5:     int *out = malloc(size1 * sizeof(int));
	ldrsw	x0, [sp, 36]	// _1, size1
	lsl	x0, x0, 2	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 72]	// tmp147, out
// problem59.c:6:     int k = 0, i, j, m;
	str	wzr, [sp, 48]	//, k
// problem59.c:8:     for (i = 0; i < size1; i++) {
	str	wzr, [sp, 52]	//, i
// problem59.c:8:     for (i = 0; i < size1; i++) {
	b	.L2		//
.L11:
// problem59.c:9:         int exists_in_out = 0;
	str	wzr, [sp, 64]	//, exists_in_out
// problem59.c:10:         for (m = 0; m < k; m++) {
	str	wzr, [sp, 60]	//, m
// problem59.c:10:         for (m = 0; m < k; m++) {
	b	.L3		//
.L6:
// problem59.c:11:             if (out[m] == l1[i]) {
	ldrsw	x0, [sp, 60]	// _3, m
	lsl	x0, x0, 2	// _4, _3,
	ldr	x1, [sp, 72]	// tmp148, out
	add	x0, x1, x0	// _5, tmp148, _4
	ldr	w1, [x0]	// _6, *_5
// problem59.c:11:             if (out[m] == l1[i]) {
	ldrsw	x0, [sp, 52]	// _7, i
	lsl	x0, x0, 2	// _8, _7,
	ldr	x2, [sp, 40]	// tmp149, l1
	add	x0, x2, x0	// _9, tmp149, _8
	ldr	w0, [x0]	// _10, *_9
// problem59.c:11:             if (out[m] == l1[i]) {
	cmp	w1, w0	// _6, _10
	bne	.L4		//,
// problem59.c:12:                 exists_in_out = 1;
	mov	w0, 1	// tmp150,
	str	w0, [sp, 64]	// tmp150, exists_in_out
// problem59.c:13:                 break;
	b	.L5		//
.L4:
// problem59.c:10:         for (m = 0; m < k; m++) {
	ldr	w0, [sp, 60]	// tmp152, m
	add	w0, w0, 1	// tmp151, tmp152,
	str	w0, [sp, 60]	// tmp151, m
.L3:
// problem59.c:10:         for (m = 0; m < k; m++) {
	ldr	w1, [sp, 60]	// tmp153, m
	ldr	w0, [sp, 48]	// tmp154, k
	cmp	w1, w0	// tmp153, tmp154
	blt	.L6		//,
.L5:
// problem59.c:16:         if (!exists_in_out) {
	ldr	w0, [sp, 64]	// tmp155, exists_in_out
	cmp	w0, 0	// tmp155,
	bne	.L7		//,
// problem59.c:17:             for (j = 0; j < size2; j++) {
	str	wzr, [sp, 56]	//, j
// problem59.c:17:             for (j = 0; j < size2; j++) {
	b	.L8		//
.L10:
// problem59.c:18:                 if (l1[i] == l2[j]) {
	ldrsw	x0, [sp, 52]	// _11, i
	lsl	x0, x0, 2	// _12, _11,
	ldr	x1, [sp, 40]	// tmp156, l1
	add	x0, x1, x0	// _13, tmp156, _12
	ldr	w1, [x0]	// _14, *_13
// problem59.c:18:                 if (l1[i] == l2[j]) {
	ldrsw	x0, [sp, 56]	// _15, j
	lsl	x0, x0, 2	// _16, _15,
	ldr	x2, [sp, 24]	// tmp157, l2
	add	x0, x2, x0	// _17, tmp157, _16
	ldr	w0, [x0]	// _18, *_17
// problem59.c:18:                 if (l1[i] == l2[j]) {
	cmp	w1, w0	// _14, _18
	bne	.L9		//,
// problem59.c:19:                     out[k++] = l1[i];
	ldrsw	x0, [sp, 52]	// _19, i
	lsl	x0, x0, 2	// _20, _19,
	ldr	x1, [sp, 40]	// tmp158, l1
	add	x1, x1, x0	// _21, tmp158, _20
// problem59.c:19:                     out[k++] = l1[i];
	ldr	w0, [sp, 48]	// k.0_22, k
	add	w2, w0, 1	// tmp159, k.0_22,
	str	w2, [sp, 48]	// tmp159, k
	sxtw	x0, w0	// _23, k.0_22
// problem59.c:19:                     out[k++] = l1[i];
	lsl	x0, x0, 2	// _24, _23,
	ldr	x2, [sp, 72]	// tmp160, out
	add	x0, x2, x0	// _25, tmp160, _24
// problem59.c:19:                     out[k++] = l1[i];
	ldr	w1, [x1]	// _26, *_21
// problem59.c:19:                     out[k++] = l1[i];
	str	w1, [x0]	// _26, *_25
// problem59.c:20:                     break;
	b	.L7		//
.L9:
// problem59.c:17:             for (j = 0; j < size2; j++) {
	ldr	w0, [sp, 56]	// tmp162, j
	add	w0, w0, 1	// tmp161, tmp162,
	str	w0, [sp, 56]	// tmp161, j
.L8:
// problem59.c:17:             for (j = 0; j < size2; j++) {
	ldr	w1, [sp, 56]	// tmp163, j
	ldr	w0, [sp, 32]	// tmp164, size2
	cmp	w1, w0	// tmp163, tmp164
	blt	.L10		//,
.L7:
// problem59.c:8:     for (i = 0; i < size1; i++) {
	ldr	w0, [sp, 52]	// tmp166, i
	add	w0, w0, 1	// tmp165, tmp166,
	str	w0, [sp, 52]	// tmp165, i
.L2:
// problem59.c:8:     for (i = 0; i < size1; i++) {
	ldr	w1, [sp, 52]	// tmp167, i
	ldr	w0, [sp, 36]	// tmp168, size1
	cmp	w1, w0	// tmp167, tmp168
	blt	.L11		//,
// problem59.c:26:     for (i = 0; i < k - 1; i++) {
	str	wzr, [sp, 52]	//, i
// problem59.c:26:     for (i = 0; i < k - 1; i++) {
	b	.L12		//
.L16:
// problem59.c:27:         for (j = 0; j < k - i - 1; j++) {
	str	wzr, [sp, 56]	//, j
// problem59.c:27:         for (j = 0; j < k - i - 1; j++) {
	b	.L13		//
.L15:
// problem59.c:28:             if (out[j] > out[j + 1]) {
	ldrsw	x0, [sp, 56]	// _27, j
	lsl	x0, x0, 2	// _28, _27,
	ldr	x1, [sp, 72]	// tmp169, out
	add	x0, x1, x0	// _29, tmp169, _28
	ldr	w1, [x0]	// _30, *_29
// problem59.c:28:             if (out[j] > out[j + 1]) {
	ldrsw	x0, [sp, 56]	// _31, j
	add	x0, x0, 1	// _32, _31,
	lsl	x0, x0, 2	// _33, _32,
	ldr	x2, [sp, 72]	// tmp170, out
	add	x0, x2, x0	// _34, tmp170, _33
	ldr	w0, [x0]	// _35, *_34
// problem59.c:28:             if (out[j] > out[j + 1]) {
	cmp	w1, w0	// _30, _35
	ble	.L14		//,
// problem59.c:29:                 int temp = out[j];
	ldrsw	x0, [sp, 56]	// _36, j
	lsl	x0, x0, 2	// _37, _36,
	ldr	x1, [sp, 72]	// tmp171, out
	add	x0, x1, x0	// _38, tmp171, _37
// problem59.c:29:                 int temp = out[j];
	ldr	w0, [x0]	// tmp172, *_38
	str	w0, [sp, 68]	// tmp172, temp
// problem59.c:30:                 out[j] = out[j + 1];
	ldrsw	x0, [sp, 56]	// _39, j
	add	x0, x0, 1	// _40, _39,
	lsl	x0, x0, 2	// _41, _40,
	ldr	x1, [sp, 72]	// tmp173, out
	add	x1, x1, x0	// _42, tmp173, _41
// problem59.c:30:                 out[j] = out[j + 1];
	ldrsw	x0, [sp, 56]	// _43, j
	lsl	x0, x0, 2	// _44, _43,
	ldr	x2, [sp, 72]	// tmp174, out
	add	x0, x2, x0	// _45, tmp174, _44
// problem59.c:30:                 out[j] = out[j + 1];
	ldr	w1, [x1]	// _46, *_42
// problem59.c:30:                 out[j] = out[j + 1];
	str	w1, [x0]	// _46, *_45
// problem59.c:31:                 out[j + 1] = temp;
	ldrsw	x0, [sp, 56]	// _47, j
	add	x0, x0, 1	// _48, _47,
	lsl	x0, x0, 2	// _49, _48,
	ldr	x1, [sp, 72]	// tmp175, out
	add	x0, x1, x0	// _50, tmp175, _49
// problem59.c:31:                 out[j + 1] = temp;
	ldr	w1, [sp, 68]	// tmp176, temp
	str	w1, [x0]	// tmp176, *_50
.L14:
// problem59.c:27:         for (j = 0; j < k - i - 1; j++) {
	ldr	w0, [sp, 56]	// tmp178, j
	add	w0, w0, 1	// tmp177, tmp178,
	str	w0, [sp, 56]	// tmp177, j
.L13:
// problem59.c:27:         for (j = 0; j < k - i - 1; j++) {
	ldr	w1, [sp, 48]	// tmp179, k
	ldr	w0, [sp, 52]	// tmp180, i
	sub	w0, w1, w0	// _51, tmp179, tmp180
// problem59.c:27:         for (j = 0; j < k - i - 1; j++) {
	sub	w0, w0, #1	// _52, _51,
// problem59.c:27:         for (j = 0; j < k - i - 1; j++) {
	ldr	w1, [sp, 56]	// tmp181, j
	cmp	w1, w0	// tmp181, _52
	blt	.L15		//,
// problem59.c:26:     for (i = 0; i < k - 1; i++) {
	ldr	w0, [sp, 52]	// tmp183, i
	add	w0, w0, 1	// tmp182, tmp183,
	str	w0, [sp, 52]	// tmp182, i
.L12:
// problem59.c:26:     for (i = 0; i < k - 1; i++) {
	ldr	w0, [sp, 48]	// tmp184, k
	sub	w0, w0, #1	// _53, tmp184,
// problem59.c:26:     for (i = 0; i < k - 1; i++) {
	ldr	w1, [sp, 52]	// tmp185, i
	cmp	w1, w0	// tmp185, _53
	blt	.L16		//,
// problem59.c:36:     *out_size = k;
	ldr	x0, [sp, 16]	// tmp186, out_size
	ldr	w1, [sp, 48]	// tmp187, k
	str	w1, [x0]	// tmp187, *out_size_74(D)
// problem59.c:37:     return out;
	ldr	x0, [sp, 72]	// _76, out
// problem59.c:38: }
	ldp	x29, x30, [sp], 80	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC5:
	.string	"problem59.c"
	.align	3
.LC6:
	.string	"result1[i] == expected1[i]"
	.align	3
.LC7:
	.string	"result2[i] == expected2[i]"
	.align	3
.LC8:
	.string	"result3[i] == expected3[i]"
	.align	3
.LC9:
	.string	"size == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #256	//,,
	.cfi_def_cfa_offset 256
	stp	x29, x30, [sp, 240]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 240	//,,
// problem59.c:46: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp113,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp113,
	ldr	x1, [x0]	// tmp207,
	str	x1, [sp, 232]	// tmp207, D.5687
	mov	x1, 0	// tmp207
// problem59.c:49:     int l1[] = {1, 4, 3, 34, 653, 2, 5};
	adrp	x0, .LC0	// tmp115,
	add	x1, x0, :lo12:.LC0	// tmp114, tmp115,
	add	x0, sp, 168	// tmp116,,
	ldr	q0, [x1]	// tmp118,
	str	q0, [x0]	// tmp118, l1
	ldr	q0, [x1, 12]	// tmp119,
	str	q0, [x0, 12]	// tmp119, l1
// problem59.c:50:     int l2[] = {5, 7, 1, 5, 9, 653, 121};
	adrp	x0, .LC1	// tmp121,
	add	x1, x0, :lo12:.LC1	// tmp120, tmp121,
	add	x0, sp, 200	// tmp122,,
	ldr	q0, [x1]	// tmp124,
	str	q0, [x0]	// tmp124, l2
	ldr	q0, [x1, 12]	// tmp125,
	str	q0, [x0, 12]	// tmp125, l2
// problem59.c:51:     int expected1[] = {1, 5, 653};
	adrp	x0, .LC2	// tmp127,
	add	x1, x0, :lo12:.LC2	// tmp126, tmp127,
	add	x0, sp, 72	// tmp128,,
	ldr	x2, [x1]	// tmp130,
	str	x2, [x0]	// tmp130, expected1
	ldr	w1, [x1, 8]	// tmp131,
	str	w1, [x0, 8]	// tmp131, expected1
// problem59.c:52:     int *result1 = func0(l1, 7, l2, 7, &size);
	mov	x2, sp	// tmp132,
	add	x1, sp, 200	// tmp133,,
	add	x0, sp, 168	// tmp134,,
	mov	x4, x2	//, tmp132
	mov	w3, 7	//,
	mov	x2, x1	//, tmp133
	mov	w1, 7	//,
	bl	func0		//
	str	x0, [sp, 16]	//, result1
// problem59.c:53:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 4]	//, i
// problem59.c:53:     for (int i = 0; i < size; i++) {
	b	.L19		//
.L21:
// problem59.c:54:         assert(result1[i] == expected1[i]);
	ldrsw	x0, [sp, 4]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 16]	// tmp135, result1
	add	x0, x1, x0	// _3, tmp135, _2
	ldr	w1, [x0]	// _4, *_3
	ldrsw	x0, [sp, 4]	// tmp136, i
	lsl	x0, x0, 2	// tmp137, tmp136,
	add	x2, sp, 72	// tmp138,,
	ldr	w0, [x2, x0]	// _5, expected1[i_20]
	cmp	w1, w0	// _4, _5
	beq	.L20		//,
// problem59.c:54:         assert(result1[i] == expected1[i]);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp139,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp139,
	mov	w2, 54	//,
	adrp	x0, .LC5	// tmp140,
	add	x1, x0, :lo12:.LC5	//, tmp140,
	adrp	x0, .LC6	// tmp141,
	add	x0, x0, :lo12:.LC6	//, tmp141,
	bl	__assert_fail		//
.L20:
// problem59.c:53:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 4]	// tmp143, i
	add	w0, w0, 1	// tmp142, tmp143,
	str	w0, [sp, 4]	// tmp142, i
.L19:
// problem59.c:53:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp]	// size.1_6, size
	ldr	w1, [sp, 4]	// tmp144, i
	cmp	w1, w0	// tmp144, size.1_6
	blt	.L21		//,
// problem59.c:56:     free(result1);
	ldr	x0, [sp, 16]	//, result1
	bl	free		//
// problem59.c:58:     int l3[] = {5, 3, 2, 8};
	mov	w0, 5	// tmp145,
	str	w0, [sp, 120]	// tmp145, l3[0]
	mov	w0, 3	// tmp146,
	str	w0, [sp, 124]	// tmp146, l3[1]
	mov	w0, 2	// tmp147,
	str	w0, [sp, 128]	// tmp147, l3[2]
	mov	w0, 8	// tmp148,
	str	w0, [sp, 132]	// tmp148, l3[3]
// problem59.c:59:     int l4[] = {3, 2};
	mov	w0, 3	// tmp149,
	str	w0, [sp, 56]	// tmp149, l4[0]
	mov	w0, 2	// tmp150,
	str	w0, [sp, 60]	// tmp150, l4[1]
// problem59.c:60:     int expected2[] = {2, 3};
	mov	w0, 2	// tmp151,
	str	w0, [sp, 64]	// tmp151, expected2[0]
	mov	w0, 3	// tmp152,
	str	w0, [sp, 68]	// tmp152, expected2[1]
// problem59.c:61:     int *result2 = func0(l3, 4, l4, 2, &size);
	mov	x2, sp	// tmp153,
	add	x1, sp, 56	// tmp154,,
	add	x0, sp, 120	// tmp155,,
	mov	x4, x2	//, tmp153
	mov	w3, 2	//,
	mov	x2, x1	//, tmp154
	mov	w1, 4	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result2
// problem59.c:62:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 8]	//, i
// problem59.c:62:     for (int i = 0; i < size; i++) {
	b	.L22		//
.L24:
// problem59.c:63:         assert(result2[i] == expected2[i]);
	ldrsw	x0, [sp, 8]	// _7, i
	lsl	x0, x0, 2	// _8, _7,
	ldr	x1, [sp, 24]	// tmp156, result2
	add	x0, x1, x0	// _9, tmp156, _8
	ldr	w1, [x0]	// _10, *_9
	ldrsw	x0, [sp, 8]	// tmp157, i
	lsl	x0, x0, 2	// tmp158, tmp157,
	add	x2, sp, 64	// tmp159,,
	ldr	w0, [x2, x0]	// _11, expected2[i_21]
	cmp	w1, w0	// _10, _11
	beq	.L23		//,
// problem59.c:63:         assert(result2[i] == expected2[i]);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp160,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp160,
	mov	w2, 63	//,
	adrp	x0, .LC5	// tmp161,
	add	x1, x0, :lo12:.LC5	//, tmp161,
	adrp	x0, .LC7	// tmp162,
	add	x0, x0, :lo12:.LC7	//, tmp162,
	bl	__assert_fail		//
.L23:
// problem59.c:62:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 8]	// tmp164, i
	add	w0, w0, 1	// tmp163, tmp164,
	str	w0, [sp, 8]	// tmp163, i
.L22:
// problem59.c:62:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp]	// size.2_12, size
	ldr	w1, [sp, 8]	// tmp165, i
	cmp	w1, w0	// tmp165, size.2_12
	blt	.L24		//,
// problem59.c:65:     free(result2);
	ldr	x0, [sp, 24]	//, result2
	bl	free		//
// problem59.c:67:     int l5[] = {4, 3, 2, 8};
	mov	w0, 4	// tmp166,
	str	w0, [sp, 136]	// tmp166, l5[0]
	mov	w0, 3	// tmp167,
	str	w0, [sp, 140]	// tmp167, l5[1]
	mov	w0, 2	// tmp168,
	str	w0, [sp, 144]	// tmp168, l5[2]
	mov	w0, 8	// tmp169,
	str	w0, [sp, 148]	// tmp169, l5[3]
// problem59.c:68:     int l6[] = {3, 2, 4};
	adrp	x0, .LC3	// tmp171,
	add	x1, x0, :lo12:.LC3	// tmp170, tmp171,
	add	x0, sp, 88	// tmp172,,
	ldr	x2, [x1]	// tmp174,
	str	x2, [x0]	// tmp174, l6
	ldr	w1, [x1, 8]	// tmp175,
	str	w1, [x0, 8]	// tmp175, l6
// problem59.c:69:     int expected3[] = {2, 3, 4};
	adrp	x0, .LC4	// tmp177,
	add	x1, x0, :lo12:.LC4	// tmp176, tmp177,
	add	x0, sp, 104	// tmp178,,
	ldr	x2, [x1]	// tmp180,
	str	x2, [x0]	// tmp180, expected3
	ldr	w1, [x1, 8]	// tmp181,
	str	w1, [x0, 8]	// tmp181, expected3
// problem59.c:70:     int *result3 = func0(l5, 4, l6, 3, &size);
	mov	x2, sp	// tmp182,
	add	x1, sp, 88	// tmp183,,
	add	x0, sp, 136	// tmp184,,
	mov	x4, x2	//, tmp182
	mov	w3, 3	//,
	mov	x2, x1	//, tmp183
	mov	w1, 4	//,
	bl	func0		//
	str	x0, [sp, 32]	//, result3
// problem59.c:71:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 12]	//, i
// problem59.c:71:     for (int i = 0; i < size; i++) {
	b	.L25		//
.L27:
// problem59.c:72:         assert(result3[i] == expected3[i]);
	ldrsw	x0, [sp, 12]	// _13, i
	lsl	x0, x0, 2	// _14, _13,
	ldr	x1, [sp, 32]	// tmp185, result3
	add	x0, x1, x0	// _15, tmp185, _14
	ldr	w1, [x0]	// _16, *_15
	ldrsw	x0, [sp, 12]	// tmp186, i
	lsl	x0, x0, 2	// tmp187, tmp186,
	add	x2, sp, 104	// tmp188,,
	ldr	w0, [x2, x0]	// _17, expected3[i_22]
	cmp	w1, w0	// _16, _17
	beq	.L26		//,
// problem59.c:72:         assert(result3[i] == expected3[i]);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp189,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp189,
	mov	w2, 72	//,
	adrp	x0, .LC5	// tmp190,
	add	x1, x0, :lo12:.LC5	//, tmp190,
	adrp	x0, .LC8	// tmp191,
	add	x0, x0, :lo12:.LC8	//, tmp191,
	bl	__assert_fail		//
.L26:
// problem59.c:71:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 12]	// tmp193, i
	add	w0, w0, 1	// tmp192, tmp193,
	str	w0, [sp, 12]	// tmp192, i
.L25:
// problem59.c:71:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp]	// size.3_18, size
	ldr	w1, [sp, 12]	// tmp194, i
	cmp	w1, w0	// tmp194, size.3_18
	blt	.L27		//,
// problem59.c:74:     free(result3);
	ldr	x0, [sp, 32]	//, result3
	bl	free		//
// problem59.c:76:     int l7[] = {4, 3, 2, 8};
	mov	w0, 4	// tmp195,
	str	w0, [sp, 152]	// tmp195, l7[0]
	mov	w0, 3	// tmp196,
	str	w0, [sp, 156]	// tmp196, l7[1]
	mov	w0, 2	// tmp197,
	str	w0, [sp, 160]	// tmp197, l7[2]
	mov	w0, 8	// tmp198,
	str	w0, [sp, 164]	// tmp198, l7[3]
// problem59.c:78:     int *result4 = func0(l7, 4, l8, 0, &size);
	mov	x2, sp	// tmp199,
	add	x1, sp, 48	// tmp200,,
	add	x0, sp, 152	// tmp201,,
	mov	x4, x2	//, tmp199
	mov	w3, 0	//,
	mov	x2, x1	//, tmp200
	mov	w1, 4	//,
	bl	func0		//
	str	x0, [sp, 40]	//, result4
// problem59.c:79:     assert(size == 0); // Since l8 is empty, result4 should be empty as well
	ldr	w0, [sp]	// size.4_19, size
	cmp	w0, 0	// size.4_19,
	beq	.L28		//,
// problem59.c:79:     assert(size == 0); // Since l8 is empty, result4 should be empty as well
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp202,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp202,
	mov	w2, 79	//,
	adrp	x0, .LC5	// tmp203,
	add	x1, x0, :lo12:.LC5	//, tmp203,
	adrp	x0, .LC9	// tmp204,
	add	x0, x0, :lo12:.LC9	//, tmp204,
	bl	__assert_fail		//
.L28:
// problem59.c:80:     free(result4);
	ldr	x0, [sp, 40]	//, result4
	bl	free		//
// problem59.c:82:     return 0;
	mov	w0, 0	// _61,
// problem59.c:83: }
	mov	w1, w0	// <retval>, _61
	adrp	x0, :got:__stack_chk_guard	// tmp206,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp206,
	ldr	x3, [sp, 232]	// tmp208, D.5687
	ldr	x2, [x0]	// tmp209,
	subs	x3, x3, x2	// tmp208, tmp209
	mov	x2, 0	// tmp209
	beq	.L30		//,
	bl	__stack_chk_fail		//
.L30:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 240]	//,,
	add	sp, sp, 256	//,,
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
	.word	1
	.word	4
	.word	3
	.word	34
	.word	653
	.word	2
	.word	5
	.align	3
.LC1:
	.word	5
	.word	7
	.word	1
	.word	5
	.word	9
	.word	653
	.word	121
	.align	3
.LC2:
	.word	1
	.word	5
	.word	653
	.align	3
.LC3:
	.word	3
	.word	2
	.word	4
	.align	3
.LC4:
	.word	2
	.word	3
	.word	4
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
