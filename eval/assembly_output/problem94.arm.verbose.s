	.arch armv8-a
	.file	"problem94.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"aeiouAEIOU"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 24]	// message, message
	str	x1, [sp, 16]	// out, out
// problem94.c:6:     const char* vowels = "aeiouAEIOU";
	adrp	x0, .LC0	// tmp128,
	add	x0, x0, :lo12:.LC0	// tmp127, tmp128,
	str	x0, [sp, 56]	// tmp127, vowels
// problem94.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	str	wzr, [sp, 48]	//, i
// problem94.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	b	.L2		//
.L10:
// problem94.c:10:         char w = message[i];
	ldrsw	x0, [sp, 48]	// _1, i
	ldr	x1, [sp, 24]	// tmp129, message
	add	x0, x1, x0	// _2, tmp129, _1
// problem94.c:10:         char w = message[i];
	ldrb	w0, [x0]	// tmp130, *_2
	strb	w0, [sp, 47]	// tmp130, w
// problem94.c:11:         if (islower(w)) {
	bl	__ctype_b_loc		//
// problem94.c:11:         if (islower(w)) {
	ldr	x1, [x0]	// _4, *_3
	ldrb	w0, [sp, 47]	// _5, w
	lsl	x0, x0, 1	// _6, _5,
	add	x0, x1, x0	// _7, _4, _6
	ldrh	w0, [x0]	// _8, *_7
	and	w0, w0, 512	// _10, _9,
// problem94.c:11:         if (islower(w)) {
	cmp	w0, 0	// _10,
	beq	.L3		//,
// problem94.c:12:             w = toupper(w);
	ldrb	w0, [sp, 47]	// _11, w
	bl	toupper		//
// problem94.c:12:             w = toupper(w);
	strb	w0, [sp, 47]	// tmp131, w
	b	.L4		//
.L3:
// problem94.c:13:         } else if (isupper(w)) {
	bl	__ctype_b_loc		//
// problem94.c:13:         } else if (isupper(w)) {
	ldr	x1, [x0]	// _14, *_13
	ldrb	w0, [sp, 47]	// _15, w
	lsl	x0, x0, 1	// _16, _15,
	add	x0, x1, x0	// _17, _14, _16
	ldrh	w0, [x0]	// _18, *_17
	and	w0, w0, 256	// _20, _19,
// problem94.c:13:         } else if (isupper(w)) {
	cmp	w0, 0	// _20,
	beq	.L4		//,
// problem94.c:14:             w = tolower(w);
	ldrb	w0, [sp, 47]	// _21, w
	bl	tolower		//
// problem94.c:14:             w = tolower(w);
	strb	w0, [sp, 47]	// tmp132, w
.L4:
// problem94.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	str	wzr, [sp, 52]	//, j
// problem94.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	b	.L5		//
.L9:
// problem94.c:18:             if (w == vowels[j]) {
	ldrsw	x0, [sp, 52]	// _23, j
	ldr	x1, [sp, 56]	// tmp133, vowels
	add	x0, x1, x0	// _24, tmp133, _23
	ldrb	w0, [x0]	// _25, *_24
// problem94.c:18:             if (w == vowels[j]) {
	ldrb	w1, [sp, 47]	// tmp134, w
	cmp	w1, w0	// tmp134, _25
	bne	.L6		//,
// problem94.c:19:                 if (j < 10) {
	ldr	w0, [sp, 52]	// tmp135, j
	cmp	w0, 9	// tmp135,
	bgt	.L11		//,
// problem94.c:20:                     w = w + 2;
	ldrb	w0, [sp, 47]	// tmp136, w
	add	w0, w0, 2	// tmp137, tmp136,
	strb	w0, [sp, 47]	// tmp138, w
// problem94.c:22:                 break;
	b	.L11		//
.L6:
// problem94.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	ldr	w0, [sp, 52]	// tmp140, j
	add	w0, w0, 1	// tmp139, tmp140,
	str	w0, [sp, 52]	// tmp139, j
.L5:
// problem94.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	ldrsw	x0, [sp, 52]	// _26, j
	ldr	x1, [sp, 56]	// tmp141, vowels
	add	x0, x1, x0	// _27, tmp141, _26
	ldrb	w0, [x0]	// _28, *_27
// problem94.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	cmp	w0, 0	// _28,
	bne	.L9		//,
	b	.L8		//
.L11:
// problem94.c:22:                 break;
	nop	
