	.arch armv8-a
	.file	"problem97.c"
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
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	w0, [sp, 28]	// n, n
	str	x1, [sp, 16]	// count, count
// problem97.c:5:     int *out = malloc(n * sizeof(int));
	ldrsw	x0, [sp, 28]	// _1, n
	lsl	x0, x0, 2	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 56]	// tmp108, out
// problem97.c:6:     *count = 0;
	ldr	x0, [sp, 16]	// tmp109, count
	str	wzr, [x0]	//, *count_24(D)
// problem97.c:9:     for (i = 2; i < n; i++) {
	mov	w0, 2	// tmp110,
	str	w0, [sp, 40]	// tmp110, i
// problem97.c:9:     for (i = 2; i < n; i++) {
	b	.L2		//
.L9:
// problem97.c:10:         isp = 1;
	mov	w0, 1	// tmp111,
	str	w0, [sp, 48]	// tmp111, isp
// problem97.c:11:         for (j = 0; j < *count; j++) {
	str	wzr, [sp, 44]	//, j
// problem97.c:11:         for (j = 0; j < *count; j++) {
	b	.L3		//
.L7:
// problem97.c:12:             k = out[j];
	ldrsw	x0, [sp, 44]	// _3, j
	lsl	x0, x0, 2	// _4, _3,
	ldr	x1, [sp, 56]	// tmp112, out
	add	x0, x1, x0	// _5, tmp112, _4
// problem97.c:12:             k = out[j];
	ldr	w0, [x0]	// tmp113, *_5
	str	w0, [sp, 52]	// tmp113, k
// problem97.c:13:             if (k * k > i) break;
	ldr	w0, [sp, 52]	// tmp114, k
	mul	w0, w0, w0	// _6, tmp114, tmp114
// problem97.c:13:             if (k * k > i) break;
	ldr	w1, [sp, 40]	// tmp115, i
	cmp	w1, w0	// tmp115, _6
	blt	.L11		//,
// problem97.c:14:             if (i % k == 0) {
	ldr	w0, [sp, 40]	// tmp116, i
	ldr	w1, [sp, 52]	// tmp129, k
	sdiv	w2, w0, w1	// tmp128, tmp116, tmp129
	ldr	w1, [sp, 52]	// tmp131, k
	mul	w1, w2, w1	// tmp130, tmp128, tmp131
	sub	w0, w0, w1	// _7, tmp116, tmp130
// problem97.c:14:             if (i % k == 0) {
	cmp	w0, 0	// _7,
	bne	.L6		//,
// problem97.c:15:                 isp = 0;
	str	wzr, [sp, 48]	//, isp
// problem97.c:16:                 break;
	b	.L5		//
.L6:
// problem97.c:11:         for (j = 0; j < *count; j++) {
	ldr	w0, [sp, 44]	// tmp133, j
	add	w0, w0, 1	// tmp132, tmp133,
	str	w0, [sp, 44]	// tmp132, j
.L3:
// problem97.c:11:         for (j = 0; j < *count; j++) {
	ldr	x0, [sp, 16]	// tmp134, count
	ldr	w0, [x0]	// _8, *count_24(D)
// problem97.c:11:         for (j = 0; j < *count; j++) {
	ldr	w1, [sp, 44]	// tmp135, j
	cmp	w1, w0	// tmp135, _8
	blt	.L7		//,
	b	.L5		//
.L11:
// problem97.c:13:             if (k * k > i) break;
	nop	
.L5:
// problem97.c:19:         if (isp) {
	ldr	w0, [sp, 48]	// tmp136, isp
	cmp	w0, 0	// tmp136,
	beq	.L8		//,
// problem97.c:20:             out[*count] = i;
	ldr	x0, [sp, 16]	// tmp137, count
	ldr	w0, [x0]	// _9, *count_24(D)
	sxtw	x0, w0	// _10, _9
// problem97.c:20:             out[*count] = i;
	lsl	x0, x0, 2	// _11, _10,
	ldr	x1, [sp, 56]	// tmp138, out
	add	x0, x1, x0	// _12, tmp138, _11
// problem97.c:20:             out[*count] = i;
	ldr	w1, [sp, 40]	// tmp139, i
	str	w1, [x0]	// tmp139, *_12
