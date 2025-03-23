	.arch armv8-a
	.file	"code.c"
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
// eval/problem149//code.c:5: char** func0(const char* planet1, const char* planet2, int* returnSize) {
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x1, [x0]	// tmp165,
	str	x1, [sp, 136]	// tmp165, D.4990
	mov	x1, 0	// tmp165
// eval/problem149//code.c:6:     const char* planets[] = {"Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"};
	adrp	x0, .LC9	// tmp113,
	add	x1, x0, :lo12:.LC9	// tmp112, tmp113,
	add	x0, sp, 72	// tmp114,,
	ldp	q0, q1, [x1]	// tmp116, tmp117,
	stp	q0, q1, [x0]	// tmp116, tmp117, planets
	ldp	q0, q1, [x1, 32]	// tmp118, tmp119,
	stp	q0, q1, [x0, 32]	// tmp118, tmp119, planets
// eval/problem149//code.c:7:     int pos1 = -1, pos2 = -1, m;
	mov	w0, -1	// tmp120,
	str	w0, [sp, 48]	// tmp120, pos1
// eval/problem149//code.c:7:     int pos1 = -1, pos2 = -1, m;
	mov	w0, -1	// tmp121,
	str	w0, [sp, 52]	// tmp121, pos2
// eval/problem149//code.c:8:     for (m = 0; m < 8; m++) {
	str	wzr, [sp, 56]	//, m
// eval/problem149//code.c:8:     for (m = 0; m < 8; m++) {
	b	.L2		//
.L5:
// eval/problem149//code.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	ldrsw	x0, [sp, 56]	// tmp122, m
	lsl	x0, x0, 3	// tmp123, tmp122,
	add	x1, sp, 72	// tmp124,,
	ldr	x0, [x1, x0]	// _1, planets[m_23]
	ldr	x1, [sp, 40]	//, planet1
	bl	strcmp		//
// eval/problem149//code.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	cmp	w0, 0	// _2,
	bne	.L3		//,
// eval/problem149//code.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	ldr	w0, [sp, 56]	// tmp125, m
	str	w0, [sp, 48]	// tmp125, pos1
.L3:
// eval/problem149//code.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	ldrsw	x0, [sp, 56]	// tmp126, m
	lsl	x0, x0, 3	// tmp127, tmp126,
	add	x1, sp, 72	// tmp128,,
	ldr	x0, [x1, x0]	// _3, planets[m_23]
	ldr	x1, [sp, 32]	//, planet2
	bl	strcmp		//
// eval/problem149//code.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	cmp	w0, 0	// _4,
	bne	.L4		//,
// eval/problem149//code.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	ldr	w0, [sp, 56]	// tmp129, m
	str	w0, [sp, 52]	// tmp129, pos2
.L4:
// eval/problem149//code.c:8:     for (m = 0; m < 8; m++) {
	ldr	w0, [sp, 56]	// tmp131, m
	add	w0, w0, 1	// tmp130, tmp131,
	str	w0, [sp, 56]	// tmp130, m
.L2:
// eval/problem149//code.c:8:     for (m = 0; m < 8; m++) {
	ldr	w0, [sp, 56]	// tmp132, m
	cmp	w0, 7	// tmp132,
	ble	.L5		//,
// eval/problem149//code.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	ldr	w0, [sp, 48]	// tmp133, pos1
	cmn	w0, #1	// tmp133,
	beq	.L6		//,
// eval/problem149//code.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	ldr	w0, [sp, 52]	// tmp134, pos2
	cmn	w0, #1	// tmp134,
	beq	.L6		//,
// eval/problem149//code.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	ldr	w1, [sp, 48]	// tmp135, pos1
	ldr	w0, [sp, 52]	// tmp136, pos2
	cmp	w1, w0	// tmp135, tmp136
	bne	.L7		//,
.L6:
// eval/problem149//code.c:13:         *returnSize = 0;
	ldr	x0, [sp, 24]	// tmp137, returnSize
	str	wzr, [x0]	//, *returnSize_36(D)
// eval/problem149//code.c:14:         return NULL;
	mov	x0, 0	// _25,
	b	.L13		//
.L7:
// eval/problem149//code.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	ldr	w1, [sp, 48]	// tmp138, pos1
	ldr	w0, [sp, 52]	// tmp139, pos2
	cmp	w1, w0	// tmp138, tmp139
	ble	.L9		//,
// eval/problem149//code.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	ldr	w0, [sp, 48]	// tmp140, pos1
	str	w0, [sp, 60]	// tmp140, temp
