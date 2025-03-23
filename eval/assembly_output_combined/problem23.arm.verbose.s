	.arch armv8-a
	.file	"problem23.c"
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
	sub	sp, sp, #64	//,,
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, 48]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 48	//,,
	str	x0, [sp, 8]	// values, values
	str	x1, [sp]	// size, size
// problem23.c:6: int *func0(const char *values, int *size) {
	adrp	x0, :got:__stack_chk_guard	// tmp120,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp120,
	ldr	x1, [x0]	// tmp143,
	str	x1, [sp, 40]	// tmp143, D.5760
	mov	x1, 0	// tmp143
// problem23.c:8:     int count = 0;
	str	wzr, [sp, 16]	//, count
// problem23.c:9:     const char *start = values;
	ldr	x0, [sp, 8]	// tmp121, values
	str	x0, [sp, 32]	// tmp121, start
// problem23.c:11:     while (*start) {
	b	.L2		//
.L5:
// problem23.c:13:             start++;
	ldr	x0, [sp, 32]	// tmp123, start
	add	x0, x0, 1	// tmp122, tmp123,
	str	x0, [sp, 32]	// tmp122, start
.L3:
// problem23.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	ldr	x0, [sp, 32]	// tmp124, start
	ldrb	w0, [x0]	// _1, *start_29
// problem23.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	cmp	w0, 0	// _1,
	beq	.L4		//,
// problem23.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	bl	__ctype_b_loc		//
	ldr	x1, [x0]	// _3, *_2
	ldr	x0, [sp, 32]	// tmp125, start
	ldrb	w0, [x0]	// _4, *start_29
	and	x0, x0, 255	// _5, _4
	lsl	x0, x0, 1	// _6, _5,
	add	x0, x1, x0	// _7, _3, _6
	ldrh	w0, [x0]	// _8, *_7
	and	w0, w0, 2048	// _10, _9,
// problem23.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	cmp	w0, 0	// _10,
	bne	.L4		//,
// problem23.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	ldr	x0, [sp, 32]	// tmp126, start
	ldrb	w0, [x0]	// _11, *start_29
// problem23.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	cmp	w0, 45	// _11,
	bne	.L5		//,
.L4:
// problem23.c:15:         if (!*start) {
	ldr	x0, [sp, 32]	// tmp127, start
	ldrb	w0, [x0]	// _12, *start_29
// problem23.c:15:         if (!*start) {
	cmp	w0, 0	// _12,
	beq	.L16		//,
// problem23.c:18:         int val = (int) strtol(start, &end, 10);
	add	x0, sp, 24	// tmp128,,
	mov	w2, 10	//,
	mov	x1, x0	//, tmp128
	ldr	x0, [sp, 32]	//, start
	bl	strtol		//
// problem23.c:18:         int val = (int) strtol(start, &end, 10);
	str	w0, [sp, 20]	// tmp129, val
// problem23.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	ldr	x0, [sp, 24]	// end.0_14, end
// problem23.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	ldr	x1, [sp, 32]	// tmp130, start
	cmp	x1, x0	// tmp130, end.0_14
	beq	.L11		//,
// problem23.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	ldr	x0, [sp, 24]	// end.1_15, end
	ldrb	w0, [x0]	// _16, *end.1_15
// problem23.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	cmp	w0, 44	// _16,
	beq	.L9		//,
// problem23.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	ldr	x0, [sp, 24]	// end.2_17, end
	ldrb	w0, [x0]	// _18, *end.2_17
// problem23.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	cmp	w0, 0	// _18,
	bne	.L11		//,
.L9:
// problem23.c:20:             out[count++] = val;
	ldr	w0, [sp, 16]	// count.3_19, count
	add	w1, w0, 1	// tmp131, count.3_19,
	str	w1, [sp, 16]	// tmp131, count
// problem23.c:20:             out[count++] = val;
	adrp	x1, out.1	// tmp133,
	add	x1, x1, :lo12:out.1	// tmp132, tmp133,
	sxtw	x0, w0	// tmp134, count.3_19
	ldr	w2, [sp, 20]	// tmp135, val
	str	w2, [x1, x0, lsl 2]	// tmp135, out[count.3_19]
	b	.L10		//
.L12:
// problem23.c:23:                 end++;
	ldr	x0, [sp, 24]	// end.4_20, end
	add	x0, x0, 1	// _21, end.4_20,
	str	x0, [sp, 24]	// _21, end
.L11:
// problem23.c:22:             while (*end && *end != ',') {
	ldr	x0, [sp, 24]	// end.5_22, end
	ldrb	w0, [x0]	// _23, *end.5_22
// problem23.c:22:             while (*end && *end != ',') {
	cmp	w0, 0	// _23,
	beq	.L10		//,
// problem23.c:22:             while (*end && *end != ',') {
	ldr	x0, [sp, 24]	// end.6_24, end
	ldrb	w0, [x0]	// _25, *end.6_24
