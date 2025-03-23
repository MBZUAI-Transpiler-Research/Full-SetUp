	.arch armv8-a
	.file	"problem26.c"
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
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	w0, [sp, 28]	// n, n
	str	x1, [sp, 16]	// size, size
// problem26.c:5:     int* out = malloc(sizeof(int) * 64);
	mov	x0, 256	//,
	bl	malloc		//
	str	x0, [sp, 40]	// tmp106, out
// problem26.c:6:     *size = 0;
	ldr	x0, [sp, 16]	// tmp107, size
	str	wzr, [x0]	//, *size_24(D)
// problem26.c:7:     for (int i = 2; i * i <= n; i++) {
	mov	w0, 2	// tmp108,
	str	w0, [sp, 36]	// tmp108, i
// problem26.c:7:     for (int i = 2; i * i <= n; i++) {
	b	.L2		//
.L4:
// problem26.c:9:             n = n / i;
	ldr	w1, [sp, 28]	// tmp111, n
	ldr	w0, [sp, 36]	// tmp112, i
	sdiv	w0, w1, w0	// tmp110, tmp111, tmp112
	str	w0, [sp, 28]	// tmp110, n
// problem26.c:10:             out[(*size)++] = i;
	ldr	x0, [sp, 16]	// tmp113, size
	ldr	w0, [x0]	// _1, *size_24(D)
// problem26.c:10:             out[(*size)++] = i;
	add	w2, w0, 1	// _3, _1,
	ldr	x1, [sp, 16]	// tmp114, size
	str	w2, [x1]	// _3, *size_24(D)
	sxtw	x0, w0	// _4, _1
// problem26.c:10:             out[(*size)++] = i;
	lsl	x0, x0, 2	// _5, _4,
	ldr	x1, [sp, 40]	// tmp115, out
	add	x0, x1, x0	// _6, tmp115, _5
// problem26.c:10:             out[(*size)++] = i;
	ldr	w1, [sp, 36]	// tmp116, i
	str	w1, [x0]	// tmp116, *_6
.L3:
// problem26.c:8:         while (n % i == 0) {
	ldr	w0, [sp, 28]	// tmp117, n
	ldr	w1, [sp, 36]	// tmp130, i
	sdiv	w2, w0, w1	// tmp129, tmp117, tmp130
	ldr	w1, [sp, 36]	// tmp132, i
	mul	w1, w2, w1	// tmp131, tmp129, tmp132
	sub	w0, w0, w1	// _7, tmp117, tmp131
// problem26.c:8:         while (n % i == 0) {
	cmp	w0, 0	// _7,
	beq	.L4		//,
// problem26.c:7:     for (int i = 2; i * i <= n; i++) {
	ldr	w0, [sp, 36]	// tmp134, i
	add	w0, w0, 1	// tmp133, tmp134,
	str	w0, [sp, 36]	// tmp133, i
.L2:
// problem26.c:7:     for (int i = 2; i * i <= n; i++) {
	ldr	w0, [sp, 36]	// tmp135, i
	mul	w0, w0, w0	// _8, tmp135, tmp135
// problem26.c:7:     for (int i = 2; i * i <= n; i++) {
	ldr	w1, [sp, 28]	// tmp136, n
	cmp	w1, w0	// tmp136, _8
	bge	.L3		//,
// problem26.c:13:     if (n > 1) {
	ldr	w0, [sp, 28]	// tmp137, n
	cmp	w0, 1	// tmp137,
	ble	.L6		//,
// problem26.c:14:         out[(*size)++] = n;
	ldr	x0, [sp, 16]	// tmp138, size
	ldr	w0, [x0]	// _9, *size_24(D)
// problem26.c:14:         out[(*size)++] = n;
	add	w2, w0, 1	// _11, _9,
	ldr	x1, [sp, 16]	// tmp139, size
	str	w2, [x1]	// _11, *size_24(D)
	sxtw	x0, w0	// _12, _9
