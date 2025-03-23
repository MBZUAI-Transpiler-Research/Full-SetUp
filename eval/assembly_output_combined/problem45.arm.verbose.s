	.arch armv8-a
	.file	"problem45.c"
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
	sub	sp, sp, #96	//,,
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80	//,,
	str	w0, [sp, 12]	// x, x
	str	w1, [sp, 8]	// base, base
	str	x2, [sp]	// out, out
// problem45.c:5: void func0(int x, int base, char *out) {
	adrp	x0, :got:__stack_chk_guard	// tmp102,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp102,
	ldr	x1, [x0]	// tmp139,
	str	x1, [sp, 72]	// tmp139, D.5633
	mov	x1, 0	// tmp139
// problem45.c:6:     int index = 0;
	str	wzr, [sp, 24]	//, index
// problem45.c:8:     while (x > 0) {
	b	.L2		//
.L3:
// problem45.c:9:         temp[index++] = (x % base) + '0';
	ldr	w0, [sp, 12]	// tmp103, x
	ldr	w1, [sp, 8]	// tmp116, base
	sdiv	w2, w0, w1	// tmp115, tmp103, tmp116
	ldr	w1, [sp, 8]	// tmp118, base
	mul	w1, w2, w1	// tmp117, tmp115, tmp118
	sub	w0, w0, w1	// _1, tmp103, tmp117
// problem45.c:9:         temp[index++] = (x % base) + '0';
	and	w1, w0, 255	// _2, _1
// problem45.c:9:         temp[index++] = (x % base) + '0';
	ldr	w0, [sp, 24]	// index.0_3, index
	add	w2, w0, 1	// tmp119, index.0_3,
	str	w2, [sp, 24]	// tmp119, index
// problem45.c:9:         temp[index++] = (x % base) + '0';
	add	w1, w1, 48	// tmp120, _2,
	and	w2, w1, 255	// _4, tmp120
// problem45.c:9:         temp[index++] = (x % base) + '0';
	sxtw	x0, w0	// tmp121, index.0_3
	add	x1, sp, 32	// tmp122,,
	strb	w2, [x1, x0]	// tmp123, temp[index.0_3]
// problem45.c:10:         x = x / base;
	ldr	w1, [sp, 12]	// tmp126, x
	ldr	w0, [sp, 8]	// tmp127, base
	sdiv	w0, w1, w0	// tmp125, tmp126, tmp127
	str	w0, [sp, 12]	// tmp125, x
.L2:
// problem45.c:8:     while (x > 0) {
	ldr	w0, [sp, 12]	// tmp128, x
	cmp	w0, 0	// tmp128,
	bgt	.L3		//,
// problem45.c:12:     int j = 0;
	str	wzr, [sp, 28]	//, j
// problem45.c:13:     while(index > 0) {
	b	.L4		//
.L5:
// problem45.c:14:         out[j++] = temp[--index];
	ldr	w0, [sp, 24]	// tmp130, index
	sub	w0, w0, #1	// tmp129, tmp130,
	str	w0, [sp, 24]	// tmp129, index
// problem45.c:14:         out[j++] = temp[--index];
	ldr	w0, [sp, 28]	// j.1_5, j
	add	w1, w0, 1	// tmp131, j.1_5,
	str	w1, [sp, 28]	// tmp131, j
	sxtw	x0, w0	// _6, j.1_5
// problem45.c:14:         out[j++] = temp[--index];
	ldr	x1, [sp]	// tmp132, out
	add	x0, x1, x0	// _7, tmp132, _6
// problem45.c:14:         out[j++] = temp[--index];
	ldrsw	x1, [sp, 24]	// tmp133, index
	add	x2, sp, 32	// tmp134,,
	ldrb	w1, [x2, x1]	// _8, temp[index_24]
// problem45.c:14:         out[j++] = temp[--index];
	strb	w1, [x0]	// tmp135, *_7
.L4:
// problem45.c:13:     while(index > 0) {
	ldr	w0, [sp, 24]	// tmp136, index
	cmp	w0, 0	// tmp136,
	bgt	.L5		//,
// problem45.c:16:     out[j] = '\0';
	ldrsw	x0, [sp, 28]	// _9, j
	ldr	x1, [sp]	// tmp137, out
	add	x0, x1, x0	// _10, tmp137, _9
// problem45.c:16:     out[j] = '\0';
	strb	wzr, [x0]	//, *_10
// problem45.c:17: }
	nop	
	adrp	x0, :got:__stack_chk_guard	// tmp138,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp138,
	ldr	x2, [sp, 72]	// tmp140, D.5633
	ldr	x1, [x0]	// tmp141,
	subs	x2, x2, x1	// tmp140, tmp141
	mov	x1, 0	// tmp141
	beq	.L6		//,
	bl	__stack_chk_fail		//
