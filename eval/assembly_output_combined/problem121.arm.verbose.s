	.arch armv8-a
	.file	"problem121.c"
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
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// arr, arr
	str	w1, [sp, 20]	// arr_size, arr_size
	str	w2, [sp, 16]	// k, k
	str	x3, [sp, 8]	// out, out
// problem121.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	str	wzr, [sp, 32]	//, i
// problem121.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	b	.L2		//
.L6:
// problem121.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	str	wzr, [sp, 36]	//, j
// problem121.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	b	.L3		//
.L5:
// problem121.c:7:             if (arr[j] > arr[j + 1]) {
	ldrsw	x0, [sp, 36]	// _1, j
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp128, arr
	add	x0, x1, x0	// _3, tmp128, _2
	ldr	w1, [x0]	// _4, *_3
// problem121.c:7:             if (arr[j] > arr[j + 1]) {
	ldrsw	x0, [sp, 36]	// _5, j
	add	x0, x0, 1	// _6, _5,
	lsl	x0, x0, 2	// _7, _6,
	ldr	x2, [sp, 24]	// tmp129, arr
	add	x0, x2, x0	// _8, tmp129, _7
	ldr	w0, [x0]	// _9, *_8
// problem121.c:7:             if (arr[j] > arr[j + 1]) {
	cmp	w1, w0	// _4, _9
	ble	.L4		//,
// problem121.c:8:                 int temp = arr[j];
	ldrsw	x0, [sp, 36]	// _10, j
	lsl	x0, x0, 2	// _11, _10,
	ldr	x1, [sp, 24]	// tmp130, arr
	add	x0, x1, x0	// _12, tmp130, _11
// problem121.c:8:                 int temp = arr[j];
	ldr	w0, [x0]	// tmp131, *_12
	str	w0, [sp, 44]	// tmp131, temp
// problem121.c:9:                 arr[j] = arr[j + 1];
	ldrsw	x0, [sp, 36]	// _13, j
	add	x0, x0, 1	// _14, _13,
	lsl	x0, x0, 2	// _15, _14,
	ldr	x1, [sp, 24]	// tmp132, arr
	add	x1, x1, x0	// _16, tmp132, _15
// problem121.c:9:                 arr[j] = arr[j + 1];
	ldrsw	x0, [sp, 36]	// _17, j
	lsl	x0, x0, 2	// _18, _17,
	ldr	x2, [sp, 24]	// tmp133, arr
	add	x0, x2, x0	// _19, tmp133, _18
// problem121.c:9:                 arr[j] = arr[j + 1];
	ldr	w1, [x1]	// _20, *_16
// problem121.c:9:                 arr[j] = arr[j + 1];
	str	w1, [x0]	// _20, *_19
// problem121.c:10:                 arr[j + 1] = temp;
	ldrsw	x0, [sp, 36]	// _21, j
	add	x0, x0, 1	// _22, _21,
	lsl	x0, x0, 2	// _23, _22,
	ldr	x1, [sp, 24]	// tmp134, arr
	add	x0, x1, x0	// _24, tmp134, _23
// problem121.c:10:                 arr[j + 1] = temp;
	ldr	w1, [sp, 44]	// tmp135, temp
	str	w1, [x0]	// tmp135, *_24
.L4:
// problem121.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	ldr	w0, [sp, 36]	// tmp137, j
	add	w0, w0, 1	// tmp136, tmp137,
	str	w0, [sp, 36]	// tmp136, j
.L3:
// problem121.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	ldr	w1, [sp, 20]	// tmp138, arr_size
	ldr	w0, [sp, 32]	// tmp139, i
	sub	w0, w1, w0	// _25, tmp138, tmp139
// problem121.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	sub	w0, w0, #1	// _26, _25,
// problem121.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	ldr	w1, [sp, 36]	// tmp140, j
	cmp	w1, w0	// tmp140, _26
	blt	.L5		//,
// problem121.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	ldr	w0, [sp, 32]	// tmp142, i
	add	w0, w0, 1	// tmp141, tmp142,
	str	w0, [sp, 32]	// tmp141, i
.L2:
// problem121.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	ldr	w0, [sp, 20]	// tmp143, arr_size
	sub	w0, w0, #1	// _27, tmp143,
// problem121.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	ldr	w1, [sp, 32]	// tmp144, i
	cmp	w1, w0	// tmp144, _27
	blt	.L6		//,
