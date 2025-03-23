	.arch armv8-a
	.file	"problem71.c"
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
.L9:
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
	ble	.L9		//,
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
	b	.L11		//
.L14:
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
	beq	.L12		//,
// problem71.c:35:         if (a[i] != b[i]) return 0;
	mov	w0, 0	// _10,
	b	.L13		//
.L12:
// problem71.c:34:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 44]	// tmp105, i
	add	w0, w0, 1	// tmp104, tmp105,
	str	w0, [sp, 44]	// tmp104, i
.L11:
// problem71.c:34:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 44]	// tmp106, i
	ldr	w0, [sp, 12]	// tmp107, size
	cmp	w1, w0	// tmp106, tmp107
	blt	.L14		//,
// problem71.c:37:     return 1;
	mov	w0, 1	// _10,
.L13:
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
	sub	sp, sp, #576	//,,
	.cfi_def_cfa_offset 576
	stp	x29, x30, [sp]	//,,
	.cfi_offset 29, -576
	.cfi_offset 30, -568
	mov	x29, sp	//,
// problem71.c:40: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp104,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp103, tmp104,
	ldr	x1, [x0]	// tmp249,
	str	x1, [sp, 568]	// tmp249, D.5081
	mov	x1, 0	// tmp249
// problem71.c:41:     int a1[] = {1, 2, 3, 4};
	mov	w0, 1	// tmp105,
	str	w0, [sp, 64]	// tmp105, a1[0]
	mov	w0, 2	// tmp106,
	str	w0, [sp, 68]	// tmp106, a1[1]
	mov	w0, 3	// tmp107,
	str	w0, [sp, 72]	// tmp107, a1[2]
	mov	w0, 4	// tmp108,
	str	w0, [sp, 76]	// tmp108, a1[3]
// problem71.c:42:     int e1[] = {1, 4, 2, 3};
	mov	w0, 1	// tmp109,
	str	w0, [sp, 80]	// tmp109, e1[0]
	mov	w0, 4	// tmp110,
	str	w0, [sp, 84]	// tmp110, e1[1]
	mov	w0, 2	// tmp111,
	str	w0, [sp, 88]	// tmp111, e1[2]
	mov	w0, 3	// tmp112,
	str	w0, [sp, 92]	// tmp112, e1[3]
// problem71.c:44:     func0(a1, 4, out1);
	add	x1, sp, 96	// tmp113,,
	add	x0, sp, 64	// tmp114,,
	mov	x2, x1	//, tmp113
	mov	w1, 4	//,
	bl	func0		//
// problem71.c:45:     assert(issame(e1, out1, 4));
	add	x1, sp, 96	// tmp115,,
	add	x0, sp, 80	// tmp116,,
	mov	w2, 4	//,
	bl	issame		//
	cmp	w0, 0	// _1,
	bne	.L16		//,
// problem71.c:45:     assert(issame(e1, out1, 4));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp117,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp117,
	mov	w2, 45	//,
	adrp	x0, .LC10	// tmp118,
	add	x1, x0, :lo12:.LC10	//, tmp118,
	adrp	x0, .LC11	// tmp119,
	add	x0, x0, :lo12:.LC11	//, tmp119,
	bl	__assert_fail		//
.L16:
// problem71.c:47:     int a2[] = {5, 6, 7, 8, 9};
	adrp	x0, .LC0	// tmp121,
	add	x0, x0, :lo12:.LC0	// tmp120, tmp121,
	add	x2, sp, 160	// tmp122,,
	mov	x3, x0	// tmp123, tmp120
	ldp	x0, x1, [x3]	// tmp124,
	stp	x0, x1, [x2]	// tmp124, a2
	ldr	w0, [x3, 16]	// tmp125,
	str	w0, [x2, 16]	// tmp125, a2
// problem71.c:48:     int e2[] = {5, 9, 6, 8, 7};
	adrp	x0, .LC1	// tmp127,
	add	x0, x0, :lo12:.LC1	// tmp126, tmp127,
	add	x2, sp, 184	// tmp128,,
	mov	x3, x0	// tmp129, tmp126
	ldp	x0, x1, [x3]	// tmp130,
	stp	x0, x1, [x2]	// tmp130, e2
	ldr	w0, [x3, 16]	// tmp131,
	str	w0, [x2, 16]	// tmp131, e2
// problem71.c:50:     func0(a2, 5, out2);
	add	x1, sp, 208	// tmp132,,
	add	x0, sp, 160	// tmp133,,
	mov	x2, x1	//, tmp132
	mov	w1, 5	//,
	bl	func0		//
