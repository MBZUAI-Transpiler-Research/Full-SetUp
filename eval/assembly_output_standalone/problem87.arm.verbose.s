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
	stp	x29, x30, [sp, -144]!	//,,,
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp	//,
	str	x0, [sp, 24]	// s, s
// eval/problem87//code.c:5: char* func0(const char* s) {
	adrp	x0, :got:__stack_chk_guard	// tmp121,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp120, tmp121,
	ldr	x1, [x0]	// tmp178,
	str	x1, [sp, 136]	// tmp178, D.4987
	mov	x1, 0	// tmp178
// eval/problem87//code.c:6:     int len = strlen(s);
	ldr	x0, [sp, 24]	//, s
	bl	strlen		//
// eval/problem87//code.c:6:     int len = strlen(s);
	str	w0, [sp, 68]	// tmp122, len
// eval/problem87//code.c:7:     char* out = malloc(len + 2); 
	ldr	w0, [sp, 68]	// tmp123, len
	add	w0, w0, 2	// _2, tmp123,
// eval/problem87//code.c:7:     char* out = malloc(len + 2); 
	sxtw	x0, w0	// _3, _2
	bl	malloc		//
	str	x0, [sp, 72]	// tmp124, out
// eval/problem87//code.c:9:     int out_index = 0, current_index = 0;
	str	wzr, [sp, 44]	//, out_index
// eval/problem87//code.c:9:     int out_index = 0, current_index = 0;
	str	wzr, [sp, 48]	//, current_index
// eval/problem87//code.c:11:     for (int i = 0; i <= len; i++) {
	str	wzr, [sp, 52]	//, i
// eval/problem87//code.c:11:     for (int i = 0; i <= len; i++) {
	b	.L2		//
.L14:
// eval/problem87//code.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	ldrsw	x0, [sp, 52]	// _4, i
	ldr	x1, [sp, 24]	// tmp125, s
	add	x0, x1, x0	// _5, tmp125, _4
	ldrb	w0, [x0]	// _6, *_5
// eval/problem87//code.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	cmp	w0, 32	// _6,
	beq	.L3		//,
// eval/problem87//code.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	ldrsw	x0, [sp, 52]	// _7, i
	ldr	x1, [sp, 24]	// tmp126, s
	add	x0, x1, x0	// _8, tmp126, _7
	ldrb	w0, [x0]	// _9, *_8
// eval/problem87//code.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	cmp	w0, 0	// _9,
	bne	.L4		//,
.L3:
// eval/problem87//code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	str	wzr, [sp, 56]	//, j
// eval/problem87//code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	b	.L5		//
.L9:
// eval/problem87//code.c:14:                 for (int k = j + 1; k < current_index; k++) {
	ldr	w0, [sp, 56]	// tmp128, j
	add	w0, w0, 1	// tmp127, tmp128,
	str	w0, [sp, 60]	// tmp127, k
// eval/problem87//code.c:14:                 for (int k = j + 1; k < current_index; k++) {
	b	.L6		//
.L8:
// eval/problem87//code.c:15:                     if (current[j] > current[k]) {
	ldrsw	x0, [sp, 56]	// tmp129, j
	add	x1, sp, 80	// tmp130,,
	ldrb	w1, [x1, x0]	// _10, current[j_34]
// eval/problem87//code.c:15:                     if (current[j] > current[k]) {
	ldrsw	x0, [sp, 60]	// tmp131, k
	add	x2, sp, 80	// tmp132,,
	ldrb	w0, [x2, x0]	// _11, current[k_35]
// eval/problem87//code.c:15:                     if (current[j] > current[k]) {
	cmp	w1, w0	// _10, _11
	bls	.L7		//,
// eval/problem87//code.c:16:                         char temp = current[j];
	ldrsw	x0, [sp, 56]	// tmp133, j
	add	x1, sp, 80	// tmp134,,
	ldrb	w0, [x1, x0]	// tmp135, current[j_34]
	strb	w0, [sp, 43]	// tmp135, temp
// eval/problem87//code.c:17:                         current[j] = current[k];
	ldrsw	x0, [sp, 60]	// tmp136, k
	add	x1, sp, 80	// tmp137,,
	ldrb	w2, [x1, x0]	// _12, current[k_35]
// eval/problem87//code.c:17:                         current[j] = current[k];
	ldrsw	x0, [sp, 56]	// tmp138, j
	add	x1, sp, 80	// tmp139,,
	strb	w2, [x1, x0]	// tmp140, current[j_34]
// eval/problem87//code.c:18:                         current[k] = temp;
	ldrsw	x0, [sp, 60]	// tmp141, k
	add	x1, sp, 80	// tmp142,,
	ldrb	w2, [sp, 43]	// tmp143, temp
	strb	w2, [x1, x0]	// tmp143, current[k_35]
.L7:
// eval/problem87//code.c:14:                 for (int k = j + 1; k < current_index; k++) {
	ldr	w0, [sp, 60]	// tmp145, k
	add	w0, w0, 1	// tmp144, tmp145,
	str	w0, [sp, 60]	// tmp144, k
.L6:
// eval/problem87//code.c:14:                 for (int k = j + 1; k < current_index; k++) {
	ldr	w1, [sp, 60]	// tmp146, k
	ldr	w0, [sp, 48]	// tmp147, current_index
	cmp	w1, w0	// tmp146, tmp147
	blt	.L8		//,
