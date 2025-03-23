	.arch armv8-a
	.file	"problem27.c"
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
	stp	x29, x30, [sp, -128]!	//,,,
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp	//,
	str	x0, [sp, 40]	// numbers, numbers
	str	w1, [sp, 36]	// size, size
	str	x2, [sp, 24]	// new_size, new_size
// problem27.c:5:     int* out = (int*)malloc(size * sizeof(int));
	ldrsw	x0, [sp, 36]	// _1, size
	lsl	x0, x0, 2	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 104]	// tmp128, out
// problem27.c:6:     int* has1 = (int*)calloc(size, sizeof(int));
	ldrsw	x0, [sp, 36]	// _3, size
	mov	x1, 4	//,
	bl	calloc		//
	str	x0, [sp, 112]	// tmp129, has1
// problem27.c:7:     int* has2 = (int*)calloc(size, sizeof(int));
	ldrsw	x0, [sp, 36]	// _4, size
	mov	x1, 4	//,
	bl	calloc		//
	str	x0, [sp, 120]	// tmp130, has2
// problem27.c:8:     int has1_count = 0;
	str	wzr, [sp, 52]	//, has1_count
// problem27.c:9:     int has2_count = 0;
	str	wzr, [sp, 56]	//, has2_count
// problem27.c:10:     int out_count = 0;
	str	wzr, [sp, 60]	//, out_count
// problem27.c:12:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 64]	//, i
// problem27.c:12:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L14:
// problem27.c:13:         int num = numbers[i];
	ldrsw	x0, [sp, 64]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 40]	// tmp131, numbers
	add	x0, x1, x0	// _7, tmp131, _6
// problem27.c:13:         int num = numbers[i];
	ldr	w0, [x0]	// tmp132, *_7
	str	w0, [sp, 100]	// tmp132, num
// problem27.c:14:         int in_has2 = 0;
	str	wzr, [sp, 68]	//, in_has2
// problem27.c:16:         for (int j = 0; j < has2_count; j++) {
	str	wzr, [sp, 72]	//, j
// problem27.c:16:         for (int j = 0; j < has2_count; j++) {
	b	.L3		//
.L6:
// problem27.c:17:             if (has2[j] == num) {
	ldrsw	x0, [sp, 72]	// _8, j
	lsl	x0, x0, 2	// _9, _8,
	ldr	x1, [sp, 120]	// tmp133, has2
	add	x0, x1, x0	// _10, tmp133, _9
	ldr	w0, [x0]	// _11, *_10
// problem27.c:17:             if (has2[j] == num) {
	ldr	w1, [sp, 100]	// tmp134, num
	cmp	w1, w0	// tmp134, _11
	bne	.L4		//,
// problem27.c:18:                 in_has2 = 1;
	mov	w0, 1	// tmp135,
	str	w0, [sp, 68]	// tmp135, in_has2
// problem27.c:19:                 break;
	b	.L5		//
.L4:
// problem27.c:16:         for (int j = 0; j < has2_count; j++) {
	ldr	w0, [sp, 72]	// tmp137, j
	add	w0, w0, 1	// tmp136, tmp137,
	str	w0, [sp, 72]	// tmp136, j
.L3:
// problem27.c:16:         for (int j = 0; j < has2_count; j++) {
	ldr	w1, [sp, 72]	// tmp138, j
	ldr	w0, [sp, 56]	// tmp139, has2_count
	cmp	w1, w0	// tmp138, tmp139
	blt	.L6		//,
.L5:
// problem27.c:22:         if (in_has2) continue;
	ldr	w0, [sp, 68]	// tmp140, in_has2
	cmp	w0, 0	// tmp140,
	bne	.L23		//,
// problem27.c:24:         int in_has1 = 0;
	str	wzr, [sp, 76]	//, in_has1
// problem27.c:25:         for (int j = 0; j < has1_count; j++) {
	str	wzr, [sp, 80]	//, j
// problem27.c:25:         for (int j = 0; j < has1_count; j++) {
	b	.L9		//
