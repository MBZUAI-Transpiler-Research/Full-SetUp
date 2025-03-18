	.arch armv8-a
	.file	"problem149.c"
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
	sub	sp, sp, #144	//,,
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, 128]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 128	//,,
	str	x0, [sp, 24]	// planet1, planet1
	str	x1, [sp, 16]	// planet2, planet2
	str	x2, [sp, 8]	// returnSize, returnSize
// problem149.c:5: char** func0(const char* planet1, const char* planet2, int* returnSize) {
	adrp	x0, :got:__stack_chk_guard	// tmp110,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp110,
	ldr	x1, [x0]	// tmp163,
	str	x1, [sp, 120]	// tmp163, D.5684
	mov	x1, 0	// tmp163
// problem149.c:6:     const char* planets[] = {"Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"};
	adrp	x0, .LC11	// tmp112,
	add	x1, x0, :lo12:.LC11	// tmp111, tmp112,
	add	x0, sp, 56	// tmp113,,
	ldp	q0, q1, [x1]	// tmp115, tmp116,
	stp	q0, q1, [x0]	// tmp115, tmp116, planets
	ldp	q0, q1, [x1, 32]	// tmp117, tmp118,
	stp	q0, q1, [x0, 32]	// tmp117, tmp118, planets
// problem149.c:7:     int pos1 = -1, pos2 = -1, m;
	mov	w0, -1	// tmp119,
	str	w0, [sp, 32]	// tmp119, pos1
// problem149.c:7:     int pos1 = -1, pos2 = -1, m;
	mov	w0, -1	// tmp120,
	str	w0, [sp, 36]	// tmp120, pos2
// problem149.c:8:     for (m = 0; m < 8; m++) {
	str	wzr, [sp, 40]	//, m
// problem149.c:8:     for (m = 0; m < 8; m++) {
	b	.L2		//
.L5:
// problem149.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	ldrsw	x0, [sp, 40]	// tmp121, m
	lsl	x0, x0, 3	// tmp122, tmp121,
	add	x1, sp, 56	// tmp123,,
	ldr	x0, [x1, x0]	// _1, planets[m_23]
	ldr	x1, [sp, 24]	//, planet1
	bl	strcmp		//
// problem149.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	cmp	w0, 0	// _2,
	bne	.L3		//,
// problem149.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	ldr	w0, [sp, 40]	// tmp124, m
	str	w0, [sp, 32]	// tmp124, pos1
.L3:
// problem149.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	ldrsw	x0, [sp, 40]	// tmp125, m
	lsl	x0, x0, 3	// tmp126, tmp125,
	add	x1, sp, 56	// tmp127,,
	ldr	x0, [x1, x0]	// _3, planets[m_23]
	ldr	x1, [sp, 16]	//, planet2
	bl	strcmp		//
// problem149.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	cmp	w0, 0	// _4,
	bne	.L4		//,
// problem149.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	ldr	w0, [sp, 40]	// tmp128, m
	str	w0, [sp, 36]	// tmp128, pos2
.L4:
// problem149.c:8:     for (m = 0; m < 8; m++) {
	ldr	w0, [sp, 40]	// tmp130, m
	add	w0, w0, 1	// tmp129, tmp130,
	str	w0, [sp, 40]	// tmp129, m
.L2:
// problem149.c:8:     for (m = 0; m < 8; m++) {
	ldr	w0, [sp, 40]	// tmp131, m
	cmp	w0, 7	// tmp131,
	ble	.L5		//,
// problem149.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	ldr	w0, [sp, 32]	// tmp132, pos1
	cmn	w0, #1	// tmp132,
	beq	.L6		//,
// problem149.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	ldr	w0, [sp, 36]	// tmp133, pos2
	cmn	w0, #1	// tmp133,
	beq	.L6		//,
// problem149.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	ldr	w1, [sp, 32]	// tmp134, pos1
	ldr	w0, [sp, 36]	// tmp135, pos2
	cmp	w1, w0	// tmp134, tmp135
	bne	.L7		//,
