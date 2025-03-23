	.arch armv8-a
	.file	"problem71.c"
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
	sub	sp, sp, #64	//,,
	.cfi_def_cfa_offset 64
	str	x0, [sp, 24]	// lst, lst
	str	w1, [sp, 20]	// size, size
	str	x2, [sp, 8]	// out, out
// problem71.c:5:     for (int i = 0; i < size - 1; i++) {
	str	wzr, [sp, 40]	//, i
// problem71.c:5:     for (int i = 0; i < size - 1; i++) {
	b	.L2		//
.L6:
// problem71.c:6:         for (int j = i + 1; j < size; j++) {
	ldr	w0, [sp, 40]	// tmp142, i
	add	w0, w0, 1	// tmp141, tmp142,
	str	w0, [sp, 44]	// tmp141, j
// problem71.c:6:         for (int j = i + 1; j < size; j++) {
	b	.L3		//
.L5:
// problem71.c:7:             if (lst[i] > lst[j]) {
	ldrsw	x0, [sp, 40]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp143, lst
	add	x0, x1, x0	// _3, tmp143, _2
	ldr	w1, [x0]	// _4, *_3
// problem71.c:7:             if (lst[i] > lst[j]) {
	ldrsw	x0, [sp, 44]	// _5, j
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 24]	// tmp144, lst
	add	x0, x2, x0	// _7, tmp144, _6
	ldr	w0, [x0]	// _8, *_7
// problem71.c:7:             if (lst[i] > lst[j]) {
	cmp	w1, w0	// _4, _8
	ble	.L4		//,
// problem71.c:8:                 int temp = lst[i];
	ldrsw	x0, [sp, 40]	// _9, i
	lsl	x0, x0, 2	// _10, _9,
	ldr	x1, [sp, 24]	// tmp145, lst
	add	x0, x1, x0	// _11, tmp145, _10
// problem71.c:8:                 int temp = lst[i];
	ldr	w0, [x0]	// tmp146, *_11
	str	w0, [sp, 60]	// tmp146, temp
// problem71.c:9:                 lst[i] = lst[j];
	ldrsw	x0, [sp, 44]	// _12, j
	lsl	x0, x0, 2	// _13, _12,
	ldr	x1, [sp, 24]	// tmp147, lst
	add	x1, x1, x0	// _14, tmp147, _13
// problem71.c:9:                 lst[i] = lst[j];
	ldrsw	x0, [sp, 40]	// _15, i
	lsl	x0, x0, 2	// _16, _15,
	ldr	x2, [sp, 24]	// tmp148, lst
	add	x0, x2, x0	// _17, tmp148, _16
// problem71.c:9:                 lst[i] = lst[j];
	ldr	w1, [x1]	// _18, *_14
// problem71.c:9:                 lst[i] = lst[j];
	str	w1, [x0]	// _18, *_17
// problem71.c:10:                 lst[j] = temp;
	ldrsw	x0, [sp, 44]	// _19, j
	lsl	x0, x0, 2	// _20, _19,
	ldr	x1, [sp, 24]	// tmp149, lst
	add	x0, x1, x0	// _21, tmp149, _20
// problem71.c:10:                 lst[j] = temp;
	ldr	w1, [sp, 60]	// tmp150, temp
	str	w1, [x0]	// tmp150, *_21
.L4:
// problem71.c:6:         for (int j = i + 1; j < size; j++) {
	ldr	w0, [sp, 44]	// tmp152, j
	add	w0, w0, 1	// tmp151, tmp152,
	str	w0, [sp, 44]	// tmp151, j
.L3:
// problem71.c:6:         for (int j = i + 1; j < size; j++) {
	ldr	w1, [sp, 44]	// tmp153, j
	ldr	w0, [sp, 20]	// tmp154, size
	cmp	w1, w0	// tmp153, tmp154
	blt	.L5		//,
// problem71.c:5:     for (int i = 0; i < size - 1; i++) {
	ldr	w0, [sp, 40]	// tmp156, i
	add	w0, w0, 1	// tmp155, tmp156,
	str	w0, [sp, 40]	// tmp155, i