.L12:
// problem27.c:26:             if (has1[j] == num) {
	ldrsw	x0, [sp, 80]	// _12, j
	lsl	x0, x0, 2	// _13, _12,
	ldr	x1, [sp, 112]	// tmp141, has1
	add	x0, x1, x0	// _14, tmp141, _13
	ldr	w0, [x0]	// _15, *_14
// problem27.c:26:             if (has1[j] == num) {
	ldr	w1, [sp, 100]	// tmp142, num
	cmp	w1, w0	// tmp142, _15
	bne	.L10		//,
// problem27.c:27:                 in_has1 = 1;
	mov	w0, 1	// tmp143,
	str	w0, [sp, 76]	// tmp143, in_has1
// problem27.c:28:                 break;
	b	.L11		//
.L10:
// problem27.c:25:         for (int j = 0; j < has1_count; j++) {
	ldr	w0, [sp, 80]	// tmp145, j
	add	w0, w0, 1	// tmp144, tmp145,
	str	w0, [sp, 80]	// tmp144, j
.L9:
// problem27.c:25:         for (int j = 0; j < has1_count; j++) {
	ldr	w1, [sp, 80]	// tmp146, j
	ldr	w0, [sp, 52]	// tmp147, has1_count
	cmp	w1, w0	// tmp146, tmp147
	blt	.L12		//,
.L11:
// problem27.c:31:         if (in_has1) {
	ldr	w0, [sp, 76]	// tmp148, in_has1
	cmp	w0, 0	// tmp148,
	beq	.L13		//,
// problem27.c:32:             has2[has2_count++] = num;
	ldr	w0, [sp, 56]	// has2_count.0_16, has2_count
	add	w1, w0, 1	// tmp149, has2_count.0_16,
	str	w1, [sp, 56]	// tmp149, has2_count
	sxtw	x0, w0	// _17, has2_count.0_16
// problem27.c:32:             has2[has2_count++] = num;
	lsl	x0, x0, 2	// _18, _17,
	ldr	x1, [sp, 120]	// tmp150, has2
	add	x0, x1, x0	// _19, tmp150, _18
// problem27.c:32:             has2[has2_count++] = num;
	ldr	w1, [sp, 100]	// tmp151, num
	str	w1, [x0]	// tmp151, *_19
	b	.L8		//
.L13:
// problem27.c:34:             has1[has1_count++] = num;
	ldr	w0, [sp, 52]	// has1_count.1_20, has1_count
	add	w1, w0, 1	// tmp152, has1_count.1_20,
	str	w1, [sp, 52]	// tmp152, has1_count
	sxtw	x0, w0	// _21, has1_count.1_20
// problem27.c:34:             has1[has1_count++] = num;
	lsl	x0, x0, 2	// _22, _21,
	ldr	x1, [sp, 112]	// tmp153, has1
	add	x0, x1, x0	// _23, tmp153, _22
// problem27.c:34:             has1[has1_count++] = num;
	ldr	w1, [sp, 100]	// tmp154, num
	str	w1, [x0]	// tmp154, *_23
	b	.L8		//
.L23:
// problem27.c:22:         if (in_has2) continue;
	nop	
.L8:
// problem27.c:12:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 64]	// tmp156, i
	add	w0, w0, 1	// tmp155, tmp156,
	str	w0, [sp, 64]	// tmp155, i
.L2:
// problem27.c:12:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 64]	// tmp157, i
	ldr	w0, [sp, 36]	// tmp158, size
	cmp	w1, w0	// tmp157, tmp158
	blt	.L14		//,
// problem27.c:38:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 84]	//, i
// problem27.c:38:     for (int i = 0; i < size; i++) {
	b	.L15		//
.L21:
// problem27.c:39:         int num = numbers[i];
	ldrsw	x0, [sp, 84]	// _24, i
	lsl	x0, x0, 2	// _25, _24,
	ldr	x1, [sp, 40]	// tmp159, numbers
	add	x0, x1, x0	// _26, tmp159, _25
// problem27.c:39:         int num = numbers[i];
	ldr	w0, [x0]	// tmp160, *_26
	str	w0, [sp, 96]	// tmp160, num