// problem71.c:51:     assert(issame(e2, out2, 5));
	add	x1, sp, 208	// tmp134,,
	add	x0, sp, 184	// tmp135,,
	mov	w2, 5	//,
	bl	issame		//
	cmp	w0, 0	// _2,
	bne	.L17		//,
// problem71.c:51:     assert(issame(e2, out2, 5));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp136,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp136,
	mov	w2, 51	//,
	adrp	x0, .LC10	// tmp137,
	add	x1, x0, :lo12:.LC10	//, tmp137,
	adrp	x0, .LC12	// tmp138,
	add	x0, x0, :lo12:.LC12	//, tmp138,
	bl	__assert_fail		//
.L17:
// problem71.c:53:     int a3[] = {1, 2, 3, 4, 5};
	adrp	x0, .LC2	// tmp140,
	add	x0, x0, :lo12:.LC2	// tmp139, tmp140,
	add	x2, sp, 232	// tmp141,,
	mov	x3, x0	// tmp142, tmp139
	ldp	x0, x1, [x3]	// tmp143,
	stp	x0, x1, [x2]	// tmp143, a3
	ldr	w0, [x3, 16]	// tmp144,
	str	w0, [x2, 16]	// tmp144, a3
// problem71.c:54:     int e3[] = {1, 5, 2, 4, 3};
	adrp	x0, .LC3	// tmp146,
	add	x0, x0, :lo12:.LC3	// tmp145, tmp146,
	add	x2, sp, 256	// tmp147,,
	mov	x3, x0	// tmp148, tmp145
	ldp	x0, x1, [x3]	// tmp149,
	stp	x0, x1, [x2]	// tmp149, e3
	ldr	w0, [x3, 16]	// tmp150,
	str	w0, [x2, 16]	// tmp150, e3
// problem71.c:56:     func0(a3, 5, out3);
	add	x1, sp, 280	// tmp151,,
	add	x0, sp, 232	// tmp152,,
	mov	x2, x1	//, tmp151
	mov	w1, 5	//,
	bl	func0		//
// problem71.c:57:     assert(issame(e3, out3, 5));
	add	x1, sp, 280	// tmp153,,
	add	x0, sp, 256	// tmp154,,
	mov	w2, 5	//,
	bl	issame		//
	cmp	w0, 0	// _3,
	bne	.L18		//,
// problem71.c:57:     assert(issame(e3, out3, 5));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp155,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp155,
	mov	w2, 57	//,
	adrp	x0, .LC10	// tmp156,
	add	x1, x0, :lo12:.LC10	//, tmp156,
	adrp	x0, .LC13	// tmp157,
	add	x0, x0, :lo12:.LC13	//, tmp157,
	bl	__assert_fail		//
.L18:
// problem71.c:59:     int a4[] = {5, 6, 7, 8, 9, 1};
	adrp	x0, .LC4	// tmp159,
	add	x0, x0, :lo12:.LC4	// tmp158, tmp159,
	add	x2, sp, 304	// tmp160,,
	mov	x3, x0	// tmp161, tmp158
	ldp	x0, x1, [x3]	// tmp162,
	stp	x0, x1, [x2]	// tmp162, a4
	ldr	x0, [x3, 16]	// tmp163,
	str	x0, [x2, 16]	// tmp163, a4
// problem71.c:60:     int e4[] = {1, 9, 5, 8, 6, 7};
	adrp	x0, .LC5	// tmp165,
	add	x0, x0, :lo12:.LC5	// tmp164, tmp165,
	add	x2, sp, 328	// tmp166,,
	mov	x3, x0	// tmp167, tmp164
	ldp	x0, x1, [x3]	// tmp168,
	stp	x0, x1, [x2]	// tmp168, e4
	ldr	x0, [x3, 16]	// tmp169,
	str	x0, [x2, 16]	// tmp169, e4
// problem71.c:62:     func0(a4, 6, out4);
	add	x1, sp, 352	// tmp170,,
	add	x0, sp, 304	// tmp171,,
	mov	x2, x1	//, tmp170
	mov	w1, 6	//,
	bl	func0		//
// problem71.c:63:     assert(issame(e4, out4, 6));
	add	x1, sp, 352	// tmp172,,
	add	x0, sp, 328	// tmp173,,
	mov	w2, 6	//,
	bl	issame		//
	cmp	w0, 0	// _4,
	bne	.L19		//,
