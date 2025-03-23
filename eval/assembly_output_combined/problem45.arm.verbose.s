	.arch armv8-a
	.file	"problem45.c"
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
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	w0, [sp, 28]	// x, x
	str	w1, [sp, 24]	// base, base
	str	x2, [sp, 16]	// out, out
// problem45.c:5: void func0(int x, int base, char *out) {
	adrp	x0, :got:__stack_chk_guard	// tmp103,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp102, tmp103,
	ldr	x1, [x0]	// tmp141,
	str	x1, [sp, 88]	// tmp141, D.5017
	mov	x1, 0	// tmp141
// problem45.c:6:     int index = 0;
	str	wzr, [sp, 40]	//, index
// problem45.c:8:     while (x > 0) {
	b	.L2		//
.L3:
// problem45.c:9:         temp[index++] = (x % base) + '0';
	ldr	w0, [sp, 28]	// tmp104, x
	ldr	w1, [sp, 24]	// tmp117, base
	sdiv	w2, w0, w1	// tmp116, tmp104, tmp117
	ldr	w1, [sp, 24]	// tmp119, base
	mul	w1, w2, w1	// tmp118, tmp116, tmp119
	sub	w0, w0, w1	// _1, tmp104, tmp118
// problem45.c:9:         temp[index++] = (x % base) + '0';
	and	w1, w0, 255	// _2, _1
// problem45.c:9:         temp[index++] = (x % base) + '0';
	ldr	w0, [sp, 40]	// index.0_3, index
	add	w2, w0, 1	// tmp120, index.0_3,
	str	w2, [sp, 40]	// tmp120, index
// problem45.c:9:         temp[index++] = (x % base) + '0';
	add	w1, w1, 48	// tmp121, _2,
	and	w2, w1, 255	// _4, tmp121
// problem45.c:9:         temp[index++] = (x % base) + '0';
	sxtw	x0, w0	// tmp122, index.0_3
	add	x1, sp, 48	// tmp123,,
	strb	w2, [x1, x0]	// tmp124, temp[index.0_3]
// problem45.c:10:         x = x / base;
	ldr	w1, [sp, 28]	// tmp127, x
	ldr	w0, [sp, 24]	// tmp128, base
	sdiv	w0, w1, w0	// tmp126, tmp127, tmp128
	str	w0, [sp, 28]	// tmp126, x
.L2:
// problem45.c:8:     while (x > 0) {
	ldr	w0, [sp, 28]	// tmp129, x
	cmp	w0, 0	// tmp129,
	bgt	.L3		//,
// problem45.c:12:     int j = 0;
	str	wzr, [sp, 44]	//, j
// problem45.c:13:     while(index > 0) {
	b	.L4		//
.L5:
// problem45.c:14:         out[j++] = temp[--index];
	ldr	w0, [sp, 40]	// tmp131, index
	sub	w0, w0, #1	// tmp130, tmp131,
	str	w0, [sp, 40]	// tmp130, index
// problem45.c:14:         out[j++] = temp[--index];
	ldr	w0, [sp, 44]	// j.1_5, j
	add	w1, w0, 1	// tmp132, j.1_5,
	str	w1, [sp, 44]	// tmp132, j
	sxtw	x0, w0	// _6, j.1_5
// problem45.c:14:         out[j++] = temp[--index];
	ldr	x1, [sp, 16]	// tmp133, out
	add	x0, x1, x0	// _7, tmp133, _6
// problem45.c:14:         out[j++] = temp[--index];
	ldrsw	x1, [sp, 40]	// tmp134, index
	add	x2, sp, 48	// tmp135,,
	ldrb	w1, [x2, x1]	// _8, temp[index_24]
// problem45.c:14:         out[j++] = temp[--index];
	strb	w1, [x0]	// tmp136, *_7
.L4:
// problem45.c:13:     while(index > 0) {
	ldr	w0, [sp, 40]	// tmp137, index
	cmp	w0, 0	// tmp137,
	bgt	.L5		//,
// problem45.c:16:     out[j] = '\0';
	ldrsw	x0, [sp, 44]	// _9, j
	ldr	x1, [sp, 16]	// tmp138, out
	add	x0, x1, x0	// _10, tmp138, _9
// problem45.c:16:     out[j] = '\0';
	strb	wzr, [x0]	//, *_10
// problem45.c:17: }
	nop	
	adrp	x0, :got:__stack_chk_guard	// tmp140,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp139, tmp140,
	ldr	x2, [sp, 88]	// tmp142, D.5017
	ldr	x1, [x0]	// tmp143,
	subs	x2, x2, x1	// tmp142, tmp143
	mov	x1, 0	// tmp143
	beq	.L6		//,
	bl	__stack_chk_fail		//
.L6:
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"22"
	.align	3
.LC1:
	.string	"problem45.c"
	.align	3
.LC2:
	.string	"strcmp(buffer, \"22\") == 0"
	.align	3
.LC3:
	.string	"100"
	.align	3