// problem23.c:22:             while (*end && *end != ',') {
	cmp	w0, 44	// _25,
	bne	.L12		//,
.L10:
// problem23.c:26:         start = end;
	ldr	x0, [sp, 24]	// tmp136, end
	str	x0, [sp, 32]	// tmp136, start
.L2:
// problem23.c:11:     while (*start) {
	ldr	x0, [sp, 32]	// tmp137, start
	ldrb	w0, [x0]	// _26, *start_30
	cmp	w0, 0	// _26,
	bne	.L3		//,
	b	.L7		//
.L16:
// problem23.c:16:             break;
	nop	
.L7:
// problem23.c:28:     *size = count;
	ldr	x0, [sp]	// tmp138, size
	ldr	w1, [sp, 16]	// tmp139, count
	str	w1, [x0]	// tmp139, *size_45(D)
// problem23.c:29:     return out;
	adrp	x0, out.1	// tmp140,
	add	x0, x0, :lo12:out.1	// _47, tmp140,
	mov	x1, x0	// <retval>, _47
// problem23.c:30: }
	adrp	x0, :got:__stack_chk_guard	// tmp142,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp142,
	ldr	x3, [sp, 40]	// tmp144, D.5760
	ldr	x2, [x0]	// tmp145,
	subs	x3, x3, x2	// tmp144, tmp145
	mov	x2, 0	// tmp145
	beq	.L15		//,
	bl	__stack_chk_fail		//
.L15:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp, 48]	//,,
	add	sp, sp, 64	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	2
	.global	issame
	.type	issame, %function
issame:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// a, a
	str	w1, [sp, 20]	// size_a, size_a
	str	x2, [sp, 8]	// b, b
	str	w3, [sp, 16]	// size_b, size_b
// problem23.c:41:     if (size_a != size_b) return 0;
	ldr	w1, [sp, 20]	// tmp102, size_a
	ldr	w0, [sp, 16]	// tmp103, size_b
	cmp	w1, w0	// tmp102, tmp103
	beq	.L18		//,
// problem23.c:41:     if (size_a != size_b) return 0;
	mov	w0, 0	// _10,
// problem23.c:41:     if (size_a != size_b) return 0;
	b	.L19		//
.L18:
// problem23.c:42:     for (int i = 0; i < size_a; i++) {
	str	wzr, [sp, 44]	//, i
// problem23.c:42:     for (int i = 0; i < size_a; i++) {
	b	.L20		//
.L22:
// problem23.c:43:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp104, a
	add	x0, x1, x0	// _3, tmp104, _2
	ldr	w1, [x0]	// _4, *_3
// problem23.c:43:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 8]	// tmp105, b
	add	x0, x2, x0	// _7, tmp105, _6
	ldr	w0, [x0]	// _8, *_7
// problem23.c:43:         if (a[i] != b[i]) return 0;
	cmp	w1, w0	// _4, _8
	beq	.L21		//,
// problem23.c:43:         if (a[i] != b[i]) return 0;
	mov	w0, 0	// _10,
// problem23.c:43:         if (a[i] != b[i]) return 0;
	b	.L19		//
.L21:
// problem23.c:42:     for (int i = 0; i < size_a; i++) {
	ldr	w0, [sp, 44]	// tmp107, i
	add	w0, w0, 1	// tmp106, tmp107,
	str	w0, [sp, 44]	// tmp106, i
.L20:
// problem23.c:42:     for (int i = 0; i < size_a; i++) {
	ldr	w1, [sp, 44]	// tmp108, i
	ldr	w0, [sp, 20]	// tmp109, size_a
	cmp	w1, w0	// tmp108, tmp109
	blt	.L22		//,
// problem23.c:45:     return 1;
	mov	w0, 1	// _10,
.L19:
// problem23.c:46: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC1:
	.string	""
	.align	3
.LC2:
	.string	"problem23.c"
	.align	3
.LC3:
	.string	"issame(result1, size, (int[]){}, 0)"
	.align	3
.LC4:
	.string	"4,,23.2,9,adasd"
	.align	3
.LC5:
	.string	"issame(result2, size, (int[]){4, 9}, 2)"
	.align	3
.LC6:
	.string	"3,c,3,3,a,b"
	.align	3
.LC7:
	.string	"issame(result3, size, (int[]){3, 3, 3}, 3)"
	.align	3
.LC8:
	.string	"All tests passed."
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #80	//,,
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64	//,,
// problem23.c:48: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp100,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp100,
	ldr	x1, [x0]	// tmp130,
	str	x1, [sp, 56]	// tmp130, D.5764
	mov	x1, 0	// tmp130
// problem23.c:52:     int *result1 = func0("", &size);
	add	x0, sp, 12	// tmp101,,
	mov	x1, x0	//, tmp101
	adrp	x0, .LC1	// tmp102,
	add	x0, x0, :lo12:.LC1	//, tmp102,
	bl	func0		//
	str	x0, [sp, 16]	//, result1