// problem97.c:21:             (*count)++;
	ldr	x0, [sp, 16]	// tmp140, count
	ldr	w0, [x0]	// _13, *count_24(D)
// problem97.c:21:             (*count)++;
	add	w1, w0, 1	// _14, _13,
	ldr	x0, [sp, 16]	// tmp141, count
	str	w1, [x0]	// _14, *count_24(D)
.L8:
// problem97.c:9:     for (i = 2; i < n; i++) {
	ldr	w0, [sp, 40]	// tmp143, i
	add	w0, w0, 1	// tmp142, tmp143,
	str	w0, [sp, 40]	// tmp142, i
.L2:
// problem97.c:9:     for (i = 2; i < n; i++) {
	ldr	w1, [sp, 40]	// tmp144, i
	ldr	w0, [sp, 28]	// tmp145, n
	cmp	w1, w0	// tmp144, tmp145
	blt	.L9		//,
// problem97.c:24:     return out;
	ldr	x0, [sp, 56]	// _27, out
// problem97.c:25: }
	ldp	x29, x30, [sp], 64	//,,,
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
	str	w1, [sp, 20]	// a_count, a_count
	str	x2, [sp, 8]	// b, b
	str	w3, [sp, 16]	// b_count, b_count
// problem97.c:34:     if (a_count != b_count) return 0;
	ldr	w1, [sp, 20]	// tmp102, a_count
	ldr	w0, [sp, 16]	// tmp103, b_count
	cmp	w1, w0	// tmp102, tmp103
	beq	.L13		//,
// problem97.c:34:     if (a_count != b_count) return 0;
	mov	w0, 0	// _10,
// problem97.c:34:     if (a_count != b_count) return 0;
	b	.L14		//
.L13:
// problem97.c:35:     for (int i = 0; i < a_count; i++) {
	str	wzr, [sp, 44]	//, i
// problem97.c:35:     for (int i = 0; i < a_count; i++) {
	b	.L15		//
.L17:
// problem97.c:36:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp104, a
	add	x0, x1, x0	// _3, tmp104, _2
	ldr	w1, [x0]	// _4, *_3
// problem97.c:36:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 8]	// tmp105, b
	add	x0, x2, x0	// _7, tmp105, _6
	ldr	w0, [x0]	// _8, *_7
// problem97.c:36:         if (a[i] != b[i]) return 0;
	cmp	w1, w0	// _4, _8
	beq	.L16		//,
// problem97.c:36:         if (a[i] != b[i]) return 0;
	mov	w0, 0	// _10,
// problem97.c:36:         if (a[i] != b[i]) return 0;
	b	.L14		//
.L16:
// problem97.c:35:     for (int i = 0; i < a_count; i++) {
	ldr	w0, [sp, 44]	// tmp107, i
	add	w0, w0, 1	// tmp106, tmp107,
	str	w0, [sp, 44]	// tmp106, i
.L15:
// problem97.c:35:     for (int i = 0; i < a_count; i++) {
	ldr	w1, [sp, 44]	// tmp108, i
	ldr	w0, [sp, 20]	// tmp109, a_count
	cmp	w1, w0	// tmp108, tmp109
	blt	.L17		//,
// problem97.c:38:     return 1;
	mov	w0, 1	// _10,
.L14:
// problem97.c:39: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC5:
	.string	"problem97.c"
	.align	3
.LC6:
	.string	"issame(result, count, (int[]){2, 3}, 2)"
	.align	3
.LC7:
	.string	"issame(result, count, (int[]){2, 3, 5}, 3)"
	.align	3
.LC8:
	.string	"issame(result, count, (int[]){2, 3, 5, 7}, 4)"
	.align	3
.LC9:
	.string	"count == 0"
	.align	3
.LC10:
	.string	"issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19}, 8)"
	.align	3
.LC11:
	.string	"issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17}, 7)"
	.align	3
.LC12:
	.string	"issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43}, 14)"
	.align	3
.LC13:
	.string	"issame(result, count, expected, 25)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #208	//,,
	.cfi_def_cfa_offset 208
	stp	x29, x30, [sp, 192]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 192	//,,
// problem97.c:41: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp112,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp112,
	ldr	x1, [x0]	// tmp212,
	str	x1, [sp, 184]	// tmp212, D.5686
	mov	x1, 0	// tmp212
