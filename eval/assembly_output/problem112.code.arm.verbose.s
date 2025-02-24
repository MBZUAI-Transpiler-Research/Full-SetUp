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
.LFB0:
	.cfi_startproc
	sub	sp, sp, #192	//,,
	.cfi_def_cfa_offset 192
	stp	x29, x30, [sp, 176]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 176	//,,
	str	x0, [sp, 24]	// test, test
	str	x1, [sp, 16]	// freq, freq
	str	x2, [sp, 8]	// max_count, max_count
	str	x3, [sp]	// letters, letters
// code.c:4: void func0(const char* test, int* freq, int* max_count, char* letters) {
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp111,
	ldr	x1, [x0]	// tmp156,
	str	x1, [sp, 168]	// tmp156, D.5064
	mov	x1, 0	// tmp156
// code.c:5:     int local_freq[26] = {0}; // for 'a' to 'z'
	add	x0, sp, 64	// tmp112,,
	movi	v0.4s, 0	// tmp113
	stp	q0, q0, [x0]	// tmp113, tmp113, local_freq
	stp	q0, q0, [x0, 32]	// tmp113, tmp113, local_freq
	stp	q0, q0, [x0, 64]	// tmp113, tmp113, local_freq
	fmov	x1, d0	// tmp114, tmp113
	str	x1, [x0, 96]	// tmp114, local_freq
// code.c:6:     int local_max = 0;
	str	wzr, [sp, 40]	//, local_max
// code.c:7:     const char* ptr = test;
	ldr	x0, [sp, 24]	// tmp115, test
	str	x0, [sp, 56]	// tmp115, ptr
// code.c:8:     int idx = 0;
	str	wzr, [sp, 44]	//, idx
// code.c:10:     while (*ptr) {
	b	.L2		//
.L4:
// code.c:11:         if (*ptr != ' ') {
	ldr	x0, [sp, 56]	// tmp116, ptr
	ldrb	w0, [x0]	// _1, *ptr_22
// code.c:11:         if (*ptr != ' ') {
	cmp	w0, 32	// _1,
	beq	.L3		//,
// code.c:12:             int letter_index = *ptr - 'a';
	ldr	x0, [sp, 56]	// tmp117, ptr
	ldrb	w0, [x0]	// _2, *ptr_22
// code.c:12:             int letter_index = *ptr - 'a';
	sub	w0, w0, #97	// tmp118, _3,
	str	w0, [sp, 52]	// tmp118, letter_index
// code.c:13:             local_freq[letter_index]++;
	ldrsw	x0, [sp, 52]	// tmp119, letter_index
	lsl	x0, x0, 2	// tmp120, tmp119,
	add	x1, sp, 64	// tmp121,,
	ldr	w0, [x1, x0]	// _4, local_freq[letter_index_47]
// code.c:13:             local_freq[letter_index]++;
	add	w2, w0, 1	// _5, _4,
	ldrsw	x0, [sp, 52]	// tmp122, letter_index
	lsl	x0, x0, 2	// tmp123, tmp122,
	add	x1, sp, 64	// tmp124,,
	str	w2, [x1, x0]	// _5, local_freq[letter_index_47]
// code.c:14:             if (local_freq[letter_index] > local_max) {
	ldrsw	x0, [sp, 52]	// tmp125, letter_index
	lsl	x0, x0, 2	// tmp126, tmp125,
	add	x1, sp, 64	// tmp127,,
	ldr	w0, [x1, x0]	// _6, local_freq[letter_index_47]
// code.c:14:             if (local_freq[letter_index] > local_max) {
	ldr	w1, [sp, 40]	// tmp128, local_max
	cmp	w1, w0	// tmp128, _6
	bge	.L3		//,
// code.c:15:                 local_max = local_freq[letter_index];
	ldrsw	x0, [sp, 52]	// tmp129, letter_index
	lsl	x0, x0, 2	// tmp130, tmp129,
	add	x1, sp, 64	// tmp131,,
	ldr	w0, [x1, x0]	// tmp132, local_freq[letter_index_47]
	str	w0, [sp, 40]	// tmp132, local_max
.L3:
// code.c:18:         ptr++;
	ldr	x0, [sp, 56]	// tmp134, ptr
	add	x0, x0, 1	// tmp133, tmp134,
	str	x0, [sp, 56]	// tmp133, ptr
