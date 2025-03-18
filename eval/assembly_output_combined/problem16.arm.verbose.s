	.arch armv8-a
	.file	"problem16.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	" %d"
	.align	3
.LC1:
	.string	"0"
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
	str	w0, [sp, 28]	// n, n
// problem16.c:5:     int len = 2; 
	mov	w0, 2	// tmp100,
	str	w0, [sp, 36]	// tmp100, len
// problem16.c:6:     for (int i = 1; i <= n; ++i) {
	mov	w0, 1	// tmp101,
	str	w0, [sp, 40]	// tmp101, i
// problem16.c:6:     for (int i = 1; i <= n; ++i) {
	b	.L2		//
.L3:
// problem16.c:7:         len += snprintf(NULL, 0, " %d", i);
	ldr	w3, [sp, 40]	//, i
	adrp	x0, .LC0	// tmp102,
	add	x2, x0, :lo12:.LC0	//, tmp102,
	mov	x1, 0	//,
	mov	x0, 0	//,
	bl	snprintf		//
	mov	w1, w0	// _30,
// problem16.c:7:         len += snprintf(NULL, 0, " %d", i);
	ldr	w0, [sp, 36]	// tmp104, len
	add	w0, w0, w1	// tmp103, tmp104, _30
	str	w0, [sp, 36]	// tmp103, len
// problem16.c:6:     for (int i = 1; i <= n; ++i) {
	ldr	w0, [sp, 40]	// tmp106, i
	add	w0, w0, 1	// tmp105, tmp106,
	str	w0, [sp, 40]	// tmp105, i
.L2:
// problem16.c:6:     for (int i = 1; i <= n; ++i) {
	ldr	w1, [sp, 40]	// tmp107, i
	ldr	w0, [sp, 28]	// tmp108, n
	cmp	w1, w0	// tmp107, tmp108
	ble	.L3		//,
// problem16.c:10:     char *out = malloc(len);
	ldrsw	x0, [sp, 36]	// _1, len
	bl	malloc		//
	str	x0, [sp, 56]	// tmp109, out
// problem16.c:11:     if (!out) {
	ldr	x0, [sp, 56]	// tmp110, out
	cmp	x0, 0	// tmp110,
	bne	.L4		//,
// problem16.c:12:         return NULL;
	mov	x0, 0	// _8,
	b	.L5		//
.L4:
// problem16.c:15:     char *ptr = out;
	ldr	x0, [sp, 56]	// tmp111, out
	str	x0, [sp, 48]	// tmp111, ptr
// problem16.c:16:     ptr += sprintf(ptr, "0");
	adrp	x0, .LC1	// tmp112,
	add	x1, x0, :lo12:.LC1	//, tmp112,
	ldr	x0, [sp, 48]	//, ptr
	bl	sprintf		//
// problem16.c:16:     ptr += sprintf(ptr, "0");
	sxtw	x0, w0	// _2, _20
// problem16.c:16:     ptr += sprintf(ptr, "0");
	ldr	x1, [sp, 48]	// tmp114, ptr
	add	x0, x1, x0	// tmp113, tmp114, _2
	str	x0, [sp, 48]	// tmp113, ptr
// problem16.c:17:     for (int i = 1; i <= n; ++i) {
	mov	w0, 1	// tmp115,
	str	w0, [sp, 44]	// tmp115, i
// problem16.c:17:     for (int i = 1; i <= n; ++i) {
	b	.L6		//
.L7:
// problem16.c:18:         ptr += sprintf(ptr, " %d", i);
	ldr	w2, [sp, 44]	//, i
	adrp	x0, .LC0	// tmp116,
	add	x1, x0, :lo12:.LC0	//, tmp116,
	ldr	x0, [sp, 48]	//, ptr
	bl	sprintf		//
// problem16.c:18:         ptr += sprintf(ptr, " %d", i);
	sxtw	x0, w0	// _3, _25
// problem16.c:18:         ptr += sprintf(ptr, " %d", i);
	ldr	x1, [sp, 48]	// tmp118, ptr
	add	x0, x1, x0	// tmp117, tmp118, _3
	str	x0, [sp, 48]	// tmp117, ptr