// problem26.c:14:         out[(*size)++] = n;
	lsl	x0, x0, 2	// _13, _12,
	ldr	x1, [sp, 40]	// tmp140, out
	add	x0, x1, x0	// _14, tmp140, _13
// problem26.c:14:         out[(*size)++] = n;
	ldr	w1, [sp, 28]	// tmp141, n
	str	w1, [x0]	// tmp141, *_14
.L6:
// problem26.c:16:     return out;
	ldr	x0, [sp, 40]	// _30, out
// problem26.c:17: }
	ldp	x29, x30, [sp], 48	//,,,
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
// problem26.c:26:     if (a_size != b_size) return 0;
	ldr	w1, [sp, 20]	// tmp102, a_size
	ldr	w0, [sp, 16]	// tmp103, b_size
	cmp	w1, w0	// tmp102, tmp103
	beq	.L9		//,
// problem26.c:26:     if (a_size != b_size) return 0;
	mov	w0, 0	// _10,
	b	.L10		//
.L9:
// problem26.c:27:     for (int i = 0; i < a_size; i++) {
	str	wzr, [sp, 44]	//, i
// problem26.c:27:     for (int i = 0; i < a_size; i++) {
	b	.L11		//
.L13:
// problem26.c:28:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp104, a
	add	x0, x1, x0	// _3, tmp104, _2
	ldr	w1, [x0]	// _4, *_3
// problem26.c:28:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 8]	// tmp105, b
	add	x0, x2, x0	// _7, tmp105, _6
	ldr	w0, [x0]	// _8, *_7
// problem26.c:28:         if (a[i] != b[i]) return 0;
	cmp	w1, w0	// _4, _8
	beq	.L12		//,
// problem26.c:28:         if (a[i] != b[i]) return 0;
	mov	w0, 0	// _10,
	b	.L10		//
.L12:
// problem26.c:27:     for (int i = 0; i < a_size; i++) {
	ldr	w0, [sp, 44]	// tmp107, i
	add	w0, w0, 1	// tmp106, tmp107,
	str	w0, [sp, 44]	// tmp106, i
.L11:
// problem26.c:27:     for (int i = 0; i < a_size; i++) {
	ldr	w1, [sp, 44]	// tmp108, i
	ldr	w0, [sp, 20]	// tmp109, a_size
	cmp	w1, w0	// tmp108, tmp109
	blt	.L13		//,
// problem26.c:30:     return 1;
	mov	w0, 1	// _10,
.L10:
// problem26.c:31: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC3:
	.string	"problem26.c"
	.align	3
.LC4:
	.string	"issame(result, size, (int[]){2}, 1)"
	.align	3
.LC5:
	.string	"issame(result, size, (int[]){2, 2}, 2)"
	.align	3
.LC6:
	.string	"issame(result, size, (int[]){2, 2, 2}, 3)"
	.align	3
.LC7:
	.string	"issame(result, size, (int[]){3, 19}, 2)"
	.align	3
.LC8:
	.string	"issame(result, size, (int[]){3, 3, 19, 19}, 4)"
	.align	3
.LC9:
	.string	"issame(result, size, (int[]){3, 3, 3, 19, 19, 19}, 6)"
	.align	3
.LC10:
	.string	"issame(result, size, (int[]){3, 19, 19, 19}, 4)"
	.align	3
.LC11:
	.string	"issame(result, size, (int[]){2, 3, 3}, 3)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
// problem26.c:33: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x1, [x0]	// tmp186,
	str	x1, [sp, 56]	// tmp186, D.5055
	mov	x1, 0	// tmp186