// problem121.c:15:     for (int i = 0; i < k; i++) {
	str	wzr, [sp, 40]	//, i
// problem121.c:15:     for (int i = 0; i < k; i++) {
	b	.L7		//
.L8:
// problem121.c:16:         out[i] = arr[arr_size - k + i];
	ldr	w1, [sp, 20]	// tmp145, arr_size
	ldr	w0, [sp, 16]	// tmp146, k
	sub	w1, w1, w0	// _28, tmp145, tmp146
// problem121.c:16:         out[i] = arr[arr_size - k + i];
	ldr	w0, [sp, 40]	// tmp147, i
	add	w0, w1, w0	// _29, _28, tmp147
	sxtw	x0, w0	// _30, _29
// problem121.c:16:         out[i] = arr[arr_size - k + i];
	lsl	x0, x0, 2	// _31, _30,
	ldr	x1, [sp, 24]	// tmp148, arr
	add	x1, x1, x0	// _32, tmp148, _31
// problem121.c:16:         out[i] = arr[arr_size - k + i];
	ldrsw	x0, [sp, 40]	// _33, i
	lsl	x0, x0, 2	// _34, _33,
	ldr	x2, [sp, 8]	// tmp149, out
	add	x0, x2, x0	// _35, tmp149, _34
// problem121.c:16:         out[i] = arr[arr_size - k + i];
	ldr	w1, [x1]	// _36, *_32
// problem121.c:16:         out[i] = arr[arr_size - k + i];
	str	w1, [x0]	// _36, *_35
// problem121.c:15:     for (int i = 0; i < k; i++) {
	ldr	w0, [sp, 40]	// tmp151, i
	add	w0, w0, 1	// tmp150, tmp151,
	str	w0, [sp, 40]	// tmp150, i
.L7:
// problem121.c:15:     for (int i = 0; i < k; i++) {
	ldr	w1, [sp, 40]	// tmp152, i
	ldr	w0, [sp, 16]	// tmp153, k
	cmp	w1, w0	// tmp152, tmp153
	blt	.L8		//,
// problem121.c:18: }
	nop	
	nop	
	add	sp, sp, 48	//,,
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
	str	w2, [sp, 12]	// size, size
// problem121.c:27:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 44]	//, i
// problem121.c:27:     for (int i = 0; i < size; i++) {
	b	.L10		//
.L13:
// problem121.c:28:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp102, a
	add	x0, x1, x0	// _3, tmp102, _2
	ldr	w1, [x0]	// _4, *_3
// problem121.c:28:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 16]	// tmp103, b
	add	x0, x2, x0	// _7, tmp103, _6
	ldr	w0, [x0]	// _8, *_7
// problem121.c:28:         if (a[i] != b[i]) return 0;
	cmp	w1, w0	// _4, _8
	beq	.L11		//,
// problem121.c:28:         if (a[i] != b[i]) return 0;
	mov	w0, 0	// _10,
// problem121.c:28:         if (a[i] != b[i]) return 0;
	b	.L12		//
.L11:
// problem121.c:27:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 44]	// tmp105, i
	add	w0, w0, 1	// tmp104, tmp105,
	str	w0, [sp, 44]	// tmp104, i
.L10:
// problem121.c:27:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 44]	// tmp106, i
	ldr	w0, [sp, 12]	// tmp107, size
	cmp	w1, w0	// tmp106, tmp107
	blt	.L13		//,
// problem121.c:30:     return 1;
	mov	w0, 1	// _10,
.L12:
// problem121.c:31: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC11:
	.string	"problem121.c"
	.align	3
.LC12:
	.string	"issame(out1, expected1, 3)"
	.align	3
.LC13:
	.string	"issame(out2, expected2, 2)"
	.align	3
.LC14:
	.string	"issame(out3, expected3, 1)"
	.align	3
.LC15:
	.string	"issame(out4, expected4, 3)"
	.align	3
.LC16:
	.string	"issame(out5, expected5, 4)"
	.align	3
.LC17:
	.string	"issame(out6, expected6, 7)"
	.align	3
.LC18:
	.string	"issame(out7, expected7, 2)"
	.align	3
.LC19:
	.string	"issame(out8, expected8, 1)"
	.align	3
.LC20:
	.string	"issame(out9, expected9, 2)"
	.align	3
