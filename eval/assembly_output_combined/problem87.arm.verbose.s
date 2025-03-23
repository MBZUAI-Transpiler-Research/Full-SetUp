	.arch armv8-a
	.file	"problem87.c"
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
	sub	sp, sp, #144	//,,
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, 128]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 128	//,,
	str	x0, [sp, 8]	// s, s
// problem87.c:5: char* func0(const char* s) {
	adrp	x0, :got:__stack_chk_guard	// tmp120,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp120,
	ldr	x1, [x0]	// tmp176,
	str	x1, [sp, 120]	// tmp176, D.5649
	mov	x1, 0	// tmp176
// problem87.c:6:     int len = strlen(s);
	ldr	x0, [sp, 8]	//, s
	bl	strlen		//
// problem87.c:6:     int len = strlen(s);
	str	w0, [sp, 52]	// tmp121, len
// problem87.c:7:     char* out = malloc(len + 2); 
	ldr	w0, [sp, 52]	// tmp122, len
	add	w0, w0, 2	// _2, tmp122,
// problem87.c:7:     char* out = malloc(len + 2); 
	sxtw	x0, w0	// _3, _2
	bl	malloc		//
	str	x0, [sp, 56]	// tmp123, out
// problem87.c:9:     int out_index = 0, current_index = 0;
	str	wzr, [sp, 28]	//, out_index
// problem87.c:9:     int out_index = 0, current_index = 0;
	str	wzr, [sp, 32]	//, current_index
// problem87.c:11:     for (int i = 0; i <= len; i++) {
	str	wzr, [sp, 36]	//, i
// problem87.c:11:     for (int i = 0; i <= len; i++) {
	b	.L2		//
.L14:
// problem87.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	ldrsw	x0, [sp, 36]	// _4, i
	ldr	x1, [sp, 8]	// tmp124, s
	add	x0, x1, x0	// _5, tmp124, _4
	ldrb	w0, [x0]	// _6, *_5
// problem87.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	cmp	w0, 32	// _6,
	beq	.L3		//,
// problem87.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	ldrsw	x0, [sp, 36]	// _7, i
	ldr	x1, [sp, 8]	// tmp125, s
	add	x0, x1, x0	// _8, tmp125, _7
	ldrb	w0, [x0]	// _9, *_8
// problem87.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	cmp	w0, 0	// _9,
	bne	.L4		//,
.L3:
// problem87.c:13:             for (int j = 0; j < current_index - 1; j++) {
	str	wzr, [sp, 40]	//, j
// problem87.c:13:             for (int j = 0; j < current_index - 1; j++) {
	b	.L5		//
.L9:
// problem87.c:14:                 for (int k = j + 1; k < current_index; k++) {
	ldr	w0, [sp, 40]	// tmp127, j
	add	w0, w0, 1	// tmp126, tmp127,
	str	w0, [sp, 44]	// tmp126, k
// problem87.c:14:                 for (int k = j + 1; k < current_index; k++) {
	b	.L6		//
.L8:
// problem87.c:15:                     if (current[j] > current[k]) {
	ldrsw	x0, [sp, 40]	// tmp128, j
	add	x1, sp, 64	// tmp129,,
	ldrb	w1, [x1, x0]	// _10, current[j_34]
// problem87.c:15:                     if (current[j] > current[k]) {
	ldrsw	x0, [sp, 44]	// tmp130, k
	add	x2, sp, 64	// tmp131,,
	ldrb	w0, [x2, x0]	// _11, current[k_35]
// problem87.c:15:                     if (current[j] > current[k]) {
	cmp	w1, w0	// _10, _11
	bls	.L7		//,
// problem87.c:16:                         char temp = current[j];
	ldrsw	x0, [sp, 40]	// tmp132, j
	add	x1, sp, 64	// tmp133,,
	ldrb	w0, [x1, x0]	// tmp134, current[j_34]
	strb	w0, [sp, 27]	// tmp134, temp