.L8:
// problem94.c:25:         out[i] = w;
	ldrsw	x0, [sp, 48]	// _29, i
	ldr	x1, [sp, 16]	// tmp142, out
	add	x0, x1, x0	// _30, tmp142, _29
// problem94.c:25:         out[i] = w;
	ldrb	w1, [sp, 47]	// tmp143, w
	strb	w1, [x0]	// tmp143, *_30
// problem94.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	ldr	w0, [sp, 48]	// tmp145, i
	add	w0, w0, 1	// tmp144, tmp145,
	str	w0, [sp, 48]	// tmp144, i
.L2:
// problem94.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	ldrsw	x0, [sp, 48]	// _31, i
	ldr	x1, [sp, 24]	// tmp146, message
	add	x0, x1, x0	// _32, tmp146, _31
	ldrb	w0, [x0]	// _33, *_32
// problem94.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	cmp	w0, 0	// _33,
	bne	.L10		//,
// problem94.c:27:     out[i] = '\0';
	ldrsw	x0, [sp, 48]	// _34, i
	ldr	x1, [sp, 16]	// tmp147, out
	add	x0, x1, x0	// _35, tmp147, _34
// problem94.c:27:     out[i] = '\0';
	strb	wzr, [x0]	//, *_35
// problem94.c:28: }
	nop	
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"TEST"
	.align	3
.LC2:
	.string	"tgst"
	.align	3
.LC3:
	.string	"problem94.c"
	.align	3
.LC4:
	.string	"strcmp(output, \"tgst\") == 0"
	.align	3
.LC5:
	.string	"Mudasir"
	.align	3
.LC6:
	.string	"mWDCSKR"
	.align	3
.LC7:
	.string	"strcmp(output, \"mWDCSKR\") == 0"
	.align	3
.LC8:
	.string	"YES"
	.align	3
.LC9:
	.string	"ygs"
	.align	3
.LC10:
	.string	"strcmp(output, \"ygs\") == 0"
	.align	3
.LC11:
	.string	"This is a message"
	.align	3
.LC12:
	.string	"tHKS KS C MGSSCGG"
	.align	3
.LC13:
	.string	"strcmp(output, \"tHKS KS C MGSSCGG\") == 0"
	.align	3
.LC14:
	.string	"I DoNt KnOw WhAt tO WrItE"
	.align	3
.LC15:
	.string	"k dQnT kNqW wHcT Tq wRkTg"
	.align	3
.LC16:
	.string	"strcmp(output, \"k dQnT kNqW wHcT Tq wRkTg\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #128	//,,
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, 112]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 112	//,,
// problem94.c:35: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp99,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp99,
	ldr	x1, [x0]	// tmp137,
	str	x1, [sp, 104]	// tmp137, D.5210
	mov	x1, 0	// tmp137
// problem94.c:38:     func0("TEST", output);
	mov	x0, sp	// tmp100,
	mov	x1, x0	//, tmp100
	adrp	x0, .LC1	// tmp101,
	add	x0, x0, :lo12:.LC1	//, tmp101,
	bl	func0		//
// problem94.c:39:     assert(strcmp(output, "tgst") == 0);
	mov	x2, sp	// tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x1, x0, :lo12:.LC2	//, tmp103,
	mov	x0, x2	//, tmp102
	bl	strcmp		//
// problem94.c:39:     assert(strcmp(output, "tgst") == 0);
	cmp	w0, 0	// _1,
	beq	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp104,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp104,
	mov	w2, 39	//,
	adrp	x0, .LC3	// tmp105,
	add	x1, x0, :lo12:.LC3	//, tmp105,
	adrp	x0, .LC4	// tmp106,
	add	x0, x0, :lo12:.LC4	//, tmp106,
	bl	__assert_fail		//
.L13:
// problem94.c:41:     func0("Mudasir", output);
	mov	x0, sp	// tmp107,
	mov	x1, x0	//, tmp107
	adrp	x0, .LC5	// tmp108,
	add	x0, x0, :lo12:.LC5	//, tmp108,
	bl	func0		//
// problem94.c:42:     assert(strcmp(output, "mWDCSKR") == 0);
	mov	x2, sp	// tmp109,
	adrp	x0, .LC6	// tmp110,
	add	x1, x0, :lo12:.LC6	//, tmp110,
	mov	x0, x2	//, tmp109
	bl	strcmp		//
