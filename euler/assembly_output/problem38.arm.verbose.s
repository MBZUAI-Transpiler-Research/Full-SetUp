	.arch armv8-a
	.file	"problem38.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"%u"
	.align	3
.LC2:
	.string	"%u\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
// problem38.c:16: {
	adrp	x0, :got:__stack_chk_guard	// tmp103,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp102, tmp103,
	ldr	x1, [x0]	// tmp140,
	str	x1, [sp, 88]	// tmp140, D.5003
	mov	x1, 0	// tmp140
// problem38.c:17:   unsigned max = 0;
	str	wzr, [sp, 40]	//, max
// problem38.c:20:   for (i = 1; i < N; i++) {
	mov	w0, 1	// tmp104,
	str	w0, [sp, 44]	// tmp104, i
// problem38.c:20:   for (i = 1; i < N; i++) {
	b	.L2		//
.L7:
// problem38.c:21:     char s[10] = {0};
	adrp	x0, .LC0	// tmp106,
	add	x0, x0, :lo12:.LC0	// tmp105, tmp106,
	ldrh	w0, [x0]	// tmp107,
	strh	w0, [sp, 56]	// tmp107, s
	str	xzr, [sp, 58]	//, s
// problem38.c:24:     snprintf(s, sizeof s, "%u", i);
	add	x4, sp, 56	// tmp108,,
	ldr	w3, [sp, 44]	//, i
	adrp	x0, .LC1	// tmp109,
	add	x2, x0, :lo12:.LC1	//, tmp109,
	mov	x1, 10	//,
	mov	x0, x4	//, tmp108
	bl	snprintf		//
// problem38.c:25:     for (j = 2; ; j++) {
	mov	w0, 2	// tmp110,
	str	w0, [sp, 48]	// tmp110, j
.L6:
// problem38.c:26:       char t[10] = {0};
	adrp	x0, .LC0	// tmp112,
	add	x0, x0, :lo12:.LC0	// tmp111, tmp112,
	ldrh	w0, [x0]	// tmp113,
	strh	w0, [sp, 72]	// tmp113, t
	str	xzr, [sp, 74]	//, t
// problem38.c:28:       snprintf(t, sizeof t, "%u", i*j);
	ldr	w1, [sp, 44]	// tmp114, i
	ldr	w0, [sp, 48]	// tmp115, j
	mul	w0, w1, w0	// _1, tmp114, tmp115
	add	x4, sp, 72	// tmp116,,
	mov	w3, w0	//, _1
	adrp	x0, .LC1	// tmp117,
	add	x2, x0, :lo12:.LC1	//, tmp117,
	mov	x1, 10	//,
	mov	x0, x4	//, tmp116
	bl	snprintf		//
// problem38.c:29:       if (strlen(s) + strlen(t) > 9) {
	add	x0, sp, 56	// tmp118,,
	bl	strlen		//
	mov	x19, x0	// _2,
// problem38.c:29:       if (strlen(s) + strlen(t) > 9) {
	add	x0, sp, 72	// tmp119,,
	bl	strlen		//
// problem38.c:29:       if (strlen(s) + strlen(t) > 9) {
	add	x0, x19, x0	// _4, _2, _3
// problem38.c:29:       if (strlen(s) + strlen(t) > 9) {
	cmp	x0, 9	// _4,
	bls	.L3		//,
// problem38.c:34:     if (is_pandigital(s)) {
	add	x0, sp, 56	// tmp120,,
	bl	is_pandigital		//
// problem38.c:34:     if (is_pandigital(s)) {
	cmp	w0, 0	// _7,
	bne	.L4		//,
	b	.L5		//
.L3:
// problem38.c:32:       strncat(s, t, sizeof s - strlen(s));
	add	x0, sp, 56	// tmp121,,
	bl	strlen		//
	mov	x1, x0	// _5,
// problem38.c:32:       strncat(s, t, sizeof s - strlen(s));
	mov	x0, 10	// tmp122,
	sub	x2, x0, x1	// _6, tmp122, _5
	add	x1, sp, 72	// tmp123,,
	add	x0, sp, 56	// tmp124,,
	bl	strncat		//
// problem38.c:25:     for (j = 2; ; j++) {
	ldr	w0, [sp, 48]	// tmp126, j
	add	w0, w0, 1	// tmp125, tmp126,
	str	w0, [sp, 48]	// tmp125, j
// problem38.c:25:     for (j = 2; ; j++) {
	b	.L6		//
.L4:
// problem38.c:35:       unsigned l = strtoul(s, NULL, 10);
	add	x0, sp, 56	// tmp127,,
	mov	w2, 10	//,
	mov	x1, 0	//,
	bl	strtoul		//
// problem38.c:35:       unsigned l = strtoul(s, NULL, 10);
	str	w0, [sp, 52]	// tmp128, l
// problem38.c:36:       if (l > max) {
	ldr	w1, [sp, 52]	// tmp129, l
	ldr	w0, [sp, 40]	// tmp130, max
	cmp	w1, w0	// tmp129, tmp130
	bls	.L5		//,
