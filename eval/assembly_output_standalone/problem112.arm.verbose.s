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
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -192]!	//,,,
	.cfi_def_cfa_offset 192
	.cfi_offset 29, -192
	.cfi_offset 30, -184
	mov	x29, sp	//,
	str	x0, [sp, 40]	// test, test
	str	x1, [sp, 32]	// freq, freq
	str	x2, [sp, 24]	// max_count, max_count
	str	x3, [sp, 16]	// letters, letters
// eval/problem112//code.c:4: void func0(const char* test, int* freq, int* max_count, char* letters) {
	adrp	x0, :got:__stack_chk_guard	// tmp112,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp111, tmp112,
	ldr	x1, [x0]	// tmp158,
	str	x1, [sp, 184]	// tmp158, D.4455
	mov	x1, 0	// tmp158
// eval/problem112//code.c:5:     int local_freq[26] = {0}; // for 'a' to 'z'
	add	x0, sp, 80	// tmp113,,
	movi	v0.4s, 0	// tmp114
	stp	q0, q0, [x0]	// tmp114, tmp114, local_freq
	stp	q0, q0, [x0, 32]	// tmp114, tmp114, local_freq
	stp	q0, q0, [x0, 64]	// tmp114, tmp114, local_freq
	fmov	x1, d0	// tmp115, tmp114
	str	x1, [x0, 96]	// tmp115, local_freq
// eval/problem112//code.c:6:     int local_max = 0;
	str	wzr, [sp, 56]	//, local_max
// eval/problem112//code.c:7:     const char* ptr = test;
	ldr	x0, [sp, 40]	// tmp116, test
	str	x0, [sp, 72]	// tmp116, ptr
// eval/problem112//code.c:8:     int idx = 0;
	str	wzr, [sp, 60]	//, idx
// eval/problem112//code.c:10:     while (*ptr) {
	b	.L2		//
.L4:
// eval/problem112//code.c:11:         if (*ptr != ' ') {
	ldr	x0, [sp, 72]	// tmp117, ptr
	ldrb	w0, [x0]	// _1, *ptr_22
// eval/problem112//code.c:11:         if (*ptr != ' ') {
	cmp	w0, 32	// _1,
	beq	.L3		//,
// eval/problem112//code.c:12:             int letter_index = *ptr - 'a';
	ldr	x0, [sp, 72]	// tmp118, ptr
	ldrb	w0, [x0]	// _2, *ptr_22
// eval/problem112//code.c:12:             int letter_index = *ptr - 'a';
	sub	w0, w0, #97	// tmp119, _3,
	str	w0, [sp, 68]	// tmp119, letter_index
// eval/problem112//code.c:13:             local_freq[letter_index]++;
	ldrsw	x0, [sp, 68]	// tmp120, letter_index
	lsl	x0, x0, 2	// tmp121, tmp120,
	add	x1, sp, 80	// tmp122,,
	ldr	w0, [x1, x0]	// _4, local_freq[letter_index_47]
// eval/problem112//code.c:13:             local_freq[letter_index]++;
	add	w2, w0, 1	// _5, _4,
	ldrsw	x0, [sp, 68]	// tmp123, letter_index
	lsl	x0, x0, 2	// tmp124, tmp123,
	add	x1, sp, 80	// tmp125,,
	str	w2, [x1, x0]	// _5, local_freq[letter_index_47]
// eval/problem112//code.c:14:             if (local_freq[letter_index] > local_max) {
	ldrsw	x0, [sp, 68]	// tmp126, letter_index
	lsl	x0, x0, 2	// tmp127, tmp126,
	add	x1, sp, 80	// tmp128,,
	ldr	w0, [x1, x0]	// _6, local_freq[letter_index_47]
// eval/problem112//code.c:14:             if (local_freq[letter_index] > local_max) {
	ldr	w1, [sp, 56]	// tmp129, local_max
	cmp	w1, w0	// tmp129, _6
	bge	.L3		//,
// eval/problem112//code.c:15:                 local_max = local_freq[letter_index];
	ldrsw	x0, [sp, 68]	// tmp130, letter_index
	lsl	x0, x0, 2	// tmp131, tmp130,
	add	x1, sp, 80	// tmp132,,
	ldr	w0, [x1, x0]	// tmp133, local_freq[letter_index_47]
	str	w0, [sp, 56]	// tmp133, local_max
.L3:
// eval/problem112//code.c:18:         ptr++;
	ldr	x0, [sp, 72]	// tmp135, ptr
	add	x0, x0, 1	// tmp134, tmp135,
	str	x0, [sp, 72]	// tmp134, ptr
