	.arch armv8-a
	.file	"problem149.c"
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
	stp	x29, x30, [sp, -144]!	//,,,
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp	//,
	str	x0, [sp, 40]	// planet1, planet1
	str	x1, [sp, 32]	// planet2, planet2
	str	x2, [sp, 24]	// returnSize, returnSize
// problem149.c:5: char** func0(const char* planet1, const char* planet2, int* returnSize) {
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x1, [x0]	// tmp165,
	str	x1, [sp, 136]	// tmp165, D.5068
	mov	x1, 0	// tmp165
// problem149.c:6:     const char* planets[] = {"Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"};
	adrp	x0, .LC11	// tmp113,
	add	x1, x0, :lo12:.LC11	// tmp112, tmp113,
	add	x0, sp, 72	// tmp114,,
	ldp	q0, q1, [x1]	// tmp116, tmp117,
	stp	q0, q1, [x0]	// tmp116, tmp117, planets
	ldp	q0, q1, [x1, 32]	// tmp118, tmp119,
	stp	q0, q1, [x0, 32]	// tmp118, tmp119, planets
// problem149.c:7:     int pos1 = -1, pos2 = -1, m;
	mov	w0, -1	// tmp120,
	str	w0, [sp, 48]	// tmp120, pos1
// problem149.c:7:     int pos1 = -1, pos2 = -1, m;
	mov	w0, -1	// tmp121,
	str	w0, [sp, 52]	// tmp121, pos2
// problem149.c:8:     for (m = 0; m < 8; m++) {
	str	wzr, [sp, 56]	//, m
// problem149.c:8:     for (m = 0; m < 8; m++) {
	b	.L2		//
.L5:
// problem149.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	ldrsw	x0, [sp, 56]	// tmp122, m
	lsl	x0, x0, 3	// tmp123, tmp122,
	add	x1, sp, 72	// tmp124,,
	ldr	x0, [x1, x0]	// _1, planets[m_23]
	ldr	x1, [sp, 40]	//, planet1
	bl	strcmp		//
// problem149.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	cmp	w0, 0	// _2,
	bne	.L3		//,
// problem149.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	ldr	w0, [sp, 56]	// tmp125, m
	str	w0, [sp, 48]	// tmp125, pos1
.L3:
// problem149.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	ldrsw	x0, [sp, 56]	// tmp126, m
	lsl	x0, x0, 3	// tmp127, tmp126,
	add	x1, sp, 72	// tmp128,,
	ldr	x0, [x1, x0]	// _3, planets[m_23]
	ldr	x1, [sp, 32]	//, planet2
	bl	strcmp		//
// problem149.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	cmp	w0, 0	// _4,
	bne	.L4		//,
// problem149.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	ldr	w0, [sp, 56]	// tmp129, m
	str	w0, [sp, 52]	// tmp129, pos2
.L4:
// problem149.c:8:     for (m = 0; m < 8; m++) {
	ldr	w0, [sp, 56]	// tmp131, m
	add	w0, w0, 1	// tmp130, tmp131,
	str	w0, [sp, 56]	// tmp130, m
.L2:
// problem149.c:8:     for (m = 0; m < 8; m++) {
	ldr	w0, [sp, 56]	// tmp132, m
	cmp	w0, 7	// tmp132,
	ble	.L5		//,
// problem149.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	ldr	w0, [sp, 48]	// tmp133, pos1
	cmn	w0, #1	// tmp133,
	beq	.L6		//,
// problem149.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	ldr	w0, [sp, 52]	// tmp134, pos2
	cmn	w0, #1	// tmp134,
	beq	.L6		//,
// problem149.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	ldr	w1, [sp, 48]	// tmp135, pos1
	ldr	w0, [sp, 52]	// tmp136, pos2
	cmp	w1, w0	// tmp135, tmp136
	bne	.L7		//,
.L6:
// problem149.c:13:         *returnSize = 0;
	ldr	x0, [sp, 24]	// tmp137, returnSize
	str	wzr, [x0]	//, *returnSize_36(D)
