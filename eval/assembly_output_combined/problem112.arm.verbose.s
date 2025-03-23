	.arch armv8-a
	.file	"problem112.c"
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
// problem112.c:4: void func0(const char* test, int* freq, int* max_count, char* letters) {
	adrp	x0, :got:__stack_chk_guard	// tmp112,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp111, tmp112,
	ldr	x1, [x0]	// tmp158,
	str	x1, [sp, 184]	// tmp158, D.4539
	mov	x1, 0	// tmp158
// problem112.c:5:     int local_freq[26] = {0}; // for 'a' to 'z'
	add	x0, sp, 80	// tmp113,,
	movi	v0.4s, 0	// tmp114
	stp	q0, q0, [x0]	// tmp114, tmp114, local_freq
	stp	q0, q0, [x0, 32]	// tmp114, tmp114, local_freq
	stp	q0, q0, [x0, 64]	// tmp114, tmp114, local_freq
	fmov	x1, d0	// tmp115, tmp114
	str	x1, [x0, 96]	// tmp115, local_freq
// problem112.c:6:     int local_max = 0;
	str	wzr, [sp, 56]	//, local_max
// problem112.c:7:     const char* ptr = test;
	ldr	x0, [sp, 40]	// tmp116, test
	str	x0, [sp, 72]	// tmp116, ptr
// problem112.c:8:     int idx = 0;
	str	wzr, [sp, 60]	//, idx
// problem112.c:10:     while (*ptr) {
	b	.L2		//
.L4:
// problem112.c:11:         if (*ptr != ' ') {
	ldr	x0, [sp, 72]	// tmp117, ptr
	ldrb	w0, [x0]	// _1, *ptr_22
// problem112.c:11:         if (*ptr != ' ') {
	cmp	w0, 32	// _1,
	beq	.L3		//,
// problem112.c:12:             int letter_index = *ptr - 'a';
	ldr	x0, [sp, 72]	// tmp118, ptr
	ldrb	w0, [x0]	// _2, *ptr_22
// problem112.c:12:             int letter_index = *ptr - 'a';
	sub	w0, w0, #97	// tmp119, _3,
	str	w0, [sp, 68]	// tmp119, letter_index
// problem112.c:13:             local_freq[letter_index]++;
	ldrsw	x0, [sp, 68]	// tmp120, letter_index
	lsl	x0, x0, 2	// tmp121, tmp120,
	add	x1, sp, 80	// tmp122,,
	ldr	w0, [x1, x0]	// _4, local_freq[letter_index_47]
// problem112.c:13:             local_freq[letter_index]++;
	add	w2, w0, 1	// _5, _4,
	ldrsw	x0, [sp, 68]	// tmp123, letter_index
	lsl	x0, x0, 2	// tmp124, tmp123,
	add	x1, sp, 80	// tmp125,,
	str	w2, [x1, x0]	// _5, local_freq[letter_index_47]
// problem112.c:14:             if (local_freq[letter_index] > local_max) {
	ldrsw	x0, [sp, 68]	// tmp126, letter_index
	lsl	x0, x0, 2	// tmp127, tmp126,
	add	x1, sp, 80	// tmp128,,
	ldr	w0, [x1, x0]	// _6, local_freq[letter_index_47]
// problem112.c:14:             if (local_freq[letter_index] > local_max) {
	ldr	w1, [sp, 56]	// tmp129, local_max
	cmp	w1, w0	// tmp129, _6
	bge	.L3		//,
// problem112.c:15:                 local_max = local_freq[letter_index];
	ldrsw	x0, [sp, 68]	// tmp130, letter_index
	lsl	x0, x0, 2	// tmp131, tmp130,
	add	x1, sp, 80	// tmp132,,
	ldr	w0, [x1, x0]	// tmp133, local_freq[letter_index_47]
	str	w0, [sp, 56]	// tmp133, local_max
.L3:
// problem112.c:18:         ptr++;
	ldr	x0, [sp, 72]	// tmp135, ptr
	add	x0, x0, 1	// tmp134, tmp135,
	str	x0, [sp, 72]	// tmp134, ptr
