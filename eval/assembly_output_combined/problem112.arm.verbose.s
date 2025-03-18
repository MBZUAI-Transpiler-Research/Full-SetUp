	.arch armv8-a
	.file	"problem112.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
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
// problem112.c:4: void func0(const char* test, int* freq, int* max_count, char* letters) {
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp111,
	ldr	x1, [x0]	// tmp156,
	str	x1, [sp, 168]	// tmp156, D.5148
	mov	x1, 0	// tmp156
// problem112.c:5:     int local_freq[26] = {0}; // for 'a' to 'z'
	add	x0, sp, 64	// tmp112,,
	movi	v0.4s, 0	// tmp113
	stp	q0, q0, [x0]	// tmp113, tmp113, local_freq
	stp	q0, q0, [x0, 32]	// tmp113, tmp113, local_freq
	stp	q0, q0, [x0, 64]	// tmp113, tmp113, local_freq
	fmov	x1, d0	// tmp114, tmp113
	str	x1, [x0, 96]	// tmp114, local_freq
// problem112.c:6:     int local_max = 0;
	str	wzr, [sp, 40]	//, local_max
// problem112.c:7:     const char* ptr = test;
	ldr	x0, [sp, 24]	// tmp115, test
	str	x0, [sp, 56]	// tmp115, ptr
// problem112.c:8:     int idx = 0;
	str	wzr, [sp, 44]	//, idx
// problem112.c:10:     while (*ptr) {
	b	.L2		//
.L4:
// problem112.c:11:         if (*ptr != ' ') {
	ldr	x0, [sp, 56]	// tmp116, ptr
	ldrb	w0, [x0]	// _1, *ptr_22
// problem112.c:11:         if (*ptr != ' ') {
	cmp	w0, 32	// _1,
	beq	.L3		//,
// problem112.c:12:             int letter_index = *ptr - 'a';
	ldr	x0, [sp, 56]	// tmp117, ptr
	ldrb	w0, [x0]	// _2, *ptr_22
// problem112.c:12:             int letter_index = *ptr - 'a';
	sub	w0, w0, #97	// tmp118, _3,
	str	w0, [sp, 52]	// tmp118, letter_index
// problem112.c:13:             local_freq[letter_index]++;
	ldrsw	x0, [sp, 52]	// tmp119, letter_index
	lsl	x0, x0, 2	// tmp120, tmp119,
	add	x1, sp, 64	// tmp121,,
	ldr	w0, [x1, x0]	// _4, local_freq[letter_index_47]
// problem112.c:13:             local_freq[letter_index]++;
	add	w2, w0, 1	// _5, _4,
	ldrsw	x0, [sp, 52]	// tmp122, letter_index
	lsl	x0, x0, 2	// tmp123, tmp122,
	add	x1, sp, 64	// tmp124,,
	str	w2, [x1, x0]	// _5, local_freq[letter_index_47]
// problem112.c:14:             if (local_freq[letter_index] > local_max) {
	ldrsw	x0, [sp, 52]	// tmp125, letter_index
	lsl	x0, x0, 2	// tmp126, tmp125,
	add	x1, sp, 64	// tmp127,,
	ldr	w0, [x1, x0]	// _6, local_freq[letter_index_47]
// problem112.c:14:             if (local_freq[letter_index] > local_max) {
	ldr	w1, [sp, 40]	// tmp128, local_max
	cmp	w1, w0	// tmp128, _6
	bge	.L3		//,
// problem112.c:15:                 local_max = local_freq[letter_index];
	ldrsw	x0, [sp, 52]	// tmp129, letter_index
	lsl	x0, x0, 2	// tmp130, tmp129,
	add	x1, sp, 64	// tmp131,,
	ldr	w0, [x1, x0]	// tmp132, local_freq[letter_index_47]
	str	w0, [sp, 40]	// tmp132, local_max
.L3:
// problem112.c:18:         ptr++;
	ldr	x0, [sp, 56]	// tmp134, ptr
	add	x0, x0, 1	// tmp133, tmp134,
	str	x0, [sp, 56]	// tmp133, ptr
