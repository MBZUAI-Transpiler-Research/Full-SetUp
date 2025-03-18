	.arch armv8-a
	.file	"code.c"
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
	sub	sp, sp, #272	//,,
	.cfi_def_cfa_offset 272
	stp	x29, x30, [sp, 256]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 256	//,,
	str	x0, [sp, 8]	// x, x
	str	x1, [sp]	// n, n
// eval/problem145//code.c:4: int func0(const char* x, const char* n){
	adrp	x0, :got:__stack_chk_guard	// tmp121,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp121,
	ldr	x1, [x0]	// tmp189,
	str	x1, [sp, 248]	// tmp189, D.5385
	mov	x1, 0	// tmp189
// eval/problem145//code.c:8:     for (i = 0; x[i] != '/'; i++) {
	str	wzr, [sp, 16]	//, i
// eval/problem145//code.c:8:     for (i = 0; x[i] != '/'; i++) {
	b	.L2		//
.L3:
// eval/problem145//code.c:9:         num[i] = x[i];
	ldrsw	x0, [sp, 16]	// _1, i
	ldr	x1, [sp, 8]	// tmp122, x
	add	x0, x1, x0	// _2, tmp122, _1
	ldrb	w2, [x0]	// _3, *_2
// eval/problem145//code.c:9:         num[i] = x[i];
	ldrsw	x0, [sp, 16]	// tmp123, i
	add	x1, sp, 40	// tmp124,,
	strb	w2, [x1, x0]	// tmp125, num[i_28]
// eval/problem145//code.c:8:     for (i = 0; x[i] != '/'; i++) {
	ldr	w0, [sp, 16]	// tmp127, i
	add	w0, w0, 1	// tmp126, tmp127,
	str	w0, [sp, 16]	// tmp126, i
.L2:
// eval/problem145//code.c:8:     for (i = 0; x[i] != '/'; i++) {
	ldrsw	x0, [sp, 16]	// _4, i
	ldr	x1, [sp, 8]	// tmp128, x
	add	x0, x1, x0	// _5, tmp128, _4
	ldrb	w0, [x0]	// _6, *_5
// eval/problem145//code.c:8:     for (i = 0; x[i] != '/'; i++) {
	cmp	w0, 47	// _6,
	bne	.L3		//,
// eval/problem145//code.c:11:     num[i] = '\0';
	ldrsw	x0, [sp, 16]	// tmp129, i
	add	x1, sp, 40	// tmp130,,
	strb	wzr, [x1, x0]	//, num[i_28]
// eval/problem145//code.c:12:     a = atoi(num);
	add	x0, sp, 40	// tmp131,,
	bl	atoi		//
	str	w0, [sp, 24]	//, a
// eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	str	wzr, [sp, 20]	//, j
// eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	ldr	w0, [sp, 16]	// tmp133, i
	add	w0, w0, 1	// tmp132, tmp133,
	str	w0, [sp, 16]	// tmp132, i
// eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	b	.L4		//
.L5:
// eval/problem145//code.c:15:         den[j] = x[i];
	ldrsw	x0, [sp, 16]	// _7, i
	ldr	x1, [sp, 8]	// tmp134, x
	add	x0, x1, x0	// _8, tmp134, _7
	ldrb	w2, [x0]	// _9, *_8
// eval/problem145//code.c:15:         den[j] = x[i];
	ldrsw	x0, [sp, 20]	// tmp135, j
	add	x1, sp, 144	// tmp136,,
	strb	w2, [x1, x0]	// tmp137, den[j_32]
// eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	ldr	w0, [sp, 16]	// tmp139, i
	add	w0, w0, 1	// tmp138, tmp139,
	str	w0, [sp, 16]	// tmp138, i
// eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	ldr	w0, [sp, 20]	// tmp141, j
	add	w0, w0, 1	// tmp140, tmp141,
	str	w0, [sp, 20]	// tmp140, j
.L4:
// eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	ldrsw	x0, [sp, 16]	// _10, i
	ldr	x1, [sp, 8]	// tmp142, x
	add	x0, x1, x0	// _11, tmp142, _10
	ldrb	w0, [x0]	// _12, *_11
// eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	cmp	w0, 0	// _12,
	bne	.L5		//,
// eval/problem145//code.c:17:     den[j] = '\0';
	ldrsw	x0, [sp, 20]	// tmp143, j
	add	x1, sp, 144	// tmp144,,
	strb	wzr, [x1, x0]	//, den[j_32]
// eval/problem145//code.c:18:     b = atoi(den);
	add	x0, sp, 144	// tmp145,,
	bl	atoi		//
	str	w0, [sp, 28]	//, b
// eval/problem145//code.c:20:     for (i = 0; n[i] != '/'; i++) {
	str	wzr, [sp, 16]	//, i
// eval/problem145//code.c:20:     for (i = 0; n[i] != '/'; i++) {
	b	.L6		//