.L2:
// problem112.c:10:     while (*ptr) {
	ldr	x0, [sp, 72]	// tmp136, ptr
	ldrb	w0, [x0]	// _7, *ptr_22
	cmp	w0, 0	// _7,
	bne	.L4		//,
// problem112.c:21:     for (int i = 0; i < 26; i++) {
	str	wzr, [sp, 64]	//, i
// problem112.c:21:     for (int i = 0; i < 26; i++) {
	b	.L5		//
.L7:
// problem112.c:22:         freq[i] = local_freq[i];
	ldrsw	x0, [sp, 64]	// _8, i
	lsl	x0, x0, 2	// _9, _8,
	ldr	x1, [sp, 32]	// tmp137, freq
	add	x0, x1, x0	// _10, tmp137, _9
// problem112.c:22:         freq[i] = local_freq[i];
	ldrsw	x1, [sp, 64]	// tmp138, i
	lsl	x1, x1, 2	// tmp139, tmp138,
	add	x2, sp, 80	// tmp140,,
	ldr	w1, [x2, x1]	// _11, local_freq[i_25]
// problem112.c:22:         freq[i] = local_freq[i];
	str	w1, [x0]	// _11, *_10
// problem112.c:23:         if (local_freq[i] == local_max) {
	ldrsw	x0, [sp, 64]	// tmp141, i
	lsl	x0, x0, 2	// tmp142, tmp141,
	add	x1, sp, 80	// tmp143,,
	ldr	w0, [x1, x0]	// _12, local_freq[i_25]
// problem112.c:23:         if (local_freq[i] == local_max) {
	ldr	w1, [sp, 56]	// tmp144, local_max
	cmp	w1, w0	// tmp144, _12
	bne	.L6		//,
// problem112.c:24:             letters[idx++] = 'a' + i;
	ldr	w0, [sp, 64]	// tmp145, i
	and	w1, w0, 255	// _13, tmp145
// problem112.c:24:             letters[idx++] = 'a' + i;
	ldr	w0, [sp, 60]	// idx.0_14, idx
	add	w2, w0, 1	// tmp146, idx.0_14,
	str	w2, [sp, 60]	// tmp146, idx
	sxtw	x0, w0	// _15, idx.0_14
// problem112.c:24:             letters[idx++] = 'a' + i;
	ldr	x2, [sp, 16]	// tmp147, letters
	add	x0, x2, x0	// _16, tmp147, _15
// problem112.c:24:             letters[idx++] = 'a' + i;
	add	w1, w1, 97	// tmp148, _13,
	and	w1, w1, 255	// _17, tmp148
// problem112.c:24:             letters[idx++] = 'a' + i;
	strb	w1, [x0]	// tmp149, *_16
.L6:
// problem112.c:21:     for (int i = 0; i < 26; i++) {
	ldr	w0, [sp, 64]	// tmp151, i
	add	w0, w0, 1	// tmp150, tmp151,
	str	w0, [sp, 64]	// tmp150, i
.L5:
// problem112.c:21:     for (int i = 0; i < 26; i++) {
	ldr	w0, [sp, 64]	// tmp152, i
	cmp	w0, 25	// tmp152,
	ble	.L7		//,
// problem112.c:28:     *max_count = local_max;
	ldr	x0, [sp, 24]	// tmp153, max_count
	ldr	w1, [sp, 56]	// tmp154, local_max
	str	w1, [x0]	// tmp154, *max_count_37(D)
// problem112.c:29:     letters[idx] = '\0';
	ldrsw	x0, [sp, 60]	// _18, idx
	ldr	x1, [sp, 16]	// tmp155, letters
	add	x0, x1, x0	// _19, tmp155, _18
// problem112.c:29:     letters[idx] = '\0';
	strb	wzr, [x0]	//, *_19
// problem112.c:30: }
	nop	
	adrp	x0, :got:__stack_chk_guard	// tmp157,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp156, tmp157,
	ldr	x2, [sp, 184]	// tmp159, D.4539
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
	.align	2
	.global	issame
	.type	issame, %function