.L2:
// problem112.c:10:     while (*ptr) {
	ldr	x0, [sp, 56]	// tmp135, ptr
	ldrb	w0, [x0]	// _7, *ptr_22
	cmp	w0, 0	// _7,
	bne	.L4		//,
// problem112.c:21:     for (int i = 0; i < 26; i++) {
	str	wzr, [sp, 48]	//, i
// problem112.c:21:     for (int i = 0; i < 26; i++) {
	b	.L5		//
.L7:
// problem112.c:22:         freq[i] = local_freq[i];
	ldrsw	x0, [sp, 48]	// _8, i
	lsl	x0, x0, 2	// _9, _8,
	ldr	x1, [sp, 16]	// tmp136, freq
	add	x0, x1, x0	// _10, tmp136, _9
// problem112.c:22:         freq[i] = local_freq[i];
	ldrsw	x1, [sp, 48]	// tmp137, i
	lsl	x1, x1, 2	// tmp138, tmp137,
	add	x2, sp, 64	// tmp139,,
	ldr	w1, [x2, x1]	// _11, local_freq[i_25]
// problem112.c:22:         freq[i] = local_freq[i];
	str	w1, [x0]	// _11, *_10
// problem112.c:23:         if (local_freq[i] == local_max) {
	ldrsw	x0, [sp, 48]	// tmp140, i
	lsl	x0, x0, 2	// tmp141, tmp140,
	add	x1, sp, 64	// tmp142,,
	ldr	w0, [x1, x0]	// _12, local_freq[i_25]
// problem112.c:23:         if (local_freq[i] == local_max) {
	ldr	w1, [sp, 40]	// tmp143, local_max
	cmp	w1, w0	// tmp143, _12
	bne	.L6		//,
// problem112.c:24:             letters[idx++] = 'a' + i;
	ldr	w0, [sp, 48]	// tmp144, i
	and	w1, w0, 255	// _13, tmp144
// problem112.c:24:             letters[idx++] = 'a' + i;
	ldr	w0, [sp, 44]	// idx.0_14, idx
	add	w2, w0, 1	// tmp145, idx.0_14,
	str	w2, [sp, 44]	// tmp145, idx
	sxtw	x0, w0	// _15, idx.0_14
// problem112.c:24:             letters[idx++] = 'a' + i;
	ldr	x2, [sp]	// tmp146, letters
	add	x0, x2, x0	// _16, tmp146, _15
// problem112.c:24:             letters[idx++] = 'a' + i;
	add	w1, w1, 97	// tmp147, _13,
	and	w1, w1, 255	// _17, tmp147
// problem112.c:24:             letters[idx++] = 'a' + i;
	strb	w1, [x0]	// tmp148, *_16
.L6:
// problem112.c:21:     for (int i = 0; i < 26; i++) {
	ldr	w0, [sp, 48]	// tmp150, i
	add	w0, w0, 1	// tmp149, tmp150,
	str	w0, [sp, 48]	// tmp149, i
.L5:
// problem112.c:21:     for (int i = 0; i < 26; i++) {
	ldr	w0, [sp, 48]	// tmp151, i
	cmp	w0, 25	// tmp151,
	ble	.L7		//,
// problem112.c:28:     *max_count = local_max;
	ldr	x0, [sp, 8]	// tmp152, max_count
	ldr	w1, [sp, 40]	// tmp153, local_max
	str	w1, [x0]	// tmp153, *max_count_37(D)
// problem112.c:29:     letters[idx] = '\0';
	ldrsw	x0, [sp, 44]	// _18, idx
	ldr	x1, [sp]	// tmp154, letters
	add	x0, x1, x0	// _19, tmp154, _18
// problem112.c:29:     letters[idx] = '\0';
	strb	wzr, [x0]	//, *_19
// problem112.c:30: }
	nop	
	adrp	x0, :got:__stack_chk_guard	// tmp155,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp155,
	ldr	x2, [sp, 168]	// tmp157, D.5148
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
// problem112.c:40:     if (max_count1 != max_count2) return false;
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
// problem112.c:42:         if (freq1[letters1[i] - 'a'] != freq2[letters1[i] - 'a']) return false;
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
// problem112.c:45:         if (freq2[letters2[i] - 'a'] != freq1[letters2[i] - 'a']) return false;
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
	sub	sp, sp, #272	//,,
	.cfi_def_cfa_offset 272
	stp	x29, x30, [sp, 256]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 256	//,,
