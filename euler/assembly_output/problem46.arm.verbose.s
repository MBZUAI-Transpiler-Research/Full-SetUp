	.arch armv8-a
	.file	"problem46.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%u\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
// problem46.c:17:   char *sieve = prime_sieve(N);
	mov	w0, 10000	//,
	bl	prime_sieve		//
	str	x0, [sp, 32]	//, sieve
// problem46.c:18:   unsigned *primes = malloc(sizeof(unsigned) * N);
	mov	x0, 40000	//,
	bl	malloc		//
	str	x0, [sp, 40]	// tmp121, primes
// problem46.c:19:   unsigned i, j = 0;
	str	wzr, [sp, 24]	//, j
// problem46.c:21:   for (i = 0; i < N; i++) {
	str	wzr, [sp, 20]	//, i
// problem46.c:21:   for (i = 0; i < N; i++) {
	b	.L2		//
.L4:
// problem46.c:22:     if (!sieve[i]) {
	ldr	w0, [sp, 20]	// _1, i
	ldr	x1, [sp, 32]	// tmp122, sieve
	add	x0, x1, x0	// _2, tmp122, _1
	ldrb	w0, [x0]	// _3, *_2
// problem46.c:22:     if (!sieve[i]) {
	cmp	w0, 0	// _3,
	bne	.L3		//,
// problem46.c:23:       primes[j++] = i;
	ldr	w0, [sp, 24]	// j.0_4, j
	add	w1, w0, 1	// tmp123, j.0_4,
	str	w1, [sp, 24]	// tmp123, j
	uxtw	x0, w0	// _5, j.0_4
// problem46.c:23:       primes[j++] = i;
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 40]	// tmp124, primes
	add	x0, x1, x0	// _7, tmp124, _6
// problem46.c:23:       primes[j++] = i;
	ldr	w1, [sp, 20]	// tmp125, i
	str	w1, [x0]	// tmp125, *_7
.L3:
// problem46.c:21:   for (i = 0; i < N; i++) {
	ldr	w0, [sp, 20]	// tmp127, i
	add	w0, w0, 1	// tmp126, tmp127,
	str	w0, [sp, 20]	// tmp126, i
.L2:
// problem46.c:21:   for (i = 0; i < N; i++) {
	ldr	w1, [sp, 20]	// tmp128, i
	mov	w0, 9999	// tmp129,
	cmp	w1, w0	// tmp128, tmp129
	bls	.L4		//,
// problem46.c:26:   primes[j] = 0;
	ldr	w0, [sp, 24]	// _8, j
	lsl	x0, x0, 2	// _9, _8,
	ldr	x1, [sp, 40]	// tmp130, primes
	add	x0, x1, x0	// _10, tmp130, _9
// problem46.c:26:   primes[j] = 0;
	str	wzr, [x0]	//, *_10
// problem46.c:28:   for (i = 3; i < N; i += 2) {
	mov	w0, 3	// tmp131,
	str	w0, [sp, 20]	// tmp131, i
// problem46.c:28:   for (i = 3; i < N; i += 2) {
	b	.L5		//
.L13:
// problem46.c:29:     if (!sieve[i]) {
	ldr	w0, [sp, 20]	// _11, i
	ldr	x1, [sp, 32]	// tmp132, sieve
	add	x0, x1, x0	// _12, tmp132, _11
	ldrb	w0, [x0]	// _13, *_12
// problem46.c:29:     if (!sieve[i]) {
	cmp	w0, 0	// _13,
	beq	.L15		//,
// problem46.c:33:     for (j = 0; primes[j]; j++) {
	str	wzr, [sp, 24]	//, j
// problem46.c:33:     for (j = 0; primes[j]; j++) {
	b	.L8		//
.L12:
// problem46.c:36:       if (primes[j] > i) {
	ldr	w0, [sp, 24]	// _14, j
	lsl	x0, x0, 2	// _15, _14,
	ldr	x1, [sp, 40]	// tmp133, primes
	add	x0, x1, x0	// _16, tmp133, _15
	ldr	w0, [x0]	// _17, *_16