// problem38.c:37:         max = l;
	ldr	w0, [sp, 52]	// tmp131, l
	str	w0, [sp, 40]	// tmp131, max
.L5:
// problem38.c:20:   for (i = 1; i < N; i++) {
	ldr	w0, [sp, 44]	// tmp133, i
	add	w0, w0, 1	// tmp132, tmp133,
	str	w0, [sp, 44]	// tmp132, i
.L2:
// problem38.c:20:   for (i = 1; i < N; i++) {
	ldr	w1, [sp, 44]	// tmp134, i
	mov	w0, 9999	// tmp135,
	cmp	w1, w0	// tmp134, tmp135
	bls	.L7		//,
// problem38.c:41:   printf("%u\n", max);
	ldr	w1, [sp, 40]	//, max
	adrp	x0, .LC2	// tmp136,
	add	x0, x0, :lo12:.LC2	//, tmp136,
	bl	printf		//
// problem38.c:43:   return 0;
	mov	w0, 0	// _20,
// problem38.c:44: }
	mov	w1, w0	// <retval>, _20
	adrp	x0, :got:__stack_chk_guard	// tmp139,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp138, tmp139,
	ldr	x3, [sp, 88]	// tmp141, D.5003
	ldr	x2, [x0]	// tmp142,
	subs	x3, x3, x2	// tmp141, tmp142
	mov	x2, 0	// tmp142
	beq	.L9		//,
	bl	__stack_chk_fail		//
.L9:
	mov	w0, w1	//, <retval>
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.string	""
	.zero	8
	.text
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
	stp	x29, x30, [sp, -80]!	//,,,
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp	//,
	str	x0, [sp, 24]	// s, s
// problem38.c:52: {
	adrp	x0, :got:__stack_chk_guard	// tmp98,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp97, tmp98,
	ldr	x1, [x0]	// tmp113,
	str	x1, [sp, 72]	// tmp113, D.5009
	mov	x1, 0	// tmp113
// problem38.c:57:   l = strlen(s);
	ldr	x0, [sp, 24]	//, s
	bl	strlen		//
	str	x0, [sp, 48]	//, l
// problem38.c:58:   if (l != 9) {
	ldr	x0, [sp, 48]	// tmp99, l
	cmp	x0, 9	// tmp99,
	beq	.L13		//,
// problem38.c:59:     return 0;
	mov	w0, 0	// _5,
	b	.L18		//
.L13:
// problem38.c:61:   strncpy(t, s, sizeof t);
	add	x0, sp, 56	// tmp100,,
	mov	x2, 10	//,
	ldr	x1, [sp, 24]	//, s
	bl	strncpy		//
// problem38.c:62:   qsort(t, l, sizeof *t, compare);
	add	x4, sp, 56	// tmp101,,
	adrp	x0, compare	// tmp102,
	add	x3, x0, :lo12:compare	//, tmp102,
	mov	x2, 1	//,
	ldr	x1, [sp, 48]	//, l
	mov	x0, x4	//, tmp101
	bl	qsort		//
// problem38.c:63:   for (i = 0; i < l; i++) {
	str	xzr, [sp, 40]	//, i
// problem38.c:63:   for (i = 0; i < l; i++) {
	b	.L15		//
.L17:
// problem38.c:64:     if (t[i] != i+'1') {
	ldr	x0, [sp, 40]	// tmp103, i
	add	x1, sp, 56	// tmp104,,
	ldrb	w0, [x1, x0]	// _1, t[i_4]
	and	x1, x0, 255	// _2, _1
// problem38.c:64:     if (t[i] != i+'1') {
	ldr	x0, [sp, 40]	// tmp105, i
	add	x0, x0, 49	// _3, tmp105,
// problem38.c:64:     if (t[i] != i+'1') {
	cmp	x1, x0	// _2, _3
	beq	.L16		//,
// problem38.c:65:       return 0;
	mov	w0, 0	// _5,
	b	.L18		//
.L16:
// problem38.c:63:   for (i = 0; i < l; i++) {
	ldr	x0, [sp, 40]	// tmp107, i
	add	x0, x0, 1	// tmp106, tmp107,
	str	x0, [sp, 40]	// tmp106, i
.L15:
// problem38.c:63:   for (i = 0; i < l; i++) {
	ldr	x1, [sp, 40]	// tmp108, i
	ldr	x0, [sp, 48]	// tmp109, l
	cmp	x1, x0	// tmp108, tmp109
	bcc	.L17		//,
// problem38.c:68:   return 1;
	mov	w0, 1	// _5,
.L18:
// problem38.c:69: }
	mov	w1, w0	// <retval>, _5
	adrp	x0, :got:__stack_chk_guard	// tmp112,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp111, tmp112,
	ldr	x3, [sp, 72]	// tmp114, D.5009
	ldr	x2, [x0]	// tmp115,
	subs	x3, x3, x2	// tmp114, tmp115
	mov	x2, 0	// tmp115
	beq	.L19		//,
// problem38.c:69: }
	bl	__stack_chk_fail		//
.L19:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 80	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE8:
	.size	is_pandigital, .-is_pandigital
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