.LC21:
	.string	"issame(out10, expected10, 2)"
	.align	3
.LC22:
	.string	"issame(out11, expected11, 0)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp	//,
	sub	sp, sp, #528	//,,
	.cfi_def_cfa_offset 544
// problem121.c:33: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp105,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp105,
	ldr	x1, [x0]	// tmp271,
	str	x1, [sp, 520]	// tmp271, D.5498
	mov	x1, 0	// tmp271
// problem121.c:34:     int arr1[] = {-3, -4, 5};
	adrp	x0, .LC0	// tmp107,
	add	x1, x0, :lo12:.LC0	// tmp106, tmp107,
	add	x0, sp, 136	// tmp108,,
	ldr	x2, [x1]	// tmp110,
	str	x2, [x0]	// tmp110, arr1
	ldr	w1, [x1, 8]	// tmp111,
	str	w1, [x0, 8]	// tmp111, arr1
// problem121.c:36:     func0(arr1, 3, 3, out1);
	add	x1, sp, 152	// tmp112,,
	add	x0, sp, 136	// tmp113,,
	mov	x3, x1	//, tmp112
	mov	w2, 3	//,
	mov	w1, 3	//,
	bl	func0		//
// problem121.c:37:     int expected1[] = {-4, -3, 5};
	adrp	x0, .LC1	// tmp115,
	add	x1, x0, :lo12:.LC1	// tmp114, tmp115,
	add	x0, sp, 168	// tmp116,,
	ldr	x2, [x1]	// tmp118,
	str	x2, [x0]	// tmp118, expected1
	ldr	w1, [x1, 8]	// tmp119,
	str	w1, [x0, 8]	// tmp119, expected1
// problem121.c:38:     assert(issame(out1, expected1, 3));
	add	x1, sp, 168	// tmp120,,
	add	x0, sp, 152	// tmp121,,
	mov	w2, 3	//,
	bl	issame		//
// problem121.c:38:     assert(issame(out1, expected1, 3));
	cmp	w0, 0	// _1,
	bne	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp122,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp122,
	mov	w2, 38	//,
	adrp	x0, .LC11	// tmp123,
	add	x1, x0, :lo12:.LC11	//, tmp123,
	adrp	x0, .LC12	// tmp124,
	add	x0, x0, :lo12:.LC12	//, tmp124,
	bl	__assert_fail		//
.L15:
// problem121.c:40:     int arr2[] = {4, -4, 4};
	adrp	x0, .LC2	// tmp126,
	add	x1, x0, :lo12:.LC2	// tmp125, tmp126,
	add	x0, sp, 184	// tmp127,,
	ldr	x2, [x1]	// tmp129,
	str	x2, [x0]	// tmp129, arr2
	ldr	w1, [x1, 8]	// tmp130,
	str	w1, [x0, 8]	// tmp130, arr2
// problem121.c:42:     func0(arr2, 3, 2, out2);
	add	x1, sp, 56	// tmp131,,
	add	x0, sp, 184	// tmp132,,
	mov	x3, x1	//, tmp131
	mov	w2, 2	//,
	mov	w1, 3	//,
	bl	func0		//
// problem121.c:43:     int expected2[] = {4, 4};
	mov	w0, 4	// tmp133,
	str	w0, [sp, 64]	// tmp133, expected2[0]
	mov	w0, 4	// tmp134,
	str	w0, [sp, 68]	// tmp134, expected2[1]
// problem121.c:44:     assert(issame(out2, expected2, 2));
	add	x1, sp, 64	// tmp135,,
	add	x0, sp, 56	// tmp136,,
	mov	w2, 2	//,
	bl	issame		//
// problem121.c:44:     assert(issame(out2, expected2, 2));
	cmp	w0, 0	// _2,
	bne	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp137,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp137,
	mov	w2, 44	//,
	adrp	x0, .LC11	// tmp138,
	add	x1, x0, :lo12:.LC11	//, tmp138,
	adrp	x0, .LC13	// tmp139,
	add	x0, x0, :lo12:.LC13	//, tmp139,
	bl	__assert_fail		//