// problem112.c:50: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp116,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp116,
	ldr	x1, [x0]	// tmp226,
	str	x1, [sp, 248]	// tmp226, D.5152
	mov	x1, 0	// tmp226
// problem112.c:55:     func0("a b b a", counts1, &max_count1, letters1);
	add	x2, sp, 216	// tmp117,,
	add	x1, sp, 4	// tmp118,,
	add	x0, sp, 8	// tmp119,,
	mov	x3, x2	//, tmp117
	mov	x2, x1	//, tmp118
	mov	x1, x0	//, tmp119
	adrp	x0, .LC0	// tmp120,
	add	x0, x0, :lo12:.LC0	//, tmp120,
	bl	func0		//
// problem112.c:56:     memset(counts2, 0, sizeof(counts2));
	add	x0, sp, 112	// tmp121,,
	mov	x2, 104	//,
	mov	w1, 0	//,
	bl	memset		//
// problem112.c:57:     counts2['a' - 'a'] = 2;
	mov	w0, 2	// tmp122,
	str	w0, [sp, 112]	// tmp122, counts2[0]
// problem112.c:58:     counts2['b' - 'a'] = 2;
	mov	w0, 2	// tmp123,
	str	w0, [sp, 116]	// tmp123, counts2[1]
// problem112.c:59:     assert(issame(counts1, letters1, max_count1, counts2, "ab", 2));
	ldr	w2, [sp, 4]	// max_count1.1_1, max_count1
	add	x3, sp, 112	// tmp124,,
	add	x1, sp, 216	// tmp125,,
	add	x6, sp, 8	// tmp126,,
	mov	w5, 2	//,
	adrp	x0, .LC1	// tmp127,
	add	x4, x0, :lo12:.LC1	//, tmp127,
	mov	x0, x6	//, tmp126
	bl	issame		//
	and	w0, w0, 255	// _2, tmp128
// problem112.c:59:     assert(issame(counts1, letters1, max_count1, counts2, "ab", 2));
	and	w0, w0, 1	// tmp129, _2,
	cmp	w0, 0	// tmp129,
	bne	.L19		//,
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
	add	x2, sp, 216	// tmp133,,
	add	x1, sp, 4	// tmp134,,
	add	x0, sp, 8	// tmp135,,
	mov	x3, x2	//, tmp133
	mov	x2, x1	//, tmp134
	mov	x1, x0	//, tmp135
	adrp	x0, .LC4	// tmp136,
	add	x0, x0, :lo12:.LC4	//, tmp136,
	bl	func0		//
// problem112.c:62:     memset(counts2, 0, sizeof(counts2));
	add	x0, sp, 112	// tmp137,,
	mov	x2, 104	//,
	mov	w1, 0	//,
	bl	memset		//
// problem112.c:63:     counts2['a' - 'a'] = 2;
	mov	w0, 2	// tmp138,
	str	w0, [sp, 112]	// tmp138, counts2[0]
// problem112.c:64:     counts2['b' - 'a'] = 2;
	mov	w0, 2	// tmp139,
	str	w0, [sp, 116]	// tmp139, counts2[1]
// problem112.c:65:     assert(issame(counts1, letters1, max_count1, counts2, "ab", 2));
	ldr	w2, [sp, 4]	// max_count1.2_3, max_count1
	add	x3, sp, 112	// tmp140,,
	add	x1, sp, 216	// tmp141,,
	add	x6, sp, 8	// tmp142,,
	mov	w5, 2	//,
	adrp	x0, .LC1	// tmp143,
	add	x4, x0, :lo12:.LC1	//, tmp143,
	mov	x0, x6	//, tmp142
	bl	issame		//
	and	w0, w0, 255	// _4, tmp144