.L6:
// problem149.c:13:         *returnSize = 0;
	ldr	x0, [sp, 8]	// tmp136, returnSize
	str	wzr, [x0]	//, *returnSize_36(D)
// problem149.c:14:         return NULL;
	mov	x0, 0	// _25,
	b	.L13		//
.L7:
// problem149.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	ldr	w1, [sp, 32]	// tmp137, pos1
	ldr	w0, [sp, 36]	// tmp138, pos2
	cmp	w1, w0	// tmp137, tmp138
	ble	.L9		//,
// problem149.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	ldr	w0, [sp, 32]	// tmp139, pos1
	str	w0, [sp, 44]	// tmp139, temp
// problem149.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	ldr	w0, [sp, 36]	// tmp140, pos2
	str	w0, [sp, 32]	// tmp140, pos1
// problem149.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	ldr	w0, [sp, 44]	// tmp141, temp
	str	w0, [sp, 36]	// tmp141, pos2
.L9:
// problem149.c:17:     *returnSize = pos2 - pos1 - 1;
	ldr	w1, [sp, 36]	// tmp142, pos2
	ldr	w0, [sp, 32]	// tmp143, pos1
	sub	w0, w1, w0	// _5, tmp142, tmp143
// problem149.c:17:     *returnSize = pos2 - pos1 - 1;
	sub	w1, w0, #1	// _6, _5,
// problem149.c:17:     *returnSize = pos2 - pos1 - 1;
	ldr	x0, [sp, 8]	// tmp144, returnSize
	str	w1, [x0]	// _6, *returnSize_36(D)
// problem149.c:18:     if (*returnSize <= 0) {
	ldr	x0, [sp, 8]	// tmp145, returnSize
	ldr	w0, [x0]	// _7, *returnSize_36(D)
// problem149.c:18:     if (*returnSize <= 0) {
	cmp	w0, 0	// _7,
	bgt	.L10		//,
// problem149.c:19:         *returnSize = 0;
	ldr	x0, [sp, 8]	// tmp146, returnSize
	str	wzr, [x0]	//, *returnSize_36(D)
// problem149.c:20:         return NULL;
	mov	x0, 0	// _25,
	b	.L13		//
.L10:
// problem149.c:22:     char** out = malloc(*returnSize * sizeof(char*));
	ldr	x0, [sp, 8]	// tmp147, returnSize
	ldr	w0, [x0]	// _8, *returnSize_36(D)
	sxtw	x0, w0	// _9, _8
// problem149.c:22:     char** out = malloc(*returnSize * sizeof(char*));
	lsl	x0, x0, 3	// _10, _9,
	bl	malloc		//
	str	x0, [sp, 48]	// tmp148, out
// problem149.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	ldr	w0, [sp, 32]	// tmp150, pos1
	add	w0, w0, 1	// tmp149, tmp150,
	str	w0, [sp, 40]	// tmp149, m
// problem149.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	b	.L11		//
.L12:
// problem149.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	ldr	w1, [sp, 40]	// tmp151, m
	ldr	w0, [sp, 32]	// tmp152, pos1
	sub	w0, w1, w0	// _11, tmp151, tmp152
	sxtw	x0, w0	// _12, _11
// problem149.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	lsl	x0, x0, 3	// _13, _12,
	sub	x0, x0, #8	// _14, _13,
	ldr	x1, [sp, 48]	// tmp153, out
	add	x0, x1, x0	// _15, tmp153, _14
// problem149.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	ldrsw	x1, [sp, 40]	// tmp154, m
	lsl	x1, x1, 3	// tmp155, tmp154,
	add	x2, sp, 56	// tmp156,,
	ldr	x1, [x2, x1]	// _16, planets[m_24]
// problem149.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	str	x1, [x0]	// _16, *_15
// problem149.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	ldr	w0, [sp, 40]	// tmp158, m
	add	w0, w0, 1	// tmp157, tmp158,
	str	w0, [sp, 40]	// tmp157, m
.L11:
// problem149.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	ldr	w1, [sp, 40]	// tmp159, m
	ldr	w0, [sp, 36]	// tmp160, pos2
	cmp	w1, w0	// tmp159, tmp160
	blt	.L12		//,
