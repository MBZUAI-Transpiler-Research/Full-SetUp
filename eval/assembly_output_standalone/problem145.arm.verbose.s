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
	stp	x29, x30, [sp, -272]!	//,,,
	.cfi_def_cfa_offset 272
	.cfi_offset 29, -272
	.cfi_offset 30, -264
	mov	x29, sp	//,
	str	x0, [sp, 24]	// x, x
	str	x1, [sp, 16]	// n, n
// eval/problem145//code.c:4: int func0(const char* x, const char* n){
	adrp	x0, :got:__stack_chk_guard	// tmp122,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp121, tmp122,
	ldr	x1, [x0]	// tmp191,
	str	x1, [sp, 264]	// tmp191, D.4796
	mov	x1, 0	// tmp191
// eval/problem145//code.c:8:     for (i = 0; x[i] != '/'; i++) {
	str	wzr, [sp, 32]	//, i
// eval/problem145//code.c:8:     for (i = 0; x[i] != '/'; i++) {
	b	.L2		//
.L3:
// eval/problem145//code.c:9:         num[i] = x[i];
	ldrsw	x0, [sp, 32]	// _1, i
	ldr	x1, [sp, 24]	// tmp123, x
	add	x0, x1, x0	// _2, tmp123, _1
	ldrb	w2, [x0]	// _3, *_2
// eval/problem145//code.c:9:         num[i] = x[i];
	ldrsw	x0, [sp, 32]	// tmp124, i
	add	x1, sp, 56	// tmp125,,
	strb	w2, [x1, x0]	// tmp126, num[i_28]
// eval/problem145//code.c:8:     for (i = 0; x[i] != '/'; i++) {
	ldr	w0, [sp, 32]	// tmp128, i
	add	w0, w0, 1	// tmp127, tmp128,
	str	w0, [sp, 32]	// tmp127, i
.L2:
// eval/problem145//code.c:8:     for (i = 0; x[i] != '/'; i++) {
	ldrsw	x0, [sp, 32]	// _4, i
	ldr	x1, [sp, 24]	// tmp129, x
	add	x0, x1, x0	// _5, tmp129, _4
	ldrb	w0, [x0]	// _6, *_5
// eval/problem145//code.c:8:     for (i = 0; x[i] != '/'; i++) {
	cmp	w0, 47	// _6,
	bne	.L3		//,
// eval/problem145//code.c:11:     num[i] = '\0';
	ldrsw	x0, [sp, 32]	// tmp130, i
	add	x1, sp, 56	// tmp131,,
	strb	wzr, [x1, x0]	//, num[i_28]
// eval/problem145//code.c:12:     a = atoi(num);
	add	x0, sp, 56	// tmp132,,
	bl	atoi		//
	str	w0, [sp, 40]	//, a
// eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	str	wzr, [sp, 36]	//, j
// eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	ldr	w0, [sp, 32]	// tmp134, i
	add	w0, w0, 1	// tmp133, tmp134,
	str	w0, [sp, 32]	// tmp133, i
// eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	b	.L4		//
.L5:
// eval/problem145//code.c:15:         den[j] = x[i];
	ldrsw	x0, [sp, 32]	// _7, i
	ldr	x1, [sp, 24]	// tmp135, x
	add	x0, x1, x0	// _8, tmp135, _7
	ldrb	w2, [x0]	// _9, *_8
// eval/problem145//code.c:15:         den[j] = x[i];
	ldrsw	x0, [sp, 36]	// tmp136, j
	add	x1, sp, 160	// tmp137,,
	strb	w2, [x1, x0]	// tmp138, den[j_32]
// eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	ldr	w0, [sp, 32]	// tmp140, i
	add	w0, w0, 1	// tmp139, tmp140,
	str	w0, [sp, 32]	// tmp139, i
// eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	ldr	w0, [sp, 36]	// tmp142, j
	add	w0, w0, 1	// tmp141, tmp142,
	str	w0, [sp, 36]	// tmp141, j
.L4:
// eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	ldrsw	x0, [sp, 32]	// _10, i
	ldr	x1, [sp, 24]	// tmp143, x
	add	x0, x1, x0	// _11, tmp143, _10
	ldrb	w0, [x0]	// _12, *_11
// eval/problem145//code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	cmp	w0, 0	// _12,
	bne	.L5		//,
// eval/problem145//code.c:17:     den[j] = '\0';
	ldrsw	x0, [sp, 36]	// tmp144, j
	add	x1, sp, 160	// tmp145,,
	strb	wzr, [x1, x0]	//, den[j_32]
// eval/problem145//code.c:18:     b = atoi(den);
	add	x0, sp, 160	// tmp146,,
	bl	atoi		//
	str	w0, [sp, 44]	//, b
// eval/problem145//code.c:20:     for (i = 0; n[i] != '/'; i++) {
	str	wzr, [sp, 32]	//, i
// eval/problem145//code.c:20:     for (i = 0; n[i] != '/'; i++) {
	b	.L6		//