// problem16.c:17:     for (int i = 1; i <= n; ++i) {
	ldr	w0, [sp, 44]	// tmp120, i
	add	w0, w0, 1	// tmp119, tmp120,
	str	w0, [sp, 44]	// tmp119, i
.L6:
// problem16.c:17:     for (int i = 1; i <= n; ++i) {
	ldr	w1, [sp, 44]	// tmp121, i
	ldr	w0, [sp, 28]	// tmp122, n
	cmp	w1, w0	// tmp121, tmp122
	ble	.L7		//,
// problem16.c:20:     return out;
	ldr	x0, [sp, 56]	// _8, out
.L5:
// problem16.c:21: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC2:
	.string	"problem16.c"
	.align	3
.LC3:
	.string	"strcmp(result, \"0\") == 0"
	.align	3
.LC4:
	.string	"0 1 2 3"
	.align	3
.LC5:
	.string	"strcmp(result, \"0 1 2 3\") == 0"
	.align	3
.LC6:
	.string	"0 1 2 3 4 5 6 7 8 9 10"
	.align	3
.LC7:
	.string	"strcmp(result, \"0 1 2 3 4 5 6 7 8 9 10\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
// problem16.c:32:     result = func0(0);
	mov	w0, 0	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem16.c:33:     assert(strcmp(result, "0") == 0);
	adrp	x0, .LC1	// tmp97,
	add	x1, x0, :lo12:.LC1	//, tmp97,
	ldr	x0, [sp, 24]	//, result
	bl	strcmp		//
// problem16.c:33:     assert(strcmp(result, "0") == 0);
	cmp	w0, 0	// _1,
	beq	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp98,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp98,
	mov	w2, 33	//,
	adrp	x0, .LC2	// tmp99,
	add	x1, x0, :lo12:.LC2	//, tmp99,
	adrp	x0, .LC3	// tmp100,
	add	x0, x0, :lo12:.LC3	//, tmp100,
	bl	__assert_fail		//
.L9:
// problem16.c:34:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem16.c:36:     result = func0(3);
	mov	w0, 3	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem16.c:37:     assert(strcmp(result, "0 1 2 3") == 0);
	adrp	x0, .LC4	// tmp101,
	add	x1, x0, :lo12:.LC4	//, tmp101,
	ldr	x0, [sp, 24]	//, result
	bl	strcmp		//
// problem16.c:37:     assert(strcmp(result, "0 1 2 3") == 0);
	cmp	w0, 0	// _2,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp102,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp102,
	mov	w2, 37	//,
	adrp	x0, .LC2	// tmp103,
	add	x1, x0, :lo12:.LC2	//, tmp103,
	adrp	x0, .LC5	// tmp104,
	add	x0, x0, :lo12:.LC5	//, tmp104,
	bl	__assert_fail		//
.L10:
// problem16.c:38:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem16.c:40:     result = func0(10);
	mov	w0, 10	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem16.c:41:     assert(strcmp(result, "0 1 2 3 4 5 6 7 8 9 10") == 0);
	adrp	x0, .LC6	// tmp105,
	add	x1, x0, :lo12:.LC6	//, tmp105,
	ldr	x0, [sp, 24]	//, result
	bl	strcmp		//
// problem16.c:41:     assert(strcmp(result, "0 1 2 3 4 5 6 7 8 9 10") == 0);
	cmp	w0, 0	// _3,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp106,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp106,
	mov	w2, 41	//,
	adrp	x0, .LC2	// tmp107,
	add	x1, x0, :lo12:.LC2	//, tmp107,
	adrp	x0, .LC7	// tmp108,
	add	x0, x0, :lo12:.LC7	//, tmp108,
	bl	__assert_fail		//
.L11:
// problem16.c:42:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem16.c:44:     return 0;
	mov	w0, 0	// _17,
// problem16.c:45: }
	ldp	x29, x30, [sp], 32	//,,,
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