// problem94.c:42:     assert(strcmp(output, "mWDCSKR") == 0);
	cmp	w0, 0	// _2,
	beq	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp111,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp111,
	mov	w2, 42	//,
	adrp	x0, .LC3	// tmp112,
	add	x1, x0, :lo12:.LC3	//, tmp112,
	adrp	x0, .LC7	// tmp113,
	add	x0, x0, :lo12:.LC7	//, tmp113,
	bl	__assert_fail		//
.L14:
// problem94.c:44:     func0("YES", output);
	mov	x0, sp	// tmp114,
	mov	x1, x0	//, tmp114
	adrp	x0, .LC8	// tmp115,
	add	x0, x0, :lo12:.LC8	//, tmp115,
	bl	func0		//
// problem94.c:45:     assert(strcmp(output, "ygs") == 0);
	mov	x2, sp	// tmp116,
	adrp	x0, .LC9	// tmp117,
	add	x1, x0, :lo12:.LC9	//, tmp117,
	mov	x0, x2	//, tmp116
	bl	strcmp		//
// problem94.c:45:     assert(strcmp(output, "ygs") == 0);
	cmp	w0, 0	// _3,
	beq	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp118,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp118,
	mov	w2, 45	//,
	adrp	x0, .LC3	// tmp119,
	add	x1, x0, :lo12:.LC3	//, tmp119,
	adrp	x0, .LC10	// tmp120,
	add	x0, x0, :lo12:.LC10	//, tmp120,
	bl	__assert_fail		//
.L15:
// problem94.c:47:     func0("This is a message", output);
	mov	x0, sp	// tmp121,
	mov	x1, x0	//, tmp121
	adrp	x0, .LC11	// tmp122,
	add	x0, x0, :lo12:.LC11	//, tmp122,
	bl	func0		//
// problem94.c:48:     assert(strcmp(output, "tHKS KS C MGSSCGG") == 0);
	mov	x2, sp	// tmp123,
	adrp	x0, .LC12	// tmp124,
	add	x1, x0, :lo12:.LC12	//, tmp124,
	mov	x0, x2	//, tmp123
	bl	strcmp		//
// problem94.c:48:     assert(strcmp(output, "tHKS KS C MGSSCGG") == 0);
	cmp	w0, 0	// _4,
	beq	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp125,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp125,
	mov	w2, 48	//,
	adrp	x0, .LC3	// tmp126,
	add	x1, x0, :lo12:.LC3	//, tmp126,
	adrp	x0, .LC13	// tmp127,
	add	x0, x0, :lo12:.LC13	//, tmp127,
	bl	__assert_fail		//
.L16:
// problem94.c:50:     func0("I DoNt KnOw WhAt tO WrItE", output);
	mov	x0, sp	// tmp128,
	mov	x1, x0	//, tmp128
	adrp	x0, .LC14	// tmp129,
	add	x0, x0, :lo12:.LC14	//, tmp129,
	bl	func0		//
// problem94.c:51:     assert(strcmp(output, "k dQnT kNqW wHcT Tq wRkTg") == 0);
	mov	x2, sp	// tmp130,
	adrp	x0, .LC15	// tmp131,
	add	x1, x0, :lo12:.LC15	//, tmp131,
	mov	x0, x2	//, tmp130
	bl	strcmp		//
// problem94.c:51:     assert(strcmp(output, "k dQnT kNqW wHcT Tq wRkTg") == 0);
	cmp	w0, 0	// _5,
	beq	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp132,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp132,
	mov	w2, 51	//,
	adrp	x0, .LC3	// tmp133,
	add	x1, x0, :lo12:.LC3	//, tmp133,
	adrp	x0, .LC16	// tmp134,
	add	x0, x0, :lo12:.LC16	//, tmp134,
	bl	__assert_fail		//
.L17:
// problem94.c:53:     return 0;
	mov	w0, 0	// _17,
// problem94.c:54: }
	mov	w1, w0	// <retval>, _17
	adrp	x0, :got:__stack_chk_guard	// tmp136,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp136,
	ldr	x3, [sp, 104]	// tmp138, D.5210
	ldr	x2, [x0]	// tmp139,
	subs	x3, x3, x2	// tmp138, tmp139
	mov	x2, 0	// tmp139
	beq	.L19		//,
	bl	__stack_chk_fail		//
.L19:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 112]	//,,
	add	sp, sp, 128	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