.L2:
// eval/problem112//code.c:10:     while (*ptr) {
	ldr	x0, [sp, 72]	// tmp136, ptr
	ldrb	w0, [x0]	// _7, *ptr_22
	cmp	w0, 0	// _7,
	bne	.L4		//,
// eval/problem112//code.c:21:     for (int i = 0; i < 26; i++) {
	str	wzr, [sp, 64]	//, i
// eval/problem112//code.c:21:     for (int i = 0; i < 26; i++) {
	b	.L5		//
.L7:
// eval/problem112//code.c:22:         freq[i] = local_freq[i];
	ldrsw	x0, [sp, 64]	// _8, i
	lsl	x0, x0, 2	// _9, _8,
	ldr	x1, [sp, 32]	// tmp137, freq
	add	x0, x1, x0	// _10, tmp137, _9
// eval/problem112//code.c:22:         freq[i] = local_freq[i];
	ldrsw	x1, [sp, 64]	// tmp138, i
	lsl	x1, x1, 2	// tmp139, tmp138,
	add	x2, sp, 80	// tmp140,,
	ldr	w1, [x2, x1]	// _11, local_freq[i_25]
// eval/problem112//code.c:22:         freq[i] = local_freq[i];
	str	w1, [x0]	// _11, *_10
// eval/problem112//code.c:23:         if (local_freq[i] == local_max) {
	ldrsw	x0, [sp, 64]	// tmp141, i
	lsl	x0, x0, 2	// tmp142, tmp141,
	add	x1, sp, 80	// tmp143,,
	ldr	w0, [x1, x0]	// _12, local_freq[i_25]
// eval/problem112//code.c:23:         if (local_freq[i] == local_max) {
	ldr	w1, [sp, 56]	// tmp144, local_max
	cmp	w1, w0	// tmp144, _12
	bne	.L6		//,
// eval/problem112//code.c:24:             letters[idx++] = 'a' + i;
	ldr	w0, [sp, 64]	// tmp145, i
	and	w1, w0, 255	// _13, tmp145
// eval/problem112//code.c:24:             letters[idx++] = 'a' + i;
	ldr	w0, [sp, 60]	// idx.0_14, idx
	add	w2, w0, 1	// tmp146, idx.0_14,
	str	w2, [sp, 60]	// tmp146, idx
	sxtw	x0, w0	// _15, idx.0_14
// eval/problem112//code.c:24:             letters[idx++] = 'a' + i;
	ldr	x2, [sp, 16]	// tmp147, letters
	add	x0, x2, x0	// _16, tmp147, _15
// eval/problem112//code.c:24:             letters[idx++] = 'a' + i;
	add	w1, w1, 97	// tmp148, _13,
	and	w1, w1, 255	// _17, tmp148
// eval/problem112//code.c:24:             letters[idx++] = 'a' + i;
	strb	w1, [x0]	// tmp149, *_16
.L6:
// eval/problem112//code.c:21:     for (int i = 0; i < 26; i++) {
	ldr	w0, [sp, 64]	// tmp151, i
	add	w0, w0, 1	// tmp150, tmp151,
	str	w0, [sp, 64]	// tmp150, i
.L5:
// eval/problem112//code.c:21:     for (int i = 0; i < 26; i++) {
	ldr	w0, [sp, 64]	// tmp152, i
	cmp	w0, 25	// tmp152,
	ble	.L7		//,
// eval/problem112//code.c:28:     *max_count = local_max;
	ldr	x0, [sp, 24]	// tmp153, max_count
	ldr	w1, [sp, 56]	// tmp154, local_max
	str	w1, [x0]	// tmp154, *max_count_37(D)
// eval/problem112//code.c:29:     letters[idx] = '\0';
	ldrsw	x0, [sp, 60]	// _18, idx
	ldr	x1, [sp, 16]	// tmp155, letters
	add	x0, x1, x0	// _19, tmp155, _18
// eval/problem112//code.c:29:     letters[idx] = '\0';
	strb	wzr, [x0]	//, *_19
// eval/problem112//code.c:30: }
	nop	
	adrp	x0, :got:__stack_chk_guard	// tmp157,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp156, tmp157,
	ldr	x2, [sp, 184]	// tmp159, D.4455
	ldr	x1, [x0]	// tmp160,
	subs	x2, x2, x1	// tmp159, tmp160
	mov	x1, 0	// tmp160
	beq	.L8		//,
	bl	__stack_chk_fail		//
.L8:
	ldp	x29, x30, [sp], 192	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
