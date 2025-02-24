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
	sub	sp, sp, #112	//,,
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 80]	//,,
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 80	//,,
	str	x19, [sp, 96]	//,
	.cfi_offset 19, -16
	str	x0, [sp, 8]	// s, s
	str	w1, [sp, 4]	// n, n
// code.c:5: int func0(const char *s, int n) {
	adrp	x0, :got:__stack_chk_guard	// tmp119,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp119,
	ldr	x1, [x0]	// tmp143,
	str	x1, [sp, 72]	// tmp143, D.5490
	mov	x1, 0	// tmp143
// code.c:6:     char num1[10] = "";
	str	xzr, [sp, 40]	//, num1
	strh	wzr, [sp, 48]	//, num1
// code.c:7:     char num2[10] = "";
	str	xzr, [sp, 56]	//, num2
	strh	wzr, [sp, 64]	//, num2
// code.c:8:     int is12 = 0, j = 0;
	str	wzr, [sp, 28]	//, is12
// code.c:8:     int is12 = 0, j = 0;
	str	wzr, [sp, 32]	//, j
// code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	str	wzr, [sp, 36]	//, i
// code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	b	.L2		//
.L6:
// code.c:11:         if (isdigit(s[i])) {
	bl	__ctype_b_loc		//
// code.c:11:         if (isdigit(s[i])) {
	ldr	x1, [x0]	// _2, *_1
	ldrsw	x0, [sp, 36]	// _3, i
	ldr	x2, [sp, 8]	// tmp120, s
	add	x0, x2, x0	// _4, tmp120, _3
	ldrb	w0, [x0]	// _5, *_4
	and	x0, x0, 255	// _6, _5
	lsl	x0, x0, 1	// _7, _6,
	add	x0, x1, x0	// _8, _2, _7
	ldrh	w0, [x0]	// _9, *_8
	and	w0, w0, 2048	// _11, _10,
// code.c:11:         if (isdigit(s[i])) {
	cmp	w0, 0	// _11,
	beq	.L3		//,
// code.c:12:             if (is12 == 0) {
	ldr	w0, [sp, 28]	// tmp121, is12
	cmp	w0, 0	// tmp121,
	bne	.L4		//,
// code.c:13:                 num1[j++] = s[i];
	ldrsw	x0, [sp, 36]	// _12, i
	ldr	x1, [sp, 8]	// tmp122, s
	add	x1, x1, x0	// _13, tmp122, _12
// code.c:13:                 num1[j++] = s[i];
	ldr	w0, [sp, 32]	// j.0_14, j
	add	w2, w0, 1	// tmp123, j.0_14,
	str	w2, [sp, 32]	// tmp123, j
// code.c:13:                 num1[j++] = s[i];
	ldrb	w2, [x1]	// _15, *_13
// code.c:13:                 num1[j++] = s[i];
	sxtw	x0, w0	// tmp124, j.0_14
	add	x1, sp, 40	// tmp125,,
	strb	w2, [x1, x0]	// tmp126, num1[j.0_14]
	b	.L5		//
.L4:
// code.c:15:                 num2[j++] = s[i];
	ldrsw	x0, [sp, 36]	// _16, i
	ldr	x1, [sp, 8]	// tmp127, s
	add	x1, x1, x0	// _17, tmp127, _16
// code.c:15:                 num2[j++] = s[i];
	ldr	w0, [sp, 32]	// j.1_18, j
	add	w2, w0, 1	// tmp128, j.1_18,
	str	w2, [sp, 32]	// tmp128, j
// code.c:15:                 num2[j++] = s[i];
	ldrb	w2, [x1]	// _19, *_17
// code.c:15:                 num2[j++] = s[i];
	sxtw	x0, w0	// tmp129, j.1_18
	add	x1, sp, 56	// tmp130,,
	strb	w2, [x1, x0]	// tmp131, num2[j.1_18]
	b	.L5		//
.L3:
// code.c:18:             if (is12 == 0 && j > 0) {
	ldr	w0, [sp, 28]	// tmp132, is12
	cmp	w0, 0	// tmp132,
	bne	.L5		//,
// code.c:18:             if (is12 == 0 && j > 0) {
	ldr	w0, [sp, 32]	// tmp133, j
	cmp	w0, 0	// tmp133,
	ble	.L5		//,
// code.c:19:                 is12 = 1;
	mov	w0, 1	// tmp134,
	str	w0, [sp, 28]	// tmp134, is12
// code.c:20:                 j = 0;
	str	wzr, [sp, 32]	//, j
.L5:
// code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	ldr	w0, [sp, 36]	// tmp136, i
	add	w0, w0, 1	// tmp135, tmp136,
	str	w0, [sp, 36]	// tmp135, i
.L2:
// code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	ldrsw	x0, [sp, 36]	// _20, i
	ldr	x1, [sp, 8]	// tmp137, s
	add	x0, x1, x0	// _21, tmp137, _20
	ldrb	w0, [x0]	// _22, *_21
// code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	cmp	w0, 0	// _22,
	bne	.L6		//,
// code.c:24:     return n - atoi(num1) - atoi(num2);
	add	x0, sp, 40	// tmp138,,
	bl	atoi		//
	mov	w1, w0	// _23,
// code.c:24:     return n - atoi(num1) - atoi(num2);
	ldr	w0, [sp, 4]	// tmp139, n
	sub	w19, w0, w1	// _24, tmp139, _23
// code.c:24:     return n - atoi(num1) - atoi(num2);
	add	x0, sp, 56	// tmp140,,
	bl	atoi		//
// code.c:24:     return n - atoi(num1) - atoi(num2);
	sub	w0, w19, w0	// _41, _24, _25
// code.c:24:     return n - atoi(num1) - atoi(num2);
	mov	w1, w0	// <retval>, _41
// code.c:25: }
	adrp	x0, :got:__stack_chk_guard	// tmp142,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp142,
	ldr	x3, [sp, 72]	// tmp144, D.5490
	ldr	x2, [x0]	// tmp145,
	subs	x3, x3, x2	// tmp144, tmp145
	mov	x2, 0	// tmp145
	beq	.L8		//,
	bl	__stack_chk_fail		//
.L8:
	mov	w0, w1	//, <retval>
	ldr	x19, [sp, 96]	//,
	ldp	x29, x30, [sp, 80]	//,,
	add	sp, sp, 112	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