issame:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #64	//,,
	.cfi_def_cfa_offset 64
	str	x0, [sp, 40]	// freq1, freq1
	str	x1, [sp, 32]	// letters1, letters1
	str	w2, [sp, 28]	// max_count1, max_count1
	str	x3, [sp, 16]	// freq2, freq2
	str	x4, [sp, 8]	// letters2, letters2
	str	w5, [sp, 24]	// max_count2, max_count2
// problem112.c:40:     if (max_count1 != max_count2) return false;
	ldr	w1, [sp, 28]	// tmp132, max_count1
	ldr	w0, [sp, 24]	// tmp133, max_count2
	cmp	w1, w0	// tmp132, tmp133
	beq	.L10		//,
// problem112.c:40:     if (max_count1 != max_count2) return false;
	mov	w0, 0	// _41,
	b	.L11		//
.L10:
// problem112.c:41:     for (int i = 0; letters1[i] != '\0'; i++) {
	str	wzr, [sp, 56]	//, i
// problem112.c:41:     for (int i = 0; letters1[i] != '\0'; i++) {
	b	.L12		//
.L14:
// problem112.c:42:         if (freq1[letters1[i] - 'a'] != freq2[letters1[i] - 'a']) return false;
	ldrsw	x0, [sp, 56]	// _1, i
	ldr	x1, [sp, 32]	// tmp134, letters1
	add	x0, x1, x0	// _2, tmp134, _1
	ldrb	w0, [x0]	// _3, *_2
	and	x0, x0, 255	// _4, _3
// problem112.c:42:         if (freq1[letters1[i] - 'a'] != freq2[letters1[i] - 'a']) return false;
	lsl	x0, x0, 2	// _5, _4,
	sub	x0, x0, #388	// _6, _5,
	ldr	x1, [sp, 40]	// tmp135, freq1
	add	x0, x1, x0	// _7, tmp135, _6
	ldr	w1, [x0]	// _8, *_7
// problem112.c:42:         if (freq1[letters1[i] - 'a'] != freq2[letters1[i] - 'a']) return false;
	ldrsw	x0, [sp, 56]	// _9, i
	ldr	x2, [sp, 32]	// tmp136, letters1
	add	x0, x2, x0	// _10, tmp136, _9
	ldrb	w0, [x0]	// _11, *_10
	and	x0, x0, 255	// _12, _11
// problem112.c:42:         if (freq1[letters1[i] - 'a'] != freq2[letters1[i] - 'a']) return false;
	lsl	x0, x0, 2	// _13, _12,
	sub	x0, x0, #388	// _14, _13,
	ldr	x2, [sp, 16]	// tmp137, freq2
	add	x0, x2, x0	// _15, tmp137, _14
	ldr	w0, [x0]	// _16, *_15
// problem112.c:42:         if (freq1[letters1[i] - 'a'] != freq2[letters1[i] - 'a']) return false;
	cmp	w1, w0	// _8, _16
	beq	.L13		//,
// problem112.c:42:         if (freq1[letters1[i] - 'a'] != freq2[letters1[i] - 'a']) return false;
	mov	w0, 0	// _41,
	b	.L11		//
.L13:
// problem112.c:41:     for (int i = 0; letters1[i] != '\0'; i++) {
	ldr	w0, [sp, 56]	// tmp139, i
	add	w0, w0, 1	// tmp138, tmp139,
	str	w0, [sp, 56]	// tmp138, i
.L12:
// problem112.c:41:     for (int i = 0; letters1[i] != '\0'; i++) {
	ldrsw	x0, [sp, 56]	// _17, i
	ldr	x1, [sp, 32]	// tmp140, letters1
	add	x0, x1, x0	// _18, tmp140, _17
	ldrb	w0, [x0]	// _19, *_18
// problem112.c:41:     for (int i = 0; letters1[i] != '\0'; i++) {
	cmp	w0, 0	// _19,
	bne	.L14		//,
// problem112.c:44:     for (int i = 0; letters2[i] != '\0'; i++) {
	str	wzr, [sp, 60]	//, i
// problem112.c:44:     for (int i = 0; letters2[i] != '\0'; i++) {
	b	.L15		//
