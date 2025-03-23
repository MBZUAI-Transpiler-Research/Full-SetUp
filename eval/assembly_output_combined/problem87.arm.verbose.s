	.arch armv8-a
	.file	"problem87.c"
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
	str	x0, [sp, 24]	// s, s
// problem87.c:5: char* func0(const char* s) {
	adrp	x0, :got:__stack_chk_guard	// tmp121,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp120, tmp121,
	ldr	x1, [x0]	// tmp178,
	str	x1, [sp, 136]	// tmp178, D.5033
	mov	x1, 0	// tmp178
// problem87.c:6:     int len = strlen(s);
	ldr	x0, [sp, 24]	//, s
	bl	strlen		//
// problem87.c:6:     int len = strlen(s);
	str	w0, [sp, 68]	// tmp122, len
// problem87.c:7:     char* out = malloc(len + 2); 
	ldr	w0, [sp, 68]	// tmp123, len
	add	w0, w0, 2	// _2, tmp123,
// problem87.c:7:     char* out = malloc(len + 2); 
	sxtw	x0, w0	// _3, _2
	bl	malloc		//
	str	x0, [sp, 72]	// tmp124, out
// problem87.c:9:     int out_index = 0, current_index = 0;
	str	wzr, [sp, 44]	//, out_index
// problem87.c:9:     int out_index = 0, current_index = 0;
	str	wzr, [sp, 48]	//, current_index
// problem87.c:11:     for (int i = 0; i <= len; i++) {
	str	wzr, [sp, 52]	//, i
// problem87.c:11:     for (int i = 0; i <= len; i++) {
	b	.L2		//
.L14:
// problem87.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	ldrsw	x0, [sp, 52]	// _4, i
	ldr	x1, [sp, 24]	// tmp125, s
	add	x0, x1, x0	// _5, tmp125, _4
	ldrb	w0, [x0]	// _6, *_5
// problem87.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	cmp	w0, 32	// _6,
	beq	.L3		//,
// problem87.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	ldrsw	x0, [sp, 52]	// _7, i
	ldr	x1, [sp, 24]	// tmp126, s
	add	x0, x1, x0	// _8, tmp126, _7
	ldrb	w0, [x0]	// _9, *_8
// problem87.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	cmp	w0, 0	// _9,
	bne	.L4		//,
.L3:
// problem87.c:13:             for (int j = 0; j < current_index - 1; j++) {
	str	wzr, [sp, 56]	//, j
// problem87.c:13:             for (int j = 0; j < current_index - 1; j++) {
	b	.L5		//
.L9:
// problem87.c:14:                 for (int k = j + 1; k < current_index; k++) {
	ldr	w0, [sp, 56]	// tmp128, j
	add	w0, w0, 1	// tmp127, tmp128,
	str	w0, [sp, 60]	// tmp127, k
// problem87.c:14:                 for (int k = j + 1; k < current_index; k++) {
	b	.L6		//
.L8:
// problem87.c:15:                     if (current[j] > current[k]) {
	ldrsw	x0, [sp, 56]	// tmp129, j
	add	x1, sp, 80	// tmp130,,
	ldrb	w1, [x1, x0]	// _10, current[j_34]
// problem87.c:15:                     if (current[j] > current[k]) {
	ldrsw	x0, [sp, 60]	// tmp131, k
	add	x2, sp, 80	// tmp132,,
	ldrb	w0, [x2, x0]	// _11, current[k_35]
// problem87.c:15:                     if (current[j] > current[k]) {
	cmp	w1, w0	// _10, _11
	bls	.L7		//,
// problem87.c:16:                         char temp = current[j];
	ldrsw	x0, [sp, 56]	// tmp133, j
	add	x1, sp, 80	// tmp134,,
	ldrb	w0, [x1, x0]	// tmp135, current[j_34]
	strb	w0, [sp, 43]	// tmp135, temp
// problem87.c:17:                         current[j] = current[k];
	ldrsw	x0, [sp, 60]	// tmp136, k
	add	x1, sp, 80	// tmp137,,
	ldrb	w2, [x1, x0]	// _12, current[k_35]
// problem87.c:17:                         current[j] = current[k];
	ldrsw	x0, [sp, 56]	// tmp138, j
	add	x1, sp, 80	// tmp139,,
	strb	w2, [x1, x0]	// tmp140, current[j_34]
// problem87.c:18:                         current[k] = temp;
	ldrsw	x0, [sp, 60]	// tmp141, k
	add	x1, sp, 80	// tmp142,,
	ldrb	w2, [sp, 43]	// tmp143, temp
	strb	w2, [x1, x0]	// tmp143, current[k_35]