// problem149.c:26:     return out;
	ldr	x0, [sp, 48]	// _25, out
.L13:
// problem149.c:27: }
	mov	x1, x0	// <retval>, _25
	adrp	x0, :got:__stack_chk_guard	// tmp162,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp162,
	ldr	x3, [sp, 120]	// tmp164, D.5684
	ldr	x2, [x0]	// tmp165,
	subs	x3, x3, x2	// tmp164, tmp165
	mov	x2, 0	// tmp165
	beq	.L14		//,
	bl	__stack_chk_fail		//
.L14:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp, 128]	//,,
	add	sp, sp, 144	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"Mercury"
	.align	3
.LC1:
	.string	"Venus"
	.align	3
.LC2:
	.string	"Earth"
	.align	3
.LC3:
	.string	"Mars"
	.align	3
.LC4:
	.string	"Jupiter"
	.align	3
.LC5:
	.string	"Saturn"
	.align	3
.LC6:
	.string	"Uranus"
	.align	3
.LC7:
	.string	"Neptune"
	.data
	.align	3
.LC11:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC5
	.xword	.LC6
	.xword	.LC7
	.text
	.align	2
	.global	issame
	.type	issame, %function
issame:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 40]	// a, a
	str	x1, [sp, 32]	// b, b
	str	w2, [sp, 28]	// a_size, a_size
	str	w3, [sp, 24]	// b_size, b_size
// problem149.c:37:     if (a_size != b_size) return 0;
	ldr	w1, [sp, 28]	// tmp103, a_size
	ldr	w0, [sp, 24]	// tmp104, b_size
	cmp	w1, w0	// tmp103, tmp104
	beq	.L16		//,
// problem149.c:37:     if (a_size != b_size) return 0;
	mov	w0, 0	// _11,
// problem149.c:37:     if (a_size != b_size) return 0;
	b	.L17		//
.L16:
// problem149.c:38:     for (int i = 0; i < a_size; i++) {
	str	wzr, [sp, 60]	//, i
// problem149.c:38:     for (int i = 0; i < a_size; i++) {
	b	.L18		//
.L20:
// problem149.c:39:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldrsw	x0, [sp, 60]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 40]	// tmp105, a
	add	x0, x1, x0	// _3, tmp105, _2
// problem149.c:39:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldr	x2, [x0]	// _4, *_3
// problem149.c:39:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldrsw	x0, [sp, 60]	// _5, i
	lsl	x0, x0, 3	// _6, _5,
	ldr	x1, [sp, 32]	// tmp106, b
	add	x0, x1, x0	// _7, tmp106, _6
// problem149.c:39:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldr	x0, [x0]	// _8, *_7
	mov	x1, x0	//, _8
	mov	x0, x2	//, _4
	bl	strcmp		//
// problem149.c:39:         if (strcmp(a[i], b[i]) != 0) return 0;
	cmp	w0, 0	// _9,
	beq	.L19		//,
// problem149.c:39:         if (strcmp(a[i], b[i]) != 0) return 0;
	mov	w0, 0	// _11,
// problem149.c:39:         if (strcmp(a[i], b[i]) != 0) return 0;
	b	.L17		//
.L19:
// problem149.c:38:     for (int i = 0; i < a_size; i++) {
	ldr	w0, [sp, 60]	// tmp108, i
	add	w0, w0, 1	// tmp107, tmp108,
	str	w0, [sp, 60]	// tmp107, i
.L18:
// problem149.c:38:     for (int i = 0; i < a_size; i++) {
	ldr	w1, [sp, 60]	// tmp109, i
	ldr	w0, [sp, 28]	// tmp110, a_size
	cmp	w1, w0	// tmp109, tmp110
	blt	.L20		//,
// problem149.c:41:     return 1;
	mov	w0, 1	// _11,
.L17:
// problem149.c:42: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC12:
	.string	"problem149.c"
	.align	3
.LC13:
	.string	"issame(result, test1, size, 2)"
	.align	3