.L17:
// problem112.c:45:         if (freq2[letters2[i] - 'a'] != freq1[letters2[i] - 'a']) return false;
	ldrsw	x0, [sp, 60]	// _20, i
	ldr	x1, [sp, 8]	// tmp141, letters2
	add	x0, x1, x0	// _21, tmp141, _20
	ldrb	w0, [x0]	// _22, *_21
	and	x0, x0, 255	// _23, _22
// problem112.c:45:         if (freq2[letters2[i] - 'a'] != freq1[letters2[i] - 'a']) return false;
	lsl	x0, x0, 2	// _24, _23,
	sub	x0, x0, #388	// _25, _24,
	ldr	x1, [sp, 16]	// tmp142, freq2
	add	x0, x1, x0	// _26, tmp142, _25
	ldr	w1, [x0]	// _27, *_26
// problem112.c:45:         if (freq2[letters2[i] - 'a'] != freq1[letters2[i] - 'a']) return false;
	ldrsw	x0, [sp, 60]	// _28, i
	ldr	x2, [sp, 8]	// tmp143, letters2
	add	x0, x2, x0	// _29, tmp143, _28
	ldrb	w0, [x0]	// _30, *_29
	and	x0, x0, 255	// _31, _30
// problem112.c:45:         if (freq2[letters2[i] - 'a'] != freq1[letters2[i] - 'a']) return false;
	lsl	x0, x0, 2	// _32, _31,
	sub	x0, x0, #388	// _33, _32,
	ldr	x2, [sp, 40]	// tmp144, freq1
	add	x0, x2, x0	// _34, tmp144, _33
	ldr	w0, [x0]	// _35, *_34
// problem112.c:45:         if (freq2[letters2[i] - 'a'] != freq1[letters2[i] - 'a']) return false;
	cmp	w1, w0	// _27, _35
	beq	.L16		//,
// problem112.c:45:         if (freq2[letters2[i] - 'a'] != freq1[letters2[i] - 'a']) return false;
	mov	w0, 0	// _41,
	b	.L11		//
.L16:
// problem112.c:44:     for (int i = 0; letters2[i] != '\0'; i++) {
	ldr	w0, [sp, 60]	// tmp146, i
	add	w0, w0, 1	// tmp145, tmp146,
	str	w0, [sp, 60]	// tmp145, i
.L15:
// problem112.c:44:     for (int i = 0; letters2[i] != '\0'; i++) {
	ldrsw	x0, [sp, 60]	// _36, i
	ldr	x1, [sp, 8]	// tmp147, letters2
	add	x0, x1, x0	// _37, tmp147, _36
	ldrb	w0, [x0]	// _38, *_37
// problem112.c:44:     for (int i = 0; letters2[i] != '\0'; i++) {
	cmp	w0, 0	// _38,
	bne	.L17		//,
// problem112.c:47:     return true;
	mov	w0, 1	// _41,
.L11:
// problem112.c:48: }
	add	sp, sp, 64	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC0:
	.string	"a b b a"
	.align	3
.LC1:
	.string	"ab"
	.align	3
.LC2:
	.string	"problem112.c"
	.align	3
.LC3:
	.string	"issame(counts1, letters1, max_count1, counts2, \"ab\", 2)"
	.align	3
.LC4:
	.string	"a b c a b"
	.align	3
.LC5:
	.string	"a b c d g"
	.align	3
.LC6:
	.string	"abcdg"
	.align	3
.LC7:
	.string	"issame(counts1, letters1, max_count1, counts2, \"abcdg\", 1)"
	.align	3
.LC8:
	.string	"r t g"
	.align	3
.LC9:
	.string	"rtg"
	.align	3
.LC10:
	.string	"issame(counts1, letters1, max_count1, counts2, \"rtg\", 1)"
	.align	3
.LC11:
	.string	"b b b b a"
	.align	3
.LC12:
	.string	"b"
	.align	3
.LC13:
	.string	"issame(counts1, letters1, max_count1, counts2, \"b\", 4)"
	.align	3
.LC14:
	.string	"a"
	.align	3