// eval/problem87//code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	ldr	w0, [sp, 56]	// tmp149, j
	add	w0, w0, 1	// tmp148, tmp149,
	str	w0, [sp, 56]	// tmp148, j
.L5:
// eval/problem87//code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	ldr	w0, [sp, 48]	// tmp150, current_index
	sub	w0, w0, #1	// _13, tmp150,
// eval/problem87//code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	ldr	w1, [sp, 56]	// tmp151, j
	cmp	w1, w0	// tmp151, _13
	blt	.L9		//,
// eval/problem87//code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	ldr	w0, [sp, 44]	// tmp152, out_index
	cmp	w0, 0	// tmp152,
	ble	.L10		//,
// eval/problem87//code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	ldr	w0, [sp, 44]	// out_index.0_14, out_index
	add	w1, w0, 1	// tmp153, out_index.0_14,
	str	w1, [sp, 44]	// tmp153, out_index
	sxtw	x0, w0	// _15, out_index.0_14
// eval/problem87//code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	ldr	x1, [sp, 72]	// tmp154, out
	add	x0, x1, x0	// _16, tmp154, _15
// eval/problem87//code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	mov	w1, 32	// tmp155,
	strb	w1, [x0]	// tmp155, *_16
.L10:
// eval/problem87//code.c:23:             for (int j = 0; j < current_index; j++) {
	str	wzr, [sp, 64]	//, j
// eval/problem87//code.c:23:             for (int j = 0; j < current_index; j++) {
	b	.L11		//
.L12:
// eval/problem87//code.c:24:                 out[out_index++] = current[j];
	ldr	w0, [sp, 44]	// out_index.1_17, out_index
	add	w1, w0, 1	// tmp156, out_index.1_17,
	str	w1, [sp, 44]	// tmp156, out_index
	sxtw	x0, w0	// _18, out_index.1_17
// eval/problem87//code.c:24:                 out[out_index++] = current[j];
	ldr	x1, [sp, 72]	// tmp157, out
	add	x0, x1, x0	// _19, tmp157, _18
// eval/problem87//code.c:24:                 out[out_index++] = current[j];
	ldrsw	x1, [sp, 64]	// tmp158, j
	add	x2, sp, 80	// tmp159,,
	ldrb	w1, [x2, x1]	// _20, current[j_36]
// eval/problem87//code.c:24:                 out[out_index++] = current[j];
	strb	w1, [x0]	// tmp160, *_19
// eval/problem87//code.c:23:             for (int j = 0; j < current_index; j++) {
	ldr	w0, [sp, 64]	// tmp162, j
	add	w0, w0, 1	// tmp161, tmp162,
	str	w0, [sp, 64]	// tmp161, j
.L11:
// eval/problem87//code.c:23:             for (int j = 0; j < current_index; j++) {
	ldr	w1, [sp, 64]	// tmp163, j
	ldr	w0, [sp, 48]	// tmp164, current_index
	cmp	w1, w0	// tmp163, tmp164
	blt	.L12		//,
// eval/problem87//code.c:26:             current_index = 0;
	str	wzr, [sp, 48]	//, current_index
	b	.L13		//
.L4:
// eval/problem87//code.c:28:             current[current_index++] = s[i];
	ldrsw	x0, [sp, 52]	// _21, i
	ldr	x1, [sp, 24]	// tmp165, s
	add	x1, x1, x0	// _22, tmp165, _21
// eval/problem87//code.c:28:             current[current_index++] = s[i];
	ldr	w0, [sp, 48]	// current_index.2_23, current_index
	add	w2, w0, 1	// tmp166, current_index.2_23,
	str	w2, [sp, 48]	// tmp166, current_index
// eval/problem87//code.c:28:             current[current_index++] = s[i];
	ldrb	w2, [x1]	// _24, *_22
// eval/problem87//code.c:28:             current[current_index++] = s[i];
	sxtw	x0, w0	// tmp167, current_index.2_23
	add	x1, sp, 80	// tmp168,,
	strb	w2, [x1, x0]	// tmp169, current[current_index.2_23]
.L13:
// eval/problem87//code.c:11:     for (int i = 0; i <= len; i++) {
	ldr	w0, [sp, 52]	// tmp171, i
	add	w0, w0, 1	// tmp170, tmp171,
	str	w0, [sp, 52]	// tmp170, i
.L2:
// eval/problem87//code.c:11:     for (int i = 0; i <= len; i++) {
	ldr	w1, [sp, 52]	// tmp172, i
	ldr	w0, [sp, 68]	// tmp173, len
	cmp	w1, w0	// tmp172, tmp173
	ble	.L14		//,
// eval/problem87//code.c:32:     out[out_index] = '\0';
	ldrsw	x0, [sp, 44]	// _25, out_index
	ldr	x1, [sp, 72]	// tmp174, out
	add	x0, x1, x0	// _26, tmp174, _25
// eval/problem87//code.c:32:     out[out_index] = '\0';
	strb	wzr, [x0]	//, *_26
// eval/problem87//code.c:33:     return out;
	ldr	x0, [sp, 72]	// _53, out
	mov	x1, x0	// <retval>, _53
// eval/problem87//code.c:34: }
	adrp	x0, :got:__stack_chk_guard	// tmp177,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp176, tmp177,
	ldr	x3, [sp, 136]	// tmp179, D.4987
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