// problem149.c:14:         return NULL;
	mov	x0, 0	// _25,
	b	.L13		//
.L7:
// problem149.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	ldr	w1, [sp, 48]	// tmp138, pos1
	ldr	w0, [sp, 52]	// tmp139, pos2
	cmp	w1, w0	// tmp138, tmp139
	ble	.L9		//,
// problem149.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	ldr	w0, [sp, 48]	// tmp140, pos1
	str	w0, [sp, 60]	// tmp140, temp
// problem149.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	ldr	w0, [sp, 52]	// tmp141, pos2
	str	w0, [sp, 48]	// tmp141, pos1
// problem149.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	ldr	w0, [sp, 60]	// tmp142, temp
	str	w0, [sp, 52]	// tmp142, pos2
.L9:
// problem149.c:17:     *returnSize = pos2 - pos1 - 1;
	ldr	w1, [sp, 52]	// tmp143, pos2
	ldr	w0, [sp, 48]	// tmp144, pos1
	sub	w0, w1, w0	// _5, tmp143, tmp144
// problem149.c:17:     *returnSize = pos2 - pos1 - 1;
	sub	w1, w0, #1	// _6, _5,
// problem149.c:17:     *returnSize = pos2 - pos1 - 1;
	ldr	x0, [sp, 24]	// tmp145, returnSize
	str	w1, [x0]	// _6, *returnSize_36(D)
// problem149.c:18:     if (*returnSize <= 0) {
	ldr	x0, [sp, 24]	// tmp146, returnSize
	ldr	w0, [x0]	// _7, *returnSize_36(D)
// problem149.c:18:     if (*returnSize <= 0) {
	cmp	w0, 0	// _7,
	bgt	.L10		//,
// problem149.c:19:         *returnSize = 0;
	ldr	x0, [sp, 24]	// tmp147, returnSize
	str	wzr, [x0]	//, *returnSize_36(D)
// problem149.c:20:         return NULL;
	mov	x0, 0	// _25,
	b	.L13		//
.L10:
// problem149.c:22:     char** out = malloc(*returnSize * sizeof(char*));
	ldr	x0, [sp, 24]	// tmp148, returnSize
	ldr	w0, [x0]	// _8, *returnSize_36(D)
	sxtw	x0, w0	// _9, _8
// problem149.c:22:     char** out = malloc(*returnSize * sizeof(char*));
	lsl	x0, x0, 3	// _10, _9,
	bl	malloc		//
	str	x0, [sp, 64]	// tmp149, out
// problem149.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	ldr	w0, [sp, 48]	// tmp151, pos1
	add	w0, w0, 1	// tmp150, tmp151,
	str	w0, [sp, 56]	// tmp150, m
// problem149.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	b	.L11		//
.L12:
// problem149.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	ldr	w1, [sp, 56]	// tmp152, m
	ldr	w0, [sp, 48]	// tmp153, pos1
	sub	w0, w1, w0	// _11, tmp152, tmp153
	sxtw	x0, w0	// _12, _11
// problem149.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	lsl	x0, x0, 3	// _13, _12,
	sub	x0, x0, #8	// _14, _13,
	ldr	x1, [sp, 64]	// tmp154, out
	add	x0, x1, x0	// _15, tmp154, _14
// problem149.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	ldrsw	x1, [sp, 56]	// tmp155, m
	lsl	x1, x1, 3	// tmp156, tmp155,
	add	x2, sp, 72	// tmp157,,
	ldr	x1, [x2, x1]	// _16, planets[m_24]
// problem149.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	str	x1, [x0]	// _16, *_15
// problem149.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	ldr	w0, [sp, 56]	// tmp159, m
	add	w0, w0, 1	// tmp158, tmp159,
	str	w0, [sp, 56]	// tmp158, m
.L11:
// problem149.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	ldr	w1, [sp, 56]	// tmp160, m
	ldr	w0, [sp, 52]	// tmp161, pos2
	cmp	w1, w0	// tmp160, tmp161
	blt	.L12		//,
