	.arch armv8-a
	.file	"problem38.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%u"
	.align	3
.LC1:
	.string	"%u\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #96	//,,
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 64]	//,,
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 64	//,,
	str	x19, [sp, 80]	//,
	.cfi_offset 19, -16
// problem38.c:16: {
	adrp	x0, :got:__stack_chk_guard	// tmp102,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp102,
	ldr	x1, [x0]	// tmp132,
	str	x1, [sp, 56]	// tmp132, D.5619
	mov	x1, 0	// tmp132
// problem38.c:17:   unsigned max = 0;
	str	wzr, [sp, 8]	//, max
// problem38.c:20:   for (i = 1; i < N; i++) {
	mov	w0, 1	// tmp103,
	str	w0, [sp, 12]	// tmp103, i
// problem38.c:20:   for (i = 1; i < N; i++) {
	b	.L2		//
.L7:
// problem38.c:21:     char s[10] = {0};
	str	xzr, [sp, 24]	//, s
	strh	wzr, [sp, 32]	//, s
// problem38.c:24:     snprintf(s, sizeof s, "%u", i);
	add	x4, sp, 24	// tmp104,,
	ldr	w3, [sp, 12]	//, i
	adrp	x0, .LC0	// tmp105,
	add	x2, x0, :lo12:.LC0	//, tmp105,
	mov	x1, 10	//,
	mov	x0, x4	//, tmp104
	bl	snprintf		//
// problem38.c:25:     for (j = 2; ; j++) {
	mov	w0, 2	// tmp106,
	str	w0, [sp, 16]	// tmp106, j
.L6:
// problem38.c:26:       char t[10] = {0};
	str	xzr, [sp, 40]	//, t
	strh	wzr, [sp, 48]	//, t
// problem38.c:28:       snprintf(t, sizeof t, "%u", i*j);
	ldr	w1, [sp, 12]	// tmp107, i
	ldr	w0, [sp, 16]	// tmp108, j
	mul	w0, w1, w0	// _1, tmp107, tmp108
	add	x4, sp, 40	// tmp109,,
	mov	w3, w0	//, _1
	adrp	x0, .LC0	// tmp110,
	add	x2, x0, :lo12:.LC0	//, tmp110,
	mov	x1, 10	//,
	mov	x0, x4	//, tmp109
	bl	snprintf		//
// problem38.c:29:       if (strlen(s) + strlen(t) > 9) {
	add	x0, sp, 24	// tmp111,,
	bl	strlen		//
	mov	x19, x0	// _2,
// problem38.c:29:       if (strlen(s) + strlen(t) > 9) {
	add	x0, sp, 40	// tmp112,,
	bl	strlen		//
// problem38.c:29:       if (strlen(s) + strlen(t) > 9) {
	add	x0, x19, x0	// _4, _2, _3
// problem38.c:29:       if (strlen(s) + strlen(t) > 9) {
	cmp	x0, 9	// _4,
	bls	.L3		//,
// problem38.c:34:     if (is_pandigital(s)) {
	add	x0, sp, 24	// tmp113,,
	bl	is_pandigital		//
// problem38.c:34:     if (is_pandigital(s)) {
	cmp	w0, 0	// _7,
	bne	.L4		//,
	b	.L5		//
.L3:
// problem38.c:32:       strncat(s, t, sizeof s - strlen(s));
	add	x0, sp, 24	// tmp114,,
	bl	strlen		//
	mov	x1, x0	// _5,
// problem38.c:32:       strncat(s, t, sizeof s - strlen(s));
	mov	x0, 10	// tmp115,
	sub	x2, x0, x1	// _6, tmp115, _5
	add	x1, sp, 40	// tmp116,,
	add	x0, sp, 24	// tmp117,,
	bl	strncat		//
// problem38.c:25:     for (j = 2; ; j++) {
	ldr	w0, [sp, 16]	// tmp119, j
	add	w0, w0, 1	// tmp118, tmp119,
	str	w0, [sp, 16]	// tmp118, j
// problem38.c:25:     for (j = 2; ; j++) {
	b	.L6		//
.L4:
// problem38.c:35:       unsigned l = strtoul(s, NULL, 10);
	add	x0, sp, 24	// tmp120,,
	mov	w2, 10	//,
	mov	x1, 0	//,
	bl	strtoul		//
// problem38.c:35:       unsigned l = strtoul(s, NULL, 10);
	str	w0, [sp, 20]	// tmp121, l
// problem38.c:36:       if (l > max) {
	ldr	w1, [sp, 20]	// tmp122, l
	ldr	w0, [sp, 8]	// tmp123, max
	cmp	w1, w0	// tmp122, tmp123
	bls	.L5		//,
// problem38.c:37:         max = l;
	ldr	w0, [sp, 20]	// tmp124, l
	str	w0, [sp, 8]	// tmp124, max
.L5:
// problem38.c:20:   for (i = 1; i < N; i++) {
	ldr	w0, [sp, 12]	// tmp126, i
	add	w0, w0, 1	// tmp125, tmp126,
	str	w0, [sp, 12]	// tmp125, i
.L2:
// problem38.c:20:   for (i = 1; i < N; i++) {
	ldr	w1, [sp, 12]	// tmp127, i
	mov	w0, 9999	// tmp128,
	cmp	w1, w0	// tmp127, tmp128
	bls	.L7		//,