.LC14:
	.string	"issame(result, test2, size, 1)"
	.align	3
.LC16:
	.string	"issame(result, test3, size, 5)"
	.align	3
.LC18:
	.string	"issame(result, test4, size, 5)"
	.align	3
.LC19:
	.string	"size == 0 && result == NULL"
	.align	3
.LC20:
	.string	"Makemake"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #144	//,,
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, 128]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 128	//,,
// problem149.c:44: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp105,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp105,
	ldr	x1, [x0]	// tmp177,
	str	x1, [sp, 120]	// tmp177, D.5688
	mov	x1, 0	// tmp177
// problem149.c:48:     const char* test1[] = {"Saturn", "Uranus"};
	adrp	x0, .LC5	// tmp107,
	add	x0, x0, :lo12:.LC5	// tmp106, tmp107,
	str	x0, [sp, 24]	// tmp106, test1[0]
	adrp	x0, .LC6	// tmp109,
	add	x0, x0, :lo12:.LC6	// tmp108, tmp109,
	str	x0, [sp, 32]	// tmp108, test1[1]
// problem149.c:49:     result = func0("Jupiter", "Neptune", &size);
	add	x0, sp, 4	// tmp110,,
	mov	x2, x0	//, tmp110
	adrp	x0, .LC7	// tmp111,
	add	x1, x0, :lo12:.LC7	//, tmp111,
	adrp	x0, .LC4	// tmp112,
	add	x0, x0, :lo12:.LC4	//, tmp112,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem149.c:50:     assert(issame(result, test1, size, 2));
	ldr	w1, [sp, 4]	// size.0_1, size
	add	x0, sp, 24	// tmp113,,
	mov	w3, 2	//,
	mov	w2, w1	//, size.0_1
	mov	x1, x0	//, tmp113
	ldr	x0, [sp, 8]	//, result
	bl	issame		//
// problem149.c:50:     assert(issame(result, test1, size, 2));
	cmp	w0, 0	// _2,
	bne	.L22		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp114,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp114,
	mov	w2, 50	//,
	adrp	x0, .LC12	// tmp115,
	add	x1, x0, :lo12:.LC12	//, tmp115,
	adrp	x0, .LC13	// tmp116,
	add	x0, x0, :lo12:.LC13	//, tmp116,
	bl	__assert_fail		//
.L22:
// problem149.c:51:     free(result);
	ldr	x0, [sp, 8]	//, result
	bl	free		//
// problem149.c:53:     const char* test2[] = {"Venus"};
	adrp	x0, .LC1	// tmp118,
	add	x0, x0, :lo12:.LC1	// tmp117, tmp118,
	str	x0, [sp, 16]	// tmp117, test2[0]
// problem149.c:54:     result = func0("Earth", "Mercury", &size);
	add	x0, sp, 4	// tmp119,,
	mov	x2, x0	//, tmp119
	adrp	x0, .LC0	// tmp120,
	add	x1, x0, :lo12:.LC0	//, tmp120,
	adrp	x0, .LC2	// tmp121,
	add	x0, x0, :lo12:.LC2	//, tmp121,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem149.c:55:     assert(issame(result, test2, size, 1));
	ldr	w1, [sp, 4]	// size.1_3, size
	add	x0, sp, 16	// tmp122,,
	mov	w3, 1	//,
	mov	w2, w1	//, size.1_3
	mov	x1, x0	//, tmp122
	ldr	x0, [sp, 8]	//, result
	bl	issame		//
// problem149.c:55:     assert(issame(result, test2, size, 1));
	cmp	w0, 0	// _4,
	bne	.L23		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp123,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp123,
	mov	w2, 55	//,
	adrp	x0, .LC12	// tmp124,
	add	x1, x0, :lo12:.LC12	//, tmp124,
	adrp	x0, .LC14	// tmp125,
	add	x0, x0, :lo12:.LC14	//, tmp125,
	bl	__assert_fail		//
.L23:
// problem149.c:56:     free(result);
	ldr	x0, [sp, 8]	//, result
	bl	free		//