.L16:
// problem121.c:46:     int arr3[] = {-3, 2, 1, 2, -1, -2, 1};
	adrp	x0, .LC3	// tmp141,
	add	x1, x0, :lo12:.LC3	// tmp140, tmp141,
	add	x0, sp, 328	// tmp142,,
	ldr	q0, [x1]	// tmp144,
	str	q0, [x0]	// tmp144, arr3
	ldr	q0, [x1, 12]	// tmp145,
	str	q0, [x0, 12]	// tmp145, arr3
// problem121.c:48:     func0(arr3, 7, 1, out3);
	add	x1, sp, 24	// tmp146,,
	add	x0, sp, 328	// tmp147,,
	mov	x3, x1	//, tmp146
	mov	w2, 1	//,
	mov	w1, 7	//,
	bl	func0		//
// problem121.c:49:     int expected3[] = {2};
	mov	w0, 2	// tmp148,
	str	w0, [sp, 32]	// tmp148, expected3[0]
// problem121.c:50:     assert(issame(out3, expected3, 1));
	add	x1, sp, 32	// tmp149,,
	add	x0, sp, 24	// tmp150,,
	mov	w2, 1	//,
	bl	issame		//
// problem121.c:50:     assert(issame(out3, expected3, 1));
	cmp	w0, 0	// _3,
	bne	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp151,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp151,
	mov	w2, 50	//,
	adrp	x0, .LC11	// tmp152,
	add	x1, x0, :lo12:.LC11	//, tmp152,
	adrp	x0, .LC14	// tmp153,
	add	x0, x0, :lo12:.LC14	//, tmp153,
	bl	__assert_fail		//
.L17:
// problem121.c:52:     int arr4[] = {123, -123, 20, 0, 1, 2, -3};
	adrp	x0, .LC4	// tmp155,
	add	x1, x0, :lo12:.LC4	// tmp154, tmp155,
	add	x0, sp, 360	// tmp156,,
	ldr	q0, [x1]	// tmp158,
	str	q0, [x0]	// tmp158, arr4
	ldr	q0, [x1, 12]	// tmp159,
	str	q0, [x0, 12]	// tmp159, arr4
// problem121.c:54:     func0(arr4, 7, 3, out4);
	add	x1, sp, 200	// tmp160,,
	add	x0, sp, 360	// tmp161,,
	mov	x3, x1	//, tmp160
	mov	w2, 3	//,
	mov	w1, 7	//,
	bl	func0		//
// problem121.c:55:     int expected4[] = {2, 20, 123};
	adrp	x0, .LC5	// tmp163,
	add	x1, x0, :lo12:.LC5	// tmp162, tmp163,
	add	x0, sp, 216	// tmp164,,
	ldr	x2, [x1]	// tmp166,
	str	x2, [x0]	// tmp166, expected4
	ldr	w1, [x1, 8]	// tmp167,
	str	w1, [x0, 8]	// tmp167, expected4
// problem121.c:56:     assert(issame(out4, expected4, 3));
	add	x1, sp, 216	// tmp168,,
	add	x0, sp, 200	// tmp169,,
	mov	w2, 3	//,
	bl	issame		//
// problem121.c:56:     assert(issame(out4, expected4, 3));
	cmp	w0, 0	// _4,
	bne	.L18		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp170,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp170,
	mov	w2, 56	//,
	adrp	x0, .LC11	// tmp171,
	add	x1, x0, :lo12:.LC11	//, tmp171,
	adrp	x0, .LC15	// tmp172,
	add	x0, x0, :lo12:.LC15	//, tmp172,
	bl	__assert_fail		//
.L18:
// problem121.c:58:     int arr5[] = {-123, 20, 0, 1, 2, -3};
	adrp	x0, .LC6	// tmp174,
	add	x0, x0, :lo12:.LC6	// tmp173, tmp174,
	add	x2, sp, 280	// tmp175,,
	mov	x3, x0	// tmp176, tmp173
	ldp	x0, x1, [x3]	// tmp177,
	stp	x0, x1, [x2]	// tmp177, arr5
	ldr	x0, [x3, 16]	// tmp178,
	str	x0, [x2, 16]	// tmp178, arr5
// problem121.c:60:     func0(arr5, 6, 4, out5);
	add	x1, sp, 232	// tmp179,,
	add	x0, sp, 280	// tmp180,,
	mov	x3, x1	//, tmp179
	mov	w2, 4	//,
	mov	w1, 6	//,
	bl	func0		//