.LC15:
	.string	"issame(counts1, letters1, max_count1, counts2, \"a\", 1)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -272]!	//,,,
	.cfi_def_cfa_offset 272
	.cfi_offset 29, -272
	.cfi_offset 30, -264
	mov	x29, sp	//,
// problem112.c:50: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp117,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp116, tmp117,
	ldr	x1, [x0]	// tmp221,
	str	x1, [sp, 264]	// tmp221, D.4543
	mov	x1, 0	// tmp221
// problem112.c:55:     func0("a b b a", counts1, &max_count1, letters1);
	add	x2, sp, 232	// tmp118,,
	add	x1, sp, 20	// tmp119,,
	add	x0, sp, 24	// tmp120,,
	mov	x3, x2	//, tmp118
	mov	x2, x1	//, tmp119
	mov	x1, x0	//, tmp120
	adrp	x0, .LC0	// tmp121,
	add	x0, x0, :lo12:.LC0	//, tmp121,
	bl	func0		//
// problem112.c:56:     memset(counts2, 0, sizeof(counts2));
	add	x0, sp, 128	// tmp122,,
	mov	x2, 104	//,
	mov	w1, 0	//,
	bl	memset		//
// problem112.c:57:     counts2['a' - 'a'] = 2;
	mov	w0, 2	// tmp123,
	str	w0, [sp, 128]	// tmp123, counts2[0]
// problem112.c:58:     counts2['b' - 'a'] = 2;
	mov	w0, 2	// tmp124,
	str	w0, [sp, 132]	// tmp124, counts2[1]
// problem112.c:59:     assert(issame(counts1, letters1, max_count1, counts2, "ab", 2));
	ldr	w2, [sp, 20]	// max_count1.1_1, max_count1
	add	x3, sp, 128	// tmp125,,
	add	x1, sp, 232	// tmp126,,
	add	x6, sp, 24	// tmp127,,
	mov	w5, 2	//,
	adrp	x0, .LC1	// tmp128,
	add	x4, x0, :lo12:.LC1	//, tmp128,
	mov	x0, x6	//, tmp127
	bl	issame		//
	and	w0, w0, 255	// _2, tmp129
	cmp	w0, 0	// _2,
	bne	.L19		//,
// problem112.c:59:     assert(issame(counts1, letters1, max_count1, counts2, "ab", 2));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp130,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp130,
	mov	w2, 59	//,
	adrp	x0, .LC2	// tmp131,
	add	x1, x0, :lo12:.LC2	//, tmp131,
	adrp	x0, .LC3	// tmp132,
	add	x0, x0, :lo12:.LC3	//, tmp132,
	bl	__assert_fail		//
.L19:
// problem112.c:61:     func0("a b c a b", counts1, &max_count1, letters1);
	add	x2, sp, 232	// tmp133,,
	add	x1, sp, 20	// tmp134,,
	add	x0, sp, 24	// tmp135,,
	mov	x3, x2	//, tmp133
	mov	x2, x1	//, tmp134
	mov	x1, x0	//, tmp135
	adrp	x0, .LC4	// tmp136,
	add	x0, x0, :lo12:.LC4	//, tmp136,
	bl	func0		//
// problem112.c:62:     memset(counts2, 0, sizeof(counts2));
	add	x0, sp, 128	// tmp137,,
	mov	x2, 104	//,
	mov	w1, 0	//,
	bl	memset		//
// problem112.c:63:     counts2['a' - 'a'] = 2;
	mov	w0, 2	// tmp138,
	str	w0, [sp, 128]	// tmp138, counts2[0]
// problem112.c:64:     counts2['b' - 'a'] = 2;
	mov	w0, 2	// tmp139,
	str	w0, [sp, 132]	// tmp139, counts2[1]
// problem112.c:65:     assert(issame(counts1, letters1, max_count1, counts2, "ab", 2));
	ldr	w2, [sp, 20]	// max_count1.2_3, max_count1
	add	x3, sp, 128	// tmp140,,
	add	x1, sp, 232	// tmp141,,
	add	x6, sp, 24	// tmp142,,
	mov	w5, 2	//,
	adrp	x0, .LC1	// tmp143,
	add	x4, x0, :lo12:.LC1	//, tmp143,
	mov	x0, x6	//, tmp142
	bl	issame		//
	and	w0, w0, 255	// _4, tmp144
	cmp	w0, 0	// _4,
	bne	.L20		//,