.L6:
	ldp	x29, x30, [sp, 80]	//,,
	add	sp, sp, 96	//,,
	.cfi_restore 29
	.cfi_restore 30
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
	sub	sp, sp, #112	//,,
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 96]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 96	//,,
// problem45.c:25: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp102,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp102,
	ldr	x1, [x0]	// tmp154,
	str	x1, [sp, 88]	// tmp154, D.5637
	mov	x1, 0	// tmp154
// problem45.c:28:     func0(8, 3, buffer);
	add	x0, sp, 8	// tmp103,,
	mov	x2, x0	//, tmp103
	mov	w1, 3	//,
	mov	w0, 8	//,
	bl	func0		//
// problem45.c:29:     assert(strcmp(buffer, "22") == 0);
	add	x2, sp, 8	// tmp104,,
	adrp	x0, .LC0	// tmp105,
	add	x1, x0, :lo12:.LC0	//, tmp105,
	mov	x0, x2	//, tmp104
	bl	strcmp		//
// problem45.c:29:     assert(strcmp(buffer, "22") == 0);
	cmp	w0, 0	// _1,
	beq	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp106,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp106,
	mov	w2, 29	//,
	adrp	x0, .LC1	// tmp107,
	add	x1, x0, :lo12:.LC1	//, tmp107,
	adrp	x0, .LC2	// tmp108,
	add	x0, x0, :lo12:.LC2	//, tmp108,
	bl	__assert_fail		//
.L8:
// problem45.c:31:     func0(9, 3, buffer);
	add	x0, sp, 8	// tmp109,,
	mov	x2, x0	//, tmp109
	mov	w1, 3	//,
	mov	w0, 9	//,
	bl	func0		//
// problem45.c:32:     assert(strcmp(buffer, "100") == 0);
	add	x2, sp, 8	// tmp110,,
	adrp	x0, .LC3	// tmp111,
	add	x1, x0, :lo12:.LC3	//, tmp111,
	mov	x0, x2	//, tmp110
	bl	strcmp		//
// problem45.c:32:     assert(strcmp(buffer, "100") == 0);
	cmp	w0, 0	// _2,
	beq	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp112,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp112,
	mov	w2, 32	//,
	adrp	x0, .LC1	// tmp113,
	add	x1, x0, :lo12:.LC1	//, tmp113,
	adrp	x0, .LC4	// tmp114,
	add	x0, x0, :lo12:.LC4	//, tmp114,
	bl	__assert_fail		//
.L9:
// problem45.c:34:     func0(234, 2, buffer);
	add	x0, sp, 8	// tmp115,,
	mov	x2, x0	//, tmp115
	mov	w1, 2	//,
	mov	w0, 234	//,
	bl	func0		//
// problem45.c:35:     assert(strcmp(buffer, "11101010") == 0);
	add	x2, sp, 8	// tmp116,,
	adrp	x0, .LC5	// tmp117,
	add	x1, x0, :lo12:.LC5	//, tmp117,
	mov	x0, x2	//, tmp116
	bl	strcmp		//
// problem45.c:35:     assert(strcmp(buffer, "11101010") == 0);
	cmp	w0, 0	// _3,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp118,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp118,
	mov	w2, 35	//,
	adrp	x0, .LC1	// tmp119,
	add	x1, x0, :lo12:.LC1	//, tmp119,
	adrp	x0, .LC6	// tmp120,
	add	x0, x0, :lo12:.LC6	//, tmp120,
	bl	__assert_fail		//
.L10:
// problem45.c:37:     func0(16, 2, buffer);
	add	x0, sp, 8	// tmp121,,
	mov	x2, x0	//, tmp121
	mov	w1, 2	//,
	mov	w0, 16	//,
	bl	func0		//
// problem45.c:38:     assert(strcmp(buffer, "10000") == 0);
	add	x2, sp, 8	// tmp122,,
	adrp	x0, .LC7	// tmp123,
	add	x1, x0, :lo12:.LC7	//, tmp123,
	mov	x0, x2	//, tmp122
	bl	strcmp		//
// problem45.c:38:     assert(strcmp(buffer, "10000") == 0);
	cmp	w0, 0	// _4,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp124,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp124,
	mov	w2, 38	//,
	adrp	x0, .LC1	// tmp125,
	add	x1, x0, :lo12:.LC1	//, tmp125,
	adrp	x0, .LC8	// tmp126,
	add	x0, x0, :lo12:.LC8	//, tmp126,
	bl	__assert_fail		//
.L11:
// problem45.c:40:     func0(8, 2, buffer);
	add	x0, sp, 8	// tmp127,,
	mov	x2, x0	//, tmp127
	mov	w1, 2	//,
	mov	w0, 8	//,
	bl	func0		//