.L2:
// problem71.c:5:     for (int i = 0; i < size - 1; i++) {
	ldr	w0, [sp, 20]	// tmp157, size
	sub	w0, w0, #1	// _22, tmp157,
// problem71.c:5:     for (int i = 0; i < size - 1; i++) {
	ldr	w1, [sp, 40]	// tmp158, i
	cmp	w1, w0	// tmp158, _22
	blt	.L6		//,
// problem71.c:15:     int l = 0, r = size - 1;
	str	wzr, [sp, 48]	//, l
// problem71.c:15:     int l = 0, r = size - 1;
	ldr	w0, [sp, 20]	// tmp160, size
	sub	w0, w0, #1	// tmp159, tmp160,
	str	w0, [sp, 52]	// tmp159, r
// problem71.c:16:     int index = 0;
	str	wzr, [sp, 56]	//, index
// problem71.c:18:     while (l <= r) {
	b	.L7		//
.L10:
// problem71.c:19:         if (l == r) {
	ldr	w1, [sp, 48]	// tmp161, l
	ldr	w0, [sp, 52]	// tmp162, r
	cmp	w1, w0	// tmp161, tmp162
	bne	.L8		//,
// problem71.c:20:             out[index++] = lst[l++];
	ldr	w0, [sp, 48]	// l.0_23, l
	add	w1, w0, 1	// tmp163, l.0_23,
	str	w1, [sp, 48]	// tmp163, l
	sxtw	x0, w0	// _24, l.0_23
// problem71.c:20:             out[index++] = lst[l++];
	lsl	x0, x0, 2	// _25, _24,
	ldr	x1, [sp, 24]	// tmp164, lst
	add	x1, x1, x0	// _26, tmp164, _25
// problem71.c:20:             out[index++] = lst[l++];
	ldr	w0, [sp, 56]	// index.1_27, index
	add	w2, w0, 1	// tmp165, index.1_27,
	str	w2, [sp, 56]	// tmp165, index
	sxtw	x0, w0	// _28, index.1_27
// problem71.c:20:             out[index++] = lst[l++];
	lsl	x0, x0, 2	// _29, _28,
	ldr	x2, [sp, 8]	// tmp166, out
	add	x0, x2, x0	// _30, tmp166, _29
// problem71.c:20:             out[index++] = lst[l++];
	ldr	w1, [x1]	// _31, *_26
// problem71.c:20:             out[index++] = lst[l++];
	str	w1, [x0]	// _31, *_30
	b	.L7		//
.L8:
// problem71.c:22:             out[index++] = lst[l++];
	ldr	w0, [sp, 48]	// l.2_32, l
	add	w1, w0, 1	// tmp167, l.2_32,
	str	w1, [sp, 48]	// tmp167, l
	sxtw	x0, w0	// _33, l.2_32
// problem71.c:22:             out[index++] = lst[l++];
	lsl	x0, x0, 2	// _34, _33,
	ldr	x1, [sp, 24]	// tmp168, lst
	add	x1, x1, x0	// _35, tmp168, _34
// problem71.c:22:             out[index++] = lst[l++];
	ldr	w0, [sp, 56]	// index.3_36, index
	add	w2, w0, 1	// tmp169, index.3_36,
	str	w2, [sp, 56]	// tmp169, index
	sxtw	x0, w0	// _37, index.3_36
// problem71.c:22:             out[index++] = lst[l++];
	lsl	x0, x0, 2	// _38, _37,
	ldr	x2, [sp, 8]	// tmp170, out
	add	x0, x2, x0	// _39, tmp170, _38
// problem71.c:22:             out[index++] = lst[l++];
	ldr	w1, [x1]	// _40, *_35
// problem71.c:22:             out[index++] = lst[l++];
	str	w1, [x0]	// _40, *_39
// problem71.c:23:             out[index++] = lst[r--];
	ldr	w0, [sp, 52]	// r.4_41, r
	sub	w1, w0, #1	// tmp171, r.4_41,
	str	w1, [sp, 52]	// tmp171, r
	sxtw	x0, w0	// _42, r.4_41
// problem71.c:23:             out[index++] = lst[r--];
	lsl	x0, x0, 2	// _43, _42,
	ldr	x1, [sp, 24]	// tmp172, lst
	add	x1, x1, x0	// _44, tmp172, _43