// problem112.c:65:     assert(issame(counts1, letters1, max_count1, counts2, "ab", 2));
	and	w0, w0, 1	// tmp145, _4,
	cmp	w0, 0	// tmp145,
	bne	.L20		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp146,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp146,
	mov	w2, 65	//,
	adrp	x0, .LC2	// tmp147,
	add	x1, x0, :lo12:.LC2	//, tmp147,
	adrp	x0, .LC3	// tmp148,
	add	x0, x0, :lo12:.LC3	//, tmp148,
	bl	__assert_fail		//
.L20:
// problem112.c:67:     func0("a b c d g", counts1, &max_count1, letters1);
	add	x2, sp, 216	// tmp149,,
	add	x1, sp, 4	// tmp150,,
	add	x0, sp, 8	// tmp151,,
	mov	x3, x2	//, tmp149
	mov	x2, x1	//, tmp150
	mov	x1, x0	//, tmp151
	adrp	x0, .LC5	// tmp152,
	add	x0, x0, :lo12:.LC5	//, tmp152,
	bl	func0		//
// problem112.c:68:     memset(counts2, 0, sizeof(counts2));
	add	x0, sp, 112	// tmp153,,
	mov	x2, 104	//,
	mov	w1, 0	//,
	bl	memset		//
// problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	mov	w0, 1	// tmp154,
	str	w0, [sp, 136]	// tmp154, counts2[6]
// problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	ldr	w0, [sp, 136]	// _5, counts2[6]
// problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	str	w0, [sp, 124]	// _5, counts2[3]
// problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	ldr	w0, [sp, 124]	// _6, counts2[3]
// problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	str	w0, [sp, 120]	// _6, counts2[2]
// problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	ldr	w0, [sp, 120]	// _7, counts2[2]
// problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	str	w0, [sp, 116]	// _7, counts2[1]
// problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	ldr	w0, [sp, 116]	// _8, counts2[1]
// problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	str	w0, [sp, 112]	// _8, counts2[0]
// problem112.c:70:     assert(issame(counts1, letters1, max_count1, counts2, "abcdg", 1));
	ldr	w2, [sp, 4]	// max_count1.3_9, max_count1
	add	x3, sp, 112	// tmp155,,
	add	x1, sp, 216	// tmp156,,
	add	x6, sp, 8	// tmp157,,
	mov	w5, 1	//,
	adrp	x0, .LC6	// tmp158,
	add	x4, x0, :lo12:.LC6	//, tmp158,
	mov	x0, x6	//, tmp157
	bl	issame		//
	and	w0, w0, 255	// _10, tmp159
// problem112.c:70:     assert(issame(counts1, letters1, max_count1, counts2, "abcdg", 1));
	and	w0, w0, 1	// tmp160, _10,
	cmp	w0, 0	// tmp160,
	bne	.L21		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp161,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp161,
	mov	w2, 70	//,
	adrp	x0, .LC2	// tmp162,
	add	x1, x0, :lo12:.LC2	//, tmp162,
	adrp	x0, .LC7	// tmp163,
	add	x0, x0, :lo12:.LC7	//, tmp163,
	bl	__assert_fail		//
.L21:
// problem112.c:72:     func0("r t g", counts1, &max_count1, letters1);
	add	x2, sp, 216	// tmp164,,
	add	x1, sp, 4	// tmp165,,
	add	x0, sp, 8	// tmp166,,
	mov	x3, x2	//, tmp164
	mov	x2, x1	//, tmp165
	mov	x1, x0	//, tmp166
	adrp	x0, .LC8	// tmp167,
	add	x0, x0, :lo12:.LC8	//, tmp167,
	bl	func0		//
// problem112.c:73:     memset(counts2, 0, sizeof(counts2));
	add	x0, sp, 112	// tmp168,,
	mov	x2, 104	//,
	mov	w1, 0	//,
	bl	memset		//
// problem112.c:74:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	mov	w0, 1	// tmp169,
	str	w0, [sp, 136]	// tmp169, counts2[6]