// problem87.c:17:                         current[j] = current[k];
	ldrsw	x0, [sp, 44]	// tmp135, k
	add	x1, sp, 64	// tmp136,,
	ldrb	w2, [x1, x0]	// _12, current[k_35]
// problem87.c:17:                         current[j] = current[k];
	ldrsw	x0, [sp, 40]	// tmp137, j
	add	x1, sp, 64	// tmp138,,
	strb	w2, [x1, x0]	// tmp139, current[j_34]
// problem87.c:18:                         current[k] = temp;
	ldrsw	x0, [sp, 44]	// tmp140, k
	add	x1, sp, 64	// tmp141,,
	ldrb	w2, [sp, 27]	// tmp142, temp
	strb	w2, [x1, x0]	// tmp142, current[k_35]
.L7:
// problem87.c:14:                 for (int k = j + 1; k < current_index; k++) {
	ldr	w0, [sp, 44]	// tmp144, k
	add	w0, w0, 1	// tmp143, tmp144,
	str	w0, [sp, 44]	// tmp143, k
.L6:
// problem87.c:14:                 for (int k = j + 1; k < current_index; k++) {
	ldr	w1, [sp, 44]	// tmp145, k
	ldr	w0, [sp, 32]	// tmp146, current_index
	cmp	w1, w0	// tmp145, tmp146
	blt	.L8		//,
// problem87.c:13:             for (int j = 0; j < current_index - 1; j++) {
	ldr	w0, [sp, 40]	// tmp148, j
	add	w0, w0, 1	// tmp147, tmp148,
	str	w0, [sp, 40]	// tmp147, j
.L5:
// problem87.c:13:             for (int j = 0; j < current_index - 1; j++) {
	ldr	w0, [sp, 32]	// tmp149, current_index
	sub	w0, w0, #1	// _13, tmp149,
// problem87.c:13:             for (int j = 0; j < current_index - 1; j++) {
	ldr	w1, [sp, 40]	// tmp150, j
	cmp	w1, w0	// tmp150, _13
	blt	.L9		//,
// problem87.c:22:             if (out_index > 0) out[out_index++] = ' ';
	ldr	w0, [sp, 28]	// tmp151, out_index
	cmp	w0, 0	// tmp151,
	ble	.L10		//,
// problem87.c:22:             if (out_index > 0) out[out_index++] = ' ';
	ldr	w0, [sp, 28]	// out_index.0_14, out_index
	add	w1, w0, 1	// tmp152, out_index.0_14,
	str	w1, [sp, 28]	// tmp152, out_index
	sxtw	x0, w0	// _15, out_index.0_14
// problem87.c:22:             if (out_index > 0) out[out_index++] = ' ';
	ldr	x1, [sp, 56]	// tmp153, out
	add	x0, x1, x0	// _16, tmp153, _15
// problem87.c:22:             if (out_index > 0) out[out_index++] = ' ';
	mov	w1, 32	// tmp154,
	strb	w1, [x0]	// tmp154, *_16
.L10:
// problem87.c:23:             for (int j = 0; j < current_index; j++) {
	str	wzr, [sp, 48]	//, j
// problem87.c:23:             for (int j = 0; j < current_index; j++) {
	b	.L11		//
.L12:
// problem87.c:24:                 out[out_index++] = current[j];
	ldr	w0, [sp, 28]	// out_index.1_17, out_index
	add	w1, w0, 1	// tmp155, out_index.1_17,
	str	w1, [sp, 28]	// tmp155, out_index
	sxtw	x0, w0	// _18, out_index.1_17
// problem87.c:24:                 out[out_index++] = current[j];
	ldr	x1, [sp, 56]	// tmp156, out
	add	x0, x1, x0	// _19, tmp156, _18
// problem87.c:24:                 out[out_index++] = current[j];
	ldrsw	x1, [sp, 48]	// tmp157, j
	add	x2, sp, 64	// tmp158,,
	ldrb	w1, [x2, x1]	// _20, current[j_36]
// problem87.c:24:                 out[out_index++] = current[j];
	strb	w1, [x0]	// tmp159, *_19