// problem112.c:65:     assert(issame(counts1, letters1, max_count1, counts2, "ab", 2));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp145,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp145,
	mov	w2, 65	//,
	adrp	x0, .LC2	// tmp146,
	add	x1, x0, :lo12:.LC2	//, tmp146,
	adrp	x0, .LC3	// tmp147,
	add	x0, x0, :lo12:.LC3	//, tmp147,
	bl	__assert_fail		//
.L20:
// problem112.c:67:     func0("a b c d g", counts1, &max_count1, letters1);
	add	x2, sp, 232	// tmp148,,
	add	x1, sp, 20	// tmp149,,
	add	x0, sp, 24	// tmp150,,
	mov	x3, x2	//, tmp148
	mov	x2, x1	//, tmp149
	mov	x1, x0	//, tmp150
	adrp	x0, .LC5	// tmp151,
	add	x0, x0, :lo12:.LC5	//, tmp151,
	bl	func0		//
// problem112.c:68:     memset(counts2, 0, sizeof(counts2));
	add	x0, sp, 128	// tmp152,,
	mov	x2, 104	//,
	mov	w1, 0	//,
	bl	memset		//
// problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	mov	w0, 1	// tmp153,
	str	w0, [sp, 152]	// tmp153, counts2[6]
// problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	ldr	w0, [sp, 152]	// _5, counts2[6]
// problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	str	w0, [sp, 140]	// _5, counts2[3]
// problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	ldr	w0, [sp, 140]	// _6, counts2[3]
// problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	str	w0, [sp, 136]	// _6, counts2[2]
// problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	ldr	w0, [sp, 136]	// _7, counts2[2]
// problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	str	w0, [sp, 132]	// _7, counts2[1]
// problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	ldr	w0, [sp, 132]	// _8, counts2[1]
// problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	str	w0, [sp, 128]	// _8, counts2[0]
// problem112.c:70:     assert(issame(counts1, letters1, max_count1, counts2, "abcdg", 1));
	ldr	w2, [sp, 20]	// max_count1.3_9, max_count1
	add	x3, sp, 128	// tmp154,,
	add	x1, sp, 232	// tmp155,,
	add	x6, sp, 24	// tmp156,,
	mov	w5, 1	//,
	adrp	x0, .LC6	// tmp157,
	add	x4, x0, :lo12:.LC6	//, tmp157,
	mov	x0, x6	//, tmp156
	bl	issame		//
	and	w0, w0, 255	// _10, tmp158
	cmp	w0, 0	// _10,
	bne	.L21		//,
// problem112.c:70:     assert(issame(counts1, letters1, max_count1, counts2, "abcdg", 1));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp159,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp159,
	mov	w2, 70	//,
	adrp	x0, .LC2	// tmp160,
	add	x1, x0, :lo12:.LC2	//, tmp160,
	adrp	x0, .LC7	// tmp161,
	add	x0, x0, :lo12:.LC7	//, tmp161,
	bl	__assert_fail		//
.L21:
// problem112.c:72:     func0("r t g", counts1, &max_count1, letters1);
	add	x2, sp, 232	// tmp162,,
	add	x1, sp, 20	// tmp163,,
	add	x0, sp, 24	// tmp164,,
	mov	x3, x2	//, tmp162
	mov	x2, x1	//, tmp163
	mov	x1, x0	//, tmp164
	adrp	x0, .LC8	// tmp165,
	add	x0, x0, :lo12:.LC8	//, tmp165,
	bl	func0		//
// problem112.c:73:     memset(counts2, 0, sizeof(counts2));
	add	x0, sp, 128	// tmp166,,
	mov	x2, 104	//,
	mov	w1, 0	//,
	bl	memset		//
// problem112.c:74:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	mov	w0, 1	// tmp167,
	str	w0, [sp, 152]	// tmp167, counts2[6]