.L7:
// problem87.c:14:                 for (int k = j + 1; k < current_index; k++) {
	ldr	w0, [sp, 60]	// tmp145, k
	add	w0, w0, 1	// tmp144, tmp145,
	str	w0, [sp, 60]	// tmp144, k
.L6:
// problem87.c:14:                 for (int k = j + 1; k < current_index; k++) {
	ldr	w1, [sp, 60]	// tmp146, k
	ldr	w0, [sp, 48]	// tmp147, current_index
	cmp	w1, w0	// tmp146, tmp147
	blt	.L8		//,
// problem87.c:13:             for (int j = 0; j < current_index - 1; j++) {
	ldr	w0, [sp, 56]	// tmp149, j
	add	w0, w0, 1	// tmp148, tmp149,
	str	w0, [sp, 56]	// tmp148, j
.L5:
// problem87.c:13:             for (int j = 0; j < current_index - 1; j++) {
	ldr	w0, [sp, 48]	// tmp150, current_index
	sub	w0, w0, #1	// _13, tmp150,
// problem87.c:13:             for (int j = 0; j < current_index - 1; j++) {
	ldr	w1, [sp, 56]	// tmp151, j
	cmp	w1, w0	// tmp151, _13
	blt	.L9		//,
// problem87.c:22:             if (out_index > 0) out[out_index++] = ' ';
	ldr	w0, [sp, 44]	// tmp152, out_index
	cmp	w0, 0	// tmp152,
	ble	.L10		//,
// problem87.c:22:             if (out_index > 0) out[out_index++] = ' ';
	ldr	w0, [sp, 44]	// out_index.0_14, out_index
	add	w1, w0, 1	// tmp153, out_index.0_14,
	str	w1, [sp, 44]	// tmp153, out_index
	sxtw	x0, w0	// _15, out_index.0_14
// problem87.c:22:             if (out_index > 0) out[out_index++] = ' ';
	ldr	x1, [sp, 72]	// tmp154, out
	add	x0, x1, x0	// _16, tmp154, _15
// problem87.c:22:             if (out_index > 0) out[out_index++] = ' ';
	mov	w1, 32	// tmp155,
	strb	w1, [x0]	// tmp155, *_16
.L10:
// problem87.c:23:             for (int j = 0; j < current_index; j++) {
	str	wzr, [sp, 64]	//, j
// problem87.c:23:             for (int j = 0; j < current_index; j++) {
	b	.L11		//
.L12:
// problem87.c:24:                 out[out_index++] = current[j];
	ldr	w0, [sp, 44]	// out_index.1_17, out_index
	add	w1, w0, 1	// tmp156, out_index.1_17,
	str	w1, [sp, 44]	// tmp156, out_index
	sxtw	x0, w0	// _18, out_index.1_17
// problem87.c:24:                 out[out_index++] = current[j];
	ldr	x1, [sp, 72]	// tmp157, out
	add	x0, x1, x0	// _19, tmp157, _18
// problem87.c:24:                 out[out_index++] = current[j];
	ldrsw	x1, [sp, 64]	// tmp158, j
	add	x2, sp, 80	// tmp159,,
	ldrb	w1, [x2, x1]	// _20, current[j_36]
// problem87.c:24:                 out[out_index++] = current[j];
	strb	w1, [x0]	// tmp160, *_19
// problem87.c:23:             for (int j = 0; j < current_index; j++) {
	ldr	w0, [sp, 64]	// tmp162, j
	add	w0, w0, 1	// tmp161, tmp162,
	str	w0, [sp, 64]	// tmp161, j
.L11:
// problem87.c:23:             for (int j = 0; j < current_index; j++) {
	ldr	w1, [sp, 64]	// tmp163, j
	ldr	w0, [sp, 48]	// tmp164, current_index
	cmp	w1, w0	// tmp163, tmp164
	blt	.L12		//,
// problem87.c:26:             current_index = 0;
	str	wzr, [sp, 48]	//, current_index
	b	.L13		//
.L4:
// problem87.c:28:             current[current_index++] = s[i];
	ldrsw	x0, [sp, 52]	// _21, i
	ldr	x1, [sp, 24]	// tmp165, s
	add	x1, x1, x0	// _22, tmp165, _21
// problem87.c:28:             current[current_index++] = s[i];
	ldr	w0, [sp, 48]	// current_index.2_23, current_index
	add	w2, w0, 1	// tmp166, current_index.2_23,
	str	w2, [sp, 48]	// tmp166, current_index
// problem87.c:28:             current[current_index++] = s[i];
	ldrb	w2, [x1]	// _24, *_22
// problem87.c:28:             current[current_index++] = s[i];
	sxtw	x0, w0	// tmp167, current_index.2_23
	add	x1, sp, 80	// tmp168,,
	strb	w2, [x1, x0]	// tmp169, current[current_index.2_23]