// problem71.c:63:     assert(issame(e4, out4, 6));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp174,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp174,
	mov	w2, 63	//,
	adrp	x0, .LC10	// tmp175,
	add	x1, x0, :lo12:.LC10	//, tmp175,
	adrp	x0, .LC14	// tmp176,
	add	x0, x0, :lo12:.LC14	//, tmp176,
	bl	__assert_fail		//
.L19:
// problem71.c:65:     int a5[] = {5, 5, 5, 5};
	mov	w0, 5	// tmp177,
	str	w0, [sp, 112]	// tmp177, a5[0]
	mov	w0, 5	// tmp178,
	str	w0, [sp, 116]	// tmp178, a5[1]
	mov	w0, 5	// tmp179,
	str	w0, [sp, 120]	// tmp179, a5[2]
	mov	w0, 5	// tmp180,
	str	w0, [sp, 124]	// tmp180, a5[3]
// problem71.c:66:     int e5[] = {5, 5, 5, 5};
	mov	w0, 5	// tmp181,
	str	w0, [sp, 128]	// tmp181, e5[0]
	mov	w0, 5	// tmp182,
	str	w0, [sp, 132]	// tmp182, e5[1]
	mov	w0, 5	// tmp183,
	str	w0, [sp, 136]	// tmp183, e5[2]
	mov	w0, 5	// tmp184,
	str	w0, [sp, 140]	// tmp184, e5[3]
// problem71.c:68:     func0(a5, 4, out5);
	add	x1, sp, 144	// tmp185,,
	add	x0, sp, 112	// tmp186,,
	mov	x2, x1	//, tmp185
	mov	w1, 4	//,
	bl	func0		//
// problem71.c:69:     assert(issame(e5, out5, 4));
	add	x1, sp, 144	// tmp187,,
	add	x0, sp, 128	// tmp188,,
	mov	w2, 4	//,
	bl	issame		//
	cmp	w0, 0	// _5,
	bne	.L20		//,
// problem71.c:69:     assert(issame(e5, out5, 4));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp189,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp189,
	mov	w2, 69	//,
	adrp	x0, .LC10	// tmp190,
	add	x1, x0, :lo12:.LC10	//, tmp190,
	adrp	x0, .LC15	// tmp191,
	add	x0, x0, :lo12:.LC15	//, tmp191,
	bl	__assert_fail		//
.L20:
// problem71.c:74:     func0(a6, 0, out6);
	add	x1, sp, 32	// tmp192,,
	add	x0, sp, 16	// tmp193,,
	mov	x2, x1	//, tmp192
	mov	w1, 0	//,
	bl	func0		//
// problem71.c:75:     assert(issame(e6, out6, 0));
	add	x1, sp, 32	// tmp194,,
	add	x0, sp, 24	// tmp195,,
	mov	w2, 0	//,
	bl	issame		//
	cmp	w0, 0	// _6,
	bne	.L21		//,
// problem71.c:75:     assert(issame(e6, out6, 0));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp196,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp196,
	mov	w2, 75	//,
	adrp	x0, .LC10	// tmp197,
	add	x1, x0, :lo12:.LC10	//, tmp197,
	adrp	x0, .LC16	// tmp198,
	add	x0, x0, :lo12:.LC16	//, tmp198,
	bl	__assert_fail		//
.L21:
// problem71.c:77:     int a7[] = {1, 2, 3, 4, 5, 6, 7, 8};
	adrp	x0, .LC6	// tmp200,
	add	x1, x0, :lo12:.LC6	// tmp199, tmp200,
	add	x0, sp, 376	// tmp201,,
	ldp	q0, q1, [x1]	// tmp203, tmp204,
	stp	q0, q1, [x0]	// tmp203, tmp204, a7
// problem71.c:78:     int e7[] = {1, 8, 2, 7, 3, 6, 4, 5};
	adrp	x0, .LC7	// tmp206,
	add	x1, x0, :lo12:.LC7	// tmp205, tmp206,
	add	x0, sp, 408	// tmp207,,
	ldp	q0, q1, [x1]	// tmp209, tmp210,
	stp	q0, q1, [x0]	// tmp209, tmp210, e7
// problem71.c:80:     func0(a7, 8, out7);
	add	x1, sp, 440	// tmp211,,
	add	x0, sp, 376	// tmp212,,
	mov	x2, x1	//, tmp211
	mov	w1, 8	//,
	bl	func0		//