// problem149.c:26:     return out;
	ldr	x0, [sp, 64]	// _25, out
.L13:
// problem149.c:27: }
	mov	x1, x0	// <retval>, _25
	adrp	x0, :got:__stack_chk_guard	// tmp164,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp163, tmp164,
	ldr	x3, [sp, 136]	// tmp166, D.5068
	ldr	x2, [x0]	// tmp167,
	subs	x3, x3, x2	// tmp166, tmp167
	mov	x2, 0	// tmp167
	beq	.L14		//,
// problem149.c:27: }
	bl	__stack_chk_fail		//
.L14:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp], 144	//,,,
	.cfi_restore 30
	.cfi_restore 29
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
	stp	x29, x30, [sp, -144]!	//,,,
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp	//,
// problem149.c:44: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp106,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp105, tmp106,
	ldr	x1, [x0]	// tmp179,
	str	x1, [sp, 136]	// tmp179, D.5072
	mov	x1, 0	// tmp179
// problem149.c:48:     const char* test1[] = {"Saturn", "Uranus"};
	adrp	x0, .LC5	// tmp108,
	add	x0, x0, :lo12:.LC5	// tmp107, tmp108,
	str	x0, [sp, 40]	// tmp107, test1[0]
	adrp	x0, .LC6	// tmp110,
	add	x0, x0, :lo12:.LC6	// tmp109, tmp110,
	str	x0, [sp, 48]	// tmp109, test1[1]
// problem149.c:49:     result = func0("Jupiter", "Neptune", &size);
	add	x0, sp, 20	// tmp111,,
	mov	x2, x0	//, tmp111
	adrp	x0, .LC7	// tmp112,
	add	x1, x0, :lo12:.LC7	//, tmp112,
	adrp	x0, .LC4	// tmp113,
	add	x0, x0, :lo12:.LC4	//, tmp113,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem149.c:50:     assert(issame(result, test1, size, 2));
	ldr	w1, [sp, 20]	// size.0_1, size
	add	x0, sp, 40	// tmp114,,
	mov	w3, 2	//,
	mov	w2, w1	//, size.0_1
	mov	x1, x0	//, tmp114
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _2,
	bne	.L22		//,
// problem149.c:50:     assert(issame(result, test1, size, 2));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp115,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp115,
	mov	w2, 50	//,
	adrp	x0, .LC12	// tmp116,
	add	x1, x0, :lo12:.LC12	//, tmp116,
	adrp	x0, .LC13	// tmp117,
	add	x0, x0, :lo12:.LC13	//, tmp117,
	bl	__assert_fail		//
.L22:
// problem149.c:51:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem149.c:53:     const char* test2[] = {"Venus"};
	adrp	x0, .LC1	// tmp119,
	add	x0, x0, :lo12:.LC1	// tmp118, tmp119,
	str	x0, [sp, 32]	// tmp118, test2[0]
// problem149.c:54:     result = func0("Earth", "Mercury", &size);
	add	x0, sp, 20	// tmp120,,
	mov	x2, x0	//, tmp120
	adrp	x0, .LC0	// tmp121,
	add	x1, x0, :lo12:.LC0	//, tmp121,
	adrp	x0, .LC2	// tmp122,
	add	x0, x0, :lo12:.LC2	//, tmp122,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem149.c:55:     assert(issame(result, test2, size, 1));
	ldr	w1, [sp, 20]	// size.1_3, size
	add	x0, sp, 32	// tmp123,,
	mov	w3, 1	//,
	mov	w2, w1	//, size.1_3
	mov	x1, x0	//, tmp123
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _4,
	bne	.L23		//,
// problem149.c:55:     assert(issame(result, test2, size, 1));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp124,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp124,
	mov	w2, 55	//,
	adrp	x0, .LC12	// tmp125,
	add	x1, x0, :lo12:.LC12	//, tmp125,
	adrp	x0, .LC14	// tmp126,
	add	x0, x0, :lo12:.LC14	//, tmp126,
	bl	__assert_fail		//