// problem149.c:58:     const char* test3[] = {"Venus", "Earth", "Mars", "Jupiter", "Saturn"};
	adrp	x0, .LC15	// tmp127,
	add	x1, x0, :lo12:.LC15	// tmp126, tmp127,
	add	x0, sp, 40	// tmp128,,
	ldp	q0, q1, [x1]	// tmp130, tmp131,
	stp	q0, q1, [x0]	// tmp130, tmp131, test3
	ldr	x1, [x1, 32]	// tmp132,
	str	x1, [x0, 32]	// tmp132, test3
// problem149.c:59:     result = func0("Mercury", "Uranus", &size);
	add	x0, sp, 4	// tmp133,,
	mov	x2, x0	//, tmp133
	adrp	x0, .LC6	// tmp134,
	add	x1, x0, :lo12:.LC6	//, tmp134,
	adrp	x0, .LC0	// tmp135,
	add	x0, x0, :lo12:.LC0	//, tmp135,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem149.c:60:     assert(issame(result, test3, size, 5));
	ldr	w1, [sp, 4]	// size.2_5, size
	add	x0, sp, 40	// tmp136,,
	mov	w3, 5	//,
	mov	w2, w1	//, size.2_5
	mov	x1, x0	//, tmp136
	ldr	x0, [sp, 8]	//, result
	bl	issame		//
// problem149.c:60:     assert(issame(result, test3, size, 5));
	cmp	w0, 0	// _6,
	bne	.L24		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp137,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp137,
	mov	w2, 60	//,
	adrp	x0, .LC12	// tmp138,
	add	x1, x0, :lo12:.LC12	//, tmp138,
	adrp	x0, .LC16	// tmp139,
	add	x0, x0, :lo12:.LC16	//, tmp139,
	bl	__assert_fail		//
.L24:
// problem149.c:61:     free(result);
	ldr	x0, [sp, 8]	//, result
	bl	free		//
// problem149.c:63:     const char* test4[] = {"Earth", "Mars", "Jupiter", "Saturn", "Uranus"};
	adrp	x0, .LC17	// tmp141,
	add	x1, x0, :lo12:.LC17	// tmp140, tmp141,
	add	x0, sp, 80	// tmp142,,
	ldp	q0, q1, [x1]	// tmp144, tmp145,
	stp	q0, q1, [x0]	// tmp144, tmp145, test4
	ldr	x1, [x1, 32]	// tmp146,
	str	x1, [x0, 32]	// tmp146, test4
// problem149.c:64:     result = func0("Neptune", "Venus", &size);
	add	x0, sp, 4	// tmp147,,
	mov	x2, x0	//, tmp147
	adrp	x0, .LC1	// tmp148,
	add	x1, x0, :lo12:.LC1	//, tmp148,
	adrp	x0, .LC7	// tmp149,
	add	x0, x0, :lo12:.LC7	//, tmp149,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem149.c:65:     assert(issame(result, test4, size, 5));
	ldr	w1, [sp, 4]	// size.3_7, size
	add	x0, sp, 80	// tmp150,,
	mov	w3, 5	//,
	mov	w2, w1	//, size.3_7
	mov	x1, x0	//, tmp150
	ldr	x0, [sp, 8]	//, result
	bl	issame		//
// problem149.c:65:     assert(issame(result, test4, size, 5));
	cmp	w0, 0	// _8,
	bne	.L25		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp151,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp151,
	mov	w2, 65	//,
	adrp	x0, .LC12	// tmp152,
	add	x1, x0, :lo12:.LC12	//, tmp152,
	adrp	x0, .LC18	// tmp153,
	add	x0, x0, :lo12:.LC18	//, tmp153,
	bl	__assert_fail		//
.L25:
// problem149.c:66:     free(result);
	ldr	x0, [sp, 8]	//, result
	bl	free		//
