	.arch armv8-a
	.file	"problem35.c"
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
	str	x0, [sp, 40]	// l, l
	str	w1, [sp, 36]	// size, size
	str	x2, [sp, 24]	// out_size, out_size
// problem35.c:5:     int *out = malloc(size * sizeof(int));
	ldrsw	x0, [sp, 36]	// _1, size
	lsl	x0, x0, 2	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 72]	// tmp134, out
// problem35.c:6:     int found, out_count = 0, i, j;
	str	wzr, [sp, 56]	//, out_count
// problem35.c:7:     for (i = 0; i < size; i++) {
	str	wzr, [sp, 60]	//, i
// problem35.c:7:     for (i = 0; i < size; i++) {
	b	.L2		//
.L8:
// problem35.c:8:         found = 0;
	str	wzr, [sp, 52]	//, found
// problem35.c:9:         for (j = 0; j < out_count; j++) {
	str	wzr, [sp, 64]	//, j
// problem35.c:9:         for (j = 0; j < out_count; j++) {
	b	.L3		//
.L6:
// problem35.c:10:             if (l[i] == out[j]) {
	ldrsw	x0, [sp, 60]	// _3, i
	lsl	x0, x0, 2	// _4, _3,
	ldr	x1, [sp, 40]	// tmp135, l
	add	x0, x1, x0	// _5, tmp135, _4
	ldr	w1, [x0]	// _6, *_5
// problem35.c:10:             if (l[i] == out[j]) {
	ldrsw	x0, [sp, 64]	// _7, j
	lsl	x0, x0, 2	// _8, _7,
	ldr	x2, [sp, 72]	// tmp136, out
	add	x0, x2, x0	// _9, tmp136, _8
	ldr	w0, [x0]	// _10, *_9
// problem35.c:10:             if (l[i] == out[j]) {
	cmp	w1, w0	// _6, _10
	bne	.L4		//,
// problem35.c:11:                 found = 1;
	mov	w0, 1	// tmp137,
	str	w0, [sp, 52]	// tmp137, found
// problem35.c:12:                 break;
	b	.L5		//
.L4:
// problem35.c:9:         for (j = 0; j < out_count; j++) {
	ldr	w0, [sp, 64]	// tmp139, j
	add	w0, w0, 1	// tmp138, tmp139,
	str	w0, [sp, 64]	// tmp138, j
.L3:
// problem35.c:9:         for (j = 0; j < out_count; j++) {
	ldr	w1, [sp, 64]	// tmp140, j
	ldr	w0, [sp, 56]	// tmp141, out_count
	cmp	w1, w0	// tmp140, tmp141
	blt	.L6		//,
.L5:
// problem35.c:15:         if (!found) {
	ldr	w0, [sp, 52]	// tmp142, found
	cmp	w0, 0	// tmp142,
	bne	.L7		//,
// problem35.c:16:             out[out_count++] = l[i];
	ldrsw	x0, [sp, 60]	// _11, i
	lsl	x0, x0, 2	// _12, _11,
	ldr	x1, [sp, 40]	// tmp143, l
	add	x1, x1, x0	// _13, tmp143, _12
// problem35.c:16:             out[out_count++] = l[i];
	ldr	w0, [sp, 56]	// out_count.0_14, out_count
	add	w2, w0, 1	// tmp144, out_count.0_14,
	str	w2, [sp, 56]	// tmp144, out_count
	sxtw	x0, w0	// _15, out_count.0_14
// problem35.c:16:             out[out_count++] = l[i];
	lsl	x0, x0, 2	// _16, _15,
	ldr	x2, [sp, 72]	// tmp145, out
	add	x0, x2, x0	// _17, tmp145, _16
// problem35.c:16:             out[out_count++] = l[i];
	ldr	w1, [x1]	// _18, *_13
// problem35.c:16:             out[out_count++] = l[i];
	str	w1, [x0]	// _18, *_17
.L7:
// problem35.c:7:     for (i = 0; i < size; i++) {
	ldr	w0, [sp, 60]	// tmp147, i
	add	w0, w0, 1	// tmp146, tmp147,
	str	w0, [sp, 60]	// tmp146, i
.L2:
// problem35.c:7:     for (i = 0; i < size; i++) {
	ldr	w1, [sp, 60]	// tmp148, i
	ldr	w0, [sp, 36]	// tmp149, size
	cmp	w1, w0	// tmp148, tmp149
	blt	.L8		//,
// problem35.c:20:     for (i = 0; i < out_count - 1; i++) {
	str	wzr, [sp, 60]	//, i
// problem35.c:20:     for (i = 0; i < out_count - 1; i++) {
	b	.L9		//
.L13:
// problem35.c:21:         for (j = i + 1; j < out_count; j++) {
	ldr	w0, [sp, 60]	// tmp151, i
	add	w0, w0, 1	// tmp150, tmp151,
	str	w0, [sp, 64]	// tmp150, j
// problem35.c:21:         for (j = i + 1; j < out_count; j++) {
	b	.L10		//