// problem71.c:23:             out[index++] = lst[r--];
	ldr	w0, [sp, 56]	// index.5_45, index
	add	w2, w0, 1	// tmp173, index.5_45,
	str	w2, [sp, 56]	// tmp173, index
	sxtw	x0, w0	// _46, index.5_45
// problem71.c:23:             out[index++] = lst[r--];
	lsl	x0, x0, 2	// _47, _46,
	ldr	x2, [sp, 8]	// tmp174, out
	add	x0, x2, x0	// _48, tmp174, _47
// problem71.c:23:             out[index++] = lst[r--];
	ldr	w1, [x1]	// _49, *_44
// problem71.c:23:             out[index++] = lst[r--];
	str	w1, [x0]	// _49, *_48
.L7:
// problem71.c:18:     while (l <= r) {
	ldr	w1, [sp, 48]	// tmp175, l
	ldr	w0, [sp, 52]	// tmp176, r
	cmp	w1, w0	// tmp175, tmp176
	ble	.L10		//,
// problem71.c:26: }
	nop	
	nop	
	add	sp, sp, 64	//,,
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
// problem71.c:34:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 44]	//, i
// problem71.c:34:     for (int i = 0; i < size; i++) {
	b	.L12		//
.L15:
// problem71.c:35:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp102, a
	add	x0, x1, x0	// _3, tmp102, _2
	ldr	w1, [x0]	// _4, *_3
// problem71.c:35:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 16]	// tmp103, b
	add	x0, x2, x0	// _7, tmp103, _6
	ldr	w0, [x0]	// _8, *_7
// problem71.c:35:         if (a[i] != b[i]) return 0;
	cmp	w1, w0	// _4, _8
	beq	.L13		//,
// problem71.c:35:         if (a[i] != b[i]) return 0;
	mov	w0, 0	// _10,
// problem71.c:35:         if (a[i] != b[i]) return 0;
	b	.L14		//
.L13:
// problem71.c:34:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 44]	// tmp105, i
	add	w0, w0, 1	// tmp104, tmp105,
	str	w0, [sp, 44]	// tmp104, i
.L12:
// problem71.c:34:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 44]	// tmp106, i
	ldr	w0, [sp, 12]	// tmp107, size
	cmp	w1, w0	// tmp106, tmp107
	blt	.L15		//,
// problem71.c:37:     return 1;
	mov	w0, 1	// _10,
.L14:
// problem71.c:38: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC10:
	.string	"problem71.c"
	.align	3
.LC11:
	.string	"issame(e1, out1, 4)"
	.align	3
.LC12:
	.string	"issame(e2, out2, 5)"
	.align	3
.LC13:
	.string	"issame(e3, out3, 5)"
	.align	3
.LC14:
	.string	"issame(e4, out4, 6)"
	.align	3
.LC15:
	.string	"issame(e5, out5, 4)"
	.align	3
.LC16:
	.string	"issame(e6, out6, 0)"
	.align	3
.LC17:
	.string	"issame(e7, out7, 8)"
	.align	3
.LC18:
	.string	"issame(e8, out8, 8)"
	.align	3
.LC19:
	.string	"issame(e9, out9, 1)"
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
	sub	sp, sp, #560	//,,
	.cfi_def_cfa_offset 576
// problem71.c:40: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp103,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp103,
	ldr	x1, [x0]	// tmp247,
	str	x1, [sp, 552]	// tmp247, D.5697
	mov	x1, 0	// tmp247
// problem71.c:41:     int a1[] = {1, 2, 3, 4};
	mov	w0, 1	// tmp104,
	str	w0, [sp, 48]	// tmp104, a1[0]
	mov	w0, 2	// tmp105,
	str	w0, [sp, 52]	// tmp105, a1[1]
	mov	w0, 3	// tmp106,
	str	w0, [sp, 56]	// tmp106, a1[2]
	mov	w0, 4	// tmp107,
	str	w0, [sp, 60]	// tmp107, a1[3]