// problem112.c:74:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	ldr	w0, [sp, 152]	// _11, counts2[6]
// problem112.c:74:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	str	w0, [sp, 204]	// _11, counts2[19]
// problem112.c:74:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	ldr	w0, [sp, 204]	// _12, counts2[19]
// problem112.c:74:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	str	w0, [sp, 196]	// _12, counts2[17]
// problem112.c:75:     assert(issame(counts1, letters1, max_count1, counts2, "rtg", 1));
	ldr	w2, [sp, 20]	// max_count1.4_13, max_count1
	add	x3, sp, 128	// tmp168,,
	add	x1, sp, 232	// tmp169,,
	add	x6, sp, 24	// tmp170,,
	mov	w5, 1	//,
	adrp	x0, .LC9	// tmp171,
	add	x4, x0, :lo12:.LC9	//, tmp171,
	mov	x0, x6	//, tmp170
	bl	issame		//
	and	w0, w0, 255	// _14, tmp172
	cmp	w0, 0	// _14,
	bne	.L22		//,
// problem112.c:75:     assert(issame(counts1, letters1, max_count1, counts2, "rtg", 1));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp173,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp173,
	mov	w2, 75	//,
	adrp	x0, .LC2	// tmp174,
	add	x1, x0, :lo12:.LC2	//, tmp174,
	adrp	x0, .LC10	// tmp175,
	add	x0, x0, :lo12:.LC10	//, tmp175,
	bl	__assert_fail		//
.L22:
// problem112.c:77:     func0("b b b b a", counts1, &max_count1, letters1);
	add	x2, sp, 232	// tmp176,,
	add	x1, sp, 20	// tmp177,,
	add	x0, sp, 24	// tmp178,,
	mov	x3, x2	//, tmp176
	mov	x2, x1	//, tmp177
	mov	x1, x0	//, tmp178
	adrp	x0, .LC11	// tmp179,
	add	x0, x0, :lo12:.LC11	//, tmp179,
	bl	func0		//
// problem112.c:78:     memset(counts2, 0, sizeof(counts2));
	add	x0, sp, 128	// tmp180,,
	mov	x2, 104	//,
	mov	w1, 0	//,
	bl	memset		//
// problem112.c:79:     counts2['b' - 'a'] = 4;
	mov	w0, 4	// tmp181,
	str	w0, [sp, 132]	// tmp181, counts2[1]
// problem112.c:80:     assert(issame(counts1, letters1, max_count1, counts2, "b", 4));
	ldr	w2, [sp, 20]	// max_count1.5_15, max_count1
	add	x3, sp, 128	// tmp182,,
	add	x1, sp, 232	// tmp183,,
	add	x6, sp, 24	// tmp184,,
	mov	w5, 4	//,
	adrp	x0, .LC12	// tmp185,
	add	x4, x0, :lo12:.LC12	//, tmp185,
	mov	x0, x6	//, tmp184
	bl	issame		//
	and	w0, w0, 255	// _16, tmp186
	cmp	w0, 0	// _16,
	bne	.L23		//,
// problem112.c:80:     assert(issame(counts1, letters1, max_count1, counts2, "b", 4));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp187,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp187,
	mov	w2, 80	//,
	adrp	x0, .LC2	// tmp188,
	add	x1, x0, :lo12:.LC2	//, tmp188,
	adrp	x0, .LC13	// tmp189,
	add	x0, x0, :lo12:.LC13	//, tmp189,
	bl	__assert_fail		//
.L23:
// problem112.c:82:     func0("r t g", counts1, &max_count1, letters1);
	add	x2, sp, 232	// tmp190,,
	add	x1, sp, 20	// tmp191,,
	add	x0, sp, 24	// tmp192,,
	mov	x3, x2	//, tmp190
	mov	x2, x1	//, tmp191
	mov	x1, x0	//, tmp192
	adrp	x0, .LC8	// tmp193,
	add	x0, x0, :lo12:.LC8	//, tmp193,
	bl	func0		//
// problem112.c:83:     memset(counts2, 0, sizeof(counts2));
	add	x0, sp, 128	// tmp194,,
	mov	x2, 104	//,
	mov	w1, 0	//,
	bl	memset		//