// problem121.c:61:     int expected5[] = {0, 1, 2, 20};
	str	wzr, [sp, 248]	//, expected5[0]
	mov	w0, 1	// tmp181,
	str	w0, [sp, 252]	// tmp181, expected5[1]
	mov	w0, 2	// tmp182,
	str	w0, [sp, 256]	// tmp182, expected5[2]
	mov	w0, 20	// tmp183,
	str	w0, [sp, 260]	// tmp183, expected5[3]
// problem121.c:62:     assert(issame(out5, expected5, 4));
	add	x1, sp, 248	// tmp184,,
	add	x0, sp, 232	// tmp185,,
	mov	w2, 4	//,
	bl	issame		//
// problem121.c:62:     assert(issame(out5, expected5, 4));
	cmp	w0, 0	// _5,
	bne	.L19		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp186,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp186,
	mov	w2, 62	//,
	adrp	x0, .LC11	// tmp187,
	add	x1, x0, :lo12:.LC11	//, tmp187,
	adrp	x0, .LC16	// tmp188,
	add	x0, x0, :lo12:.LC16	//, tmp188,
	bl	__assert_fail		//
.L19:
// problem121.c:64:     int arr6[] = {5, 15, 0, 3, -13, -8, 0};
	adrp	x0, .LC7	// tmp190,
	add	x1, x0, :lo12:.LC7	// tmp189, tmp190,
	add	x0, sp, 392	// tmp191,,
	ldr	q0, [x1]	// tmp193,
	str	q0, [x0]	// tmp193, arr6
	ldr	q0, [x1, 12]	// tmp194,
	str	q0, [x0, 12]	// tmp194, arr6
// problem121.c:66:     func0(arr6, 7, 7, out6);
	add	x1, sp, 424	// tmp195,,
	add	x0, sp, 392	// tmp196,,
	mov	x3, x1	//, tmp195
	mov	w2, 7	//,
	mov	w1, 7	//,
	bl	func0		//
// problem121.c:67:     int expected6[] = {-13, -8, 0, 0, 3, 5, 15};
	adrp	x0, .LC8	// tmp198,
	add	x1, x0, :lo12:.LC8	// tmp197, tmp198,
	add	x0, sp, 456	// tmp199,,
	ldr	q0, [x1]	// tmp201,
	str	q0, [x0]	// tmp201, expected6
	ldr	q0, [x1, 12]	// tmp202,
	str	q0, [x0, 12]	// tmp202, expected6
// problem121.c:68:     assert(issame(out6, expected6, 7));
	add	x1, sp, 456	// tmp203,,
	add	x0, sp, 424	// tmp204,,
	mov	w2, 7	//,
	bl	issame		//
// problem121.c:68:     assert(issame(out6, expected6, 7));
	cmp	w0, 0	// _6,
	bne	.L20		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp205,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp205,
	mov	w2, 68	//,
	adrp	x0, .LC11	// tmp206,
	add	x1, x0, :lo12:.LC11	//, tmp206,
	adrp	x0, .LC17	// tmp207,
	add	x0, x0, :lo12:.LC17	//, tmp207,
	bl	__assert_fail		//
.L20:
// problem121.c:70:     int arr7[] = {-1, 0, 2, 5, 3, -10};
	adrp	x0, .LC9	// tmp209,
	add	x0, x0, :lo12:.LC9	// tmp208, tmp209,
	add	x2, sp, 304	// tmp210,,
	mov	x3, x0	// tmp211, tmp208
	ldp	x0, x1, [x3]	// tmp212,
	stp	x0, x1, [x2]	// tmp212, arr7
	ldr	x0, [x3, 16]	// tmp213,
	str	x0, [x2, 16]	// tmp213, arr7
// problem121.c:72:     func0(arr7, 6, 2, out7);
	add	x1, sp, 72	// tmp214,,
	add	x0, sp, 304	// tmp215,,
	mov	x3, x1	//, tmp214
	mov	w2, 2	//,
	mov	w1, 6	//,
	bl	func0		//
// problem121.c:73:     int expected7[] = {3, 5};
	mov	w0, 3	// tmp216,
	str	w0, [sp, 80]	// tmp216, expected7[0]
	mov	w0, 5	// tmp217,
	str	w0, [sp, 84]	// tmp217, expected7[1]
// problem121.c:74:     assert(issame(out7, expected7, 2));
	add	x1, sp, 80	// tmp218,,
	add	x0, sp, 72	// tmp219,,
	mov	w2, 2	//,
	bl	issame		//