// problem27.c:40:         int in_has2 = 0;
	str	wzr, [sp, 88]	//, in_has2
// problem27.c:41:         for (int j = 0; j < has2_count; j++) {
	str	wzr, [sp, 92]	//, j
// problem27.c:41:         for (int j = 0; j < has2_count; j++) {
	b	.L16		//
.L19:
// problem27.c:42:             if (has2[j] == num) {
	ldrsw	x0, [sp, 92]	// _27, j
	lsl	x0, x0, 2	// _28, _27,
	ldr	x1, [sp, 120]	// tmp161, has2
	add	x0, x1, x0	// _29, tmp161, _28
	ldr	w0, [x0]	// _30, *_29
// problem27.c:42:             if (has2[j] == num) {
	ldr	w1, [sp, 96]	// tmp162, num
	cmp	w1, w0	// tmp162, _30
	bne	.L17		//,
// problem27.c:43:                 in_has2 = 1;
	mov	w0, 1	// tmp163,
	str	w0, [sp, 88]	// tmp163, in_has2
// problem27.c:44:                 break;
	b	.L18		//
.L17:
// problem27.c:41:         for (int j = 0; j < has2_count; j++) {
	ldr	w0, [sp, 92]	// tmp165, j
	add	w0, w0, 1	// tmp164, tmp165,
	str	w0, [sp, 92]	// tmp164, j
.L16:
// problem27.c:41:         for (int j = 0; j < has2_count; j++) {
	ldr	w1, [sp, 92]	// tmp166, j
	ldr	w0, [sp, 56]	// tmp167, has2_count
	cmp	w1, w0	// tmp166, tmp167
	blt	.L19		//,
.L18:
// problem27.c:47:         if (!in_has2) {
	ldr	w0, [sp, 88]	// tmp168, in_has2
	cmp	w0, 0	// tmp168,
	bne	.L20		//,
// problem27.c:48:             out[out_count++] = num;
	ldr	w0, [sp, 60]	// out_count.2_31, out_count
	add	w1, w0, 1	// tmp169, out_count.2_31,
	str	w1, [sp, 60]	// tmp169, out_count
	sxtw	x0, w0	// _32, out_count.2_31
// problem27.c:48:             out[out_count++] = num;
	lsl	x0, x0, 2	// _33, _32,
	ldr	x1, [sp, 104]	// tmp170, out
	add	x0, x1, x0	// _34, tmp170, _33
// problem27.c:48:             out[out_count++] = num;
	ldr	w1, [sp, 96]	// tmp171, num
	str	w1, [x0]	// tmp171, *_34
.L20:
// problem27.c:38:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 84]	// tmp173, i
	add	w0, w0, 1	// tmp172, tmp173,
	str	w0, [sp, 84]	// tmp172, i
.L15:
// problem27.c:38:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 84]	// tmp174, i
	ldr	w0, [sp, 36]	// tmp175, size
	cmp	w1, w0	// tmp174, tmp175
	blt	.L21		//,
// problem27.c:52:     *new_size = out_count;
	ldr	x0, [sp, 24]	// tmp176, new_size
	ldr	w1, [sp, 60]	// tmp177, out_count
	str	w1, [x0]	// tmp177, *new_size_66(D)
// problem27.c:53:     free(has1);
	ldr	x0, [sp, 112]	//, has1
	bl	free		//
// problem27.c:54:     free(has2);
	ldr	x0, [sp, 120]	//, has2
	bl	free		//
// problem27.c:55:     return out;
	ldr	x0, [sp, 104]	// _70, out
// problem27.c:56: }
	ldp	x29, x30, [sp], 128	//,,,
	.cfi_restore 30
	.cfi_restore 29
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
	str	w1, [sp, 20]	// a_size, a_size
	str	x2, [sp, 8]	// b, b
	str	w3, [sp, 16]	// b_size, b_size
// problem27.c:65:     if (a_size != b_size) return 0;
	ldr	w1, [sp, 20]	// tmp102, a_size
	ldr	w0, [sp, 16]	// tmp103, b_size
	cmp	w1, w0	// tmp102, tmp103
	beq	.L25		//,
