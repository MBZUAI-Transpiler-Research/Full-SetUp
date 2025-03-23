	.arch armv8-a
	.file	"problem23.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
// problem23.c:14:   const int upper_limit = 28123;
	mov	w0, 28123	// tmp118,
	str	w0, [sp, 40]	// tmp118, upper_limit
// problem23.c:15:   int *abundants, abundants_count = 0;
	str	wzr, [sp, 32]	//, abundants_count
// problem23.c:17:   int sum = 0;
	str	wzr, [sp, 36]	//, sum
// problem23.c:19:   for (i = 1; i < upper_limit; i++) {
	mov	w0, 1	// tmp119,
	str	w0, [sp, 24]	// tmp119, i
// problem23.c:19:   for (i = 1; i < upper_limit; i++) {
	b	.L2		//
.L4:
// problem23.c:20:     if (is_abundant(i)) {
	ldr	w0, [sp, 24]	//, i
	bl	is_abundant		//
// problem23.c:20:     if (is_abundant(i)) {
	cmp	w0, 0	// _1,
	beq	.L3		//,
// problem23.c:21:       abundants_count++;
	ldr	w0, [sp, 32]	// tmp121, abundants_count
	add	w0, w0, 1	// tmp120, tmp121,
	str	w0, [sp, 32]	// tmp120, abundants_count
.L3:
// problem23.c:19:   for (i = 1; i < upper_limit; i++) {
	ldr	w0, [sp, 24]	// tmp123, i
	add	w0, w0, 1	// tmp122, tmp123,
	str	w0, [sp, 24]	// tmp122, i
.L2:
// problem23.c:19:   for (i = 1; i < upper_limit; i++) {
	ldr	w1, [sp, 24]	// tmp124, i
	ldr	w0, [sp, 40]	// tmp125, upper_limit
	cmp	w1, w0	// tmp124, tmp125
	blt	.L4		//,
// problem23.c:25:   abundants = malloc(abundants_count * sizeof *abundants);
	ldrsw	x0, [sp, 32]	// _2, abundants_count
	lsl	x0, x0, 2	// _3, _2,
	bl	malloc		//
	str	x0, [sp, 48]	// tmp126, abundants
// problem23.c:26:   j = 0;
	str	wzr, [sp, 28]	//, j
// problem23.c:27:   for (i = 1; i < upper_limit; i++) {
	mov	w0, 1	// tmp127,
	str	w0, [sp, 24]	// tmp127, i
// problem23.c:27:   for (i = 1; i < upper_limit; i++) {
	b	.L5		//
.L7:
// problem23.c:28:     if (is_abundant(i)) {
	ldr	w0, [sp, 24]	//, i
	bl	is_abundant		//
// problem23.c:28:     if (is_abundant(i)) {
	cmp	w0, 0	// _4,
	beq	.L6		//,
// problem23.c:29:       abundants[j++] = i;
	ldr	w0, [sp, 28]	// j.0_5, j
	add	w1, w0, 1	// tmp128, j.0_5,
	str	w1, [sp, 28]	// tmp128, j
	sxtw	x0, w0	// _6, j.0_5
// problem23.c:29:       abundants[j++] = i;
	lsl	x0, x0, 2	// _7, _6,
	ldr	x1, [sp, 48]	// tmp129, abundants
	add	x0, x1, x0	// _8, tmp129, _7
// problem23.c:29:       abundants[j++] = i;
	ldr	w1, [sp, 24]	// tmp130, i
	str	w1, [x0]	// tmp130, *_8
.L6:
// problem23.c:27:   for (i = 1; i < upper_limit; i++) {
	ldr	w0, [sp, 24]	// tmp132, i
	add	w0, w0, 1	// tmp131, tmp132,
	str	w0, [sp, 24]	// tmp131, i
.L5:
// problem23.c:27:   for (i = 1; i < upper_limit; i++) {
	ldr	w1, [sp, 24]	// tmp133, i
	ldr	w0, [sp, 40]	// tmp134, upper_limit
	cmp	w1, w0	// tmp133, tmp134
	blt	.L7		//,
// problem23.c:33:   expressed = calloc(upper_limit, sizeof *expressed);
	ldrsw	x0, [sp, 40]	// _9, upper_limit
	mov	x1, 1	//,
	bl	calloc		//
	str	x0, [sp, 56]	// tmp135, expressed
// problem23.c:34:   for (i = 0; i < abundants_count; i++) {
	str	wzr, [sp, 24]	//, i
// problem23.c:34:   for (i = 0; i < abundants_count; i++) {
	b	.L8		//