// problem121.c:74:     assert(issame(out7, expected7, 2));
	cmp	w0, 0	// _7,
	bne	.L21		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp220,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp220,
	mov	w2, 74	//,
	adrp	x0, .LC11	// tmp221,
	add	x1, x0, :lo12:.LC11	//, tmp221,
	adrp	x0, .LC18	// tmp222,
	add	x0, x0, :lo12:.LC18	//, tmp222,
	bl	__assert_fail		//
.L21:
// problem121.c:76:     int arr8[] = {1, 0, 5, -7};
	mov	w0, 1	// tmp223,
	str	w0, [sp, 264]	// tmp223, arr8[0]
	str	wzr, [sp, 268]	//, arr8[1]
	mov	w0, 5	// tmp224,
	str	w0, [sp, 272]	// tmp224, arr8[2]
	mov	w0, -7	// tmp225,
	str	w0, [sp, 276]	// tmp225, arr8[3]
// problem121.c:78:     func0(arr8, 4, 1, out8);
	add	x1, sp, 40	// tmp226,,
	add	x0, sp, 264	// tmp227,,
	mov	x3, x1	//, tmp226
	mov	w2, 1	//,
	mov	w1, 4	//,
	bl	func0		//
// problem121.c:79:     int expected8[] = {5};
	mov	w0, 5	// tmp228,
	str	w0, [sp, 48]	// tmp228, expected8[0]
// problem121.c:80:     assert(issame(out8, expected8, 1));
	add	x1, sp, 48	// tmp229,,
	add	x0, sp, 40	// tmp230,,
	mov	w2, 1	//,
	bl	issame		//
// problem121.c:80:     assert(issame(out8, expected8, 1));
	cmp	w0, 0	// _8,
	bne	.L22		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp231,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp231,
	mov	w2, 80	//,
	adrp	x0, .LC11	// tmp232,
	add	x1, x0, :lo12:.LC11	//, tmp232,
	adrp	x0, .LC19	// tmp233,
	add	x0, x0, :lo12:.LC19	//, tmp233,
	bl	__assert_fail		//
.L22:
// problem121.c:82:     int arr9[] = {4, -4};
	mov	w0, 4	// tmp234,
	str	w0, [sp, 88]	// tmp234, arr9[0]
	mov	w0, -4	// tmp235,
	str	w0, [sp, 92]	// tmp235, arr9[1]
// problem121.c:84:     func0(arr9, 2, 2, out9);
	add	x1, sp, 96	// tmp236,,
	add	x0, sp, 88	// tmp237,,
	mov	x3, x1	//, tmp236
	mov	w2, 2	//,
	mov	w1, 2	//,
	bl	func0		//
// problem121.c:85:     int expected9[] = {-4, 4};
	mov	w0, -4	// tmp238,
	str	w0, [sp, 104]	// tmp238, expected9[0]
	mov	w0, 4	// tmp239,
	str	w0, [sp, 108]	// tmp239, expected9[1]
// problem121.c:86:     assert(issame(out9, expected9, 2));
	add	x1, sp, 104	// tmp240,,
	add	x0, sp, 96	// tmp241,,
	mov	w2, 2	//,
	bl	issame		//
// problem121.c:86:     assert(issame(out9, expected9, 2));
	cmp	w0, 0	// _9,
	bne	.L23		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp242,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp242,
	mov	w2, 86	//,
	adrp	x0, .LC11	// tmp243,
	add	x1, x0, :lo12:.LC11	//, tmp243,
	adrp	x0, .LC20	// tmp244,
	add	x0, x0, :lo12:.LC20	//, tmp244,
	bl	__assert_fail		//
.L23:
// problem121.c:88:     int arr10[] = {-10, 10};
	mov	w0, -10	// tmp245,
	str	w0, [sp, 112]	// tmp245, arr10[0]
	mov	w0, 10	// tmp246,
	str	w0, [sp, 116]	// tmp246, arr10[1]
// problem121.c:90:     func0(arr10, 2, 2, out10);
	add	x1, sp, 120	// tmp247,,
	add	x0, sp, 112	// tmp248,,
	mov	x3, x1	//, tmp247
	mov	w2, 2	//,
	mov	w1, 2	//,
	bl	func0		//