// problem27.c:65:     if (a_size != b_size) return 0;
	mov	w0, 0	// _10,
	b	.L26		//
.L25:
// problem27.c:66:     for (int i = 0; i < a_size; i++) {
	str	wzr, [sp, 44]	//, i
// problem27.c:66:     for (int i = 0; i < a_size; i++) {
	b	.L27		//
.L29:
// problem27.c:67:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp104, a
	add	x0, x1, x0	// _3, tmp104, _2
	ldr	w1, [x0]	// _4, *_3
// problem27.c:67:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 8]	// tmp105, b
	add	x0, x2, x0	// _7, tmp105, _6
	ldr	w0, [x0]	// _8, *_7
// problem27.c:67:         if (a[i] != b[i]) return 0;
	cmp	w1, w0	// _4, _8
	beq	.L28		//,
// problem27.c:67:         if (a[i] != b[i]) return 0;
	mov	w0, 0	// _10,
	b	.L26		//
.L28:
// problem27.c:66:     for (int i = 0; i < a_size; i++) {
	ldr	w0, [sp, 44]	// tmp107, i
	add	w0, w0, 1	// tmp106, tmp107,
	str	w0, [sp, 44]	// tmp106, i
.L27:
// problem27.c:66:     for (int i = 0; i < a_size; i++) {
	ldr	w1, [sp, 44]	// tmp108, i
	ldr	w0, [sp, 20]	// tmp109, a_size
	cmp	w1, w0	// tmp108, tmp109
	blt	.L29		//,
// problem27.c:69:     return 1;
	mov	w0, 1	// _10,
.L26:
// problem27.c:70: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC2:
	.string	"problem27.c"
	.align	3
.LC3:
	.string	"issame(result, new_size, (int[]){}, 0)"
	.align	3
.LC4:
	.string	"issame(result, new_size, (int[]){1, 2, 3, 4}, 4)"
	.align	3
.LC5:
	.string	"issame(result, new_size, (int[]){1, 4, 5}, 3)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!	//,,,
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp	//,
// problem27.c:72: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp101,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp100, tmp101,
	ldr	x1, [x0]	// tmp143,
	str	x1, [sp, 104]	// tmp143, D.5072
	mov	x1, 0	// tmp143
// problem27.c:76:     result = func0((int[]){}, 0, &new_size);
	add	x1, sp, 20	// tmp102,,
	add	x0, sp, 32	// tmp103,,
	mov	x2, x1	//, tmp102
	mov	w1, 0	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem27.c:77:     assert(issame(result, new_size, (int[]){}, 0));
	ldr	w0, [sp, 20]	// new_size.3_1, new_size
	add	x1, sp, 72	// tmp104,,
	mov	w3, 0	//,
	mov	x2, x1	//, tmp104
	mov	w1, w0	//, new_size.3_1
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _2,
	bne	.L31		//,
// problem27.c:77:     assert(issame(result, new_size, (int[]){}, 0));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp105,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp105,
	mov	w2, 77	//,
	adrp	x0, .LC2	// tmp106,
	add	x1, x0, :lo12:.LC2	//, tmp106,
	adrp	x0, .LC3	// tmp107,
	add	x0, x0, :lo12:.LC3	//, tmp107,
	bl	__assert_fail		//
.L31:
// problem27.c:78:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem27.c:80:     result = func0((int[]){1, 2, 3, 4}, 4, &new_size);
	mov	w0, 1	// tmp108,
	str	w0, [sp, 56]	// tmp108, D.5026[0]
	mov	w0, 2	// tmp109,
	str	w0, [sp, 60]	// tmp109, D.5026[1]
	mov	w0, 3	// tmp110,
	str	w0, [sp, 64]	// tmp110, D.5026[2]
	mov	w0, 4	// tmp111,
	str	w0, [sp, 68]	// tmp111, D.5026[3]