// problem97.c:43:     int expected[] = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97};
	adrp	x0, .LC0	// tmp114,
	add	x1, x0, :lo12:.LC0	// tmp113, tmp114,
	add	x0, sp, 80	// tmp115,,
	ldp	q0, q1, [x1]	// tmp117, tmp118,
	stp	q0, q1, [x0]	// tmp117, tmp118, MEM[(int[25] *)_98]
	ldp	q0, q1, [x1, 32]	// tmp119, tmp120,
	stp	q0, q1, [x0, 32]	// tmp119, tmp120, MEM[(int[25] *)_98]
	ldp	q0, q1, [x1, 64]	// tmp121, tmp122,
	stp	q0, q1, [x0, 64]	// tmp121, tmp122, MEM[(int[25] *)_98]
	ldr	w1, [x1, 96]	// tmp123,
	str	w1, [x0, 96]	// tmp123, MEM[(int[25] *)_98]
// problem97.c:45:     int *result = func0(5, &count);
	add	x0, sp, 12	// tmp124,,
	mov	x1, x0	//, tmp124
	mov	w0, 5	//,
	bl	func0		//
	str	x0, [sp, 16]	//, result
// problem97.c:46:     assert(issame(result, count, (int[]){2, 3}, 2));
	ldr	w1, [sp, 12]	// count.0_1, count
	mov	w0, 2	// tmp125,
	str	w0, [sp, 24]	// tmp125, MEM[(int[2] *)_99][0]
	mov	w0, 3	// tmp126,
	str	w0, [sp, 28]	// tmp126, MEM[(int[2] *)_99][1]
	add	x0, sp, 24	// tmp127,,
	mov	w3, 2	//,
	mov	x2, x0	//, tmp127
	ldr	x0, [sp, 16]	//, result
	bl	issame		//
// problem97.c:46:     assert(issame(result, count, (int[]){2, 3}, 2));
	cmp	w0, 0	// _2,
	bne	.L19		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp128,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp128,
	mov	w2, 46	//,
	adrp	x0, .LC5	// tmp129,
	add	x1, x0, :lo12:.LC5	//, tmp129,
	adrp	x0, .LC6	// tmp130,
	add	x0, x0, :lo12:.LC6	//, tmp130,
	bl	__assert_fail		//
.L19:
// problem97.c:47:     free(result);
	ldr	x0, [sp, 16]	//, result
	bl	free		//
// problem97.c:49:     result = func0(6, &count);
	add	x0, sp, 12	// tmp131,,
	mov	x1, x0	//, tmp131
	mov	w0, 6	//,
	bl	func0		//
	str	x0, [sp, 16]	//, result
// problem97.c:50:     assert(issame(result, count, (int[]){2, 3, 5}, 3));
	ldr	w4, [sp, 12]	// count.1_3, count
	adrp	x0, .LC1	// tmp133,
	add	x1, x0, :lo12:.LC1	// tmp132, tmp133,
	add	x0, sp, 24	// tmp134,,
	ldr	x2, [x1]	// tmp136,
	str	x2, [x0]	// tmp136, MEM[(int[3] *)_99]
	ldr	w1, [x1, 8]	// tmp137,
	str	w1, [x0, 8]	// tmp137, MEM[(int[3] *)_99]
	add	x0, sp, 24	// tmp138,,
	mov	w3, 3	//,
	mov	x2, x0	//, tmp138
	mov	w1, w4	//, count.1_3
	ldr	x0, [sp, 16]	//, result
	bl	issame		//
// problem97.c:50:     assert(issame(result, count, (int[]){2, 3, 5}, 3));
	cmp	w0, 0	// _4,
	bne	.L20		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp139,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp139,
	mov	w2, 50	//,
	adrp	x0, .LC5	// tmp140,
	add	x1, x0, :lo12:.LC5	//, tmp140,
	adrp	x0, .LC7	// tmp141,
	add	x0, x0, :lo12:.LC7	//, tmp141,
	bl	__assert_fail		//
.L20:
// problem97.c:51:     free(result);
	ldr	x0, [sp, 16]	//, result
	bl	free		//
// problem97.c:53:     result = func0(7, &count);
	add	x0, sp, 12	// tmp142,,
	mov	x1, x0	//, tmp142
	mov	w0, 7	//,
	bl	func0		//
	str	x0, [sp, 16]	//, result