// problem26.c:37:     result = func0(2, &size);
	add	x0, sp, 20	// tmp112,,
	mov	x1, x0	//, tmp112
	mov	w0, 2	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem26.c:38:     assert(issame(result, size, (int[]){2}, 1));
	ldr	w1, [sp, 20]	// size.0_1, size
	mov	w0, 2	// tmp113,
	str	w0, [sp, 32]	// tmp113, MEM[(int[1] *)_93][0]
	add	x0, sp, 32	// tmp114,,
	mov	w3, 1	//,
	mov	x2, x0	//, tmp114
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _2,
	bne	.L15		//,
// problem26.c:38:     assert(issame(result, size, (int[]){2}, 1));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp115,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp115,
	mov	w2, 38	//,
	adrp	x0, .LC3	// tmp116,
	add	x1, x0, :lo12:.LC3	//, tmp116,
	adrp	x0, .LC4	// tmp117,
	add	x0, x0, :lo12:.LC4	//, tmp117,
	bl	__assert_fail		//
.L15:
// problem26.c:39:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem26.c:41:     result = func0(4, &size);
	add	x0, sp, 20	// tmp118,,
	mov	x1, x0	//, tmp118
	mov	w0, 4	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem26.c:42:     assert(issame(result, size, (int[]){2, 2}, 2));
	ldr	w1, [sp, 20]	// size.1_3, size
	mov	w0, 2	// tmp119,
	str	w0, [sp, 32]	// tmp119, MEM[(int[2] *)_93][0]
	mov	w0, 2	// tmp120,
	str	w0, [sp, 36]	// tmp120, MEM[(int[2] *)_93][1]
	add	x0, sp, 32	// tmp121,,
	mov	w3, 2	//,
	mov	x2, x0	//, tmp121
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _4,
	bne	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp122,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp122,
	mov	w2, 42	//,
	adrp	x0, .LC3	// tmp123,
	add	x1, x0, :lo12:.LC3	//, tmp123,
	adrp	x0, .LC5	// tmp124,
	add	x0, x0, :lo12:.LC5	//, tmp124,
	bl	__assert_fail		//
.L16:
// problem26.c:43:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem26.c:45:     result = func0(8, &size);
	add	x0, sp, 20	// tmp125,,
	mov	x1, x0	//, tmp125
	mov	w0, 8	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem26.c:46:     assert(issame(result, size, (int[]){2, 2, 2}, 3));
	ldr	w4, [sp, 20]	// size.2_5, size
	adrp	x0, .LC0	// tmp127,
	add	x1, x0, :lo12:.LC0	// tmp126, tmp127,
	add	x0, sp, 32	// tmp128,,
	ldr	x2, [x1]	// tmp130,
	str	x2, [x0]	// tmp130, MEM[(int[3] *)_93]
	ldr	w1, [x1, 8]	// tmp131,
	str	w1, [x0, 8]	// tmp131, MEM[(int[3] *)_93]
	add	x0, sp, 32	// tmp132,,
	mov	w3, 3	//,
	mov	x2, x0	//, tmp132
	mov	w1, w4	//, size.2_5
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _6,
	bne	.L17		//,
// problem26.c:46:     assert(issame(result, size, (int[]){2, 2, 2}, 3));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp133,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp133,
	mov	w2, 46	//,
	adrp	x0, .LC3	// tmp134,
	add	x1, x0, :lo12:.LC3	//, tmp134,
	adrp	x0, .LC6	// tmp135,
	add	x0, x0, :lo12:.LC6	//, tmp135,
	bl	__assert_fail		//
.L17:
// problem26.c:47:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem26.c:49:     result = func0(3 * 19, &size);
	add	x0, sp, 20	// tmp136,,
	mov	x1, x0	//, tmp136
	mov	w0, 57	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem26.c:50:     assert(issame(result, size, (int[]){3, 19}, 2));
	ldr	w1, [sp, 20]	// size.3_7, size
	mov	w0, 3	// tmp137,
	str	w0, [sp, 32]	// tmp137, MEM[(int[2] *)_93][0]
	mov	w0, 19	// tmp138,
	str	w0, [sp, 36]	// tmp138, MEM[(int[2] *)_93][1]
	add	x0, sp, 32	// tmp139,,
	mov	w3, 2	//,
	mov	x2, x0	//, tmp139
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _8,
	bne	.L18		//,