// problem38.c:41:   printf("%u\n", max);
	ldr	w1, [sp, 8]	//, max
	adrp	x0, .LC1	// tmp129,
	add	x0, x0, :lo12:.LC1	//, tmp129,
	bl	printf		//
// problem38.c:43:   return 0;
	mov	w0, 0	// _20,
// problem38.c:44: }
	mov	w1, w0	// <retval>, _20
	adrp	x0, :got:__stack_chk_guard	// tmp131,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp131,
	ldr	x3, [sp, 56]	// tmp133, D.5619
	ldr	x2, [x0]	// tmp134,
	subs	x3, x3, x2	// tmp133, tmp134
	mov	x2, 0	// tmp134
	beq	.L9		//,
	bl	__stack_chk_fail		//
.L9:
	mov	w0, w1	//, <retval>
	ldr	x19, [sp, 80]	//,
	ldp	x29, x30, [sp, 64]	//,,
	add	sp, sp, 96	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.align	2
	.type	compare, %function
compare:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// a, a
	str	x1, [sp]	// b, b
// problem38.c:48:   return *(const char *)a - *(const char *)b;
	ldr	x0, [sp, 8]	// tmp98, a
	ldrb	w0, [x0]	// _1, MEM[(const char *)a_6(D)]
	mov	w1, w0	// _2, _1
// problem38.c:48:   return *(const char *)a - *(const char *)b;
	ldr	x0, [sp]	// tmp99, b
	ldrb	w0, [x0]	// _3, MEM[(const char *)b_7(D)]
// problem38.c:48:   return *(const char *)a - *(const char *)b;
	sub	w0, w1, w0	// _8, _2, _4
// problem38.c:49: }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	compare, .-compare
	.align	2
	.type	is_pandigital, %function
is_pandigital:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #80	//,,
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64	//,,
	str	x0, [sp, 8]	// s, s
// problem38.c:52: {
	adrp	x0, :got:__stack_chk_guard	// tmp97,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp97,
	ldr	x1, [x0]	// tmp111,
	str	x1, [sp, 56]	// tmp111, D.5624
	mov	x1, 0	// tmp111
// problem38.c:57:   l = strlen(s);
	ldr	x0, [sp, 8]	//, s
	bl	strlen		//
	str	x0, [sp, 32]	//, l
// problem38.c:58:   if (l != 9) {
	ldr	x0, [sp, 32]	// tmp98, l
	cmp	x0, 9	// tmp98,
	beq	.L13		//,
// problem38.c:59:     return 0;
	mov	w0, 0	// _5,
	b	.L18		//
.L13:
// problem38.c:61:   strncpy(t, s, sizeof t);
	add	x0, sp, 40	// tmp99,,
	mov	x2, 10	//,
	ldr	x1, [sp, 8]	//, s
	bl	strncpy		//
// problem38.c:62:   qsort(t, l, sizeof *t, compare);
	add	x4, sp, 40	// tmp100,,
	adrp	x0, compare	// tmp101,
	add	x3, x0, :lo12:compare	//, tmp101,
	mov	x2, 1	//,
	ldr	x1, [sp, 32]	//, l
	mov	x0, x4	//, tmp100
	bl	qsort		//
// problem38.c:63:   for (i = 0; i < l; i++) {
	str	xzr, [sp, 24]	//, i
// problem38.c:63:   for (i = 0; i < l; i++) {
	b	.L15		//
.L17:
// problem38.c:64:     if (t[i] != i+'1') {
	ldr	x0, [sp, 24]	// tmp102, i
	add	x1, sp, 40	// tmp103,,
	ldrb	w0, [x1, x0]	// _1, t[i_4]
	and	x1, x0, 255	// _2, _1
// problem38.c:64:     if (t[i] != i+'1') {
	ldr	x0, [sp, 24]	// tmp104, i
	add	x0, x0, 49	// _3, tmp104,
// problem38.c:64:     if (t[i] != i+'1') {
	cmp	x1, x0	// _2, _3
	beq	.L16		//,
// problem38.c:65:       return 0;
	mov	w0, 0	// _5,
	b	.L18		//
.L16:
// problem38.c:63:   for (i = 0; i < l; i++) {
	ldr	x0, [sp, 24]	// tmp106, i
	add	x0, x0, 1	// tmp105, tmp106,
	str	x0, [sp, 24]	// tmp105, i
.L15:
// problem38.c:63:   for (i = 0; i < l; i++) {
	ldr	x1, [sp, 24]	// tmp107, i
	ldr	x0, [sp, 32]	// tmp108, l
	cmp	x1, x0	// tmp107, tmp108
	bcc	.L17		//,
// problem38.c:68:   return 1;
	mov	w0, 1	// _5,
.L18:
// problem38.c:69: }
	mov	w1, w0	// <retval>, _5
	adrp	x0, :got:__stack_chk_guard	// tmp110,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp110,
	ldr	x3, [sp, 56]	// tmp112, D.5624
	ldr	x2, [x0]	// tmp113,
	subs	x3, x3, x2	// tmp112, tmp113
	mov	x2, 0	// tmp113
	beq	.L19		//,
	bl	__stack_chk_fail		//
.L19:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 64]	//,,
	add	sp, sp, 80	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE8:
	.size	is_pandigital, .-is_pandigital
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
