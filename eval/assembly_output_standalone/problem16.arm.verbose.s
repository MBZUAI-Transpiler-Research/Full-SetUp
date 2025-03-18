	.arch armv8-a
	.file	"code.c"
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
// eval/problem16//code.c:5:     int len = 2; 
	mov	w0, 2	// tmp100,
	str	w0, [sp, 36]	// tmp100, len
// eval/problem16//code.c:6:     for (int i = 1; i <= n; ++i) {
	mov	w0, 1	// tmp101,
	str	w0, [sp, 40]	// tmp101, i
// eval/problem16//code.c:6:     for (int i = 1; i <= n; ++i) {
	b	.L2		//
.L3:
// eval/problem16//code.c:7:         len += snprintf(NULL, 0, " %d", i);
	ldr	w3, [sp, 40]	//, i
	adrp	x0, .LC0	// tmp102,
	add	x2, x0, :lo12:.LC0	//, tmp102,
	mov	x1, 0	//,
	mov	x0, 0	//,
	bl	snprintf		//
	mov	w1, w0	// _30,
// eval/problem16//code.c:7:         len += snprintf(NULL, 0, " %d", i);
	ldr	w0, [sp, 36]	// tmp104, len
	add	w0, w0, w1	// tmp103, tmp104, _30
	str	w0, [sp, 36]	// tmp103, len
// eval/problem16//code.c:6:     for (int i = 1; i <= n; ++i) {
	ldr	w0, [sp, 40]	// tmp106, i
	add	w0, w0, 1	// tmp105, tmp106,
	str	w0, [sp, 40]	// tmp105, i
.L2:
// eval/problem16//code.c:6:     for (int i = 1; i <= n; ++i) {
	ldr	w1, [sp, 40]	// tmp107, i
	ldr	w0, [sp, 28]	// tmp108, n
	cmp	w1, w0	// tmp107, tmp108
	ble	.L3		//,
// eval/problem16//code.c:10:     char *out = malloc(len);
	ldrsw	x0, [sp, 36]	// _1, len
	bl	malloc		//
	str	x0, [sp, 56]	// tmp109, out
// eval/problem16//code.c:11:     if (!out) {
	ldr	x0, [sp, 56]	// tmp110, out
	cmp	x0, 0	// tmp110,
	bne	.L4		//,
// eval/problem16//code.c:12:         return NULL;
	mov	x0, 0	// _8,
	b	.L5		//
.L4:
// eval/problem16//code.c:15:     char *ptr = out;
	ldr	x0, [sp, 56]	// tmp111, out
	str	x0, [sp, 48]	// tmp111, ptr
// eval/problem16//code.c:16:     ptr += sprintf(ptr, "0");
	adrp	x0, .LC1	// tmp112,
	add	x1, x0, :lo12:.LC1	//, tmp112,
	ldr	x0, [sp, 48]	//, ptr
	bl	sprintf		//
// eval/problem16//code.c:16:     ptr += sprintf(ptr, "0");
	sxtw	x0, w0	// _2, _20
// eval/problem16//code.c:16:     ptr += sprintf(ptr, "0");
	ldr	x1, [sp, 48]	// tmp114, ptr
	add	x0, x1, x0	// tmp113, tmp114, _2
	str	x0, [sp, 48]	// tmp113, ptr
// eval/problem16//code.c:17:     for (int i = 1; i <= n; ++i) {
	mov	w0, 1	// tmp115,
	str	w0, [sp, 44]	// tmp115, i
// eval/problem16//code.c:17:     for (int i = 1; i <= n; ++i) {
	b	.L6		//
.L7:
// eval/problem16//code.c:18:         ptr += sprintf(ptr, " %d", i);
	ldr	w2, [sp, 44]	//, i
	adrp	x0, .LC0	// tmp116,
	add	x1, x0, :lo12:.LC0	//, tmp116,
	ldr	x0, [sp, 48]	//, ptr
	bl	sprintf		//
// eval/problem16//code.c:18:         ptr += sprintf(ptr, " %d", i);
	sxtw	x0, w0	// _3, _25
// eval/problem16//code.c:18:         ptr += sprintf(ptr, " %d", i);
	ldr	x1, [sp, 48]	// tmp118, ptr
	add	x0, x1, x0	// tmp117, tmp118, _3
	str	x0, [sp, 48]	// tmp117, ptr
// eval/problem16//code.c:17:     for (int i = 1; i <= n; ++i) {
	ldr	w0, [sp, 44]	// tmp120, i
	add	w0, w0, 1	// tmp119, tmp120,
	str	w0, [sp, 44]	// tmp119, i
.L6:
// eval/problem16//code.c:17:     for (int i = 1; i <= n; ++i) {
	ldr	w1, [sp, 44]	// tmp121, i
	ldr	w0, [sp, 28]	// tmp122, n
	cmp	w1, w0	// tmp121, tmp122
	ble	.L7		//,
// eval/problem16//code.c:20:     return out;
	ldr	x0, [sp, 56]	// _8, out
.L5:
// eval/problem16//code.c:21: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
