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
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// str, str
	str	x1, [sp, 16]	// substring, substring
// eval/problem19//code.c:5:     int out = 0;
	str	wzr, [sp, 32]	//, out
// eval/problem19//code.c:6:     int str_len = strlen(str);
	ldr	x0, [sp, 24]	//, str
	bl	strlen		//
// eval/problem19//code.c:6:     int str_len = strlen(str);
	str	w0, [sp, 40]	// tmp101, str_len
// eval/problem19//code.c:7:     int sub_len = strlen(substring);
	ldr	x0, [sp, 16]	//, substring
	bl	strlen		//
// eval/problem19//code.c:7:     int sub_len = strlen(substring);
	str	w0, [sp, 44]	// tmp102, sub_len
// eval/problem19//code.c:8:     if (str_len == 0) return 0;
	ldr	w0, [sp, 40]	// tmp103, str_len
	cmp	w0, 0	// tmp103,
	bne	.L2		//,
// eval/problem19//code.c:8:     if (str_len == 0) return 0;
	mov	w0, 0	// _11,
	b	.L3		//
.L2:
// eval/problem19//code.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	str	wzr, [sp, 36]	//, i
// eval/problem19//code.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	b	.L4		//
.L6:
// eval/problem19//code.c:10:         if (strncmp(&str[i], substring, sub_len) == 0)
	ldrsw	x0, [sp, 36]	// _3, i
	ldr	x1, [sp, 24]	// tmp104, str
	add	x0, x1, x0	// _4, tmp104, _3
	ldrsw	x1, [sp, 44]	// _5, sub_len
	mov	x2, x1	//, _5
	ldr	x1, [sp, 16]	//, substring
	bl	strncmp		//
// eval/problem19//code.c:10:         if (strncmp(&str[i], substring, sub_len) == 0)
	cmp	w0, 0	// _6,
	bne	.L5		//,
// eval/problem19//code.c:11:             out++;
	ldr	w0, [sp, 32]	// tmp106, out
	add	w0, w0, 1	// tmp105, tmp106,
	str	w0, [sp, 32]	// tmp105, out
.L5:
// eval/problem19//code.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	ldr	w0, [sp, 36]	// tmp108, i
	add	w0, w0, 1	// tmp107, tmp108,
	str	w0, [sp, 36]	// tmp107, i
.L4:
// eval/problem19//code.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	ldr	w1, [sp, 40]	// tmp109, str_len
	ldr	w0, [sp, 44]	// tmp110, sub_len
	sub	w0, w1, w0	// _7, tmp109, tmp110
// eval/problem19//code.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	ldr	w1, [sp, 36]	// tmp111, i
	cmp	w1, w0	// tmp111, _7
	ble	.L6		//,
// eval/problem19//code.c:13:     return out;
	ldr	w0, [sp, 32]	// _11, out
.L3:
// eval/problem19//code.c:14: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