.L13:
// problem23.c:35:     for (j = i; j < abundants_count; j++) {
	ldr	w0, [sp, 24]	// tmp136, i
	str	w0, [sp, 28]	// tmp136, j
// problem23.c:35:     for (j = i; j < abundants_count; j++) {
	b	.L9		//
.L12:
// problem23.c:36:       int k = abundants[i] + abundants[j];
	ldrsw	x0, [sp, 24]	// _10, i
	lsl	x0, x0, 2	// _11, _10,
	ldr	x1, [sp, 48]	// tmp137, abundants
	add	x0, x1, x0	// _12, tmp137, _11
	ldr	w1, [x0]	// _13, *_12
// problem23.c:36:       int k = abundants[i] + abundants[j];
	ldrsw	x0, [sp, 28]	// _14, j
	lsl	x0, x0, 2	// _15, _14,
	ldr	x2, [sp, 48]	// tmp138, abundants
	add	x0, x2, x0	// _16, tmp138, _15
	ldr	w0, [x0]	// _17, *_16
// problem23.c:36:       int k = abundants[i] + abundants[j];
	add	w0, w1, w0	// tmp139, _13, _17
	str	w0, [sp, 44]	// tmp139, k
// problem23.c:37:       if (k >= upper_limit) {
	ldr	w1, [sp, 44]	// tmp140, k
	ldr	w0, [sp, 40]	// tmp141, upper_limit
	cmp	w1, w0	// tmp140, tmp141
	bge	.L18		//,
// problem23.c:40:       expressed[k-1] = 1;
	ldrsw	x0, [sp, 44]	// _18, k
	sub	x0, x0, #1	// _19, _18,
	ldr	x1, [sp, 56]	// tmp142, expressed
	add	x0, x1, x0	// _20, tmp142, _19
// problem23.c:40:       expressed[k-1] = 1;
	mov	w1, 1	// tmp143,
	strb	w1, [x0]	// tmp143, *_20
// problem23.c:35:     for (j = i; j < abundants_count; j++) {
	ldr	w0, [sp, 28]	// tmp145, j
	add	w0, w0, 1	// tmp144, tmp145,
	str	w0, [sp, 28]	// tmp144, j
.L9:
// problem23.c:35:     for (j = i; j < abundants_count; j++) {
	ldr	w1, [sp, 28]	// tmp146, j
	ldr	w0, [sp, 32]	// tmp147, abundants_count
	cmp	w1, w0	// tmp146, tmp147
	blt	.L12		//,
	b	.L11		//
.L18:
// problem23.c:38:         break;
	nop	
.L11:
// problem23.c:34:   for (i = 0; i < abundants_count; i++) {
	ldr	w0, [sp, 24]	// tmp149, i
	add	w0, w0, 1	// tmp148, tmp149,
	str	w0, [sp, 24]	// tmp148, i
.L8:
// problem23.c:34:   for (i = 0; i < abundants_count; i++) {
	ldr	w1, [sp, 24]	// tmp150, i
	ldr	w0, [sp, 32]	// tmp151, abundants_count
	cmp	w1, w0	// tmp150, tmp151
	blt	.L13		//,
// problem23.c:44:   for (i = 1; i < upper_limit; i++) {
	mov	w0, 1	// tmp152,
	str	w0, [sp, 24]	// tmp152, i
// problem23.c:44:   for (i = 1; i < upper_limit; i++) {
	b	.L14		//
.L16:
// problem23.c:45:     if (!expressed[i-1]) {
	ldrsw	x0, [sp, 24]	// _21, i
	sub	x0, x0, #1	// _22, _21,
	ldr	x1, [sp, 56]	// tmp153, expressed
	add	x0, x1, x0	// _23, tmp153, _22
	ldrb	w0, [x0]	// _24, *_23
// problem23.c:45:     if (!expressed[i-1]) {
	cmp	w0, 0	// _24,
	bne	.L15		//,
// problem23.c:46:       sum += i;
	ldr	w1, [sp, 36]	// tmp155, sum
	ldr	w0, [sp, 24]	// tmp156, i
	add	w0, w1, w0	// tmp154, tmp155, tmp156
	str	w0, [sp, 36]	// tmp154, sum
.L15:
// problem23.c:44:   for (i = 1; i < upper_limit; i++) {
	ldr	w0, [sp, 24]	// tmp158, i
	add	w0, w0, 1	// tmp157, tmp158,
	str	w0, [sp, 24]	// tmp157, i
.L14:
// problem23.c:44:   for (i = 1; i < upper_limit; i++) {
	ldr	w1, [sp, 24]	// tmp159, i
	ldr	w0, [sp, 40]	// tmp160, upper_limit
	cmp	w1, w0	// tmp159, tmp160
	blt	.L16		//,