.L23:
// problem149.c:56:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem149.c:58:     const char* test3[] = {"Venus", "Earth", "Mars", "Jupiter", "Saturn"};
	adrp	x0, .LC15	// tmp128,
	add	x1, x0, :lo12:.LC15	// tmp127, tmp128,
	add	x0, sp, 56	// tmp129,,
	ldp	q0, q1, [x1]	// tmp131, tmp132,
	stp	q0, q1, [x0]	// tmp131, tmp132, test3
	ldr	x1, [x1, 32]	// tmp133,
	str	x1, [x0, 32]	// tmp133, test3
// problem149.c:59:     result = func0("Mercury", "Uranus", &size);
	add	x0, sp, 20	// tmp134,,
	mov	x2, x0	//, tmp134
	adrp	x0, .LC6	// tmp135,
	add	x1, x0, :lo12:.LC6	//, tmp135,
	adrp	x0, .LC0	// tmp136,
	add	x0, x0, :lo12:.LC0	//, tmp136,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem149.c:60:     assert(issame(result, test3, size, 5));
	ldr	w1, [sp, 20]	// size.2_5, size
	add	x0, sp, 56	// tmp137,,
	mov	w3, 5	//,
	mov	w2, w1	//, size.2_5
	mov	x1, x0	//, tmp137
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _6,
	bne	.L24		//,
// problem149.c:60:     assert(issame(result, test3, size, 5));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp138,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp138,
	mov	w2, 60	//,
	adrp	x0, .LC12	// tmp139,
	add	x1, x0, :lo12:.LC12	//, tmp139,
	adrp	x0, .LC16	// tmp140,
	add	x0, x0, :lo12:.LC16	//, tmp140,
	bl	__assert_fail		//
.L24:
// problem149.c:61:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem149.c:63:     const char* test4[] = {"Earth", "Mars", "Jupiter", "Saturn", "Uranus"};
	adrp	x0, .LC17	// tmp142,
	add	x1, x0, :lo12:.LC17	// tmp141, tmp142,
	add	x0, sp, 96	// tmp143,,
	ldp	q0, q1, [x1]	// tmp145, tmp146,
	stp	q0, q1, [x0]	// tmp145, tmp146, test4
	ldr	x1, [x1, 32]	// tmp147,
	str	x1, [x0, 32]	// tmp147, test4
// problem149.c:64:     result = func0("Neptune", "Venus", &size);
	add	x0, sp, 20	// tmp148,,
	mov	x2, x0	//, tmp148
	adrp	x0, .LC1	// tmp149,
	add	x1, x0, :lo12:.LC1	//, tmp149,
	adrp	x0, .LC7	// tmp150,
	add	x0, x0, :lo12:.LC7	//, tmp150,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem149.c:65:     assert(issame(result, test4, size, 5));
	ldr	w1, [sp, 20]	// size.3_7, size
	add	x0, sp, 96	// tmp151,,
	mov	w3, 5	//,
	mov	w2, w1	//, size.3_7
	mov	x1, x0	//, tmp151
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _8,
	bne	.L25		//,
// problem149.c:65:     assert(issame(result, test4, size, 5));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp152,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp152,
	mov	w2, 65	//,
	adrp	x0, .LC12	// tmp153,
	add	x1, x0, :lo12:.LC12	//, tmp153,
	adrp	x0, .LC18	// tmp154,
	add	x0, x0, :lo12:.LC18	//, tmp154,
	bl	__assert_fail		//
.L25:
// problem149.c:66:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem149.c:68:     result = func0("Earth", "Earth", &size);
	add	x0, sp, 20	// tmp155,,
	mov	x2, x0	//, tmp155
	adrp	x0, .LC2	// tmp156,
	add	x1, x0, :lo12:.LC2	//, tmp156,
	adrp	x0, .LC2	// tmp157,
	add	x0, x0, :lo12:.LC2	//, tmp157,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem149.c:69:     assert(size == 0 && result == NULL);
	ldr	w0, [sp, 20]	// size.4_9, size
	cmp	w0, 0	// size.4_9,
	bne	.L26		//,
