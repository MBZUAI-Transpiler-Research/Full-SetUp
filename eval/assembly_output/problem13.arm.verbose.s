	.arch armv8-a
	.file	"problem13.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC10:
	.string	""
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
	str	x0, [sp, 24]	// strings, strings
	str	w1, [sp, 20]	// count, count
// problem13.c:5:     char *out = "";
	adrp	x0, .LC10	// tmp103,
	add	x0, x0, :lo12:.LC10	// tmp102, tmp103,
	str	x0, [sp, 56]	// tmp102, out
// problem13.c:6:     int longest_length = 0;
	str	wzr, [sp, 44]	//, longest_length
// problem13.c:7:     for (int i = 0; i < count; i++) {
	str	wzr, [sp, 48]	//, i
// problem13.c:7:     for (int i = 0; i < count; i++) {
	b	.L2		//
.L4:
// problem13.c:8:         int current_length = strlen(strings[i]);
	ldrsw	x0, [sp, 48]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 24]	// tmp104, strings
	add	x0, x1, x0	// _3, tmp104, _2
// problem13.c:8:         int current_length = strlen(strings[i]);
	ldr	x0, [x0]	// _4, *_3
	bl	strlen		//
// problem13.c:8:         int current_length = strlen(strings[i]);
	str	w0, [sp, 52]	// tmp105, current_length
// problem13.c:9:         if (current_length > longest_length) {
	ldr	w1, [sp, 52]	// tmp106, current_length
	ldr	w0, [sp, 44]	// tmp107, longest_length
	cmp	w1, w0	// tmp106, tmp107
	ble	.L3		//,
// problem13.c:10:             out = strings[i];
	ldrsw	x0, [sp, 48]	// _6, i
	lsl	x0, x0, 3	// _7, _6,
	ldr	x1, [sp, 24]	// tmp108, strings
	add	x0, x1, x0	// _8, tmp108, _7
// problem13.c:10:             out = strings[i];
	ldr	x0, [x0]	// tmp109, *_8
	str	x0, [sp, 56]	// tmp109, out
// problem13.c:11:             longest_length = current_length;
	ldr	w0, [sp, 52]	// tmp110, current_length
	str	w0, [sp, 44]	// tmp110, longest_length
.L3:
// problem13.c:7:     for (int i = 0; i < count; i++) {
	ldr	w0, [sp, 48]	// tmp112, i
	add	w0, w0, 1	// tmp111, tmp112,
	str	w0, [sp, 48]	// tmp111, i
.L2:
// problem13.c:7:     for (int i = 0; i < count; i++) {
	ldr	w1, [sp, 48]	// tmp113, i
	ldr	w0, [sp, 20]	// tmp114, count
	cmp	w1, w0	// tmp113, tmp114
	blt	.L4		//,
// problem13.c:14:     return out;
	ldr	x0, [sp, 56]	// _18, out
// problem13.c:15: }
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
.LC13:
	.string	"problem13.c"
	.align	3
.LC14:
	.string	"strcmp(func0(empty_array, 0), \"\") == 0"
	.align	3
.LC0:
	.string	"x"
	.align	3
.LC15:
	.string	"strcmp(func0(array1, 3), \"x\") == 0"
	.align	3
.LC5:
	.string	"zzzz"
	.align	3
.LC16:
	.string	"strcmp(func0(array2, 6), \"zzzz\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #112	//,,
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 96]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 96	//,,
// problem13.c:23: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp101,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp101,
	ldr	x1, [x0]	// tmp133,
	str	x1, [sp, 88]	// tmp133, D.5105
	mov	x1, 0	// tmp133
// problem13.c:24:     char *empty_array[] = {""};
	adrp	x0, .LC10	// tmp103,
	add	x0, x0, :lo12:.LC10	// tmp102, tmp103,
	str	x0, [sp, 8]	// tmp102, empty_array[0]
// problem13.c:25:     char *array1[] = {"x", "y", "z"};
	adrp	x0, .LC11	// tmp105,
	add	x0, x0, :lo12:.LC11	// tmp104, tmp105,
	add	x2, sp, 16	// tmp106,,
	mov	x3, x0	// tmp107, tmp104
	ldp	x0, x1, [x3]	// tmp108,
	stp	x0, x1, [x2]	// tmp108, array1
	ldr	x0, [x3, 16]	// tmp109,
	str	x0, [x2, 16]	// tmp109, array1