// problem71.c:42:     int e1[] = {1, 4, 2, 3};
	mov	w0, 1	// tmp108,
	str	w0, [sp, 64]	// tmp108, e1[0]
	mov	w0, 4	// tmp109,
	str	w0, [sp, 68]	// tmp109, e1[1]
	mov	w0, 2	// tmp110,
	str	w0, [sp, 72]	// tmp110, e1[2]
	mov	w0, 3	// tmp111,
	str	w0, [sp, 76]	// tmp111, e1[3]
// problem71.c:44:     func0(a1, 4, out1);
	add	x1, sp, 80	// tmp112,,
	add	x0, sp, 48	// tmp113,,
	mov	x2, x1	//, tmp112
	mov	w1, 4	//,
	bl	func0		//
// problem71.c:45:     assert(issame(e1, out1, 4));
	add	x1, sp, 80	// tmp114,,
	add	x0, sp, 64	// tmp115,,
	mov	w2, 4	//,
	bl	issame		//
// problem71.c:45:     assert(issame(e1, out1, 4));
	cmp	w0, 0	// _1,
	bne	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 45	//,
	adrp	x0, .LC10	// tmp117,
	add	x1, x0, :lo12:.LC10	//, tmp117,
	adrp	x0, .LC11	// tmp118,
	add	x0, x0, :lo12:.LC11	//, tmp118,
	bl	__assert_fail		//
.L17:
// problem71.c:47:     int a2[] = {5, 6, 7, 8, 9};
	adrp	x0, .LC0	// tmp120,
	add	x0, x0, :lo12:.LC0	// tmp119, tmp120,
	add	x2, sp, 144	// tmp121,,
	mov	x3, x0	// tmp122, tmp119
	ldp	x0, x1, [x3]	// tmp123,
	stp	x0, x1, [x2]	// tmp123, a2
	ldr	w0, [x3, 16]	// tmp124,
	str	w0, [x2, 16]	// tmp124, a2
// problem71.c:48:     int e2[] = {5, 9, 6, 8, 7};
	adrp	x0, .LC1	// tmp126,
	add	x0, x0, :lo12:.LC1	// tmp125, tmp126,
	add	x2, sp, 168	// tmp127,,
	mov	x3, x0	// tmp128, tmp125
	ldp	x0, x1, [x3]	// tmp129,
	stp	x0, x1, [x2]	// tmp129, e2
	ldr	w0, [x3, 16]	// tmp130,
	str	w0, [x2, 16]	// tmp130, e2
// problem71.c:50:     func0(a2, 5, out2);
	add	x1, sp, 192	// tmp131,,
	add	x0, sp, 144	// tmp132,,
	mov	x2, x1	//, tmp131
	mov	w1, 5	//,
	bl	func0		//
// problem71.c:51:     assert(issame(e2, out2, 5));
	add	x1, sp, 192	// tmp133,,
	add	x0, sp, 168	// tmp134,,
	mov	w2, 5	//,
	bl	issame		//
// problem71.c:51:     assert(issame(e2, out2, 5));
	cmp	w0, 0	// _2,
	bne	.L18		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp135,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp135,
	mov	w2, 51	//,
	adrp	x0, .LC10	// tmp136,
	add	x1, x0, :lo12:.LC10	//, tmp136,
	adrp	x0, .LC12	// tmp137,
	add	x0, x0, :lo12:.LC12	//, tmp137,
	bl	__assert_fail		//
.L18:
// problem71.c:53:     int a3[] = {1, 2, 3, 4, 5};
	adrp	x0, .LC2	// tmp139,
	add	x0, x0, :lo12:.LC2	// tmp138, tmp139,
	add	x2, sp, 216	// tmp140,,
	mov	x3, x0	// tmp141, tmp138
	ldp	x0, x1, [x3]	// tmp142,
	stp	x0, x1, [x2]	// tmp142, a3
	ldr	w0, [x3, 16]	// tmp143,
	str	w0, [x2, 16]	// tmp143, a3
// problem71.c:54:     int e3[] = {1, 5, 2, 4, 3};
	adrp	x0, .LC3	// tmp145,
	add	x0, x0, :lo12:.LC3	// tmp144, tmp145,
	add	x2, sp, 240	// tmp146,,
	mov	x3, x0	// tmp147, tmp144
	ldp	x0, x1, [x3]	// tmp148,
	stp	x0, x1, [x2]	// tmp148, e3
	ldr	w0, [x3, 16]	// tmp149,
	str	w0, [x2, 16]	// tmp149, e3