.L2:
// code.c:10:     while (*ptr) {
	ldr	x0, [sp, 56]	// tmp135, ptr
	ldrb	w0, [x0]	// _7, *ptr_22
	cmp	w0, 0	// _7,
	bne	.L4		//,
// code.c:21:     for (int i = 0; i < 26; i++) {
	str	wzr, [sp, 48]	//, i
// code.c:21:     for (int i = 0; i < 26; i++) {
	b	.L5		//
.L7:
// code.c:22:         freq[i] = local_freq[i];
	ldrsw	x0, [sp, 48]	// _8, i
	lsl	x0, x0, 2	// _9, _8,
	ldr	x1, [sp, 16]	// tmp136, freq
	add	x0, x1, x0	// _10, tmp136, _9
// code.c:22:         freq[i] = local_freq[i];
	ldrsw	x1, [sp, 48]	// tmp137, i
	lsl	x1, x1, 2	// tmp138, tmp137,
	add	x2, sp, 64	// tmp139,,
	ldr	w1, [x2, x1]	// _11, local_freq[i_25]
// code.c:22:         freq[i] = local_freq[i];
	str	w1, [x0]	// _11, *_10
// code.c:23:         if (local_freq[i] == local_max) {
	ldrsw	x0, [sp, 48]	// tmp140, i
	lsl	x0, x0, 2	// tmp141, tmp140,
	add	x1, sp, 64	// tmp142,,
	ldr	w0, [x1, x0]	// _12, local_freq[i_25]
// code.c:23:         if (local_freq[i] == local_max) {
	ldr	w1, [sp, 40]	// tmp143, local_max
	cmp	w1, w0	// tmp143, _12
	bne	.L6		//,
// code.c:24:             letters[idx++] = 'a' + i;
	ldr	w0, [sp, 48]	// tmp144, i
	and	w1, w0, 255	// _13, tmp144
// code.c:24:             letters[idx++] = 'a' + i;
	ldr	w0, [sp, 44]	// idx.0_14, idx
	add	w2, w0, 1	// tmp145, idx.0_14,
	str	w2, [sp, 44]	// tmp145, idx
	sxtw	x0, w0	// _15, idx.0_14
// code.c:24:             letters[idx++] = 'a' + i;
	ldr	x2, [sp]	// tmp146, letters
	add	x0, x2, x0	// _16, tmp146, _15
// code.c:24:             letters[idx++] = 'a' + i;
	add	w1, w1, 97	// tmp147, _13,
	and	w1, w1, 255	// _17, tmp147
// code.c:24:             letters[idx++] = 'a' + i;
	strb	w1, [x0]	// tmp148, *_16
.L6:
// code.c:21:     for (int i = 0; i < 26; i++) {
	ldr	w0, [sp, 48]	// tmp150, i
	add	w0, w0, 1	// tmp149, tmp150,
	str	w0, [sp, 48]	// tmp149, i
.L5:
// code.c:21:     for (int i = 0; i < 26; i++) {
	ldr	w0, [sp, 48]	// tmp151, i
	cmp	w0, 25	// tmp151,
	ble	.L7		//,
// code.c:28:     *max_count = local_max;
	ldr	x0, [sp, 8]	// tmp152, max_count
	ldr	w1, [sp, 40]	// tmp153, local_max
	str	w1, [x0]	// tmp153, *max_count_37(D)
// code.c:29:     letters[idx] = '\0';
	ldrsw	x0, [sp, 44]	// _18, idx
	ldr	x1, [sp]	// tmp154, letters
	add	x0, x1, x0	// _19, tmp154, _18
// code.c:29:     letters[idx] = '\0';
	strb	wzr, [x0]	//, *_19
// code.c:30: }
	nop	
	adrp	x0, :got:__stack_chk_guard	// tmp155,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp155,
	ldr	x2, [sp, 168]	// tmp157, D.5064
	ldr	x1, [x0]	// tmp158,
	subs	x2, x2, x1	// tmp157, tmp158
	mov	x1, 0	// tmp158
	beq	.L8		//,
	bl	__stack_chk_fail		//
.L8:
	ldp	x29, x30, [sp, 176]	//,,
	add	sp, sp, 192	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