// problem112.c:74:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	ldr	w0, [sp, 136]	// _11, counts2[6]
// problem112.c:74:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	str	w0, [sp, 188]	// _11, counts2[19]
// problem112.c:74:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	ldr	w0, [sp, 188]	// _12, counts2[19]
// problem112.c:74:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	str	w0, [sp, 180]	// _12, counts2[17]
// problem112.c:75:     assert(issame(counts1, letters1, max_count1, counts2, "rtg", 1));
	ldr	w2, [sp, 4]	// max_count1.4_13, max_count1
	add	x3, sp, 112	// tmp170,,
	add	x1, sp, 216	// tmp171,,
	add	x6, sp, 8	// tmp172,,
	mov	w5, 1	//,
	adrp	x0, .LC9	// tmp173,
	add	x4, x0, :lo12:.LC9	//, tmp173,
	mov	x0, x6	//, tmp172
	bl	issame		//
	and	w0, w0, 255	// _14, tmp174
// problem112.c:75:     assert(issame(counts1, letters1, max_count1, counts2, "rtg", 1));
	and	w0, w0, 1	// tmp175, _14,
	cmp	w0, 0	// tmp175,
	bne	.L22		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp176,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp176,
	mov	w2, 75	//,
	adrp	x0, .LC2	// tmp177,
	add	x1, x0, :lo12:.LC2	//, tmp177,
	adrp	x0, .LC10	// tmp178,
	add	x0, x0, :lo12:.LC10	//, tmp178,
	bl	__assert_fail		//
.L22:
// problem112.c:77:     func0("b b b b a", counts1, &max_count1, letters1);
	add	x2, sp, 216	// tmp179,,
	add	x1, sp, 4	// tmp180,,
	add	x0, sp, 8	// tmp181,,
	mov	x3, x2	//, tmp179
	mov	x2, x1	//, tmp180
	mov	x1, x0	//, tmp181
	adrp	x0, .LC11	// tmp182,
	add	x0, x0, :lo12:.LC11	//, tmp182,
	bl	func0		//
// problem112.c:78:     memset(counts2, 0, sizeof(counts2));
	add	x0, sp, 112	// tmp183,,
	mov	x2, 104	//,
	mov	w1, 0	//,
	bl	memset		//
// problem112.c:79:     counts2['b' - 'a'] = 4;
	mov	w0, 4	// tmp184,
	str	w0, [sp, 116]	// tmp184, counts2[1]
// problem112.c:80:     assert(issame(counts1, letters1, max_count1, counts2, "b", 4));
	ldr	w2, [sp, 4]	// max_count1.5_15, max_count1
	add	x3, sp, 112	// tmp185,,
	add	x1, sp, 216	// tmp186,,
	add	x6, sp, 8	// tmp187,,
	mov	w5, 4	//,
	adrp	x0, .LC12	// tmp188,
	add	x4, x0, :lo12:.LC12	//, tmp188,
	mov	x0, x6	//, tmp187
	bl	issame		//
	and	w0, w0, 255	// _16, tmp189
// problem112.c:80:     assert(issame(counts1, letters1, max_count1, counts2, "b", 4));
	and	w0, w0, 1	// tmp190, _16,
	cmp	w0, 0	// tmp190,
	bne	.L23		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp191,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp191,
	mov	w2, 80	//,
	adrp	x0, .LC2	// tmp192,
	add	x1, x0, :lo12:.LC2	//, tmp192,
	adrp	x0, .LC13	// tmp193,
	add	x0, x0, :lo12:.LC13	//, tmp193,
	bl	__assert_fail		//
.L23:
// problem112.c:82:     func0("r t g", counts1, &max_count1, letters1);
	add	x2, sp, 216	// tmp194,,
	add	x1, sp, 4	// tmp195,,
	add	x0, sp, 8	// tmp196,,
	mov	x3, x2	//, tmp194
	mov	x2, x1	//, tmp195
	mov	x1, x0	//, tmp196
	adrp	x0, .LC8	// tmp197,
	add	x0, x0, :lo12:.LC8	//, tmp197,
	bl	func0		//
// problem112.c:83:     memset(counts2, 0, sizeof(counts2));
	add	x0, sp, 112	// tmp198,,
	mov	x2, 104	//,
	mov	w1, 0	//,
	bl	memset		//
// problem112.c:84:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	mov	w0, 1	// tmp199,
	str	w0, [sp, 136]	// tmp199, counts2[6]