.LC4:
	.string	"strcmp(buffer, \"100\") == 0"
	.align	3
.LC5:
	.string	"11101010"
	.align	3
.LC6:
	.string	"strcmp(buffer, \"11101010\") == 0"
	.align	3
.LC7:
	.string	"10000"
	.align	3
.LC8:
	.string	"strcmp(buffer, \"10000\") == 0"
	.align	3
.LC9:
	.string	"1000"
	.align	3
.LC10:
	.string	"strcmp(buffer, \"1000\") == 0"
	.align	3
.LC11:
	.string	"111"
	.align	3
.LC12:
	.string	"strcmp(buffer, \"111\") == 0"
	.align	3
.LC13:
	.string	"%d"
	.align	3
.LC14:
	.string	"strcmp(buffer, expected) == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!	//,,,
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp	//,
// problem45.c:25: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp103,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp102, tmp103,
	ldr	x1, [x0]	// tmp156,
	str	x1, [sp, 104]	// tmp156, D.5021
	mov	x1, 0	// tmp156
// problem45.c:28:     func0(8, 3, buffer);
	add	x0, sp, 24	// tmp104,,
	mov	x2, x0	//, tmp104
	mov	w1, 3	//,
	mov	w0, 8	//,
	bl	func0		//
// problem45.c:29:     assert(strcmp(buffer, "22") == 0);
	add	x2, sp, 24	// tmp105,,
	adrp	x0, .LC0	// tmp106,
	add	x1, x0, :lo12:.LC0	//, tmp106,
	mov	x0, x2	//, tmp105
	bl	strcmp		//
	cmp	w0, 0	// _1,
	beq	.L8		//,
// problem45.c:29:     assert(strcmp(buffer, "22") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp107,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp107,
	mov	w2, 29	//,
	adrp	x0, .LC1	// tmp108,
	add	x1, x0, :lo12:.LC1	//, tmp108,
	adrp	x0, .LC2	// tmp109,
	add	x0, x0, :lo12:.LC2	//, tmp109,
	bl	__assert_fail		//
.L8:
// problem45.c:31:     func0(9, 3, buffer);
	add	x0, sp, 24	// tmp110,,
	mov	x2, x0	//, tmp110
	mov	w1, 3	//,
	mov	w0, 9	//,
	bl	func0		//
// problem45.c:32:     assert(strcmp(buffer, "100") == 0);
	add	x2, sp, 24	// tmp111,,
	adrp	x0, .LC3	// tmp112,
	add	x1, x0, :lo12:.LC3	//, tmp112,
	mov	x0, x2	//, tmp111
	bl	strcmp		//
	cmp	w0, 0	// _2,
	beq	.L9		//,
// problem45.c:32:     assert(strcmp(buffer, "100") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp113,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp113,
	mov	w2, 32	//,
	adrp	x0, .LC1	// tmp114,
	add	x1, x0, :lo12:.LC1	//, tmp114,
	adrp	x0, .LC4	// tmp115,
	add	x0, x0, :lo12:.LC4	//, tmp115,
	bl	__assert_fail		//
.L9:
// problem45.c:34:     func0(234, 2, buffer);
	add	x0, sp, 24	// tmp116,,
	mov	x2, x0	//, tmp116
	mov	w1, 2	//,
	mov	w0, 234	//,
	bl	func0		//
// problem45.c:35:     assert(strcmp(buffer, "11101010") == 0);
	add	x2, sp, 24	// tmp117,,
	adrp	x0, .LC5	// tmp118,
	add	x1, x0, :lo12:.LC5	//, tmp118,
	mov	x0, x2	//, tmp117
	bl	strcmp		//
	cmp	w0, 0	// _3,
	beq	.L10		//,
// problem45.c:35:     assert(strcmp(buffer, "11101010") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 35	//,
	adrp	x0, .LC1	// tmp120,
	add	x1, x0, :lo12:.LC1	//, tmp120,
	adrp	x0, .LC6	// tmp121,
	add	x0, x0, :lo12:.LC6	//, tmp121,
	bl	__assert_fail		//
.L10:
// problem45.c:37:     func0(16, 2, buffer);
	add	x0, sp, 24	// tmp122,,
	mov	x2, x0	//, tmp122
	mov	w1, 2	//,
	mov	w0, 16	//,
	bl	func0		//
// problem45.c:38:     assert(strcmp(buffer, "10000") == 0);
	add	x2, sp, 24	// tmp123,,
	adrp	x0, .LC7	// tmp124,
	add	x1, x0, :lo12:.LC7	//, tmp124,
	mov	x0, x2	//, tmp123
	bl	strcmp		//
	cmp	w0, 0	// _4,
	beq	.L11		//,
// problem45.c:38:     assert(strcmp(buffer, "10000") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp125,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp125,
	mov	w2, 38	//,
	adrp	x0, .LC1	// tmp126,
	add	x1, x0, :lo12:.LC1	//, tmp126,
	adrp	x0, .LC8	// tmp127,
	add	x0, x0, :lo12:.LC8	//, tmp127,
	bl	__assert_fail		//