// problem71.c:81:     assert(issame(e7, out7, 8));
	add	x1, sp, 440	// tmp213,,
	add	x0, sp, 408	// tmp214,,
	mov	w2, 8	//,
	bl	issame		//
	cmp	w0, 0	// _7,
	bne	.L22		//,
// problem71.c:81:     assert(issame(e7, out7, 8));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp215,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp215,
	mov	w2, 81	//,
	adrp	x0, .LC10	// tmp216,
	add	x1, x0, :lo12:.LC10	//, tmp216,
	adrp	x0, .LC17	// tmp217,
	add	x0, x0, :lo12:.LC17	//, tmp217,
	bl	__assert_fail		//
.L22:
// problem71.c:83:     int a8[] = {0, 2, 2, 2, 5, 5, -5, -5};
	adrp	x0, .LC8	// tmp219,
	add	x1, x0, :lo12:.LC8	// tmp218, tmp219,
	add	x0, sp, 472	// tmp220,,
	ldp	q0, q1, [x1]	// tmp222, tmp223,
	stp	q0, q1, [x0]	// tmp222, tmp223, a8
// problem71.c:84:     int e8[] = {-5, 5, -5, 5, 0, 2, 2, 2};
	adrp	x0, .LC9	// tmp225,
	add	x1, x0, :lo12:.LC9	// tmp224, tmp225,
	add	x0, sp, 504	// tmp226,,
	ldp	q0, q1, [x1]	// tmp228, tmp229,
	stp	q0, q1, [x0]	// tmp228, tmp229, e8
// problem71.c:86:     func0(a8, 8, out8);
	add	x1, sp, 536	// tmp230,,
	add	x0, sp, 472	// tmp231,,
	mov	x2, x1	//, tmp230
	mov	w1, 8	//,
	bl	func0		//
// problem71.c:87:     assert(issame(e8, out8, 8));
	add	x1, sp, 536	// tmp232,,
	add	x0, sp, 504	// tmp233,,
	mov	w2, 8	//,
	bl	issame		//
	cmp	w0, 0	// _8,
	bne	.L23		//,
// problem71.c:87:     assert(issame(e8, out8, 8));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp234,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp234,
	mov	w2, 87	//,
	adrp	x0, .LC10	// tmp235,
	add	x1, x0, :lo12:.LC10	//, tmp235,
	adrp	x0, .LC18	// tmp236,
	add	x0, x0, :lo12:.LC18	//, tmp236,
	bl	__assert_fail		//
.L23:
// problem71.c:89:     int a9[] = {111111};
	mov	w0, 45575	// tmp237,
	movk	w0, 0x1, lsl 16	// tmp237,,
	str	w0, [sp, 40]	// tmp237, a9[0]
// problem71.c:90:     int e9[] = {111111};
	mov	w0, 45575	// tmp238,
	movk	w0, 0x1, lsl 16	// tmp238,,
	str	w0, [sp, 48]	// tmp238, e9[0]
// problem71.c:92:     func0(a9, 1, out9);
	add	x1, sp, 56	// tmp239,,
	add	x0, sp, 40	// tmp240,,
	mov	x2, x1	//, tmp239
	mov	w1, 1	//,
	bl	func0		//
// problem71.c:93:     assert(issame(e9, out9, 1));
	add	x1, sp, 56	// tmp241,,
	add	x0, sp, 48	// tmp242,,
	mov	w2, 1	//,
	bl	issame		//
	cmp	w0, 0	// _9,
	bne	.L24		//,
// problem71.c:93:     assert(issame(e9, out9, 1));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp243,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp243,
	mov	w2, 93	//,
	adrp	x0, .LC10	// tmp244,
	add	x1, x0, :lo12:.LC10	//, tmp244,
	adrp	x0, .LC19	// tmp245,
	add	x0, x0, :lo12:.LC19	//, tmp245,
	bl	__assert_fail		//
.L24:
// problem71.c:95:     return 0;
	mov	w0, 0	// _68,
// problem71.c:96: }
	mov	w1, w0	// <retval>, _68
	adrp	x0, :got:__stack_chk_guard	// tmp248,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp247, tmp248,
	ldr	x3, [sp, 568]	// tmp250, D.5081
	ldr	x2, [x0]	// tmp251,
	subs	x3, x3, x2	// tmp250, tmp251
	mov	x2, 0	// tmp251
	beq	.L26		//,
	bl	__stack_chk_fail		//
.L26:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp]	//,,
	add	sp, sp, 576	//,,
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