// problem23.c:53:     assert(issame(result1, size, (int[]){}, 0));
	ldr	w0, [sp, 12]	// size.7_1, size
	add	x1, sp, 40	// tmp103,,
	mov	w3, 0	//,
	mov	x2, x1	//, tmp103
	mov	w1, w0	//, size.7_1
	ldr	x0, [sp, 16]	//, result1
	bl	issame		//
// problem23.c:53:     assert(issame(result1, size, (int[]){}, 0));
	cmp	w0, 0	// _2,
	bne	.L24		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp104,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp104,
	mov	w2, 53	//,
	adrp	x0, .LC2	// tmp105,
	add	x1, x0, :lo12:.LC2	//, tmp105,
	adrp	x0, .LC3	// tmp106,
	add	x0, x0, :lo12:.LC3	//, tmp106,
	bl	__assert_fail		//
.L24:
// problem23.c:56:     int *result2 = func0("4,,23.2,9,adasd", &size);
	add	x0, sp, 12	// tmp107,,
	mov	x1, x0	//, tmp107
	adrp	x0, .LC4	// tmp108,
	add	x0, x0, :lo12:.LC4	//, tmp108,
	bl	func0		//
	str	x0, [sp, 24]	//, result2
// problem23.c:57:     assert(issame(result2, size, (int[]){4, 9}, 2));
	ldr	w1, [sp, 12]	// size.8_3, size
	mov	w0, 4	// tmp109,
	str	w0, [sp, 40]	// tmp109, MEM[(int[2] *)_33][0]
	mov	w0, 9	// tmp110,
	str	w0, [sp, 44]	// tmp110, MEM[(int[2] *)_33][1]
	add	x0, sp, 40	// tmp111,,
	mov	w3, 2	//,
	mov	x2, x0	//, tmp111
	ldr	x0, [sp, 24]	//, result2
	bl	issame		//
// problem23.c:57:     assert(issame(result2, size, (int[]){4, 9}, 2));
	cmp	w0, 0	// _4,
	bne	.L25		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp112,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp112,
	mov	w2, 57	//,
	adrp	x0, .LC2	// tmp113,
	add	x1, x0, :lo12:.LC2	//, tmp113,
	adrp	x0, .LC5	// tmp114,
	add	x0, x0, :lo12:.LC5	//, tmp114,
	bl	__assert_fail		//
.L25:
// problem23.c:60:     int *result3 = func0("3,c,3,3,a,b", &size);
	add	x0, sp, 12	// tmp115,,
	mov	x1, x0	//, tmp115
	adrp	x0, .LC6	// tmp116,
	add	x0, x0, :lo12:.LC6	//, tmp116,
	bl	func0		//
	str	x0, [sp, 32]	//, result3
// problem23.c:61:     assert(issame(result3, size, (int[]){3, 3, 3}, 3));
	ldr	w4, [sp, 12]	// size.9_5, size
	adrp	x0, .LC0	// tmp118,
	add	x1, x0, :lo12:.LC0	// tmp117, tmp118,
	add	x0, sp, 40	// tmp119,,
	ldr	x2, [x1]	// tmp121,
	str	x2, [x0]	// tmp121, MEM[(int[3] *)_33]
	ldr	w1, [x1, 8]	// tmp122,
	str	w1, [x0, 8]	// tmp122, MEM[(int[3] *)_33]
	add	x0, sp, 40	// tmp123,,
	mov	w3, 3	//,
	mov	x2, x0	//, tmp123
	mov	w1, w4	//, size.9_5
	ldr	x0, [sp, 32]	//, result3
	bl	issame		//
// problem23.c:61:     assert(issame(result3, size, (int[]){3, 3, 3}, 3));
	cmp	w0, 0	// _6,
	bne	.L26		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp124,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp124,
	mov	w2, 61	//,
	adrp	x0, .LC2	// tmp125,
	add	x1, x0, :lo12:.LC2	//, tmp125,
	adrp	x0, .LC7	// tmp126,
	add	x0, x0, :lo12:.LC7	//, tmp126,
	bl	__assert_fail		//
.L26:
// problem23.c:63:     printf("All tests passed.\n");
	adrp	x0, .LC8	// tmp127,
	add	x0, x0, :lo12:.LC8	//, tmp127,
	bl	puts		//
// problem23.c:64:     return 0;
	mov	w0, 0	// _27,
// problem23.c:65: }
	mov	w1, w0	// <retval>, _27
	adrp	x0, :got:__stack_chk_guard	// tmp129,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp129,
	ldr	x3, [sp, 56]	// tmp131, D.5764
	ldr	x2, [x0]	// tmp132,
	subs	x3, x3, x2	// tmp131, tmp132
	mov	x2, 0	// tmp132
	beq	.L28		//,
	bl	__stack_chk_fail		//
.L28:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 64]	//,,
	add	sp, sp, 80	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	3
	.word	3
	.word	3
	.text
	.local	out.1
	.comm	out.1,1024,8
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