.L13:
// problem87.c:11:     for (int i = 0; i <= len; i++) {
	ldr	w0, [sp, 52]	// tmp171, i
	add	w0, w0, 1	// tmp170, tmp171,
	str	w0, [sp, 52]	// tmp170, i
.L2:
// problem87.c:11:     for (int i = 0; i <= len; i++) {
	ldr	w1, [sp, 52]	// tmp172, i
	ldr	w0, [sp, 68]	// tmp173, len
	cmp	w1, w0	// tmp172, tmp173
	ble	.L14		//,
// problem87.c:32:     out[out_index] = '\0';
	ldrsw	x0, [sp, 44]	// _25, out_index
	ldr	x1, [sp, 72]	// tmp174, out
	add	x0, x1, x0	// _26, tmp174, _25
// problem87.c:32:     out[out_index] = '\0';
	strb	wzr, [x0]	//, *_26
// problem87.c:33:     return out;
	ldr	x0, [sp, 72]	// _53, out
	mov	x1, x0	// <retval>, _53
// problem87.c:34: }
	adrp	x0, :got:__stack_chk_guard	// tmp177,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp176, tmp177,
	ldr	x3, [sp, 136]	// tmp179, D.5033
	ldr	x2, [x0]	// tmp180,
	subs	x3, x3, x2	// tmp179, tmp180
	mov	x2, 0	// tmp180
	beq	.L16		//,
	bl	__stack_chk_fail		//
.L16:
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
	.string	"Hi"
	.align	3
.LC1:
	.string	"problem87.c"
	.align	3
.LC2:
	.string	"strcmp(result, \"Hi\") == 0"
	.align	3
.LC3:
	.string	"hello"
	.align	3
.LC4:
	.string	"ehllo"
	.align	3
.LC5:
	.string	"strcmp(result, \"ehllo\") == 0"
	.align	3
.LC6:
	.string	"number"
	.align	3
.LC7:
	.string	"bemnru"
	.align	3
.LC8:
	.string	"strcmp(result, \"bemnru\") == 0"
	.align	3
.LC9:
	.string	"abcd"
	.align	3
.LC10:
	.string	"strcmp(result, \"abcd\") == 0"
	.align	3
.LC11:
	.string	"Hello World!!!"
	.align	3
.LC12:
	.string	"Hello !!!Wdlor"
	.align	3
.LC13:
	.string	"strcmp(result, \"Hello !!!Wdlor\") == 0"
	.align	3
.LC14:
	.string	""
	.align	3
.LC15:
	.string	"strcmp(result, \"\") == 0"
	.align	3
.LC16:
	.string	"Hi. My name is Mister Robot. How are you?"
	.align	3
.LC17:
	.string	".Hi My aemn is Meirst .Rboot How aer ?ouy"
	.align	3
.LC18:
	.string	"strcmp(result, \".Hi My aemn is Meirst .Rboot How aer ?ouy\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
// problem87.c:45:     result = func0("Hi");
	adrp	x0, .LC0	// tmp102,
	add	x0, x0, :lo12:.LC0	//, tmp102,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem87.c:46:     assert(strcmp(result, "Hi") == 0);
	adrp	x0, .LC0	// tmp103,
	add	x1, x0, :lo12:.LC0	//, tmp103,
	ldr	x0, [sp, 24]	//, result
	bl	strcmp		//
	cmp	w0, 0	// _1,
	beq	.L18		//,
// problem87.c:46:     assert(strcmp(result, "Hi") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp104,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp104,
	mov	w2, 46	//,
	adrp	x0, .LC1	// tmp105,
	add	x1, x0, :lo12:.LC1	//, tmp105,
	adrp	x0, .LC2	// tmp106,
	add	x0, x0, :lo12:.LC2	//, tmp106,
	bl	__assert_fail		//
.L18:
// problem87.c:47:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem87.c:49:     result = func0("hello");
	adrp	x0, .LC3	// tmp107,
	add	x0, x0, :lo12:.LC3	//, tmp107,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem87.c:50:     assert(strcmp(result, "ehllo") == 0);
	adrp	x0, .LC4	// tmp108,
	add	x1, x0, :lo12:.LC4	//, tmp108,
	ldr	x0, [sp, 24]	//, result
	bl	strcmp		//
	cmp	w0, 0	// _2,
	beq	.L19		//,
// problem87.c:50:     assert(strcmp(result, "ehllo") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp109,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp109,
	mov	w2, 50	//,
	adrp	x0, .LC1	// tmp110,
	add	x1, x0, :lo12:.LC1	//, tmp110,
	adrp	x0, .LC5	// tmp111,
	add	x0, x0, :lo12:.LC5	//, tmp111,
	bl	__assert_fail		//