// problem45.c:41:     assert(strcmp(buffer, "1000") == 0);
	add	x2, sp, 8	// tmp128,,
	adrp	x0, .LC9	// tmp129,
	add	x1, x0, :lo12:.LC9	//, tmp129,
	mov	x0, x2	//, tmp128
	bl	strcmp		//
// problem45.c:41:     assert(strcmp(buffer, "1000") == 0);
	cmp	w0, 0	// _5,
	beq	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp130,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp130,
	mov	w2, 41	//,
	adrp	x0, .LC1	// tmp131,
	add	x1, x0, :lo12:.LC1	//, tmp131,
	adrp	x0, .LC10	// tmp132,
	add	x0, x0, :lo12:.LC10	//, tmp132,
	bl	__assert_fail		//
.L12:
// problem45.c:43:     func0(7, 2, buffer);
	add	x0, sp, 8	// tmp133,,
	mov	x2, x0	//, tmp133
	mov	w1, 2	//,
	mov	w0, 7	//,
	bl	func0		//
// problem45.c:44:     assert(strcmp(buffer, "111") == 0);
	add	x2, sp, 8	// tmp134,,
	adrp	x0, .LC11	// tmp135,
	add	x1, x0, :lo12:.LC11	//, tmp135,
	mov	x0, x2	//, tmp134
	bl	strcmp		//
// problem45.c:44:     assert(strcmp(buffer, "111") == 0);
	cmp	w0, 0	// _6,
	beq	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp136,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp136,
	mov	w2, 44	//,
	adrp	x0, .LC1	// tmp137,
	add	x1, x0, :lo12:.LC1	//, tmp137,
	adrp	x0, .LC12	// tmp138,
	add	x0, x0, :lo12:.LC12	//, tmp138,
	bl	__assert_fail		//
.L13:
// problem45.c:46:     for (int x = 2; x < 8; x++) {
	mov	w0, 2	// tmp139,
	str	w0, [sp, 4]	// tmp139, x
// problem45.c:46:     for (int x = 2; x < 8; x++) {
	b	.L14		//
.L16:
// problem45.c:48:         sprintf(expected, "%d", x);
	add	x3, sp, 48	// tmp140,,
	ldr	w2, [sp, 4]	//, x
	adrp	x0, .LC13	// tmp141,
	add	x1, x0, :lo12:.LC13	//, tmp141,
	mov	x0, x3	//, tmp140
	bl	sprintf		//
// problem45.c:49:         func0(x, x + 1, buffer);
	ldr	w0, [sp, 4]	// tmp142, x
	add	w0, w0, 1	// _7, tmp142,
	add	x1, sp, 8	// tmp143,,
	mov	x2, x1	//, tmp143
	mov	w1, w0	//, _7
	ldr	w0, [sp, 4]	//, x
	bl	func0		//
// problem45.c:50:         assert(strcmp(buffer, expected) == 0);
	add	x1, sp, 48	// tmp144,,
	add	x0, sp, 8	// tmp145,,
	bl	strcmp		//
// problem45.c:50:         assert(strcmp(buffer, expected) == 0);
	cmp	w0, 0	// _8,
	beq	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp146,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp146,
	mov	w2, 50	//,
	adrp	x0, .LC1	// tmp147,
	add	x1, x0, :lo12:.LC1	//, tmp147,
	adrp	x0, .LC14	// tmp148,
	add	x0, x0, :lo12:.LC14	//, tmp148,
	bl	__assert_fail		//
.L15:
// problem45.c:46:     for (int x = 2; x < 8; x++) {
	ldr	w0, [sp, 4]	// tmp150, x
	add	w0, w0, 1	// tmp149, tmp150,
	str	w0, [sp, 4]	// tmp149, x
.L14:
// problem45.c:46:     for (int x = 2; x < 8; x++) {
	ldr	w0, [sp, 4]	// tmp151, x
	cmp	w0, 7	// tmp151,
	ble	.L16		//,
// problem45.c:53:     return 0;
	mov	w0, 0	// _25,
// problem45.c:54: }
	mov	w1, w0	// <retval>, _25
	adrp	x0, :got:__stack_chk_guard	// tmp153,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp153,
	ldr	x3, [sp, 88]	// tmp155, D.5637
	ldr	x2, [x0]	// tmp156,
	subs	x3, x3, x2	// tmp155, tmp156
	mov	x2, 0	// tmp156
	beq	.L18		//,
	bl	__stack_chk_fail		//
.L18:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 96]	//,,
	add	sp, sp, 112	//,,
	.cfi_restore 29
	.cfi_restore 30
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