// problem71.c:56:     func0(a3, 5, out3);
	add	x1, sp, 264	// tmp150,,
	add	x0, sp, 216	// tmp151,,
	mov	x2, x1	//, tmp150
	mov	w1, 5	//,
	bl	func0		//
// problem71.c:57:     assert(issame(e3, out3, 5));
	add	x1, sp, 264	// tmp152,,
	add	x0, sp, 240	// tmp153,,
	mov	w2, 5	//,
	bl	issame		//
// problem71.c:57:     assert(issame(e3, out3, 5));
	cmp	w0, 0	// _3,
	bne	.L19		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp154,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp154,
	mov	w2, 57	//,
	adrp	x0, .LC10	// tmp155,
	add	x1, x0, :lo12:.LC10	//, tmp155,
	adrp	x0, .LC13	// tmp156,
	add	x0, x0, :lo12:.LC13	//, tmp156,
	bl	__assert_fail		//
.L19:
// problem71.c:59:     int a4[] = {5, 6, 7, 8, 9, 1};
	adrp	x0, .LC4	// tmp158,
	add	x0, x0, :lo12:.LC4	// tmp157, tmp158,
	add	x2, sp, 288	// tmp159,,
	mov	x3, x0	// tmp160, tmp157
	ldp	x0, x1, [x3]	// tmp161,
	stp	x0, x1, [x2]	// tmp161, a4
	ldr	x0, [x3, 16]	// tmp162,
	str	x0, [x2, 16]	// tmp162, a4
// problem71.c:60:     int e4[] = {1, 9, 5, 8, 6, 7};
	adrp	x0, .LC5	// tmp164,
	add	x0, x0, :lo12:.LC5	// tmp163, tmp164,
	add	x2, sp, 312	// tmp165,,
	mov	x3, x0	// tmp166, tmp163
	ldp	x0, x1, [x3]	// tmp167,
	stp	x0, x1, [x2]	// tmp167, e4
	ldr	x0, [x3, 16]	// tmp168,
	str	x0, [x2, 16]	// tmp168, e4
// problem71.c:62:     func0(a4, 6, out4);
	add	x1, sp, 336	// tmp169,,
	add	x0, sp, 288	// tmp170,,
	mov	x2, x1	//, tmp169
	mov	w1, 6	//,
	bl	func0		//
// problem71.c:63:     assert(issame(e4, out4, 6));
	add	x1, sp, 336	// tmp171,,
	add	x0, sp, 312	// tmp172,,
	mov	w2, 6	//,
	bl	issame		//
// problem71.c:63:     assert(issame(e4, out4, 6));
	cmp	w0, 0	// _4,
	bne	.L20		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp173,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp173,
	mov	w2, 63	//,
	adrp	x0, .LC10	// tmp174,
	add	x1, x0, :lo12:.LC10	//, tmp174,
	adrp	x0, .LC14	// tmp175,
	add	x0, x0, :lo12:.LC14	//, tmp175,
	bl	__assert_fail		//
.L20:
// problem71.c:65:     int a5[] = {5, 5, 5, 5};
	mov	w0, 5	// tmp176,
	str	w0, [sp, 96]	// tmp176, a5[0]
	mov	w0, 5	// tmp177,
	str	w0, [sp, 100]	// tmp177, a5[1]
	mov	w0, 5	// tmp178,
	str	w0, [sp, 104]	// tmp178, a5[2]
	mov	w0, 5	// tmp179,
	str	w0, [sp, 108]	// tmp179, a5[3]
// problem71.c:66:     int e5[] = {5, 5, 5, 5};
	mov	w0, 5	// tmp180,
	str	w0, [sp, 112]	// tmp180, e5[0]
	mov	w0, 5	// tmp181,
	str	w0, [sp, 116]	// tmp181, e5[1]
	mov	w0, 5	// tmp182,
	str	w0, [sp, 120]	// tmp182, e5[2]
	mov	w0, 5	// tmp183,
	str	w0, [sp, 124]	// tmp183, e5[3]
