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
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 24]	// values, values
	str	x1, [sp, 16]	// size, size
// eval/problem23//code.c:6: int *func0(const char *values, int *size) {
	adrp	x0, :got:__stack_chk_guard	// tmp121,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp120, tmp121,
	ldr	x1, [x0]	// tmp145,
	str	x1, [sp, 56]	// tmp145, D.5080
	mov	x1, 0	// tmp145
// eval/problem23//code.c:8:     int count = 0;
	str	wzr, [sp, 32]	//, count
// eval/problem23//code.c:9:     const char *start = values;
	ldr	x0, [sp, 24]	// tmp122, values
	str	x0, [sp, 48]	// tmp122, start
// eval/problem23//code.c:11:     while (*start) {
	b	.L2		//
.L5:
// eval/problem23//code.c:13:             start++;
	ldr	x0, [sp, 48]	// tmp124, start
	add	x0, x0, 1	// tmp123, tmp124,
	str	x0, [sp, 48]	// tmp123, start
.L3:
// eval/problem23//code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	ldr	x0, [sp, 48]	// tmp125, start
	ldrb	w0, [x0]	// _1, *start_29
// eval/problem23//code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	cmp	w0, 0	// _1,
	beq	.L4		//,
// eval/problem23//code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	bl	__ctype_b_loc		//
	ldr	x1, [x0]	// _3, *_2
	ldr	x0, [sp, 48]	// tmp126, start
	ldrb	w0, [x0]	// _4, *start_29
	and	x0, x0, 255	// _5, _4
	lsl	x0, x0, 1	// _6, _5,
	add	x0, x1, x0	// _7, _3, _6
	ldrh	w0, [x0]	// _8, *_7
	and	w0, w0, 2048	// _10, _9,
// eval/problem23//code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	cmp	w0, 0	// _10,
	bne	.L4		//,
// eval/problem23//code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	ldr	x0, [sp, 48]	// tmp127, start
	ldrb	w0, [x0]	// _11, *start_29
// eval/problem23//code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	cmp	w0, 45	// _11,
	bne	.L5		//,
.L4:
// eval/problem23//code.c:15:         if (!*start) {
	ldr	x0, [sp, 48]	// tmp128, start
	ldrb	w0, [x0]	// _12, *start_29
// eval/problem23//code.c:15:         if (!*start) {
	cmp	w0, 0	// _12,
	beq	.L16		//,
// eval/problem23//code.c:18:         int val = (int) strtol(start, &end, 10);
	add	x0, sp, 40	// tmp129,,
	mov	w2, 10	//,
	mov	x1, x0	//, tmp129
	ldr	x0, [sp, 48]	//, start
	bl	strtol		//
// eval/problem23//code.c:18:         int val = (int) strtol(start, &end, 10);
	str	w0, [sp, 36]	// tmp130, val
// eval/problem23//code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	ldr	x0, [sp, 40]	// end.0_14, end
// eval/problem23//code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	ldr	x1, [sp, 48]	// tmp131, start
	cmp	x1, x0	// tmp131, end.0_14
	beq	.L11		//,
// eval/problem23//code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	ldr	x0, [sp, 40]	// end.1_15, end
	ldrb	w0, [x0]	// _16, *end.1_15
// eval/problem23//code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	cmp	w0, 44	// _16,
	beq	.L9		//,
// eval/problem23//code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	ldr	x0, [sp, 40]	// end.2_17, end
	ldrb	w0, [x0]	// _18, *end.2_17
// eval/problem23//code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	cmp	w0, 0	// _18,
	bne	.L11		//,
.L9:
// eval/problem23//code.c:20:             out[count++] = val;
	ldr	w0, [sp, 32]	// count.3_19, count
	add	w1, w0, 1	// tmp132, count.3_19,
	str	w1, [sp, 32]	// tmp132, count
// eval/problem23//code.c:20:             out[count++] = val;
	adrp	x1, out.0	// tmp134,
	add	x1, x1, :lo12:out.0	// tmp133, tmp134,
	sxtw	x0, w0	// tmp135, count.3_19
	ldr	w2, [sp, 36]	// tmp136, val
	str	w2, [x1, x0, lsl 2]	// tmp136, out[count.3_19]
	b	.L10		//
.L12:
// eval/problem23//code.c:23:                 end++;
	ldr	x0, [sp, 40]	// end.4_20, end
	add	x0, x0, 1	// _21, end.4_20,
	str	x0, [sp, 40]	// _21, end
.L11:
// eval/problem23//code.c:22:             while (*end && *end != ',') {
	ldr	x0, [sp, 40]	// end.5_22, end
	ldrb	w0, [x0]	// _23, *end.5_22
// eval/problem23//code.c:22:             while (*end && *end != ',') {
	cmp	w0, 0	// _23,
	beq	.L10		//,
// eval/problem23//code.c:22:             while (*end && *end != ',') {
	ldr	x0, [sp, 40]	// end.6_24, end
	ldrb	w0, [x0]	// _25, *end.6_24
// eval/problem23//code.c:22:             while (*end && *end != ',') {
	cmp	w0, 44	// _25,
	bne	.L12		//,
.L10:
// eval/problem23//code.c:26:         start = end;
	ldr	x0, [sp, 40]	// tmp137, end
	str	x0, [sp, 48]	// tmp137, start
.L2:
// eval/problem23//code.c:11:     while (*start) {
	ldr	x0, [sp, 48]	// tmp138, start
	ldrb	w0, [x0]	// _26, *start_30
	cmp	w0, 0	// _26,
	bne	.L3		//,
	b	.L7		//
.L16:
// eval/problem23//code.c:16:             break;
	nop	
.L7:
// eval/problem23//code.c:28:     *size = count;
	ldr	x0, [sp, 16]	// tmp139, size
	ldr	w1, [sp, 32]	// tmp140, count
	str	w1, [x0]	// tmp140, *size_45(D)
// eval/problem23//code.c:29:     return out;
	adrp	x0, out.0	// tmp141,
	add	x0, x0, :lo12:out.0	// _47, tmp141,
	mov	x1, x0	// <retval>, _47
// eval/problem23//code.c:30: }
	adrp	x0, :got:__stack_chk_guard	// tmp144,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp143, tmp144,
	ldr	x3, [sp, 56]	// tmp146, D.5080
	ldr	x2, [x0]	// tmp147,
	subs	x3, x3, x2	// tmp146, tmp147
	mov	x2, 0	// tmp147
	beq	.L15		//,
	bl	__stack_chk_fail		//
.L15:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.local	out.0
	.comm	out.0,1024,8
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