.L12:
// problem35.c:22:             if (out[i] > out[j]) {
	ldrsw	x0, [sp, 60]	// _19, i
	lsl	x0, x0, 2	// _20, _19,
	ldr	x1, [sp, 72]	// tmp152, out
	add	x0, x1, x0	// _21, tmp152, _20
	ldr	w1, [x0]	// _22, *_21
// problem35.c:22:             if (out[i] > out[j]) {
	ldrsw	x0, [sp, 64]	// _23, j
	lsl	x0, x0, 2	// _24, _23,
	ldr	x2, [sp, 72]	// tmp153, out
	add	x0, x2, x0	// _25, tmp153, _24
	ldr	w0, [x0]	// _26, *_25
// problem35.c:22:             if (out[i] > out[j]) {
	cmp	w1, w0	// _22, _26
	ble	.L11		//,
// problem35.c:23:                 int temp = out[i];
	ldrsw	x0, [sp, 60]	// _27, i
	lsl	x0, x0, 2	// _28, _27,
	ldr	x1, [sp, 72]	// tmp154, out
	add	x0, x1, x0	// _29, tmp154, _28
// problem35.c:23:                 int temp = out[i];
	ldr	w0, [x0]	// tmp155, *_29
	str	w0, [sp, 68]	// tmp155, temp
// problem35.c:24:                 out[i] = out[j];
	ldrsw	x0, [sp, 64]	// _30, j
	lsl	x0, x0, 2	// _31, _30,
	ldr	x1, [sp, 72]	// tmp156, out
	add	x1, x1, x0	// _32, tmp156, _31
// problem35.c:24:                 out[i] = out[j];
	ldrsw	x0, [sp, 60]	// _33, i
	lsl	x0, x0, 2	// _34, _33,
	ldr	x2, [sp, 72]	// tmp157, out
	add	x0, x2, x0	// _35, tmp157, _34
// problem35.c:24:                 out[i] = out[j];
	ldr	w1, [x1]	// _36, *_32
// problem35.c:24:                 out[i] = out[j];
	str	w1, [x0]	// _36, *_35
// problem35.c:25:                 out[j] = temp;
	ldrsw	x0, [sp, 64]	// _37, j
	lsl	x0, x0, 2	// _38, _37,
	ldr	x1, [sp, 72]	// tmp158, out
	add	x0, x1, x0	// _39, tmp158, _38
// problem35.c:25:                 out[j] = temp;
	ldr	w1, [sp, 68]	// tmp159, temp
	str	w1, [x0]	// tmp159, *_39
.L11:
// problem35.c:21:         for (j = i + 1; j < out_count; j++) {
	ldr	w0, [sp, 64]	// tmp161, j
	add	w0, w0, 1	// tmp160, tmp161,
	str	w0, [sp, 64]	// tmp160, j
.L10:
// problem35.c:21:         for (j = i + 1; j < out_count; j++) {
	ldr	w1, [sp, 64]	// tmp162, j
	ldr	w0, [sp, 56]	// tmp163, out_count
	cmp	w1, w0	// tmp162, tmp163
	blt	.L12		//,
// problem35.c:20:     for (i = 0; i < out_count - 1; i++) {
	ldr	w0, [sp, 60]	// tmp165, i
	add	w0, w0, 1	// tmp164, tmp165,
	str	w0, [sp, 60]	// tmp164, i
.L9:
// problem35.c:20:     for (i = 0; i < out_count - 1; i++) {
	ldr	w0, [sp, 56]	// tmp166, out_count
	sub	w0, w0, #1	// _40, tmp166,
// problem35.c:20:     for (i = 0; i < out_count - 1; i++) {
	ldr	w1, [sp, 60]	// tmp167, i
	cmp	w1, w0	// tmp167, _40
	blt	.L13		//,
// problem35.c:30:     *out_size = out_count;
	ldr	x0, [sp, 24]	// tmp168, out_size
	ldr	w1, [sp, 56]	// tmp169, out_count
	str	w1, [x0]	// tmp169, *out_size_60(D)
// problem35.c:31:     return out;
	ldr	x0, [sp, 72]	// _62, out
// problem35.c:32: }
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
.LC2:
	.string	"problem35.c"
	.align	3
.LC3:
	.string	"unique_size == sizeof(expected_array) / sizeof(expected_array[0])"
	.align	3
.LC4:
	.string	"unique_array[i] == expected_array[i]"
	.align	3
.LC5:
	.string	"All tests passed!"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #112	//,,
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 96]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 96	//,,
// problem35.c:40: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp101,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp101,
	ldr	x1, [x0]	// tmp133,
	str	x1, [sp, 88]	// tmp133, D.5432
	mov	x1, 0	// tmp133
// problem35.c:41:     int test_array[] = {5, 3, 5, 2, 3, 3, 9, 0, 123};
	adrp	x0, .LC0	// tmp103,
	add	x1, x0, :lo12:.LC0	// tmp102, tmp103,
	add	x0, sp, 48	// tmp104,,
	ldp	q0, q1, [x1]	// tmp106, tmp107,
	stp	q0, q1, [x0]	// tmp106, tmp107, test_array
	ldr	w1, [x1, 32]	// tmp108,
	str	w1, [x0, 32]	// tmp108, test_array
