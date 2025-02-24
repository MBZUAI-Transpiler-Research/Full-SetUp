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
	str	x0, [sp, 8]	// s, s
// code.c:5: char* func0(const char* s) {
	adrp	x0, :got:__stack_chk_guard	// tmp120,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp120,
	ldr	x1, [x0]	// tmp176,
	str	x1, [sp, 120]	// tmp176, D.5603
	mov	x1, 0	// tmp176
// code.c:6:     int len = strlen(s);
	ldr	x0, [sp, 8]	//, s
	bl	strlen		//
// code.c:6:     int len = strlen(s);
	str	w0, [sp, 52]	// tmp121, len
// code.c:7:     char* out = malloc(len + 2); 
	ldr	w0, [sp, 52]	// tmp122, len
	add	w0, w0, 2	// _2, tmp122,
// code.c:7:     char* out = malloc(len + 2); 
	sxtw	x0, w0	// _3, _2
	bl	malloc		//
	str	x0, [sp, 56]	// tmp123, out
// code.c:9:     int out_index = 0, current_index = 0;
	str	wzr, [sp, 28]	//, out_index
// code.c:9:     int out_index = 0, current_index = 0;
	str	wzr, [sp, 32]	//, current_index
// code.c:11:     for (int i = 0; i <= len; i++) {
	str	wzr, [sp, 36]	//, i
// code.c:11:     for (int i = 0; i <= len; i++) {
	b	.L2		//
.L14:
// code.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	ldrsw	x0, [sp, 36]	// _4, i
	ldr	x1, [sp, 8]	// tmp124, s
	add	x0, x1, x0	// _5, tmp124, _4
	ldrb	w0, [x0]	// _6, *_5
// code.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	cmp	w0, 32	// _6,
	beq	.L3		//,
// code.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	ldrsw	x0, [sp, 36]	// _7, i
	ldr	x1, [sp, 8]	// tmp125, s
	add	x0, x1, x0	// _8, tmp125, _7
	ldrb	w0, [x0]	// _9, *_8
// code.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	cmp	w0, 0	// _9,
	bne	.L4		//,
.L3:
// code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	str	wzr, [sp, 40]	//, j
// code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	b	.L5		//
.L9:
// code.c:14:                 for (int k = j + 1; k < current_index; k++) {
	ldr	w0, [sp, 40]	// tmp127, j
	add	w0, w0, 1	// tmp126, tmp127,
	str	w0, [sp, 44]	// tmp126, k
// code.c:14:                 for (int k = j + 1; k < current_index; k++) {
	b	.L6		//
.L8:
// code.c:15:                     if (current[j] > current[k]) {
	ldrsw	x0, [sp, 40]	// tmp128, j
	add	x1, sp, 64	// tmp129,,
	ldrb	w1, [x1, x0]	// _10, current[j_34]
// code.c:15:                     if (current[j] > current[k]) {
	ldrsw	x0, [sp, 44]	// tmp130, k
	add	x2, sp, 64	// tmp131,,
	ldrb	w0, [x2, x0]	// _11, current[k_35]
// code.c:15:                     if (current[j] > current[k]) {
	cmp	w1, w0	// _10, _11
	bls	.L7		//,
// code.c:16:                         char temp = current[j];
	ldrsw	x0, [sp, 40]	// tmp132, j
	add	x1, sp, 64	// tmp133,,
	ldrb	w0, [x1, x0]	// tmp134, current[j_34]
	strb	w0, [sp, 27]	// tmp134, temp
// code.c:17:                         current[j] = current[k];
	ldrsw	x0, [sp, 44]	// tmp135, k
	add	x1, sp, 64	// tmp136,,
	ldrb	w2, [x1, x0]	// _12, current[k_35]
// code.c:17:                         current[j] = current[k];
	ldrsw	x0, [sp, 40]	// tmp137, j
	add	x1, sp, 64	// tmp138,,
	strb	w2, [x1, x0]	// tmp139, current[j_34]
// code.c:18:                         current[k] = temp;
	ldrsw	x0, [sp, 44]	// tmp140, k
	add	x1, sp, 64	// tmp141,,
	ldrb	w2, [sp, 27]	// tmp142, temp
	strb	w2, [x1, x0]	// tmp142, current[k_35]
.L7:
// code.c:14:                 for (int k = j + 1; k < current_index; k++) {
	ldr	w0, [sp, 44]	// tmp144, k
	add	w0, w0, 1	// tmp143, tmp144,
	str	w0, [sp, 44]	// tmp143, k
.L6:
// code.c:14:                 for (int k = j + 1; k < current_index; k++) {
	ldr	w1, [sp, 44]	// tmp145, k
	ldr	w0, [sp, 32]	// tmp146, current_index
	cmp	w1, w0	// tmp145, tmp146
	blt	.L8		//,