// problem46.c:36:       if (primes[j] > i) {
	ldr	w1, [sp, 20]	// tmp134, i
	cmp	w1, w0	// tmp134, _17
	bcs	.L9		//,
// problem46.c:37:         printf("%u\n", i);
	ldr	w1, [sp, 20]	//, i
	adrp	x0, .LC0	// tmp135,
	add	x0, x0, :lo12:.LC0	//, tmp135,
	bl	printf		//
// problem46.c:38:         goto FINISH;
	b	.L10		//
.L9:
// problem46.c:41:       s = (i - primes[j])/2;
	ldr	w0, [sp, 24]	// _18, j
	lsl	x0, x0, 2	// _19, _18,
	ldr	x1, [sp, 40]	// tmp136, primes
	add	x0, x1, x0	// _20, tmp136, _19
	ldr	w0, [x0]	// _21, *_20
// problem46.c:41:       s = (i - primes[j])/2;
	ldr	w1, [sp, 20]	// tmp137, i
	sub	w0, w1, w0	// _22, tmp137, _21
// problem46.c:41:       s = (i - primes[j])/2;
	lsr	w0, w0, 1	// tmp138, _22,
	str	w0, [sp, 28]	// tmp138, s
// problem46.c:42:       if (is_square(s)) {
	ldr	w0, [sp, 28]	//, s
	bl	is_square		//
// problem46.c:42:       if (is_square(s)) {
	cmp	w0, 0	// _23,
	bne	.L16		//,
// problem46.c:33:     for (j = 0; primes[j]; j++) {
	ldr	w0, [sp, 24]	// tmp140, j
	add	w0, w0, 1	// tmp139, tmp140,
	str	w0, [sp, 24]	// tmp139, j
.L8:
// problem46.c:33:     for (j = 0; primes[j]; j++) {
	ldr	w0, [sp, 24]	// _24, j
	lsl	x0, x0, 2	// _25, _24,
	ldr	x1, [sp, 40]	// tmp141, primes
	add	x0, x1, x0	// _26, tmp141, _25
	ldr	w0, [x0]	// _27, *_26
// problem46.c:33:     for (j = 0; primes[j]; j++) {
	cmp	w0, 0	// _27,
	bne	.L12		//,
	b	.L7		//
.L15:
// problem46.c:31:       continue;
	nop	
	b	.L7		//
.L16:
// problem46.c:43:         break;
	nop	
.L7:
// problem46.c:28:   for (i = 3; i < N; i += 2) {
	ldr	w0, [sp, 20]	// tmp143, i
	add	w0, w0, 2	// tmp142, tmp143,
	str	w0, [sp, 20]	// tmp142, i
.L5:
// problem46.c:28:   for (i = 3; i < N; i += 2) {
	ldr	w1, [sp, 20]	// tmp144, i
	mov	w0, 9999	// tmp145,
	cmp	w1, w0	// tmp144, tmp145
	bls	.L13		//,
// problem46.c:47: FINISH:
	nop	
.L10:
// problem46.c:48:   free(sieve);
	ldr	x0, [sp, 32]	//, sieve
	bl	free		//
// problem46.c:49:   free(primes);
	ldr	x0, [sp, 40]	//, primes
	bl	free		//
// problem46.c:51:   return 0;
	mov	w0, 0	// _56,
// problem46.c:52: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.align	2
	.type	prime_sieve, %function
prime_sieve:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	w0, [sp, 28]	// n, n
// problem46.c:56:   char *sieve = calloc(n, sizeof *sieve);
	ldr	w0, [sp, 28]	// _1, n
	mov	x1, 1	//,
	bl	calloc		//
	str	x0, [sp, 40]	// tmp102, sieve
// problem46.c:58:   sieve[0] = sieve[1] = 1;
	ldr	x0, [sp, 40]	// tmp103, sieve
	add	x0, x0, 1	// _2, tmp103,
// problem46.c:58:   sieve[0] = sieve[1] = 1;
	mov	w1, 1	// tmp104,
	strb	w1, [x0]	// tmp104, *_2