// problem35.c:42:     int expected_array[] = {0, 2, 3, 5, 9, 123};
	adrp	x0, .LC1	// tmp110,
	add	x0, x0, :lo12:.LC1	// tmp109, tmp110,
	add	x2, sp, 24	// tmp111,,
	mov	x3, x0	// tmp112, tmp109
	ldp	x0, x1, [x3]	// tmp113,
	stp	x0, x1, [x2]	// tmp113, expected_array
	ldr	x0, [x3, 16]	// tmp114,
	str	x0, [x2, 16]	// tmp114, expected_array
// problem35.c:44:     int *unique_array = func0(test_array, sizeof(test_array) / sizeof(test_array[0]), &unique_size);
	add	x1, sp, 8	// tmp115,,
	add	x0, sp, 48	// tmp116,,
	mov	x2, x1	//, tmp115
	mov	w1, 9	//,
	bl	func0		//
	str	x0, [sp, 16]	//, unique_array
// problem35.c:46:     assert(unique_size == sizeof(expected_array) / sizeof(expected_array[0]));
	ldr	w0, [sp, 8]	// unique_size.1_1, unique_size
	cmp	w0, 6	// unique_size.1_1,
	beq	.L16		//,
// problem35.c:46:     assert(unique_size == sizeof(expected_array) / sizeof(expected_array[0]));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp117,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp117,
	mov	w2, 46	//,
	adrp	x0, .LC2	// tmp118,
	add	x1, x0, :lo12:.LC2	//, tmp118,
	adrp	x0, .LC3	// tmp119,
	add	x0, x0, :lo12:.LC3	//, tmp119,
	bl	__assert_fail		//
.L16:
// problem35.c:47:     for (int i = 0; i < unique_size; i++) {
	str	wzr, [sp, 12]	//, i
// problem35.c:47:     for (int i = 0; i < unique_size; i++) {
	b	.L17		//
.L19:
// problem35.c:48:         assert(unique_array[i] == expected_array[i]);
	ldrsw	x0, [sp, 12]	// _2, i
	lsl	x0, x0, 2	// _3, _2,
	ldr	x1, [sp, 16]	// tmp120, unique_array
	add	x0, x1, x0	// _4, tmp120, _3
	ldr	w1, [x0]	// _5, *_4
	ldrsw	x0, [sp, 12]	// tmp121, i
	lsl	x0, x0, 2	// tmp122, tmp121,
	add	x2, sp, 24	// tmp123,,
	ldr	w0, [x2, x0]	// _6, expected_array[i_8]
	cmp	w1, w0	// _5, _6
	beq	.L18		//,
// problem35.c:48:         assert(unique_array[i] == expected_array[i]);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp124,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp124,
	mov	w2, 48	//,
	adrp	x0, .LC2	// tmp125,
	add	x1, x0, :lo12:.LC2	//, tmp125,
	adrp	x0, .LC4	// tmp126,
	add	x0, x0, :lo12:.LC4	//, tmp126,
	bl	__assert_fail		//
.L18:
// problem35.c:47:     for (int i = 0; i < unique_size; i++) {
	ldr	w0, [sp, 12]	// tmp128, i
	add	w0, w0, 1	// tmp127, tmp128,
	str	w0, [sp, 12]	// tmp127, i
.L17:
// problem35.c:47:     for (int i = 0; i < unique_size; i++) {
	ldr	w0, [sp, 8]	// unique_size.2_7, unique_size
	ldr	w1, [sp, 12]	// tmp129, i
	cmp	w1, w0	// tmp129, unique_size.2_7
	blt	.L19		//,
// problem35.c:51:     free(unique_array);
	ldr	x0, [sp, 16]	//, unique_array
	bl	free		//
// problem35.c:52:     printf("All tests passed!\n");
	adrp	x0, .LC5	// tmp130,
	add	x0, x0, :lo12:.LC5	//, tmp130,
	bl	puts		//
// problem35.c:54:     return 0;
	mov	w0, 0	// _18,
// problem35.c:55: }
	mov	w1, w0	// <retval>, _18
	adrp	x0, :got:__stack_chk_guard	// tmp132,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp132,
	ldr	x3, [sp, 88]	// tmp134, D.5432
	ldr	x2, [x0]	// tmp135,
	subs	x3, x3, x2	// tmp134, tmp135
	mov	x2, 0	// tmp135
	beq	.L21		//,
	bl	__stack_chk_fail		//
.L21:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 96]	//,,
	add	sp, sp, 112	//,,
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
	.word	5
	.word	3
	.word	5
	.word	2
	.word	3
	.word	3
	.word	9
	.word	0
	.word	123
	.align	3
.LC1:
	.word	0
	.word	2
	.word	3
	.word	5
	.word	9
	.word	123
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