// problem26.c:50:     assert(issame(result, size, (int[]){3, 19}, 2));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp140,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp140,
	mov	w2, 50	//,
	adrp	x0, .LC3	// tmp141,
	add	x1, x0, :lo12:.LC3	//, tmp141,
	adrp	x0, .LC7	// tmp142,
	add	x0, x0, :lo12:.LC7	//, tmp142,
	bl	__assert_fail		//
.L18:
// problem26.c:51:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem26.c:53:     result = func0(3 * 19 * 3 * 19, &size);
	add	x0, sp, 20	// tmp143,,
	mov	x1, x0	//, tmp143
	mov	w0, 3249	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem26.c:54:     assert(issame(result, size, (int[]){3, 3, 19, 19}, 4));
	ldr	w1, [sp, 20]	// size.4_9, size
	mov	w0, 3	// tmp144,
	str	w0, [sp, 32]	// tmp144, MEM[(int[4] *)_93][0]
	mov	w0, 3	// tmp145,
	str	w0, [sp, 36]	// tmp145, MEM[(int[4] *)_93][1]
	mov	w0, 19	// tmp146,
	str	w0, [sp, 40]	// tmp146, MEM[(int[4] *)_93][2]
	mov	w0, 19	// tmp147,
	str	w0, [sp, 44]	// tmp147, MEM[(int[4] *)_93][3]
	add	x0, sp, 32	// tmp148,,
	mov	w3, 4	//,
	mov	x2, x0	//, tmp148
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _10,
	bne	.L19		//,
// problem26.c:54:     assert(issame(result, size, (int[]){3, 3, 19, 19}, 4));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp149,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp149,
	mov	w2, 54	//,
	adrp	x0, .LC3	// tmp150,
	add	x1, x0, :lo12:.LC3	//, tmp150,
	adrp	x0, .LC8	// tmp151,
	add	x0, x0, :lo12:.LC8	//, tmp151,
	bl	__assert_fail		//
.L19:
// problem26.c:55:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem26.c:57:     result = func0(3 * 19 * 3 * 19 * 3 * 19, &size);
	add	x0, sp, 20	// tmp152,,
	mov	x1, x0	//, tmp152
	mov	w0, 54121	//,
	movk	w0, 0x2, lsl 16	//,,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem26.c:58:     assert(issame(result, size, (int[]){3, 3, 3, 19, 19, 19}, 6));
	ldr	w4, [sp, 20]	// size.5_11, size
	adrp	x0, .LC1	// tmp154,
	add	x0, x0, :lo12:.LC1	// tmp153, tmp154,
	add	x2, sp, 32	// tmp155,,
	mov	x3, x0	// tmp156, tmp153
	ldp	x0, x1, [x3]	// tmp157,
	stp	x0, x1, [x2]	// tmp157, MEM[(int[6] *)_93]
	ldr	x0, [x3, 16]	// tmp158,
	str	x0, [x2, 16]	// tmp158, MEM[(int[6] *)_93]
	add	x0, sp, 32	// tmp159,,
	mov	w3, 6	//,
	mov	x2, x0	//, tmp159
	mov	w1, w4	//, size.5_11
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _12,
	bne	.L20		//,
// problem26.c:58:     assert(issame(result, size, (int[]){3, 3, 3, 19, 19, 19}, 6));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp160,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp160,
	mov	w2, 58	//,
	adrp	x0, .LC3	// tmp161,
	add	x1, x0, :lo12:.LC3	//, tmp161,
	adrp	x0, .LC9	// tmp162,
	add	x0, x0, :lo12:.LC9	//, tmp162,
	bl	__assert_fail		//