// problem97.c:54:     assert(issame(result, count, (int[]){2, 3, 5}, 3));
	ldr	w4, [sp, 12]	// count.2_5, count
	adrp	x0, .LC1	// tmp144,
	add	x1, x0, :lo12:.LC1	// tmp143, tmp144,
	add	x0, sp, 24	// tmp145,,
	ldr	x2, [x1]	// tmp147,
	str	x2, [x0]	// tmp147, MEM[(int[3] *)_99]
	ldr	w1, [x1, 8]	// tmp148,
	str	w1, [x0, 8]	// tmp148, MEM[(int[3] *)_99]
	add	x0, sp, 24	// tmp149,,
	mov	w3, 3	//,
	mov	x2, x0	//, tmp149
	mov	w1, w4	//, count.2_5
	ldr	x0, [sp, 16]	//, result
	bl	issame		//
// problem97.c:54:     assert(issame(result, count, (int[]){2, 3, 5}, 3));
	cmp	w0, 0	// _6,
	bne	.L21		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp150,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp150,
	mov	w2, 54	//,
	adrp	x0, .LC5	// tmp151,
	add	x1, x0, :lo12:.LC5	//, tmp151,
	adrp	x0, .LC7	// tmp152,
	add	x0, x0, :lo12:.LC7	//, tmp152,
	bl	__assert_fail		//
.L21:
// problem97.c:55:     free(result);
	ldr	x0, [sp, 16]	//, result
	bl	free		//
// problem97.c:57:     result = func0(10, &count);
	add	x0, sp, 12	// tmp153,,
	mov	x1, x0	//, tmp153
	mov	w0, 10	//,
	bl	func0		//
	str	x0, [sp, 16]	//, result
// problem97.c:58:     assert(issame(result, count, (int[]){2, 3, 5, 7}, 4));
	ldr	w1, [sp, 12]	// count.3_7, count
	mov	w0, 2	// tmp154,
	str	w0, [sp, 24]	// tmp154, MEM[(int[4] *)_99][0]
	mov	w0, 3	// tmp155,
	str	w0, [sp, 28]	// tmp155, MEM[(int[4] *)_99][1]
	mov	w0, 5	// tmp156,
	str	w0, [sp, 32]	// tmp156, MEM[(int[4] *)_99][2]
	mov	w0, 7	// tmp157,
	str	w0, [sp, 36]	// tmp157, MEM[(int[4] *)_99][3]
	add	x0, sp, 24	// tmp158,,
	mov	w3, 4	//,
	mov	x2, x0	//, tmp158
	ldr	x0, [sp, 16]	//, result
	bl	issame		//
// problem97.c:58:     assert(issame(result, count, (int[]){2, 3, 5, 7}, 4));
	cmp	w0, 0	// _8,
	bne	.L22		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp159,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp159,
	mov	w2, 58	//,
	adrp	x0, .LC5	// tmp160,
	add	x1, x0, :lo12:.LC5	//, tmp160,
	adrp	x0, .LC8	// tmp161,
	add	x0, x0, :lo12:.LC8	//, tmp161,
	bl	__assert_fail		//
.L22:
// problem97.c:59:     free(result);
	ldr	x0, [sp, 16]	//, result
	bl	free		//
// problem97.c:61:     result = func0(0, &count);
	add	x0, sp, 12	// tmp162,,
	mov	x1, x0	//, tmp162
	mov	w0, 0	//,
	bl	func0		//
	str	x0, [sp, 16]	//, result
// problem97.c:62:     assert(count == 0);
	ldr	w0, [sp, 12]	// count.4_9, count
	cmp	w0, 0	// count.4_9,
	beq	.L23		//,
// problem97.c:62:     assert(count == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp163,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp163,
	mov	w2, 62	//,
	adrp	x0, .LC5	// tmp164,
	add	x1, x0, :lo12:.LC5	//, tmp164,
	adrp	x0, .LC9	// tmp165,
	add	x0, x0, :lo12:.LC9	//, tmp165,
	bl	__assert_fail		//
.L23:
// problem97.c:63:     free(result);
	ldr	x0, [sp, 16]	//, result
	bl	free		//
