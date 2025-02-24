	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
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
// code.c:5: char** func0(const char* planet1, const char* planet2, int* returnSize) {
	adrp	x0, :got:__stack_chk_guard	// tmp110,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp110,
	ldr	x1, [x0]	// tmp163,
	str	x1, [sp, 120]	// tmp163, D.5606
	mov	x1, 0	// tmp163
// code.c:6:     const char* planets[] = {"Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"};
	adrp	x0, .LC9	// tmp112,
	add	x1, x0, :lo12:.LC9	// tmp111, tmp112,
	add	x0, sp, 56	// tmp113,,
	ldp	q0, q1, [x1]	// tmp115, tmp116,
	stp	q0, q1, [x0]	// tmp115, tmp116, planets
	ldp	q0, q1, [x1, 32]	// tmp117, tmp118,
	stp	q0, q1, [x0, 32]	// tmp117, tmp118, planets
// code.c:7:     int pos1 = -1, pos2 = -1, m;
	mov	w0, -1	// tmp119,
	str	w0, [sp, 32]	// tmp119, pos1
// code.c:7:     int pos1 = -1, pos2 = -1, m;
	mov	w0, -1	// tmp120,
	str	w0, [sp, 36]	// tmp120, pos2
// code.c:8:     for (m = 0; m < 8; m++) {
	str	wzr, [sp, 40]	//, m
// code.c:8:     for (m = 0; m < 8; m++) {
	b	.L2		//
.L5:
// code.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	ldrsw	x0, [sp, 40]	// tmp121, m
	lsl	x0, x0, 3	// tmp122, tmp121,
	add	x1, sp, 56	// tmp123,,
	ldr	x0, [x1, x0]	// _1, planets[m_23]
	ldr	x1, [sp, 24]	//, planet1
	bl	strcmp		//
// code.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	cmp	w0, 0	// _2,
	bne	.L3		//,
// code.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	ldr	w0, [sp, 40]	// tmp124, m
	str	w0, [sp, 32]	// tmp124, pos1
.L3:
// code.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	ldrsw	x0, [sp, 40]	// tmp125, m
	lsl	x0, x0, 3	// tmp126, tmp125,
	add	x1, sp, 56	// tmp127,,
	ldr	x0, [x1, x0]	// _3, planets[m_23]
	ldr	x1, [sp, 16]	//, planet2
	bl	strcmp		//
// code.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	cmp	w0, 0	// _4,
	bne	.L4		//,
// code.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	ldr	w0, [sp, 40]	// tmp128, m
	str	w0, [sp, 36]	// tmp128, pos2
.L4:
// code.c:8:     for (m = 0; m < 8; m++) {
	ldr	w0, [sp, 40]	// tmp130, m
	add	w0, w0, 1	// tmp129, tmp130,
	str	w0, [sp, 40]	// tmp129, m
.L2:
// code.c:8:     for (m = 0; m < 8; m++) {
	ldr	w0, [sp, 40]	// tmp131, m
	cmp	w0, 7	// tmp131,
	ble	.L5		//,
// code.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	ldr	w0, [sp, 32]	// tmp132, pos1
	cmn	w0, #1	// tmp132,
	beq	.L6		//,
// code.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	ldr	w0, [sp, 36]	// tmp133, pos2
	cmn	w0, #1	// tmp133,
	beq	.L6		//,
// code.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	ldr	w1, [sp, 32]	// tmp134, pos1
	ldr	w0, [sp, 36]	// tmp135, pos2
	cmp	w1, w0	// tmp134, tmp135
	bne	.L7		//,
.L6:
// code.c:13:         *returnSize = 0;
	ldr	x0, [sp, 8]	// tmp136, returnSize
	str	wzr, [x0]	//, *returnSize_36(D)
// code.c:14:         return NULL;
	mov	x0, 0	// _25,
	b	.L13		//
.L7:
// code.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	ldr	w1, [sp, 32]	// tmp137, pos1
	ldr	w0, [sp, 36]	// tmp138, pos2
	cmp	w1, w0	// tmp137, tmp138
	ble	.L9		//,