// problem87.c:23:             for (int j = 0; j < current_index; j++) {
	ldr	w0, [sp, 48]	// tmp161, j
	add	w0, w0, 1	// tmp160, tmp161,
	str	w0, [sp, 48]	// tmp160, j
.L11:
// problem87.c:23:             for (int j = 0; j < current_index; j++) {
	ldr	w1, [sp, 48]	// tmp162, j
	ldr	w0, [sp, 32]	// tmp163, current_index
	cmp	w1, w0	// tmp162, tmp163
	blt	.L12		//,
// problem87.c:26:             current_index = 0;
	str	wzr, [sp, 32]	//, current_index
	b	.L13		//
.L4:
// problem87.c:28:             current[current_index++] = s[i];
	ldrsw	x0, [sp, 36]	// _21, i
	ldr	x1, [sp, 8]	// tmp164, s
	add	x1, x1, x0	// _22, tmp164, _21
// problem87.c:28:             current[current_index++] = s[i];
	ldr	w0, [sp, 32]	// current_index.2_23, current_index
	add	w2, w0, 1	// tmp165, current_index.2_23,
	str	w2, [sp, 32]	// tmp165, current_index
// problem87.c:28:             current[current_index++] = s[i];
	ldrb	w2, [x1]	// _24, *_22
// problem87.c:28:             current[current_index++] = s[i];
	sxtw	x0, w0	// tmp166, current_index.2_23
	add	x1, sp, 64	// tmp167,,
	strb	w2, [x1, x0]	// tmp168, current[current_index.2_23]
.L13:
// problem87.c:11:     for (int i = 0; i <= len; i++) {
	ldr	w0, [sp, 36]	// tmp170, i
	add	w0, w0, 1	// tmp169, tmp170,
	str	w0, [sp, 36]	// tmp169, i
.L2:
// problem87.c:11:     for (int i = 0; i <= len; i++) {
	ldr	w1, [sp, 36]	// tmp171, i
	ldr	w0, [sp, 52]	// tmp172, len
	cmp	w1, w0	// tmp171, tmp172
	ble	.L14		//,
// problem87.c:32:     out[out_index] = '\0';
	ldrsw	x0, [sp, 28]	// _25, out_index
	ldr	x1, [sp, 56]	// tmp173, out
	add	x0, x1, x0	// _26, tmp173, _25
// problem87.c:32:     out[out_index] = '\0';
	strb	wzr, [x0]	//, *_26
// problem87.c:33:     return out;
	ldr	x0, [sp, 56]	// _53, out
	mov	x1, x0	// <retval>, _53
// problem87.c:34: }
	adrp	x0, :got:__stack_chk_guard	// tmp175,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp175,
	ldr	x3, [sp, 120]	// tmp177, D.5649
	ldr	x2, [x0]	// tmp178,
	subs	x3, x3, x2	// tmp177, tmp178
	mov	x2, 0	// tmp178
	beq	.L16		//,
	bl	__stack_chk_fail		//
.L16:
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
// problem87.c:46:     assert(strcmp(result, "Hi") == 0);
	cmp	w0, 0	// _1,
	beq	.L18		//,
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
// problem87.c:50:     assert(strcmp(result, "ehllo") == 0);
	cmp	w0, 0	// _2,
	beq	.L19		//,
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
// problem87.c:54:     assert(strcmp(result, "bemnru") == 0);
	cmp	w0, 0	// _3,
	beq	.L20		//,
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
// problem87.c:58:     assert(strcmp(result, "abcd") == 0);
	cmp	w0, 0	// _4,
	beq	.L21		//,
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
// problem87.c:62:     assert(strcmp(result, "Hello !!!Wdlor") == 0);
	cmp	w0, 0	// _5,
	beq	.L22		//,
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
// problem87.c:70:     assert(strcmp(result, ".Hi My aemn is Meirst .Rboot How aer ?ouy") == 0);
	cmp	w0, 0	// _7,
	beq	.L24		//,
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