// problem97.c:65:     result = func0(22, &count);
	add	x0, sp, 12	// tmp166,,
	mov	x1, x0	//, tmp166
	mov	w0, 22	//,
	bl	func0		//
	str	x0, [sp, 16]	//, result
// problem97.c:66:     assert(issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19}, 8));
	ldr	w4, [sp, 12]	// count.5_10, count
	adrp	x0, .LC2	// tmp168,
	add	x1, x0, :lo12:.LC2	// tmp167, tmp168,
	add	x0, sp, 24	// tmp169,,
	ldp	q0, q1, [x1]	// tmp171, tmp172,
	stp	q0, q1, [x0]	// tmp171, tmp172, MEM[(int[8] *)_99]
	add	x0, sp, 24	// tmp173,,
	mov	w3, 8	//,
	mov	x2, x0	//, tmp173
	mov	w1, w4	//, count.5_10
	ldr	x0, [sp, 16]	//, result
	bl	issame		//
// problem97.c:66:     assert(issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19}, 8));
	cmp	w0, 0	// _11,
	bne	.L24		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp174,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp174,
	mov	w2, 66	//,
	adrp	x0, .LC5	// tmp175,
	add	x1, x0, :lo12:.LC5	//, tmp175,
	adrp	x0, .LC10	// tmp176,
	add	x0, x0, :lo12:.LC10	//, tmp176,
	bl	__assert_fail		//
.L24:
// problem97.c:67:     free(result);
	ldr	x0, [sp, 16]	//, result
	bl	free		//
// problem97.c:69:     result = func0(1, &count);
	add	x0, sp, 12	// tmp177,,
	mov	x1, x0	//, tmp177
	mov	w0, 1	//,
	bl	func0		//
	str	x0, [sp, 16]	//, result
// problem97.c:70:     assert(count == 0);
	ldr	w0, [sp, 12]	// count.6_12, count
	cmp	w0, 0	// count.6_12,
	beq	.L25		//,
// problem97.c:70:     assert(count == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp178,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp178,
	mov	w2, 70	//,
	adrp	x0, .LC5	// tmp179,
	add	x1, x0, :lo12:.LC5	//, tmp179,
	adrp	x0, .LC9	// tmp180,
	add	x0, x0, :lo12:.LC9	//, tmp180,
	bl	__assert_fail		//
.L25:
// problem97.c:71:     free(result);
	ldr	x0, [sp, 16]	//, result
	bl	free		//
// problem97.c:73:     result = func0(18, &count);
	add	x0, sp, 12	// tmp181,,
	mov	x1, x0	//, tmp181
	mov	w0, 18	//,
	bl	func0		//
	str	x0, [sp, 16]	//, result
// problem97.c:74:     assert(issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17}, 7));
	ldr	w4, [sp, 12]	// count.7_13, count
	adrp	x0, .LC3	// tmp183,
	add	x1, x0, :lo12:.LC3	// tmp182, tmp183,
	add	x0, sp, 24	// tmp184,,
	ldr	q0, [x1]	// tmp186,
	str	q0, [x0]	// tmp186, MEM[(int[7] *)_99]
	ldr	q0, [x1, 12]	// tmp187,
	str	q0, [x0, 12]	// tmp187, MEM[(int[7] *)_99]
	add	x0, sp, 24	// tmp188,,
	mov	w3, 7	//,
	mov	x2, x0	//, tmp188
	mov	w1, w4	//, count.7_13
	ldr	x0, [sp, 16]	//, result
	bl	issame		//
// problem97.c:74:     assert(issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17}, 7));
	cmp	w0, 0	// _14,
	bne	.L26		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp189,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp189,
	mov	w2, 74	//,
	adrp	x0, .LC5	// tmp190,
	add	x1, x0, :lo12:.LC5	//, tmp190,
	adrp	x0, .LC11	// tmp191,
	add	x0, x0, :lo12:.LC11	//, tmp191,
	bl	__assert_fail		//
.L26:
// problem97.c:75:     free(result);
	ldr	x0, [sp, 16]	//, result
	bl	free		//
// problem97.c:77:     result = func0(47, &count);
	add	x0, sp, 12	// tmp192,,
	mov	x1, x0	//, tmp192
	mov	w0, 47	//,
	bl	func0		//
	str	x0, [sp, 16]	//, result