// problem27.c:80:     result = func0((int[]){1, 2, 3, 4}, 4, &new_size);
	add	x1, sp, 20	// tmp112,,
	add	x0, sp, 56	// tmp113,,
	mov	x2, x1	//, tmp112
	mov	w1, 4	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem27.c:81:     assert(issame(result, new_size, (int[]){1, 2, 3, 4}, 4));
	ldr	w1, [sp, 20]	// new_size.4_3, new_size
	mov	w0, 1	// tmp114,
	str	w0, [sp, 72]	// tmp114, MEM[(int[4] *)_47][0]
	mov	w0, 2	// tmp115,
	str	w0, [sp, 76]	// tmp115, MEM[(int[4] *)_47][1]
	mov	w0, 3	// tmp116,
	str	w0, [sp, 80]	// tmp116, MEM[(int[4] *)_47][2]
	mov	w0, 4	// tmp117,
	str	w0, [sp, 84]	// tmp117, MEM[(int[4] *)_47][3]
	add	x0, sp, 72	// tmp118,,
	mov	w3, 4	//,
	mov	x2, x0	//, tmp118
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _4,
	bne	.L32		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 81	//,
	adrp	x0, .LC2	// tmp120,
	add	x1, x0, :lo12:.LC2	//, tmp120,
	adrp	x0, .LC4	// tmp121,
	add	x0, x0, :lo12:.LC4	//, tmp121,
	bl	__assert_fail		//
.L32:
// problem27.c:82:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem27.c:84:     result = func0((int[]){1, 2, 3, 2, 4, 3, 5}, 7, &new_size);
	adrp	x0, .LC0	// tmp123,
	add	x1, x0, :lo12:.LC0	// tmp122, tmp123,
	add	x0, sp, 72	// tmp124,,
	ldr	q0, [x1]	// tmp126,
	str	q0, [x0]	// tmp126, MEM[(int[7] *)_47]
	ldr	q0, [x1, 12]	// tmp127,
	str	q0, [x0, 12]	// tmp127, MEM[(int[7] *)_47]
// problem27.c:84:     result = func0((int[]){1, 2, 3, 2, 4, 3, 5}, 7, &new_size);
	add	x1, sp, 20	// tmp128,,
	add	x0, sp, 72	// tmp129,,
	mov	x2, x1	//, tmp128
	mov	w1, 7	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem27.c:85:     assert(issame(result, new_size, (int[]){1, 4, 5}, 3));
	ldr	w4, [sp, 20]	// new_size.5_5, new_size
	adrp	x0, .LC1	// tmp131,
	add	x1, x0, :lo12:.LC1	// tmp130, tmp131,
	add	x0, sp, 40	// tmp132,,
	ldr	x2, [x1]	// tmp134,
	str	x2, [x0]	// tmp134, D.5031
	ldr	w1, [x1, 8]	// tmp135,
	str	w1, [x0, 8]	// tmp135, D.5031
	add	x0, sp, 40	// tmp136,,
	mov	w3, 3	//,
	mov	x2, x0	//, tmp136
	mov	w1, w4	//, new_size.5_5
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _6,
	bne	.L33		//,
// problem27.c:85:     assert(issame(result, new_size, (int[]){1, 4, 5}, 3));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp137,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp137,
	mov	w2, 85	//,
	adrp	x0, .LC2	// tmp138,
	add	x1, x0, :lo12:.LC2	//, tmp138,
	adrp	x0, .LC5	// tmp139,
	add	x0, x0, :lo12:.LC5	//, tmp139,
	bl	__assert_fail		//
.L33:
// problem27.c:86:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem27.c:88:     return 0;
	mov	w0, 0	// _38,
// problem27.c:89: }
	mov	w1, w0	// <retval>, _38
	adrp	x0, :got:__stack_chk_guard	// tmp142,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp141, tmp142,
	ldr	x3, [sp, 104]	// tmp144, D.5072
	ldr	x2, [x0]	// tmp145,
	subs	x3, x3, x2	// tmp144, tmp145
	mov	x2, 0	// tmp145
	beq	.L35		//,
// problem27.c:89: }
	bl	__stack_chk_fail		//
.L35:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 112	//,,,
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
	.word	1
	.word	2
	.word	3
	.word	2
	.word	4
	.word	3
	.word	5
	.align	3
.LC1:
	.word	1
	.word	4
	.word	5
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
