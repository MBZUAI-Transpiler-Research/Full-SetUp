	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"the number of odd elements %d in the string %d of the %d input."
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!	//,,,
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -64
	str	x0, [sp, 40]	// lst, lst
	str	w1, [sp, 36]	// size, size
// eval/problem114//code.c:6:     char **out = malloc(size * sizeof(char *));
	ldrsw	x0, [sp, 36]	// _1, size
	lsl	x0, x0, 3	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 72]	// tmp135, out
// eval/problem114//code.c:7:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 60]	//, i
// eval/problem114//code.c:7:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L6:
// eval/problem114//code.c:8:         int sum = 0;
	str	wzr, [sp, 64]	//, sum
// eval/problem114//code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	str	wzr, [sp, 68]	//, j
// eval/problem114//code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	b	.L3		//
.L5:
// eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	ldrsw	x0, [sp, 60]	// _3, i
	lsl	x0, x0, 3	// _4, _3,
	ldr	x1, [sp, 40]	// tmp136, lst
	add	x0, x1, x0	// _5, tmp136, _4
	ldr	x1, [x0]	// _6, *_5
// eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	ldrsw	x0, [sp, 68]	// _7, j
	add	x0, x1, x0	// _8, _6, _7
	ldrb	w0, [x0]	// _9, *_8
// eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	cmp	w0, 47	// _9,
	bls	.L4		//,
// eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	ldrsw	x0, [sp, 60]	// _10, i
	lsl	x0, x0, 3	// _11, _10,
	ldr	x1, [sp, 40]	// tmp137, lst
	add	x0, x1, x0	// _12, tmp137, _11
	ldr	x1, [x0]	// _13, *_12
// eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	ldrsw	x0, [sp, 68]	// _14, j
	add	x0, x1, x0	// _15, _13, _14
	ldrb	w0, [x0]	// _16, *_15
// eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	cmp	w0, 57	// _16,
	bhi	.L4		//,
// eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	ldrsw	x0, [sp, 60]	// _17, i
	lsl	x0, x0, 3	// _18, _17,
	ldr	x1, [sp, 40]	// tmp138, lst
	add	x0, x1, x0	// _19, tmp138, _18
	ldr	x1, [x0]	// _20, *_19
// eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	ldrsw	x0, [sp, 68]	// _21, j
	add	x0, x1, x0	// _22, _20, _21
	ldrb	w0, [x0]	// _23, *_22
// eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	sub	w0, w0, #48	// _25, _24,
// eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	cmp	w0, 0	// _25,
	and	w0, w0, 1	// tmp139, _25,
	csneg	w0, w0, w0, ge	// _26, tmp139, tmp139,
// eval/problem114//code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	cmp	w0, 1	// _26,
	bne	.L4		//,
// eval/problem114//code.c:11:                 sum += 1;
	ldr	w0, [sp, 64]	// tmp141, sum
	add	w0, w0, 1	// tmp140, tmp141,
	str	w0, [sp, 64]	// tmp140, sum
.L4:
// eval/problem114//code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	ldr	w0, [sp, 68]	// tmp143, j
	add	w0, w0, 1	// tmp142, tmp143,
	str	w0, [sp, 68]	// tmp142, j
.L3:
// eval/problem114//code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	ldrsw	x0, [sp, 60]	// _27, i
	lsl	x0, x0, 3	// _28, _27,
	ldr	x1, [sp, 40]	// tmp144, lst
	add	x0, x1, x0	// _29, tmp144, _28
	ldr	x1, [x0]	// _30, *_29
// eval/problem114//code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	ldrsw	x0, [sp, 68]	// _31, j
	add	x0, x1, x0	// _32, _30, _31
	ldrb	w0, [x0]	// _33, *_32
// eval/problem114//code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	cmp	w0, 0	// _33,
	bne	.L5		//,
// eval/problem114//code.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	ldrsw	x0, [sp, 60]	// _34, i
	lsl	x0, x0, 3	// _35, _34,
	ldr	x1, [sp, 72]	// tmp145, out
	add	x19, x1, x0	// _36, tmp145, _35
// eval/problem114//code.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	mov	x0, 100	//,
	bl	malloc		//
// eval/problem114//code.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	str	x0, [x19]	// _37, *_36
// eval/problem114//code.c:14:         sprintf(out[i], "the number of odd elements %d in the string %d of the %d input.", sum, sum, sum);
	ldrsw	x0, [sp, 60]	// _38, i
	lsl	x0, x0, 3	// _39, _38,
	ldr	x1, [sp, 72]	// tmp147, out
	add	x0, x1, x0	// _40, tmp147, _39
// eval/problem114//code.c:14:         sprintf(out[i], "the number of odd elements %d in the string %d of the %d input.", sum, sum, sum);
	ldr	x5, [x0]	// _41, *_40
	ldr	w4, [sp, 64]	//, sum
	ldr	w3, [sp, 64]	//, sum
	ldr	w2, [sp, 64]	//, sum
	adrp	x0, .LC0	// tmp148,
	add	x1, x0, :lo12:.LC0	//, tmp148,
	mov	x0, x5	//, _41
	bl	sprintf		//
// eval/problem114//code.c:7:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 60]	// tmp150, i
	add	w0, w0, 1	// tmp149, tmp150,
	str	w0, [sp, 60]	// tmp149, i
.L2:
// eval/problem114//code.c:7:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 60]	// tmp151, i
	ldr	w0, [sp, 36]	// tmp152, size
	cmp	w1, w0	// tmp151, tmp152
	blt	.L6		//,
// eval/problem114//code.c:16:     return out;
	ldr	x0, [sp, 72]	// _52, out
// eval/problem114//code.c:17: }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 80	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