.L7:
// eval/problem145//code.c:21:         num[i] = n[i];
	ldrsw	x0, [sp, 16]	// _13, i
	ldr	x1, [sp]	// tmp146, n
	add	x0, x1, x0	// _14, tmp146, _13
	ldrb	w2, [x0]	// _15, *_14
// eval/problem145//code.c:21:         num[i] = n[i];
	ldrsw	x0, [sp, 16]	// tmp147, i
	add	x1, sp, 40	// tmp148,,
	strb	w2, [x1, x0]	// tmp149, num[i_30]
// eval/problem145//code.c:20:     for (i = 0; n[i] != '/'; i++) {
	ldr	w0, [sp, 16]	// tmp151, i
	add	w0, w0, 1	// tmp150, tmp151,
	str	w0, [sp, 16]	// tmp150, i
.L6:
// eval/problem145//code.c:20:     for (i = 0; n[i] != '/'; i++) {
	ldrsw	x0, [sp, 16]	// _16, i
	ldr	x1, [sp]	// tmp152, n
	add	x0, x1, x0	// _17, tmp152, _16
	ldrb	w0, [x0]	// _18, *_17
// eval/problem145//code.c:20:     for (i = 0; n[i] != '/'; i++) {
	cmp	w0, 47	// _18,
	bne	.L7		//,
// eval/problem145//code.c:23:     num[i] = '\0';
	ldrsw	x0, [sp, 16]	// tmp153, i
	add	x1, sp, 40	// tmp154,,
	strb	wzr, [x1, x0]	//, num[i_30]
// eval/problem145//code.c:24:     c = atoi(num);
	add	x0, sp, 40	// tmp155,,
	bl	atoi		//
	str	w0, [sp, 32]	//, c
// eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	str	wzr, [sp, 20]	//, j
// eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	ldr	w0, [sp, 16]	// tmp157, i
	add	w0, w0, 1	// tmp156, tmp157,
	str	w0, [sp, 16]	// tmp156, i
// eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	b	.L8		//
.L9:
// eval/problem145//code.c:27:         den[j] = n[i];
	ldrsw	x0, [sp, 16]	// _19, i
	ldr	x1, [sp]	// tmp158, n
	add	x0, x1, x0	// _20, tmp158, _19
	ldrb	w2, [x0]	// _21, *_20
// eval/problem145//code.c:27:         den[j] = n[i];
	ldrsw	x0, [sp, 20]	// tmp159, j
	add	x1, sp, 144	// tmp160,,
	strb	w2, [x1, x0]	// tmp161, den[j_33]
// eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	ldr	w0, [sp, 16]	// tmp163, i
	add	w0, w0, 1	// tmp162, tmp163,
	str	w0, [sp, 16]	// tmp162, i
// eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	ldr	w0, [sp, 20]	// tmp165, j
	add	w0, w0, 1	// tmp164, tmp165,
	str	w0, [sp, 20]	// tmp164, j
.L8:
// eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	ldrsw	x0, [sp, 16]	// _22, i
	ldr	x1, [sp]	// tmp166, n
	add	x0, x1, x0	// _23, tmp166, _22
	ldrb	w0, [x0]	// _24, *_23
// eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	cmp	w0, 0	// _24,
	bne	.L9		//,
// eval/problem145//code.c:29:     den[j] = '\0';
	ldrsw	x0, [sp, 20]	// tmp167, j
	add	x1, sp, 144	// tmp168,,
	strb	wzr, [x1, x0]	//, den[j_33]
// eval/problem145//code.c:30:     d = atoi(den);
	add	x0, sp, 144	// tmp169,,
	bl	atoi		//
	str	w0, [sp, 36]	//, d
// eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	ldr	w1, [sp, 24]	// tmp170, a
	ldr	w0, [sp, 32]	// tmp171, c
	mul	w0, w1, w0	// _25, tmp170, tmp171
// eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	ldr	w2, [sp, 28]	// tmp172, b
	ldr	w1, [sp, 36]	// tmp173, d
	mul	w1, w2, w1	// _26, tmp172, tmp173
// eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	sdiv	w2, w0, w1	// tmp185, _25, _26
	mul	w1, w2, w1	// tmp186, tmp185, _26
	sub	w0, w0, w1	// _27, _25, tmp186
// eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	cmp	w0, 0	// _27,
	bne	.L10		//,
// eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	mov	w0, 1	// _34,
// eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	b	.L12		//
.L10:
// eval/problem145//code.c:33:     return 0;
	mov	w0, 0	// _34,
.L12:
// eval/problem145//code.c:34: }
	mov	w1, w0	// <retval>, _34
	adrp	x0, :got:__stack_chk_guard	// tmp188,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp188,
	ldr	x3, [sp, 248]	// tmp190, D.5385
	ldr	x2, [x0]	// tmp191,
	subs	x3, x3, x2	// tmp190, tmp191
	mov	x2, 0	// tmp191
	beq	.L13		//,
	bl	__stack_chk_fail		//
.L13:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 256]	//,,
	add	sp, sp, 272	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
