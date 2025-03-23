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
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -48
	str	x0, [sp, 40]	// str, str
// eval/problem133//code.c:5:     int count = 0, maxcount = 0;
	str	wzr, [sp, 52]	//, count
// eval/problem133//code.c:5:     int count = 0, maxcount = 0;
	str	wzr, [sp, 56]	//, maxcount
// eval/problem133//code.c:6:     for (int i = 0; i < strlen(str); i++) {
	str	wzr, [sp, 60]	//, i
// eval/problem133//code.c:6:     for (int i = 0; i < strlen(str); i++) {
	b	.L2		//
.L9:
// eval/problem133//code.c:7:         if (str[i] == '[') count += 1;
	ldrsw	x0, [sp, 60]	// _1, i
	ldr	x1, [sp, 40]	// tmp103, str
	add	x0, x1, x0	// _2, tmp103, _1
	ldrb	w0, [x0]	// _3, *_2
// eval/problem133//code.c:7:         if (str[i] == '[') count += 1;
	cmp	w0, 91	// _3,
	bne	.L3		//,
// eval/problem133//code.c:7:         if (str[i] == '[') count += 1;
	ldr	w0, [sp, 52]	// tmp105, count
	add	w0, w0, 1	// tmp104, tmp105,
	str	w0, [sp, 52]	// tmp104, count
.L3:
// eval/problem133//code.c:8:         if (str[i] == ']') count -= 1;
	ldrsw	x0, [sp, 60]	// _4, i
	ldr	x1, [sp, 40]	// tmp106, str
	add	x0, x1, x0	// _5, tmp106, _4
	ldrb	w0, [x0]	// _6, *_5
// eval/problem133//code.c:8:         if (str[i] == ']') count -= 1;
	cmp	w0, 93	// _6,
	bne	.L4		//,
// eval/problem133//code.c:8:         if (str[i] == ']') count -= 1;
	ldr	w0, [sp, 52]	// tmp108, count
	sub	w0, w0, #1	// tmp107, tmp108,
	str	w0, [sp, 52]	// tmp107, count
.L4:
// eval/problem133//code.c:9:         if (count < 0) count = 0;
	ldr	w0, [sp, 52]	// tmp109, count
	cmp	w0, 0	// tmp109,
	bge	.L5		//,
// eval/problem133//code.c:9:         if (count < 0) count = 0;
	str	wzr, [sp, 52]	//, count
.L5:
// eval/problem133//code.c:10:         if (count > maxcount) maxcount = count;
	ldr	w1, [sp, 52]	// tmp110, count
	ldr	w0, [sp, 56]	// tmp111, maxcount
	cmp	w1, w0	// tmp110, tmp111
	ble	.L6		//,
// eval/problem133//code.c:10:         if (count > maxcount) maxcount = count;
	ldr	w0, [sp, 52]	// tmp112, count
	str	w0, [sp, 56]	// tmp112, maxcount
.L6:
// eval/problem133//code.c:11:         if (count <= maxcount - 2) return 1;
	ldr	w0, [sp, 56]	// tmp113, maxcount
	sub	w0, w0, #1	// _7, tmp113,
// eval/problem133//code.c:11:         if (count <= maxcount - 2) return 1;
	ldr	w1, [sp, 52]	// tmp114, count
	cmp	w1, w0	// tmp114, _7
	bge	.L7		//,
// eval/problem133//code.c:11:         if (count <= maxcount - 2) return 1;
	mov	w0, 1	// _17,
	b	.L8		//
.L7:
// eval/problem133//code.c:6:     for (int i = 0; i < strlen(str); i++) {
	ldr	w0, [sp, 60]	// tmp116, i
	add	w0, w0, 1	// tmp115, tmp116,
	str	w0, [sp, 60]	// tmp115, i
.L2:
// eval/problem133//code.c:6:     for (int i = 0; i < strlen(str); i++) {
	ldrsw	x19, [sp, 60]	// _8, i
// eval/problem133//code.c:6:     for (int i = 0; i < strlen(str); i++) {
	ldr	x0, [sp, 40]	//, str
	bl	strlen		//
// eval/problem133//code.c:6:     for (int i = 0; i < strlen(str); i++) {
	cmp	x19, x0	// _8, _9
	bcc	.L9		//,
// eval/problem133//code.c:13:     return 0;
	mov	w0, 0	// _17,
.L8:
// eval/problem133//code.c:14: }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