// problem23.c:49:   printf("%d\n", sum);
	ldr	w1, [sp, 36]	//, sum
	adrp	x0, .LC0	// tmp161,
	add	x0, x0, :lo12:.LC0	//, tmp161,
	bl	printf		//
// problem23.c:51:   free(abundants);
	ldr	x0, [sp, 48]	//, abundants
	bl	free		//
// problem23.c:52:   free(expressed);
	ldr	x0, [sp, 56]	//, expressed
	bl	free		//
// problem23.c:54:   return 0;
	mov	w0, 0	// _57,
// problem23.c:55: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.align	2
	.type	is_abundant, %function
is_abundant:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]	// n, n
// problem23.c:59:   int sum = 1;
	mov	w0, 1	// tmp101,
	str	w0, [sp, 16]	// tmp101, sum
// problem23.c:60:   int i, k = n;
	ldr	w0, [sp, 12]	// tmp102, n
	str	w0, [sp, 24]	// tmp102, k
// problem23.c:61:   for (i = 2; i <= k; i++) {
	mov	w0, 2	// tmp103,
	str	w0, [sp, 20]	// tmp103, i
// problem23.c:61:   for (i = 2; i <= k; i++) {
	b	.L20		//
.L23:
// problem23.c:62:     int p = 1;
	mov	w0, 1	// tmp104,
	str	w0, [sp, 28]	// tmp104, p
// problem23.c:63:     while (k % i == 0) {
	b	.L21		//
.L22:
// problem23.c:64:       p *= i;
	ldr	w1, [sp, 28]	// tmp106, p
	ldr	w0, [sp, 20]	// tmp107, i
	mul	w0, w1, w0	// tmp105, tmp106, tmp107
	str	w0, [sp, 28]	// tmp105, p
// problem23.c:65:       k /= i;
	ldr	w1, [sp, 24]	// tmp110, k
	ldr	w0, [sp, 20]	// tmp111, i
	sdiv	w0, w1, w0	// tmp109, tmp110, tmp111
	str	w0, [sp, 24]	// tmp109, k
.L21:
// problem23.c:63:     while (k % i == 0) {
	ldr	w0, [sp, 24]	// tmp112, k
	ldr	w1, [sp, 20]	// tmp125, i
	sdiv	w2, w0, w1	// tmp124, tmp112, tmp125
	ldr	w1, [sp, 20]	// tmp127, i
	mul	w1, w2, w1	// tmp126, tmp124, tmp127
	sub	w0, w0, w1	// _1, tmp112, tmp126
// problem23.c:63:     while (k % i == 0) {
	cmp	w0, 0	// _1,
	beq	.L22		//,
// problem23.c:67:     sum *= (p*i - 1)/(i-1);
	ldr	w1, [sp, 28]	// tmp128, p
	ldr	w0, [sp, 20]	// tmp129, i
	mul	w0, w1, w0	// _2, tmp128, tmp129
// problem23.c:67:     sum *= (p*i - 1)/(i-1);
	sub	w1, w0, #1	// _3, _2,
// problem23.c:67:     sum *= (p*i - 1)/(i-1);
	ldr	w0, [sp, 20]	// tmp130, i
	sub	w0, w0, #1	// _4, tmp130,
// problem23.c:67:     sum *= (p*i - 1)/(i-1);
	sdiv	w0, w1, w0	// _5, _3, _4
// problem23.c:67:     sum *= (p*i - 1)/(i-1);
	ldr	w1, [sp, 16]	// tmp132, sum
	mul	w0, w1, w0	// tmp131, tmp132, _5
	str	w0, [sp, 16]	// tmp131, sum
// problem23.c:61:   for (i = 2; i <= k; i++) {
	ldr	w0, [sp, 20]	// tmp134, i
	add	w0, w0, 1	// tmp133, tmp134,
	str	w0, [sp, 20]	// tmp133, i
.L20:
// problem23.c:61:   for (i = 2; i <= k; i++) {
	ldr	w1, [sp, 20]	// tmp135, i
	ldr	w0, [sp, 24]	// tmp136, k
	cmp	w1, w0	// tmp135, tmp136
	ble	.L23		//,
// problem23.c:69:   return 2*n < sum;
	ldr	w0, [sp, 12]	// tmp137, n
	lsl	w0, w0, 1	// _6, tmp137,
// problem23.c:69:   return 2*n < sum;
	ldr	w1, [sp, 16]	// tmp139, sum
	cmp	w1, w0	// tmp139, _6
	cset	w0, gt	// tmp140,
	and	w0, w0, 255	// _7, tmp138
// problem23.c:70: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	is_abundant, .-is_abundant
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