.L20:
// problem26.c:59:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem26.c:61:     result = func0(3 * 19 * 19 * 19, &size);
	add	x0, sp, 20	// tmp163,,
	mov	x1, x0	//, tmp163
	mov	w0, 20577	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem26.c:62:     assert(issame(result, size, (int[]){3, 19, 19, 19}, 4));
	ldr	w1, [sp, 20]	// size.6_13, size
	mov	w0, 3	// tmp164,
	str	w0, [sp, 32]	// tmp164, MEM[(int[4] *)_93][0]
	mov	w0, 19	// tmp165,
	str	w0, [sp, 36]	// tmp165, MEM[(int[4] *)_93][1]
	mov	w0, 19	// tmp166,
	str	w0, [sp, 40]	// tmp166, MEM[(int[4] *)_93][2]
	mov	w0, 19	// tmp167,
	str	w0, [sp, 44]	// tmp167, MEM[(int[4] *)_93][3]
	add	x0, sp, 32	// tmp168,,
	mov	w3, 4	//,
	mov	x2, x0	//, tmp168
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _14,
	bne	.L21		//,
// problem26.c:62:     assert(issame(result, size, (int[]){3, 19, 19, 19}, 4));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp169,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp169,
	mov	w2, 62	//,
	adrp	x0, .LC3	// tmp170,
	add	x1, x0, :lo12:.LC3	//, tmp170,
	adrp	x0, .LC10	// tmp171,
	add	x0, x0, :lo12:.LC10	//, tmp171,
	bl	__assert_fail		//
.L21:
// problem26.c:63:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem26.c:65:     result = func0(3 * 2 * 3, &size);
	add	x0, sp, 20	// tmp172,,
	mov	x1, x0	//, tmp172
	mov	w0, 18	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem26.c:66:     assert(issame(result, size, (int[]){2, 3, 3}, 3));
	ldr	w4, [sp, 20]	// size.7_15, size
	adrp	x0, .LC2	// tmp174,
	add	x1, x0, :lo12:.LC2	// tmp173, tmp174,
	add	x0, sp, 32	// tmp175,,
	ldr	x2, [x1]	// tmp177,
	str	x2, [x0]	// tmp177, MEM[(int[3] *)_93]
	ldr	w1, [x1, 8]	// tmp178,
	str	w1, [x0, 8]	// tmp178, MEM[(int[3] *)_93]
	add	x0, sp, 32	// tmp179,,
	mov	w3, 3	//,
	mov	x2, x0	//, tmp179
	mov	w1, w4	//, size.7_15
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _16,
	bne	.L22		//,
// problem26.c:66:     assert(issame(result, size, (int[]){2, 3, 3}, 3));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp180,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp180,
	mov	w2, 66	//,
	adrp	x0, .LC3	// tmp181,
	add	x1, x0, :lo12:.LC3	//, tmp181,
	adrp	x0, .LC11	// tmp182,
	add	x0, x0, :lo12:.LC11	//, tmp182,
	bl	__assert_fail		//
.L22:
// problem26.c:67:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem26.c:69:     return 0;
	mov	w0, 0	// _82,
// problem26.c:70: }
	mov	w1, w0	// <retval>, _82
	adrp	x0, :got:__stack_chk_guard	// tmp185,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp184, tmp185,
	ldr	x3, [sp, 56]	// tmp187, D.5055
	ldr	x2, [x0]	// tmp188,
	subs	x3, x3, x2	// tmp187, tmp188
	mov	x2, 0	// tmp188
	beq	.L24		//,
// problem26.c:70: }
	bl	__stack_chk_fail		//
.L24:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 64	//,,,
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
	.word	2
	.word	2
	.word	2
	.align	3
.LC1:
	.word	3
	.word	3
	.word	3
	.word	19
	.word	19
	.word	19
	.align	3
.LC2:
	.word	2
	.word	3
	.word	3
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