.L11:
// problem45.c:40:     func0(8, 2, buffer);
	add	x0, sp, 24	// tmp128,,
	mov	x2, x0	//, tmp128
	mov	w1, 2	//,
	mov	w0, 8	//,
	bl	func0		//
// problem45.c:41:     assert(strcmp(buffer, "1000") == 0);
	add	x2, sp, 24	// tmp129,,
	adrp	x0, .LC9	// tmp130,
	add	x1, x0, :lo12:.LC9	//, tmp130,
	mov	x0, x2	//, tmp129
	bl	strcmp		//
	cmp	w0, 0	// _5,
	beq	.L12		//,
// problem45.c:41:     assert(strcmp(buffer, "1000") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp131,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp131,
	mov	w2, 41	//,
	adrp	x0, .LC1	// tmp132,
	add	x1, x0, :lo12:.LC1	//, tmp132,
	adrp	x0, .LC10	// tmp133,
	add	x0, x0, :lo12:.LC10	//, tmp133,
	bl	__assert_fail		//
.L12:
// problem45.c:43:     func0(7, 2, buffer);
	add	x0, sp, 24	// tmp134,,
	mov	x2, x0	//, tmp134
	mov	w1, 2	//,
	mov	w0, 7	//,
	bl	func0		//
// problem45.c:44:     assert(strcmp(buffer, "111") == 0);
	add	x2, sp, 24	// tmp135,,
	adrp	x0, .LC11	// tmp136,
	add	x1, x0, :lo12:.LC11	//, tmp136,
	mov	x0, x2	//, tmp135
	bl	strcmp		//
	cmp	w0, 0	// _6,
	beq	.L13		//,
// problem45.c:44:     assert(strcmp(buffer, "111") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp137,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp137,
	mov	w2, 44	//,
	adrp	x0, .LC1	// tmp138,
	add	x1, x0, :lo12:.LC1	//, tmp138,
	adrp	x0, .LC12	// tmp139,
	add	x0, x0, :lo12:.LC12	//, tmp139,
	bl	__assert_fail		//
.L13:
// problem45.c:46:     for (int x = 2; x < 8; x++) {
	mov	w0, 2	// tmp140,
	str	w0, [sp, 20]	// tmp140, x
// problem45.c:46:     for (int x = 2; x < 8; x++) {
	b	.L14		//
.L16:
// problem45.c:48:         sprintf(expected, "%d", x);
	add	x3, sp, 64	// tmp141,,
	ldr	w2, [sp, 20]	//, x
	adrp	x0, .LC13	// tmp142,
	add	x1, x0, :lo12:.LC13	//, tmp142,
	mov	x0, x3	//, tmp141
	bl	sprintf		//
// problem45.c:49:         func0(x, x + 1, buffer);
	ldr	w0, [sp, 20]	// tmp143, x
	add	w0, w0, 1	// _7, tmp143,
	add	x1, sp, 24	// tmp144,,
	mov	x2, x1	//, tmp144
	mov	w1, w0	//, _7
	ldr	w0, [sp, 20]	//, x
	bl	func0		//
// problem45.c:50:         assert(strcmp(buffer, expected) == 0);
	add	x1, sp, 64	// tmp145,,
	add	x0, sp, 24	// tmp146,,
	bl	strcmp		//
	cmp	w0, 0	// _8,
	beq	.L15		//,
// problem45.c:50:         assert(strcmp(buffer, expected) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp147,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp147,
	mov	w2, 50	//,
	adrp	x0, .LC1	// tmp148,
	add	x1, x0, :lo12:.LC1	//, tmp148,
	adrp	x0, .LC14	// tmp149,
	add	x0, x0, :lo12:.LC14	//, tmp149,
	bl	__assert_fail		//
.L15:
// problem45.c:46:     for (int x = 2; x < 8; x++) {
	ldr	w0, [sp, 20]	// tmp151, x
	add	w0, w0, 1	// tmp150, tmp151,
	str	w0, [sp, 20]	// tmp150, x
.L14:
// problem45.c:46:     for (int x = 2; x < 8; x++) {
	ldr	w0, [sp, 20]	// tmp152, x
	cmp	w0, 7	// tmp152,
	ble	.L16		//,
// problem45.c:53:     return 0;
	mov	w0, 0	// _25,
// problem45.c:54: }
	mov	w1, w0	// <retval>, _25
	adrp	x0, :got:__stack_chk_guard	// tmp155,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp154, tmp155,
	ldr	x3, [sp, 104]	// tmp157, D.5021
	ldr	x2, [x0]	// tmp158,
	subs	x3, x3, x2	// tmp157, tmp158
	mov	x2, 0	// tmp158
	beq	.L18		//,
	bl	__stack_chk_fail		//
.L18:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 112	//,,,
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