// eval/problem149//code.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	ldr	w0, [sp, 52]	// tmp141, pos2
	str	w0, [sp, 48]	// tmp141, pos1
// eval/problem149//code.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	ldr	w0, [sp, 60]	// tmp142, temp
	str	w0, [sp, 52]	// tmp142, pos2
.L9:
// eval/problem149//code.c:17:     *returnSize = pos2 - pos1 - 1;
	ldr	w1, [sp, 52]	// tmp143, pos2
	ldr	w0, [sp, 48]	// tmp144, pos1
	sub	w0, w1, w0	// _5, tmp143, tmp144
// eval/problem149//code.c:17:     *returnSize = pos2 - pos1 - 1;
	sub	w1, w0, #1	// _6, _5,
// eval/problem149//code.c:17:     *returnSize = pos2 - pos1 - 1;
	ldr	x0, [sp, 24]	// tmp145, returnSize
	str	w1, [x0]	// _6, *returnSize_36(D)
// eval/problem149//code.c:18:     if (*returnSize <= 0) {
	ldr	x0, [sp, 24]	// tmp146, returnSize
	ldr	w0, [x0]	// _7, *returnSize_36(D)
// eval/problem149//code.c:18:     if (*returnSize <= 0) {
	cmp	w0, 0	// _7,
	bgt	.L10		//,
// eval/problem149//code.c:19:         *returnSize = 0;
	ldr	x0, [sp, 24]	// tmp147, returnSize
	str	wzr, [x0]	//, *returnSize_36(D)
// eval/problem149//code.c:20:         return NULL;
	mov	x0, 0	// _25,
	b	.L13		//
.L10:
// eval/problem149//code.c:22:     char** out = malloc(*returnSize * sizeof(char*));
	ldr	x0, [sp, 24]	// tmp148, returnSize
	ldr	w0, [x0]	// _8, *returnSize_36(D)
	sxtw	x0, w0	// _9, _8
// eval/problem149//code.c:22:     char** out = malloc(*returnSize * sizeof(char*));
	lsl	x0, x0, 3	// _10, _9,
	bl	malloc		//
	str	x0, [sp, 64]	// tmp149, out
// eval/problem149//code.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	ldr	w0, [sp, 48]	// tmp151, pos1
	add	w0, w0, 1	// tmp150, tmp151,
	str	w0, [sp, 56]	// tmp150, m
// eval/problem149//code.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	b	.L11		//
.L12:
// eval/problem149//code.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	ldr	w1, [sp, 56]	// tmp152, m
	ldr	w0, [sp, 48]	// tmp153, pos1
	sub	w0, w1, w0	// _11, tmp152, tmp153
	sxtw	x0, w0	// _12, _11
// eval/problem149//code.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	lsl	x0, x0, 3	// _13, _12,
	sub	x0, x0, #8	// _14, _13,
	ldr	x1, [sp, 64]	// tmp154, out
	add	x0, x1, x0	// _15, tmp154, _14
// eval/problem149//code.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	ldrsw	x1, [sp, 56]	// tmp155, m
	lsl	x1, x1, 3	// tmp156, tmp155,
	add	x2, sp, 72	// tmp157,,
	ldr	x1, [x2, x1]	// _16, planets[m_24]
// eval/problem149//code.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	str	x1, [x0]	// _16, *_15
// eval/problem149//code.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	ldr	w0, [sp, 56]	// tmp159, m
	add	w0, w0, 1	// tmp158, tmp159,
	str	w0, [sp, 56]	// tmp158, m
.L11:
// eval/problem149//code.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	ldr	w1, [sp, 56]	// tmp160, m
	ldr	w0, [sp, 52]	// tmp161, pos2
	cmp	w1, w0	// tmp160, tmp161
	blt	.L12		//,
// eval/problem149//code.c:26:     return out;
	ldr	x0, [sp, 64]	// _25, out
.L13:
// eval/problem149//code.c:27: }
	mov	x1, x0	// <retval>, _25
	adrp	x0, :got:__stack_chk_guard	// tmp164,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp163, tmp164,
	ldr	x3, [sp, 136]	// tmp166, D.4990
	ldr	x2, [x0]	// tmp167,
	subs	x3, x3, x2	// tmp166, tmp167
	mov	x2, 0	// tmp167
	beq	.L14		//,
// eval/problem149//code.c:27: }
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
.LC9:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC5
	.xword	.LC6
	.xword	.LC7
	.text
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