// problem149.c:68:     result = func0("Earth", "Earth", &size);
	add	x0, sp, 4	// tmp154,,
	mov	x2, x0	//, tmp154
	adrp	x0, .LC2	// tmp155,
	add	x1, x0, :lo12:.LC2	//, tmp155,
	adrp	x0, .LC2	// tmp156,
	add	x0, x0, :lo12:.LC2	//, tmp156,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem149.c:69:     assert(size == 0 && result == NULL);
	ldr	w0, [sp, 4]	// size.4_9, size
	cmp	w0, 0	// size.4_9,
	bne	.L26		//,
// problem149.c:69:     assert(size == 0 && result == NULL);
	ldr	x0, [sp, 8]	// tmp157, result
	cmp	x0, 0	// tmp157,
	beq	.L34		//,
.L26:
// problem149.c:69:     assert(size == 0 && result == NULL);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp158,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp158,
	mov	w2, 69	//,
	adrp	x0, .LC12	// tmp159,
	add	x1, x0, :lo12:.LC12	//, tmp159,
	adrp	x0, .LC19	// tmp160,
	add	x0, x0, :lo12:.LC19	//, tmp160,
	bl	__assert_fail		//
.L34:
// problem149.c:71:     result = func0("Mars", "Earth", &size);
	add	x0, sp, 4	// tmp161,,
	mov	x2, x0	//, tmp161
	adrp	x0, .LC2	// tmp162,
	add	x1, x0, :lo12:.LC2	//, tmp162,
	adrp	x0, .LC3	// tmp163,
	add	x0, x0, :lo12:.LC3	//, tmp163,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem149.c:72:     assert(size == 0 && result == NULL);
	ldr	w0, [sp, 4]	// size.5_10, size
	cmp	w0, 0	// size.5_10,
	bne	.L28		//,
// problem149.c:72:     assert(size == 0 && result == NULL);
	ldr	x0, [sp, 8]	// tmp164, result
	cmp	x0, 0	// tmp164,
	beq	.L35		//,
.L28:
// problem149.c:72:     assert(size == 0 && result == NULL);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp165,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp165,
	mov	w2, 72	//,
	adrp	x0, .LC12	// tmp166,
	add	x1, x0, :lo12:.LC12	//, tmp166,
	adrp	x0, .LC19	// tmp167,
	add	x0, x0, :lo12:.LC19	//, tmp167,
	bl	__assert_fail		//
.L35:
// problem149.c:74:     result = func0("Jupiter", "Makemake", &size);
	add	x0, sp, 4	// tmp168,,
	mov	x2, x0	//, tmp168
	adrp	x0, .LC20	// tmp169,
	add	x1, x0, :lo12:.LC20	//, tmp169,
	adrp	x0, .LC4	// tmp170,
	add	x0, x0, :lo12:.LC4	//, tmp170,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem149.c:75:     assert(size == 0 && result == NULL);
	ldr	w0, [sp, 4]	// size.6_11, size
	cmp	w0, 0	// size.6_11,
	bne	.L30		//,
// problem149.c:75:     assert(size == 0 && result == NULL);
	ldr	x0, [sp, 8]	// tmp171, result
	cmp	x0, 0	// tmp171,
	beq	.L36		//,
.L30:
// problem149.c:75:     assert(size == 0 && result == NULL);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp172,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp172,
	mov	w2, 75	//,
	adrp	x0, .LC12	// tmp173,
	add	x1, x0, :lo12:.LC12	//, tmp173,
	adrp	x0, .LC19	// tmp174,
	add	x0, x0, :lo12:.LC19	//, tmp174,
	bl	__assert_fail		//
.L36:
// problem149.c:77:     return 0;
	mov	w0, 0	// _44,
// problem149.c:78: }
	mov	w1, w0	// <retval>, _44
	adrp	x0, :got:__stack_chk_guard	// tmp176,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp176,
	ldr	x3, [sp, 120]	// tmp178, D.5688
	ldr	x2, [x0]	// tmp179,
	subs	x3, x3, x2	// tmp178, tmp179
	mov	x2, 0	// tmp179
	beq	.L33		//,
	bl	__stack_chk_fail		//
.L33:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 128]	//,,
	add	sp, sp, 144	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.data
	.align	3
.LC15:
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC5
	.align	3
.LC17:
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC5
	.xword	.LC6
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