// problem149.c:69:     assert(size == 0 && result == NULL);
	ldr	x0, [sp, 24]	// tmp158, result
	cmp	x0, 0	// tmp158,
	beq	.L34		//,
.L26:
// problem149.c:69:     assert(size == 0 && result == NULL);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp159,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp159,
	mov	w2, 69	//,
	adrp	x0, .LC12	// tmp160,
	add	x1, x0, :lo12:.LC12	//, tmp160,
	adrp	x0, .LC19	// tmp161,
	add	x0, x0, :lo12:.LC19	//, tmp161,
	bl	__assert_fail		//
.L34:
// problem149.c:71:     result = func0("Mars", "Earth", &size);
	add	x0, sp, 20	// tmp162,,
	mov	x2, x0	//, tmp162
	adrp	x0, .LC2	// tmp163,
	add	x1, x0, :lo12:.LC2	//, tmp163,
	adrp	x0, .LC3	// tmp164,
	add	x0, x0, :lo12:.LC3	//, tmp164,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem149.c:72:     assert(size == 0 && result == NULL);
	ldr	w0, [sp, 20]	// size.5_10, size
	cmp	w0, 0	// size.5_10,
	bne	.L28		//,
// problem149.c:72:     assert(size == 0 && result == NULL);
	ldr	x0, [sp, 24]	// tmp165, result
	cmp	x0, 0	// tmp165,
	beq	.L35		//,
.L28:
// problem149.c:72:     assert(size == 0 && result == NULL);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp166,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp166,
	mov	w2, 72	//,
	adrp	x0, .LC12	// tmp167,
	add	x1, x0, :lo12:.LC12	//, tmp167,
	adrp	x0, .LC19	// tmp168,
	add	x0, x0, :lo12:.LC19	//, tmp168,
	bl	__assert_fail		//
.L35:
// problem149.c:74:     result = func0("Jupiter", "Makemake", &size);
	add	x0, sp, 20	// tmp169,,
	mov	x2, x0	//, tmp169
	adrp	x0, .LC20	// tmp170,
	add	x1, x0, :lo12:.LC20	//, tmp170,
	adrp	x0, .LC4	// tmp171,
	add	x0, x0, :lo12:.LC4	//, tmp171,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem149.c:75:     assert(size == 0 && result == NULL);
	ldr	w0, [sp, 20]	// size.6_11, size
	cmp	w0, 0	// size.6_11,
	bne	.L30		//,
// problem149.c:75:     assert(size == 0 && result == NULL);
	ldr	x0, [sp, 24]	// tmp172, result
	cmp	x0, 0	// tmp172,
	beq	.L36		//,
.L30:
// problem149.c:75:     assert(size == 0 && result == NULL);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp173,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp173,
	mov	w2, 75	//,
	adrp	x0, .LC12	// tmp174,
	add	x1, x0, :lo12:.LC12	//, tmp174,
	adrp	x0, .LC19	// tmp175,
	add	x0, x0, :lo12:.LC19	//, tmp175,
	bl	__assert_fail		//
.L36:
// problem149.c:77:     return 0;
	mov	w0, 0	// _44,
// problem149.c:78: }
	mov	w1, w0	// <retval>, _44
	adrp	x0, :got:__stack_chk_guard	// tmp178,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp177, tmp178,
	ldr	x3, [sp, 136]	// tmp180, D.5072
	ldr	x2, [x0]	// tmp181,
	subs	x3, x3, x2	// tmp180, tmp181
	mov	x2, 0	// tmp181
	beq	.L33		//,
	bl	__stack_chk_fail		//
.L33:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 144	//,,,
	.cfi_restore 30
	.cfi_restore 29
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
