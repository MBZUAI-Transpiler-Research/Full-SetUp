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
	sub	sp, sp, #1088	//,,
	.cfi_def_cfa_offset 1088
	stp	x29, x30, [sp]	//,,
	.cfi_offset 29, -1088
	.cfi_offset 30, -1080
	mov	x29, sp	//,
	str	x0, [sp, 24]	// str, str
// eval/problem17//code.c:5: int func0(const char *str) {
	adrp	x0, :got:__stack_chk_guard	// tmp114,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp113, tmp114,
	ldr	x1, [x0]	// tmp135,
	str	x1, [sp, 1080]	// tmp135, D.4551
	mov	x1, 0	// tmp135
// eval/problem17//code.c:6:     int count = 0;
	str	wzr, [sp, 48]	//, count
// eval/problem17//code.c:7:     int char_map[256] = {0};
	add	x0, sp, 56	// tmp115,,
	mov	x1, 1024	// tmp116,
	mov	x2, x1	//, tmp116
	mov	w1, 0	//,
	bl	memset		//
// eval/problem17//code.c:10:     for (index = 0; str[index]; index++) {
	str	wzr, [sp, 52]	//, index
// eval/problem17//code.c:10:     for (index = 0; str[index]; index++) {
	b	.L2		//
.L4:
// eval/problem17//code.c:11:         char ch = tolower((unsigned char)str[index]);
	ldrsw	x0, [sp, 52]	// _1, index
	ldr	x1, [sp, 24]	// tmp118, str
	add	x0, x1, x0	// _2, tmp118, _1
	ldrb	w0, [x0]	// _3, *_2
// eval/problem17//code.c:11:         char ch = tolower((unsigned char)str[index]);
	bl	tolower		//
// eval/problem17//code.c:11:         char ch = tolower((unsigned char)str[index]);
	strb	w0, [sp, 47]	// tmp119, ch
// eval/problem17//code.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	ldrb	w0, [sp, 47]	// _6, ch
	sxtw	x0, w0	// tmp120, _6
	lsl	x0, x0, 2	// tmp121, tmp120,
	add	x1, sp, 56	// tmp122,,
	ldr	w0, [x1, x0]	// _7, char_map[_6]
// eval/problem17//code.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	cmp	w0, 0	// _7,
	bne	.L3		//,
// eval/problem17//code.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	bl	__ctype_b_loc		//
	ldr	x1, [x0]	// _9, *_8
	ldrb	w0, [sp, 47]	// _10, ch
	lsl	x0, x0, 1	// _11, _10,
	add	x0, x1, x0	// _12, _9, _11
	ldrh	w0, [x0]	// _13, *_12
	and	w0, w0, 1024	// _15, _14,
// eval/problem17//code.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	cmp	w0, 0	// _15,
	beq	.L3		//,
// eval/problem17//code.c:13:             char_map[ch] = 1;
	ldrb	w0, [sp, 47]	// _16, ch
// eval/problem17//code.c:13:             char_map[ch] = 1;
	sxtw	x0, w0	// tmp123, _16
	lsl	x0, x0, 2	// tmp124, tmp123,
	add	x1, sp, 56	// tmp125,,
	mov	w2, 1	// tmp126,
	str	w2, [x1, x0]	// tmp126, char_map[_16]
// eval/problem17//code.c:14:             count++;
	ldr	w0, [sp, 48]	// tmp128, count
	add	w0, w0, 1	// tmp127, tmp128,
	str	w0, [sp, 48]	// tmp127, count
.L3:
// eval/problem17//code.c:10:     for (index = 0; str[index]; index++) {
	ldr	w0, [sp, 52]	// tmp130, index
	add	w0, w0, 1	// tmp129, tmp130,
	str	w0, [sp, 52]	// tmp129, index
.L2:
// eval/problem17//code.c:10:     for (index = 0; str[index]; index++) {
	ldrsw	x0, [sp, 52]	// _17, index
	ldr	x1, [sp, 24]	// tmp131, str
	add	x0, x1, x0	// _18, tmp131, _17
	ldrb	w0, [x0]	// _19, *_18
// eval/problem17//code.c:10:     for (index = 0; str[index]; index++) {
	cmp	w0, 0	// _19,
	bne	.L4		//,
// eval/problem17//code.c:18:     return count;
	ldr	w0, [sp, 48]	// _30, count
	mov	w1, w0	// <retval>, _30
// eval/problem17//code.c:19: }
	adrp	x0, :got:__stack_chk_guard	// tmp134,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp133, tmp134,
	ldr	x3, [sp, 1080]	// tmp136, D.4551
	ldr	x2, [x0]	// tmp137,
	subs	x3, x3, x2	// tmp136, tmp137
	mov	x2, 0	// tmp137
	beq	.L6		//,
	bl	__stack_chk_fail		//
.L6:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp]	//,,
	add	sp, sp, 1088	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