// problem46.c:58:   sieve[0] = sieve[1] = 1;
	ldrb	w1, [x0]	// _3, *_2
// problem46.c:58:   sieve[0] = sieve[1] = 1;
	ldr	x0, [sp, 40]	// tmp105, sieve
	strb	w1, [x0]	// tmp106, *sieve_17
// problem46.c:59:   for (i = 2; i < n; i++) {
	mov	w0, 2	// tmp107,
	str	w0, [sp, 32]	// tmp107, i
// problem46.c:59:   for (i = 2; i < n; i++) {
	b	.L18		//
.L22:
// problem46.c:60:     if (!sieve[i]) {
	ldr	w0, [sp, 32]	// _4, i
	ldr	x1, [sp, 40]	// tmp108, sieve
	add	x0, x1, x0	// _5, tmp108, _4
	ldrb	w0, [x0]	// _6, *_5
// problem46.c:60:     if (!sieve[i]) {
	cmp	w0, 0	// _6,
	bne	.L19		//,
// problem46.c:62:       for (j = i*2; j < n; j += i) {
	ldr	w0, [sp, 32]	// tmp110, i
	lsl	w0, w0, 1	// tmp109, tmp110,
	str	w0, [sp, 36]	// tmp109, j
// problem46.c:62:       for (j = i*2; j < n; j += i) {
	b	.L20		//
.L21:
// problem46.c:63:         sieve[j] = 1;
	ldr	w0, [sp, 36]	// _7, j
	ldr	x1, [sp, 40]	// tmp111, sieve
	add	x0, x1, x0	// _8, tmp111, _7
// problem46.c:63:         sieve[j] = 1;
	mov	w1, 1	// tmp112,
	strb	w1, [x0]	// tmp112, *_8
// problem46.c:62:       for (j = i*2; j < n; j += i) {
	ldr	w1, [sp, 36]	// tmp114, j
	ldr	w0, [sp, 32]	// tmp115, i
	add	w0, w1, w0	// tmp113, tmp114, tmp115
	str	w0, [sp, 36]	// tmp113, j
.L20:
// problem46.c:62:       for (j = i*2; j < n; j += i) {
	ldr	w1, [sp, 36]	// tmp116, j
	ldr	w0, [sp, 28]	// tmp117, n
	cmp	w1, w0	// tmp116, tmp117
	bcc	.L21		//,
.L19:
// problem46.c:59:   for (i = 2; i < n; i++) {
	ldr	w0, [sp, 32]	// tmp119, i
	add	w0, w0, 1	// tmp118, tmp119,
	str	w0, [sp, 32]	// tmp118, i
.L18:
// problem46.c:59:   for (i = 2; i < n; i++) {
	ldr	w1, [sp, 32]	// tmp120, i
	ldr	w0, [sp, 28]	// tmp121, n
	cmp	w1, w0	// tmp120, tmp121
	bcc	.L22		//,
// problem46.c:67:   return sieve;
	ldr	x0, [sp, 40]	// _21, sieve
// problem46.c:68: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	prime_sieve, .-prime_sieve
	.align	2
	.type	is_square, %function
is_square:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	w0, [sp, 28]	// n, n
// problem46.c:72:   unsigned sq = sqrt(n);
	ldr	w0, [sp, 28]	// tmp98, n
	ucvtf	d0, w0	// _1, tmp98
	bl	sqrt		//
// problem46.c:72:   unsigned sq = sqrt(n);
	fcvtzu	w0, d0	// tmp99, _2
	str	w0, [sp, 44]	// tmp99, sq
// problem46.c:73:   return sq*sq == n;
	ldr	w0, [sp, 44]	// tmp100, sq
	mul	w0, w0, w0	// _3, tmp100, tmp100
// problem46.c:73:   return sq*sq == n;
	ldr	w1, [sp, 28]	// tmp102, n
	cmp	w1, w0	// tmp102, _3
	cset	w0, eq	// tmp103,
	and	w0, w0, 255	// _4, tmp101
// problem46.c:74: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE8:
	.size	is_square, .-is_square
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