// problem13.c:26:     char *array2[] = {"x", "yyy", "zzzz", "www", "kkkk", "abc"};
	adrp	x0, .LC12	// tmp111,
	add	x1, x0, :lo12:.LC12	// tmp110, tmp111,
	add	x0, sp, 40	// tmp112,,
	ldp	q0, q1, [x1]	// tmp114, tmp115,
	stp	q0, q1, [x0]	// tmp114, tmp115, array2
	ldr	q0, [x1, 32]	// tmp116,
	str	q0, [x0, 32]	// tmp116, array2
// problem13.c:28:     assert(strcmp(func0(empty_array, 0), "") == 0);
	add	x0, sp, 8	// tmp117,,
	mov	w1, 0	//,
	bl	func0		//
// problem13.c:28:     assert(strcmp(func0(empty_array, 0), "") == 0);
	ldrb	w0, [x0]	// _12, MEM[(const unsigned char * {ref-all})_1]
	cmp	w0, 0	// _2,
	beq	.L7		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp118,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp118,
	mov	w2, 28	//,
	adrp	x0, .LC13	// tmp119,
	add	x1, x0, :lo12:.LC13	//, tmp119,
	adrp	x0, .LC14	// tmp120,
	add	x0, x0, :lo12:.LC14	//, tmp120,
	bl	__assert_fail		//
.L7:
// problem13.c:29:     assert(strcmp(func0(array1, 3), "x") == 0);
	add	x0, sp, 16	// tmp121,,
	mov	w1, 3	//,
	bl	func0		//
	mov	x2, x0	// _3,
// problem13.c:29:     assert(strcmp(func0(array1, 3), "x") == 0);
	adrp	x0, .LC0	// tmp122,
	add	x1, x0, :lo12:.LC0	//, tmp122,
	mov	x0, x2	//, _3
	bl	strcmp		//
// problem13.c:29:     assert(strcmp(func0(array1, 3), "x") == 0);
	cmp	w0, 0	// _4,
	beq	.L8		//,
// problem13.c:29:     assert(strcmp(func0(array1, 3), "x") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp123,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp123,
	mov	w2, 29	//,
	adrp	x0, .LC13	// tmp124,
	add	x1, x0, :lo12:.LC13	//, tmp124,
	adrp	x0, .LC15	// tmp125,
	add	x0, x0, :lo12:.LC15	//, tmp125,
	bl	__assert_fail		//
.L8:
// problem13.c:30:     assert(strcmp(func0(array2, 6), "zzzz") == 0);
	add	x0, sp, 40	// tmp126,,
	mov	w1, 6	//,
	bl	func0		//
	mov	x2, x0	// _5,
// problem13.c:30:     assert(strcmp(func0(array2, 6), "zzzz") == 0);
	adrp	x0, .LC5	// tmp127,
	add	x1, x0, :lo12:.LC5	//, tmp127,
	mov	x0, x2	//, _5
	bl	strcmp		//
// problem13.c:30:     assert(strcmp(func0(array2, 6), "zzzz") == 0);
	cmp	w0, 0	// _6,
	beq	.L9		//,
// problem13.c:30:     assert(strcmp(func0(array2, 6), "zzzz") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp128,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp128,
	mov	w2, 30	//,
	adrp	x0, .LC13	// tmp129,
	add	x1, x0, :lo12:.LC13	//, tmp129,
	adrp	x0, .LC16	// tmp130,
	add	x0, x0, :lo12:.LC16	//, tmp130,
	bl	__assert_fail		//
.L9:
// problem13.c:32:     return 0;
	mov	w0, 0	// _18,
// problem13.c:33: }
	mov	w1, w0	// <retval>, _18
	adrp	x0, :got:__stack_chk_guard	// tmp132,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp132,
	ldr	x3, [sp, 88]	// tmp134, D.5105
	ldr	x2, [x0]	// tmp135,
	subs	x3, x3, x2	// tmp134, tmp135
	mov	x2, 0	// tmp135
	beq	.L11		//,
	bl	__stack_chk_fail		//
.L11:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 96]	//,,
	add	sp, sp, 112	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC1:
	.string	"y"
	.align	3
.LC2:
	.string	"z"
	.data
	.align	3
.LC11:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.section	.rodata
	.align	3
.LC4:
	.string	"yyy"
	.align	3
.LC6:
	.string	"www"
	.align	3
.LC7:
	.string	"kkkk"
	.align	3
.LC8:
	.string	"abc"
	.data
	.align	3
.LC12:
	.xword	.LC0
	.xword	.LC4
	.xword	.LC5
	.xword	.LC6
	.xword	.LC7
	.xword	.LC8
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