// problem71.c:68:     func0(a5, 4, out5);
	add	x1, sp, 128	// tmp184,,
	add	x0, sp, 96	// tmp185,,
	mov	x2, x1	//, tmp184
	mov	w1, 4	//,
	bl	func0		//
// problem71.c:69:     assert(issame(e5, out5, 4));
	add	x1, sp, 128	// tmp186,,
	add	x0, sp, 112	// tmp187,,
	mov	w2, 4	//,
	bl	issame		//
// problem71.c:69:     assert(issame(e5, out5, 4));
	cmp	w0, 0	// _5,
	bne	.L21		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp188,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp188,
	mov	w2, 69	//,
	adrp	x0, .LC10	// tmp189,
	add	x1, x0, :lo12:.LC10	//, tmp189,
	adrp	x0, .LC15	// tmp190,
	add	x0, x0, :lo12:.LC15	//, tmp190,
	bl	__assert_fail		//
.L21:
// problem71.c:74:     func0(a6, 0, out6);
	add	x1, sp, 16	// tmp191,,
	mov	x0, sp	// tmp192,
	mov	x2, x1	//, tmp191
	mov	w1, 0	//,
	bl	func0		//
// problem71.c:75:     assert(issame(e6, out6, 0));
	add	x1, sp, 16	// tmp193,,
	add	x0, sp, 8	// tmp194,,
	mov	w2, 0	//,
	bl	issame		//
// problem71.c:75:     assert(issame(e6, out6, 0));
	cmp	w0, 0	// _6,
	bne	.L22		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp195,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp195,
	mov	w2, 75	//,
	adrp	x0, .LC10	// tmp196,
	add	x1, x0, :lo12:.LC10	//, tmp196,
	adrp	x0, .LC16	// tmp197,
	add	x0, x0, :lo12:.LC16	//, tmp197,
	bl	__assert_fail		//
.L22:
// problem71.c:77:     int a7[] = {1, 2, 3, 4, 5, 6, 7, 8};
	adrp	x0, .LC6	// tmp199,
	add	x1, x0, :lo12:.LC6	// tmp198, tmp199,
	add	x0, sp, 360	// tmp200,,
	ldp	q0, q1, [x1]	// tmp202, tmp203,
	stp	q0, q1, [x0]	// tmp202, tmp203, a7
// problem71.c:78:     int e7[] = {1, 8, 2, 7, 3, 6, 4, 5};
	adrp	x0, .LC7	// tmp205,
	add	x1, x0, :lo12:.LC7	// tmp204, tmp205,
	add	x0, sp, 392	// tmp206,,
	ldp	q0, q1, [x1]	// tmp208, tmp209,
	stp	q0, q1, [x0]	// tmp208, tmp209, e7
// problem71.c:80:     func0(a7, 8, out7);
	add	x1, sp, 424	// tmp210,,
	add	x0, sp, 360	// tmp211,,
	mov	x2, x1	//, tmp210
	mov	w1, 8	//,
	bl	func0		//
// problem71.c:81:     assert(issame(e7, out7, 8));
	add	x1, sp, 424	// tmp212,,
	add	x0, sp, 392	// tmp213,,
	mov	w2, 8	//,
	bl	issame		//
// problem71.c:81:     assert(issame(e7, out7, 8));
	cmp	w0, 0	// _7,
	bne	.L23		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp214,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp214,
	mov	w2, 81	//,
	adrp	x0, .LC10	// tmp215,
	add	x1, x0, :lo12:.LC10	//, tmp215,
	adrp	x0, .LC17	// tmp216,
	add	x0, x0, :lo12:.LC17	//, tmp216,
	bl	__assert_fail		//
.L23:
// problem71.c:83:     int a8[] = {0, 2, 2, 2, 5, 5, -5, -5};
	adrp	x0, .LC8	// tmp218,
	add	x1, x0, :lo12:.LC8	// tmp217, tmp218,
	add	x0, sp, 456	// tmp219,,
	ldp	q0, q1, [x1]	// tmp221, tmp222,
	stp	q0, q1, [x0]	// tmp221, tmp222, a8