// problem112.c:84:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	mov	w0, 1	// tmp195,
	str	w0, [sp, 152]	// tmp195, counts2[6]
// problem112.c:84:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	ldr	w0, [sp, 152]	// _17, counts2[6]
// problem112.c:84:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	str	w0, [sp, 204]	// _17, counts2[19]
// problem112.c:84:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	ldr	w0, [sp, 204]	// _18, counts2[19]
// problem112.c:84:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	str	w0, [sp, 196]	// _18, counts2[17]
// problem112.c:85:     assert(issame(counts1, letters1, max_count1, counts2, "rtg", 1));
	ldr	w2, [sp, 20]	// max_count1.6_19, max_count1
	add	x3, sp, 128	// tmp196,,
	add	x1, sp, 232	// tmp197,,
	add	x6, sp, 24	// tmp198,,
	mov	w5, 1	//,
	adrp	x0, .LC9	// tmp199,
	add	x4, x0, :lo12:.LC9	//, tmp199,
	mov	x0, x6	//, tmp198
	bl	issame		//
	and	w0, w0, 255	// _20, tmp200
	cmp	w0, 0	// _20,
	bne	.L24		//,
// problem112.c:85:     assert(issame(counts1, letters1, max_count1, counts2, "rtg", 1));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp201,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp201,
	mov	w2, 85	//,
	adrp	x0, .LC2	// tmp202,
	add	x1, x0, :lo12:.LC2	//, tmp202,
	adrp	x0, .LC10	// tmp203,
	add	x0, x0, :lo12:.LC10	//, tmp203,
	bl	__assert_fail		//
.L24:
// problem112.c:87:     func0("a", counts1, &max_count1, letters1);
	add	x2, sp, 232	// tmp204,,
	add	x1, sp, 20	// tmp205,,
	add	x0, sp, 24	// tmp206,,
	mov	x3, x2	//, tmp204
	mov	x2, x1	//, tmp205
	mov	x1, x0	//, tmp206
	adrp	x0, .LC14	// tmp207,
	add	x0, x0, :lo12:.LC14	//, tmp207,
	bl	func0		//
// problem112.c:88:     memset(counts2, 0, sizeof(counts2));
	add	x0, sp, 128	// tmp208,,
	mov	x2, 104	//,
	mov	w1, 0	//,
	bl	memset		//
// problem112.c:89:     counts2['a' - 'a'] = 1;
	mov	w0, 1	// tmp209,
	str	w0, [sp, 128]	// tmp209, counts2[0]
// problem112.c:90:     assert(issame(counts1, letters1, max_count1, counts2, "a", 1));
	ldr	w2, [sp, 20]	// max_count1.7_21, max_count1
	add	x3, sp, 128	// tmp210,,
	add	x1, sp, 232	// tmp211,,
	add	x6, sp, 24	// tmp212,,
	mov	w5, 1	//,
	adrp	x0, .LC14	// tmp213,
	add	x4, x0, :lo12:.LC14	//, tmp213,
	mov	x0, x6	//, tmp212
	bl	issame		//
	and	w0, w0, 255	// _22, tmp214
	cmp	w0, 0	// _22,
	bne	.L25		//,
// problem112.c:90:     assert(issame(counts1, letters1, max_count1, counts2, "a", 1));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp215,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp215,
	mov	w2, 90	//,
	adrp	x0, .LC2	// tmp216,
	add	x1, x0, :lo12:.LC2	//, tmp216,
	adrp	x0, .LC15	// tmp217,
	add	x0, x0, :lo12:.LC15	//, tmp217,
	bl	__assert_fail		//
.L25:
// problem112.c:92:     return 0;
	mov	w0, 0	// _69,
// problem112.c:93: }
	mov	w1, w0	// <retval>, _69
	adrp	x0, :got:__stack_chk_guard	// tmp220,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp219, tmp220,
	ldr	x3, [sp, 264]	// tmp222, D.4543
	ldr	x2, [x0]	// tmp223,
	subs	x3, x3, x2	// tmp222, tmp223
	mov	x2, 0	// tmp223
	beq	.L27		//,
	bl	__stack_chk_fail		//
.L27:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 272	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