// code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	ldr	w0, [sp, 40]	// tmp148, j
	add	w0, w0, 1	// tmp147, tmp148,
	str	w0, [sp, 40]	// tmp147, j
.L5:
// code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	ldr	w0, [sp, 32]	// tmp149, current_index
	sub	w0, w0, #1	// _13, tmp149,
// code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	ldr	w1, [sp, 40]	// tmp150, j
	cmp	w1, w0	// tmp150, _13
	blt	.L9		//,
// code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	ldr	w0, [sp, 28]	// tmp151, out_index
	cmp	w0, 0	// tmp151,
	ble	.L10		//,
// code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	ldr	w0, [sp, 28]	// out_index.0_14, out_index
	add	w1, w0, 1	// tmp152, out_index.0_14,
	str	w1, [sp, 28]	// tmp152, out_index
	sxtw	x0, w0	// _15, out_index.0_14
// code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	ldr	x1, [sp, 56]	// tmp153, out
	add	x0, x1, x0	// _16, tmp153, _15
// code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	mov	w1, 32	// tmp154,
	strb	w1, [x0]	// tmp154, *_16
.L10:
// code.c:23:             for (int j = 0; j < current_index; j++) {
	str	wzr, [sp, 48]	//, j
// code.c:23:             for (int j = 0; j < current_index; j++) {
	b	.L11		//
.L12:
// code.c:24:                 out[out_index++] = current[j];
	ldr	w0, [sp, 28]	// out_index.1_17, out_index
	add	w1, w0, 1	// tmp155, out_index.1_17,
	str	w1, [sp, 28]	// tmp155, out_index
	sxtw	x0, w0	// _18, out_index.1_17
// code.c:24:                 out[out_index++] = current[j];
	ldr	x1, [sp, 56]	// tmp156, out
	add	x0, x1, x0	// _19, tmp156, _18
// code.c:24:                 out[out_index++] = current[j];
	ldrsw	x1, [sp, 48]	// tmp157, j
	add	x2, sp, 64	// tmp158,,
	ldrb	w1, [x2, x1]	// _20, current[j_36]
// code.c:24:                 out[out_index++] = current[j];
	strb	w1, [x0]	// tmp159, *_19
// code.c:23:             for (int j = 0; j < current_index; j++) {
	ldr	w0, [sp, 48]	// tmp161, j
	add	w0, w0, 1	// tmp160, tmp161,
	str	w0, [sp, 48]	// tmp160, j
.L11:
// code.c:23:             for (int j = 0; j < current_index; j++) {
	ldr	w1, [sp, 48]	// tmp162, j
	ldr	w0, [sp, 32]	// tmp163, current_index
	cmp	w1, w0	// tmp162, tmp163
	blt	.L12		//,
// code.c:26:             current_index = 0;
	str	wzr, [sp, 32]	//, current_index
	b	.L13		//
.L4:
// code.c:28:             current[current_index++] = s[i];
	ldrsw	x0, [sp, 36]	// _21, i
	ldr	x1, [sp, 8]	// tmp164, s
	add	x1, x1, x0	// _22, tmp164, _21
// code.c:28:             current[current_index++] = s[i];
	ldr	w0, [sp, 32]	// current_index.2_23, current_index
	add	w2, w0, 1	// tmp165, current_index.2_23,
	str	w2, [sp, 32]	// tmp165, current_index
// code.c:28:             current[current_index++] = s[i];
	ldrb	w2, [x1]	// _24, *_22
// code.c:28:             current[current_index++] = s[i];
	sxtw	x0, w0	// tmp166, current_index.2_23
	add	x1, sp, 64	// tmp167,,
	strb	w2, [x1, x0]	// tmp168, current[current_index.2_23]
.L13:
// code.c:11:     for (int i = 0; i <= len; i++) {
	ldr	w0, [sp, 36]	// tmp170, i
	add	w0, w0, 1	// tmp169, tmp170,
	str	w0, [sp, 36]	// tmp169, i
.L2:
// code.c:11:     for (int i = 0; i <= len; i++) {
	ldr	w1, [sp, 36]	// tmp171, i
	ldr	w0, [sp, 52]	// tmp172, len
	cmp	w1, w0	// tmp171, tmp172
	ble	.L14		//,
// code.c:32:     out[out_index] = '\0';
	ldrsw	x0, [sp, 28]	// _25, out_index
	ldr	x1, [sp, 56]	// tmp173, out
	add	x0, x1, x0	// _26, tmp173, _25
// code.c:32:     out[out_index] = '\0';
	strb	wzr, [x0]	//, *_26
// code.c:33:     return out;
	ldr	x0, [sp, 56]	// _53, out
	mov	x1, x0	// <retval>, _53
// code.c:34: }
	adrp	x0, :got:__stack_chk_guard	// tmp175,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp175,
	ldr	x3, [sp, 120]	// tmp177, D.5603
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