// problem97.c:78:     assert(issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43}, 14));
	ldr	w4, [sp, 12]	// count.8_15, count
	adrp	x0, .LC4	// tmp194,
	add	x1, x0, :lo12:.LC4	// tmp193, tmp194,
	add	x0, sp, 24	// tmp195,,
	ldp	q0, q1, [x1]	// tmp197, tmp198,
	stp	q0, q1, [x0]	// tmp197, tmp198, MEM[(int[14] *)_99]
	ldr	q0, [x1, 32]	// tmp199,
	str	q0, [x0, 32]	// tmp199, MEM[(int[14] *)_99]
	ldr	x1, [x1, 48]	// tmp200,
	str	x1, [x0, 48]	// tmp200, MEM[(int[14] *)_99]
	add	x0, sp, 24	// tmp201,,
	mov	w3, 14	//,
	mov	x2, x0	//, tmp201
	mov	w1, w4	//, count.8_15
	ldr	x0, [sp, 16]	//, result
	bl	issame		//
// problem97.c:78:     assert(issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43}, 14));
	cmp	w0, 0	// _16,
	bne	.L27		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp202,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp202,
	mov	w2, 78	//,
	adrp	x0, .LC5	// tmp203,
	add	x1, x0, :lo12:.LC5	//, tmp203,
	adrp	x0, .LC12	// tmp204,
	add	x0, x0, :lo12:.LC12	//, tmp204,
	bl	__assert_fail		//
.L27:
// problem97.c:79:     free(result);
	ldr	x0, [sp, 16]	//, result
	bl	free		//
// problem97.c:81:     result = func0(101, &count);
	add	x0, sp, 12	// tmp205,,
	mov	x1, x0	//, tmp205
	mov	w0, 101	//,
	bl	func0		//
	str	x0, [sp, 16]	//, result
// problem97.c:82:     assert(issame(result, count, expected, 25));
	ldr	w0, [sp, 12]	// count.9_17, count
	add	x1, sp, 80	// tmp206,,
	mov	w3, 25	//,
	mov	x2, x1	//, tmp206
	mov	w1, w0	//, count.9_17
	ldr	x0, [sp, 16]	//, result
	bl	issame		//
// problem97.c:82:     assert(issame(result, count, expected, 25));
	cmp	w0, 0	// _18,
	bne	.L28		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp207,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp207,
	mov	w2, 82	//,
	adrp	x0, .LC5	// tmp208,
	add	x1, x0, :lo12:.LC5	//, tmp208,
	adrp	x0, .LC13	// tmp209,
	add	x0, x0, :lo12:.LC13	//, tmp209,
	bl	__assert_fail		//
.L28:
// problem97.c:83:     free(result);
	ldr	x0, [sp, 16]	//, result
	bl	free		//
// problem97.c:85:     return 0;
	mov	w0, 0	// _87,
// problem97.c:86: }
	mov	w1, w0	// <retval>, _87
	adrp	x0, :got:__stack_chk_guard	// tmp211,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp211,
	ldr	x3, [sp, 184]	// tmp213, D.5686
	ldr	x2, [x0]	// tmp214,
	subs	x3, x3, x2	// tmp213, tmp214
	mov	x2, 0	// tmp214
	beq	.L30		//,
	bl	__stack_chk_fail		//
.L30:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 192]	//,,
	add	sp, sp, 208	//,,
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
	.word	2
	.word	3
	.word	5
	.word	7
	.word	11
	.word	13
	.word	17
	.word	19
	.word	23
	.word	29
	.word	31
	.word	37
	.word	41
	.word	43
	.word	47
	.word	53
	.word	59
	.word	61
	.word	67
	.word	71
	.word	73
	.word	79
	.word	83
	.word	89
	.word	97
	.align	3
.LC1:
	.word	2
	.word	3
	.word	5
	.align	3
.LC2:
	.word	2
	.word	3
	.word	5
	.word	7
	.word	11
	.word	13
	.word	17
	.word	19
	.align	3
.LC3:
	.word	2
	.word	3
	.word	5
	.word	7
	.word	11
	.word	13
	.word	17
	.align	3
.LC4:
	.word	2
	.word	3
	.word	5
	.word	7
	.word	11
	.word	13
	.word	17
	.word	19
	.word	23
	.word	29
	.word	31
	.word	37
	.word	41
	.word	43
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