// problem121.c:91:     int expected10[] = {-10, 10};
	mov	w0, -10	// tmp249,
	str	w0, [sp, 128]	// tmp249, expected10[0]
	mov	w0, 10	// tmp250,
	str	w0, [sp, 132]	// tmp250, expected10[1]
// problem121.c:92:     assert(issame(out10, expected10, 2));
	add	x1, sp, 128	// tmp251,,
	add	x0, sp, 120	// tmp252,,
	mov	w2, 2	//,
	bl	issame		//
// problem121.c:92:     assert(issame(out10, expected10, 2));
	cmp	w0, 0	// _10,
	bne	.L24		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp253,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp253,
	mov	w2, 92	//,
	adrp	x0, .LC11	// tmp254,
	add	x1, x0, :lo12:.LC11	//, tmp254,
	adrp	x0, .LC21	// tmp255,
	add	x0, x0, :lo12:.LC21	//, tmp255,
	bl	__assert_fail		//
.L24:
// problem121.c:94:     int arr11[] = {1, 2, 3, -23, 243, -400, 0};
	adrp	x0, .LC10	// tmp257,
	add	x1, x0, :lo12:.LC10	// tmp256, tmp257,
	add	x0, sp, 488	// tmp258,,
	ldr	q0, [x1]	// tmp260,
	str	q0, [x0]	// tmp260, arr11
	ldr	q0, [x1, 12]	// tmp261,
	str	q0, [x0, 12]	// tmp261, arr11
// problem121.c:96:     func0(arr11, 7, 0, out11); // Empty output expected
	add	x1, sp, 8	// tmp262,,
	add	x0, sp, 488	// tmp263,,
	mov	x3, x1	//, tmp262
	mov	w2, 0	//,
	mov	w1, 7	//,
	bl	func0		//
// problem121.c:98:     assert(issame(out11, expected11, 0));
	add	x1, sp, 16	// tmp264,,
	add	x0, sp, 8	// tmp265,,
	mov	w2, 0	//,
	bl	issame		//
// problem121.c:98:     assert(issame(out11, expected11, 0));
	cmp	w0, 0	// _11,
	bne	.L25		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp266,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp266,
	mov	w2, 98	//,
	adrp	x0, .LC11	// tmp267,
	add	x1, x0, :lo12:.LC11	//, tmp267,
	adrp	x0, .LC22	// tmp268,
	add	x0, x0, :lo12:.LC22	//, tmp268,
	bl	__assert_fail		//
.L25:
// problem121.c:100:     return 0;
	mov	w0, 0	// _79,
// problem121.c:101: }
	mov	w1, w0	// <retval>, _79
	adrp	x0, :got:__stack_chk_guard	// tmp270,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp270,
	ldr	x3, [sp, 520]	// tmp272, D.5498
	ldr	x2, [x0]	// tmp273,
	subs	x3, x3, x2	// tmp272, tmp273
	mov	x2, 0	// tmp273
	beq	.L27		//,
	bl	__stack_chk_fail		//
.L27:
	mov	w0, w1	//, <retval>
	add	sp, sp, 528	//,,
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16	//,,,
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
	.word	-3
	.word	-4
	.word	5
	.align	3
.LC1:
	.word	-4
	.word	-3
	.word	5
	.align	3
.LC2:
	.word	4
	.word	-4
	.word	4
	.align	3
.LC3:
	.word	-3
	.word	2
	.word	1
	.word	2
	.word	-1
	.word	-2
	.word	1
	.align	3
.LC4:
	.word	123
	.word	-123
	.word	20
	.word	0
	.word	1
	.word	2
	.word	-3
	.align	3
.LC5:
	.word	2
	.word	20
	.word	123
	.align	3
.LC6:
	.word	-123
	.word	20
	.word	0
	.word	1
	.word	2
	.word	-3
	.align	3
.LC7:
	.word	5
	.word	15
	.word	0
	.word	3
	.word	-13
	.word	-8
	.word	0
	.align	3
.LC8:
	.word	-13
	.word	-8
	.word	0
	.word	0
	.word	3
	.word	5
	.word	15
	.align	3
.LC9:
	.word	-1
	.word	0
	.word	2
	.word	5
	.word	3
	.word	-10
	.align	3
.LC10:
	.word	1
	.word	2
	.word	3
	.word	-23
	.word	243
	.word	-400
	.word	0
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