// problem71.c:84:     int e8[] = {-5, 5, -5, 5, 0, 2, 2, 2};
	adrp	x0, .LC9	// tmp224,
	add	x1, x0, :lo12:.LC9	// tmp223, tmp224,
	add	x0, sp, 488	// tmp225,,
	ldp	q0, q1, [x1]	// tmp227, tmp228,
	stp	q0, q1, [x0]	// tmp227, tmp228, e8
// problem71.c:86:     func0(a8, 8, out8);
	add	x1, sp, 520	// tmp229,,
	add	x0, sp, 456	// tmp230,,
	mov	x2, x1	//, tmp229
	mov	w1, 8	//,
	bl	func0		//
// problem71.c:87:     assert(issame(e8, out8, 8));
	add	x1, sp, 520	// tmp231,,
	add	x0, sp, 488	// tmp232,,
	mov	w2, 8	//,
	bl	issame		//
// problem71.c:87:     assert(issame(e8, out8, 8));
	cmp	w0, 0	// _8,
	bne	.L24		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp233,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp233,
	mov	w2, 87	//,
	adrp	x0, .LC10	// tmp234,
	add	x1, x0, :lo12:.LC10	//, tmp234,
	adrp	x0, .LC18	// tmp235,
	add	x0, x0, :lo12:.LC18	//, tmp235,
	bl	__assert_fail		//
.L24:
// problem71.c:89:     int a9[] = {111111};
	mov	w0, 45575	// tmp236,
	movk	w0, 0x1, lsl 16	// tmp236,,
	str	w0, [sp, 24]	// tmp236, a9[0]
// problem71.c:90:     int e9[] = {111111};
	mov	w0, 45575	// tmp237,
	movk	w0, 0x1, lsl 16	// tmp237,,
	str	w0, [sp, 32]	// tmp237, e9[0]
// problem71.c:92:     func0(a9, 1, out9);
	add	x1, sp, 40	// tmp238,,
	add	x0, sp, 24	// tmp239,,
	mov	x2, x1	//, tmp238
	mov	w1, 1	//,
	bl	func0		//
// problem71.c:93:     assert(issame(e9, out9, 1));
	add	x1, sp, 40	// tmp240,,
	add	x0, sp, 32	// tmp241,,
	mov	w2, 1	//,
	bl	issame		//
// problem71.c:93:     assert(issame(e9, out9, 1));
	cmp	w0, 0	// _9,
	bne	.L25		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp242,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp242,
	mov	w2, 93	//,
	adrp	x0, .LC10	// tmp243,
	add	x1, x0, :lo12:.LC10	//, tmp243,
	adrp	x0, .LC19	// tmp244,
	add	x0, x0, :lo12:.LC19	//, tmp244,
	bl	__assert_fail		//
.L25:
// problem71.c:95:     return 0;
	mov	w0, 0	// _66,
// problem71.c:96: }
	mov	w1, w0	// <retval>, _66
	adrp	x0, :got:__stack_chk_guard	// tmp246,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp246,
	ldr	x3, [sp, 552]	// tmp248, D.5697
	ldr	x2, [x0]	// tmp249,
	subs	x3, x3, x2	// tmp248, tmp249
	mov	x2, 0	// tmp249
	beq	.L27		//,
	bl	__stack_chk_fail		//
.L27:
	mov	w0, w1	//, <retval>
	add	sp, sp, 560	//,,
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
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.align	3
.LC1:
	.word	5
	.word	9
	.word	6
	.word	8
	.word	7
	.align	3
.LC2:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.align	3
.LC3:
	.word	1
	.word	5
	.word	2
	.word	4
	.word	3
	.align	3
.LC4:
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	1
	.align	3
.LC5:
	.word	1
	.word	9
	.word	5
	.word	8
	.word	6
	.word	7
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
	.align	3
.LC7:
	.word	1
	.word	8
	.word	2
	.word	7
	.word	3
	.word	6
	.word	4
	.word	5
	.align	3
.LC8:
	.word	0
	.word	2
	.word	2
	.word	2
	.word	5
	.word	5
	.word	-5
	.word	-5
	.align	3
.LC9:
	.word	-5
	.word	5
	.word	-5
	.word	5
	.word	0
	.word	2
	.word	2
	.word	2
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