// code.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	ldr	w0, [sp, 32]	// tmp139, pos1
	str	w0, [sp, 44]	// tmp139, temp
// code.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	ldr	w0, [sp, 36]	// tmp140, pos2
	str	w0, [sp, 32]	// tmp140, pos1
// code.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	ldr	w0, [sp, 44]	// tmp141, temp
	str	w0, [sp, 36]	// tmp141, pos2
.L9:
// code.c:17:     *returnSize = pos2 - pos1 - 1;
	ldr	w1, [sp, 36]	// tmp142, pos2
	ldr	w0, [sp, 32]	// tmp143, pos1
	sub	w0, w1, w0	// _5, tmp142, tmp143
// code.c:17:     *returnSize = pos2 - pos1 - 1;
	sub	w1, w0, #1	// _6, _5,
// code.c:17:     *returnSize = pos2 - pos1 - 1;
	ldr	x0, [sp, 8]	// tmp144, returnSize
	str	w1, [x0]	// _6, *returnSize_36(D)
// code.c:18:     if (*returnSize <= 0) {
	ldr	x0, [sp, 8]	// tmp145, returnSize
	ldr	w0, [x0]	// _7, *returnSize_36(D)
// code.c:18:     if (*returnSize <= 0) {
	cmp	w0, 0	// _7,
	bgt	.L10		//,
// code.c:19:         *returnSize = 0;
	ldr	x0, [sp, 8]	// tmp146, returnSize
	str	wzr, [x0]	//, *returnSize_36(D)
// code.c:20:         return NULL;
	mov	x0, 0	// _25,
	b	.L13		//
.L10:
// code.c:22:     char** out = malloc(*returnSize * sizeof(char*));
	ldr	x0, [sp, 8]	// tmp147, returnSize
	ldr	w0, [x0]	// _8, *returnSize_36(D)
	sxtw	x0, w0	// _9, _8
// code.c:22:     char** out = malloc(*returnSize * sizeof(char*));
	lsl	x0, x0, 3	// _10, _9,
	bl	malloc		//
	str	x0, [sp, 48]	// tmp148, out
// code.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	ldr	w0, [sp, 32]	// tmp150, pos1
	add	w0, w0, 1	// tmp149, tmp150,
	str	w0, [sp, 40]	// tmp149, m
// code.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	b	.L11		//
.L12:
// code.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	ldr	w1, [sp, 40]	// tmp151, m
	ldr	w0, [sp, 32]	// tmp152, pos1
	sub	w0, w1, w0	// _11, tmp151, tmp152
	sxtw	x0, w0	// _12, _11
// code.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	lsl	x0, x0, 3	// _13, _12,
	sub	x0, x0, #8	// _14, _13,
	ldr	x1, [sp, 48]	// tmp153, out
	add	x0, x1, x0	// _15, tmp153, _14
// code.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	ldrsw	x1, [sp, 40]	// tmp154, m
	lsl	x1, x1, 3	// tmp155, tmp154,
	add	x2, sp, 56	// tmp156,,
	ldr	x1, [x2, x1]	// _16, planets[m_24]
// code.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	str	x1, [x0]	// _16, *_15
// code.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	ldr	w0, [sp, 40]	// tmp158, m
	add	w0, w0, 1	// tmp157, tmp158,
	str	w0, [sp, 40]	// tmp157, m
.L11:
// code.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	ldr	w1, [sp, 40]	// tmp159, m
	ldr	w0, [sp, 36]	// tmp160, pos2
	cmp	w1, w0	// tmp159, tmp160
	blt	.L12		//,
// code.c:26:     return out;
	ldr	x0, [sp, 48]	// _25, out
.L13:
// code.c:27: }
	mov	x1, x0	// <retval>, _25
	adrp	x0, :got:__stack_chk_guard	// tmp162,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp162,
	ldr	x3, [sp, 120]	// tmp164, D.5606
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