.L7:
// eval/problem145//code.c:21:         num[i] = n[i];
	ldrsw	x0, [sp, 32]	// _13, i
	ldr	x1, [sp, 16]	// tmp147, n
	add	x0, x1, x0	// _14, tmp147, _13
	ldrb	w2, [x0]	// _15, *_14
// eval/problem145//code.c:21:         num[i] = n[i];
	ldrsw	x0, [sp, 32]	// tmp148, i
	add	x1, sp, 56	// tmp149,,
	strb	w2, [x1, x0]	// tmp150, num[i_30]
// eval/problem145//code.c:20:     for (i = 0; n[i] != '/'; i++) {
	ldr	w0, [sp, 32]	// tmp152, i
	add	w0, w0, 1	// tmp151, tmp152,
	str	w0, [sp, 32]	// tmp151, i
.L6:
// eval/problem145//code.c:20:     for (i = 0; n[i] != '/'; i++) {
	ldrsw	x0, [sp, 32]	// _16, i
	ldr	x1, [sp, 16]	// tmp153, n
	add	x0, x1, x0	// _17, tmp153, _16
	ldrb	w0, [x0]	// _18, *_17
// eval/problem145//code.c:20:     for (i = 0; n[i] != '/'; i++) {
	cmp	w0, 47	// _18,
	bne	.L7		//,
// eval/problem145//code.c:23:     num[i] = '\0';
	ldrsw	x0, [sp, 32]	// tmp154, i
	add	x1, sp, 56	// tmp155,,
	strb	wzr, [x1, x0]	//, num[i_30]
// eval/problem145//code.c:24:     c = atoi(num);
	add	x0, sp, 56	// tmp156,,
	bl	atoi		//
	str	w0, [sp, 48]	//, c
// eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	str	wzr, [sp, 36]	//, j
// eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	ldr	w0, [sp, 32]	// tmp158, i
	add	w0, w0, 1	// tmp157, tmp158,
	str	w0, [sp, 32]	// tmp157, i
// eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	b	.L8		//
.L9:
// eval/problem145//code.c:27:         den[j] = n[i];
	ldrsw	x0, [sp, 32]	// _19, i
	ldr	x1, [sp, 16]	// tmp159, n
	add	x0, x1, x0	// _20, tmp159, _19
	ldrb	w2, [x0]	// _21, *_20
// eval/problem145//code.c:27:         den[j] = n[i];
	ldrsw	x0, [sp, 36]	// tmp160, j
	add	x1, sp, 160	// tmp161,,
	strb	w2, [x1, x0]	// tmp162, den[j_33]
// eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	ldr	w0, [sp, 32]	// tmp164, i
	add	w0, w0, 1	// tmp163, tmp164,
	str	w0, [sp, 32]	// tmp163, i
// eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	ldr	w0, [sp, 36]	// tmp166, j
	add	w0, w0, 1	// tmp165, tmp166,
	str	w0, [sp, 36]	// tmp165, j
.L8:
// eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	ldrsw	x0, [sp, 32]	// _22, i
	ldr	x1, [sp, 16]	// tmp167, n
	add	x0, x1, x0	// _23, tmp167, _22
	ldrb	w0, [x0]	// _24, *_23
// eval/problem145//code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	cmp	w0, 0	// _24,
	bne	.L9		//,
// eval/problem145//code.c:29:     den[j] = '\0';
	ldrsw	x0, [sp, 36]	// tmp168, j
	add	x1, sp, 160	// tmp169,,
	strb	wzr, [x1, x0]	//, den[j_33]
// eval/problem145//code.c:30:     d = atoi(den);
	add	x0, sp, 160	// tmp170,,
	bl	atoi		//
	str	w0, [sp, 52]	//, d
// eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	ldr	w1, [sp, 40]	// tmp171, a
	ldr	w0, [sp, 48]	// tmp172, c
	mul	w0, w1, w0	// _25, tmp171, tmp172
// eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	ldr	w2, [sp, 44]	// tmp173, b
	ldr	w1, [sp, 52]	// tmp174, d
	mul	w1, w2, w1	// _26, tmp173, tmp174
// eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	sdiv	w2, w0, w1	// tmp186, _25, _26
	mul	w1, w2, w1	// tmp187, tmp186, _26
	sub	w0, w0, w1	// _27, _25, tmp187
// eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	cmp	w0, 0	// _27,
	bne	.L10		//,
// eval/problem145//code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	mov	w0, 1	// _34,
	b	.L12		//
.L10:
// eval/problem145//code.c:33:     return 0;
	mov	w0, 0	// _34,
.L12:
// eval/problem145//code.c:34: }
	mov	w1, w0	// <retval>, _34
	adrp	x0, :got:__stack_chk_guard	// tmp190,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp189, tmp190,
	ldr	x3, [sp, 264]	// tmp192, D.4796
	ldr	x2, [x0]	// tmp193,
	subs	x3, x3, x2	// tmp192, tmp193
	mov	x2, 0	// tmp193
	beq	.L13		//,
// eval/problem145//code.c:34: }
	bl	__stack_chk_fail		//
.L13:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 272	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