.L19:
// problem87.c:51:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem87.c:53:     result = func0("number");
	adrp	x0, .LC6	// tmp112,
	add	x0, x0, :lo12:.LC6	//, tmp112,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem87.c:54:     assert(strcmp(result, "bemnru") == 0);
	adrp	x0, .LC7	// tmp113,
	add	x1, x0, :lo12:.LC7	//, tmp113,
	ldr	x0, [sp, 24]	//, result
	bl	strcmp		//
	cmp	w0, 0	// _3,
	beq	.L20		//,
// problem87.c:54:     assert(strcmp(result, "bemnru") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp114,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp114,
	mov	w2, 54	//,
	adrp	x0, .LC1	// tmp115,
	add	x1, x0, :lo12:.LC1	//, tmp115,
	adrp	x0, .LC8	// tmp116,
	add	x0, x0, :lo12:.LC8	//, tmp116,
	bl	__assert_fail		//
.L20:
// problem87.c:55:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem87.c:57:     result = func0("abcd");
	adrp	x0, .LC9	// tmp117,
	add	x0, x0, :lo12:.LC9	//, tmp117,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem87.c:58:     assert(strcmp(result, "abcd") == 0);
	adrp	x0, .LC9	// tmp118,
	add	x1, x0, :lo12:.LC9	//, tmp118,
	ldr	x0, [sp, 24]	//, result
	bl	strcmp		//
	cmp	w0, 0	// _4,
	beq	.L21		//,
// problem87.c:58:     assert(strcmp(result, "abcd") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 58	//,
	adrp	x0, .LC1	// tmp120,
	add	x1, x0, :lo12:.LC1	//, tmp120,
	adrp	x0, .LC10	// tmp121,
	add	x0, x0, :lo12:.LC10	//, tmp121,
	bl	__assert_fail		//
.L21:
// problem87.c:59:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem87.c:61:     result = func0("Hello World!!!");
	adrp	x0, .LC11	// tmp122,
	add	x0, x0, :lo12:.LC11	//, tmp122,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem87.c:62:     assert(strcmp(result, "Hello !!!Wdlor") == 0);
	adrp	x0, .LC12	// tmp123,
	add	x1, x0, :lo12:.LC12	//, tmp123,
	ldr	x0, [sp, 24]	//, result
	bl	strcmp		//
	cmp	w0, 0	// _5,
	beq	.L22		//,
// problem87.c:62:     assert(strcmp(result, "Hello !!!Wdlor") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp124,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp124,
	mov	w2, 62	//,
	adrp	x0, .LC1	// tmp125,
	add	x1, x0, :lo12:.LC1	//, tmp125,
	adrp	x0, .LC13	// tmp126,
	add	x0, x0, :lo12:.LC13	//, tmp126,
	bl	__assert_fail		//
.L22:
// problem87.c:63:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem87.c:65:     result = func0("");
	adrp	x0, .LC14	// tmp127,
	add	x0, x0, :lo12:.LC14	//, tmp127,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem87.c:66:     assert(strcmp(result, "") == 0);
	ldr	x0, [sp, 24]	// tmp128, result
	ldrb	w0, [x0]	// _31, MEM[(const unsigned char * {ref-all})result_30]
	cmp	w0, 0	// _6,
	beq	.L23		//,
// problem87.c:66:     assert(strcmp(result, "") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp129,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp129,
	mov	w2, 66	//,
	adrp	x0, .LC1	// tmp130,
	add	x1, x0, :lo12:.LC1	//, tmp130,
	adrp	x0, .LC15	// tmp131,
	add	x0, x0, :lo12:.LC15	//, tmp131,
	bl	__assert_fail		//
.L23:
// problem87.c:67:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem87.c:69:     result = func0("Hi. My name is Mister Robot. How are you?");
	adrp	x0, .LC16	// tmp132,
	add	x0, x0, :lo12:.LC16	//, tmp132,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem87.c:70:     assert(strcmp(result, ".Hi My aemn is Meirst .Rboot How aer ?ouy") == 0);
	adrp	x0, .LC17	// tmp133,
	add	x1, x0, :lo12:.LC17	//, tmp133,
	ldr	x0, [sp, 24]	//, result
	bl	strcmp		//
	cmp	w0, 0	// _7,
	beq	.L24		//,
// problem87.c:70:     assert(strcmp(result, ".Hi My aemn is Meirst .Rboot How aer ?ouy") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp134,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp134,
	mov	w2, 70	//,
	adrp	x0, .LC1	// tmp135,
	add	x1, x0, :lo12:.LC1	//, tmp135,
	adrp	x0, .LC18	// tmp136,
	add	x0, x0, :lo12:.LC18	//, tmp136,
	bl	__assert_fail		//
.L24:
// problem87.c:71:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem87.c:73:     return 0;
	mov	w0, 0	// _38,
// problem87.c:74: }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
