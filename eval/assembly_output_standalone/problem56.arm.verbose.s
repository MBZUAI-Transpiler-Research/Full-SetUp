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
	sub	sp, sp, #4048	//,,
	.cfi_def_cfa_offset 4048
	stp	x29, x30, [sp]	//,,
	.cfi_offset 29, -4048
	.cfi_offset 30, -4040
	mov	x29, sp	//,
	str	w0, [sp, 28]	// n, n
// eval/problem56//code.c:3: int func0(int n) {
	adrp	x0, :got:__stack_chk_guard	// tmp100,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp99, tmp100,
	ldr	x1, [x0]	// tmp127,
	str	x1, [sp, 4040]	// tmp127, D.4258
	mov	x1, 0	// tmp127
// eval/problem56//code.c:4:     int f[1000] = {0};
	add	x0, sp, 40	// tmp101,,
	mov	x1, 4000	// tmp102,
	mov	x2, x1	//, tmp102
	mov	w1, 0	//,
	bl	memset		//
// eval/problem56//code.c:5:     f[0] = 0;
	str	wzr, [sp, 40]	//, f[0]
// eval/problem56//code.c:6:     f[1] = 1;
	mov	w0, 1	// tmp104,
	str	w0, [sp, 44]	// tmp104, f[1]
// eval/problem56//code.c:7:     for (int i = 2; i <= n; i++)
	mov	w0, 2	// tmp105,
	str	w0, [sp, 36]	// tmp105, i
// eval/problem56//code.c:7:     for (int i = 2; i <= n; i++)
	b	.L2		//
.L3:
// eval/problem56//code.c:8:         f[i] = f[i - 1] + f[i - 2];
	ldr	w0, [sp, 36]	// tmp106, i
	sub	w0, w0, #1	// _1, tmp106,
// eval/problem56//code.c:8:         f[i] = f[i - 1] + f[i - 2];
	sxtw	x0, w0	// tmp107, _1
	lsl	x0, x0, 2	// tmp108, tmp107,
	add	x1, sp, 40	// tmp109,,
	ldr	w1, [x1, x0]	// _2, f[_1]
// eval/problem56//code.c:8:         f[i] = f[i - 1] + f[i - 2];
	ldr	w0, [sp, 36]	// tmp110, i
	sub	w0, w0, #2	// _3, tmp110,
// eval/problem56//code.c:8:         f[i] = f[i - 1] + f[i - 2];
	sxtw	x0, w0	// tmp111, _3
	lsl	x0, x0, 2	// tmp112, tmp111,
	add	x2, sp, 40	// tmp113,,
	ldr	w0, [x2, x0]	// _4, f[_3]
// eval/problem56//code.c:8:         f[i] = f[i - 1] + f[i - 2];
	add	w2, w1, w0	// _5, _2, _4
// eval/problem56//code.c:8:         f[i] = f[i - 1] + f[i - 2];
	ldrsw	x0, [sp, 36]	// tmp114, i
	lsl	x0, x0, 2	// tmp115, tmp114,
	add	x1, sp, 40	// tmp116,,
	str	w2, [x1, x0]	// _5, f[i_6]
// eval/problem56//code.c:7:     for (int i = 2; i <= n; i++)
	ldr	w0, [sp, 36]	// tmp118, i
	add	w0, w0, 1	// tmp117, tmp118,
	str	w0, [sp, 36]	// tmp117, i
.L2:
// eval/problem56//code.c:7:     for (int i = 2; i <= n; i++)
	ldr	w1, [sp, 36]	// tmp119, i
	ldr	w0, [sp, 28]	// tmp120, n
	cmp	w1, w0	// tmp119, tmp120
	ble	.L3		//,
// eval/problem56//code.c:9:     return f[n];
	ldrsw	x0, [sp, 28]	// tmp121, n
	lsl	x0, x0, 2	// tmp122, tmp121,
	add	x1, sp, 40	// tmp123,,
	ldr	w0, [x1, x0]	// _14, f[n_13(D)]
	mov	w1, w0	// <retval>, _14
// eval/problem56//code.c:10: }
	adrp	x0, :got:__stack_chk_guard	// tmp126,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp125, tmp126,
	ldr	x3, [sp, 4040]	// tmp128, D.4258
	ldr	x2, [x0]	// tmp129,
	subs	x3, x3, x2	// tmp128, tmp129
	mov	x2, 0	// tmp129
	beq	.L5		//,
	bl	__stack_chk_fail		//
.L5:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp]	//,,
	add	sp, sp, 4048	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