// problem112.c:84:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	ldr	w0, [sp, 136]	// _17, counts2[6]
// problem112.c:84:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	str	w0, [sp, 188]	// _17, counts2[19]
// problem112.c:84:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	ldr	w0, [sp, 188]	// _18, counts2[19]
// problem112.c:84:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	str	w0, [sp, 180]	// _18, counts2[17]
// problem112.c:85:     assert(issame(counts1, letters1, max_count1, counts2, "rtg", 1));
	ldr	w2, [sp, 4]	// max_count1.6_19, max_count1
	add	x3, sp, 112	// tmp200,,
	add	x1, sp, 216	// tmp201,,
	add	x6, sp, 8	// tmp202,,
	mov	w5, 1	//,
	adrp	x0, .LC9	// tmp203,
	add	x4, x0, :lo12:.LC9	//, tmp203,
	mov	x0, x6	//, tmp202
	bl	issame		//
	and	w0, w0, 255	// _20, tmp204
// problem112.c:85:     assert(issame(counts1, letters1, max_count1, counts2, "rtg", 1));
	and	w0, w0, 1	// tmp205, _20,
	cmp	w0, 0	// tmp205,
	bne	.L24		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp206,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp206,
	mov	w2, 85	//,
	adrp	x0, .LC2	// tmp207,
	add	x1, x0, :lo12:.LC2	//, tmp207,
	adrp	x0, .LC10	// tmp208,
	add	x0, x0, :lo12:.LC10	//, tmp208,
	bl	__assert_fail		//
.L24:
// problem112.c:87:     func0("a", counts1, &max_count1, letters1);
	add	x2, sp, 216	// tmp209,,
	add	x1, sp, 4	// tmp210,,
	add	x0, sp, 8	// tmp211,,
	mov	x3, x2	//, tmp209
	mov	x2, x1	//, tmp210
	mov	x1, x0	//, tmp211
	adrp	x0, .LC14	// tmp212,
	add	x0, x0, :lo12:.LC14	//, tmp212,
	bl	func0		//
// problem112.c:88:     memset(counts2, 0, sizeof(counts2));
	add	x0, sp, 112	// tmp213,,
	mov	x2, 104	//,
	mov	w1, 0	//,
	bl	memset		//
// problem112.c:89:     counts2['a' - 'a'] = 1;
	mov	w0, 1	// tmp214,
	str	w0, [sp, 112]	// tmp214, counts2[0]
// problem112.c:90:     assert(issame(counts1, letters1, max_count1, counts2, "a", 1));
	ldr	w2, [sp, 4]	// max_count1.7_21, max_count1
	add	x3, sp, 112	// tmp215,,
	add	x1, sp, 216	// tmp216,,
	add	x6, sp, 8	// tmp217,,
	mov	w5, 1	//,
	adrp	x0, .LC14	// tmp218,
	add	x4, x0, :lo12:.LC14	//, tmp218,
	mov	x0, x6	//, tmp217
	bl	issame		//
	and	w0, w0, 255	// _22, tmp219
// problem112.c:90:     assert(issame(counts1, letters1, max_count1, counts2, "a", 1));
	and	w0, w0, 1	// tmp220, _22,
	cmp	w0, 0	// tmp220,
	bne	.L25		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp221,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp221,
	mov	w2, 90	//,
	adrp	x0, .LC2	// tmp222,
	add	x1, x0, :lo12:.LC2	//, tmp222,
	adrp	x0, .LC15	// tmp223,
	add	x0, x0, :lo12:.LC15	//, tmp223,
	bl	__assert_fail		//
.L25:
// problem112.c:92:     return 0;
	mov	w0, 0	// _69,
// problem112.c:93: }
	mov	w1, w0	// <retval>, _69
	adrp	x0, :got:__stack_chk_guard	// tmp225,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp225,
	ldr	x3, [sp, 248]	// tmp227, D.5152
	ldr	x2, [x0]	// tmp228,
	subs	x3, x3, x2	// tmp227, tmp228
	mov	x2, 0	// tmp228
	beq	.L27		//,
	bl	__stack_chk_fail		//
.L27:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 256]	//,,
	add	sp, sp, 272	//,,
	.cfi_restore 29
	.cfi_restore 30
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
