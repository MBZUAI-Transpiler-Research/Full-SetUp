	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #192	//,,
	.cfi_def_cfa_offset 192
	stp	x29, x30, [sp, 176]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 176	//,,
	str	x0, [sp, 8]	// numbers, numbers
// code.c:4: const char* func0(const char* numbers) {
	adrp	x0, :got:__stack_chk_guard	// tmp123,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp123,
	ldr	x1, [x0]	// tmp198,
	str	x1, [sp, 168]	// tmp198, D.5095
	mov	x1, 0	// tmp198
// code.c:5:     int count[10] = {0};
	stp	xzr, xzr, [sp, 40]	// count
	stp	xzr, xzr, [sp, 56]	// count
	str	xzr, [sp, 72]	//, count
// code.c:6:     const char* numto[10] = {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
	adrp	x0, .LC11	// tmp125,
	add	x1, x0, :lo12:.LC11	// tmp124, tmp125,
	add	x0, sp, 80	// tmp126,,
	ldp	q0, q1, [x1]	// tmp128, tmp129,
	stp	q0, q1, [x0]	// tmp128, tmp129, numto
	ldp	q0, q1, [x1, 32]	// tmp130, tmp131,
	stp	q0, q1, [x0, 32]	// tmp130, tmp131, numto
	ldr	q0, [x1, 64]	// tmp132,
	str	q0, [x0, 64]	// tmp132, numto
// code.c:11:     index = 0;
	str	wzr, [sp, 24]	//, index
// code.c:12:     if (*numbers) {
	ldr	x0, [sp, 8]	// tmp133, numbers
	ldrb	w0, [x0]	// _1, *numbers_51(D)
// code.c:12:     if (*numbers) {
	cmp	w0, 0	// _1,
	beq	.L2		//,
.L10:
// code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	str	wzr, [sp, 28]	//, i
// code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	b	.L3		//
.L5:
// code.c:15:                 current[i] = numbers[i];
	ldrsw	x0, [sp, 28]	// _2, i
	ldr	x1, [sp, 8]	// tmp134, numbers
	add	x0, x1, x0	// _3, tmp134, _2
	ldrb	w2, [x0]	// _4, *_3
// code.c:15:                 current[i] = numbers[i];
	ldrsw	x0, [sp, 28]	// tmp135, i
	add	x1, sp, 160	// tmp136,,
	strb	w2, [x1, x0]	// tmp137, current[i_34]
// code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	ldr	w0, [sp, 28]	// tmp139, i
	add	w0, w0, 1	// tmp138, tmp139,
	str	w0, [sp, 28]	// tmp138, i
.L3:
// code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	ldrsw	x0, [sp, 28]	// _5, i
	ldr	x1, [sp, 8]	// tmp140, numbers
	add	x0, x1, x0	// _6, tmp140, _5
	ldrb	w0, [x0]	// _7, *_6
// code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	cmp	w0, 32	// _7,
	beq	.L4		//,
// code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	ldrsw	x0, [sp, 28]	// _8, i
	ldr	x1, [sp, 8]	// tmp141, numbers
	add	x0, x1, x0	// _9, tmp141, _8
	ldrb	w0, [x0]	// _10, *_9
// code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	cmp	w0, 0	// _10,
	bne	.L5		//,
.L4:
// code.c:17:             current[i] = '\0';
	ldrsw	x0, [sp, 28]	// tmp142, i
	add	x1, sp, 160	// tmp143,,
	strb	wzr, [x1, x0]	//, current[i_34]
// code.c:18:             for (j = 0; j < 10; ++j) {
	str	wzr, [sp, 32]	//, j
// code.c:18:             for (j = 0; j < 10; ++j) {
	b	.L6		//
.L9:
// code.c:19:                 if (strcmp(current, numto[j]) == 0) {
	ldrsw	x0, [sp, 32]	// tmp144, j
	lsl	x0, x0, 3	// tmp145, tmp144,
	add	x1, sp, 80	// tmp146,,
	ldr	x1, [x1, x0]	// _11, numto[j_36]
	add	x0, sp, 160	// tmp147,,
	bl	strcmp		//
// code.c:19:                 if (strcmp(current, numto[j]) == 0) {
	cmp	w0, 0	// _12,
	bne	.L7		//,
// code.c:20:                     count[j]++;
	ldrsw	x0, [sp, 32]	// tmp148, j
	lsl	x0, x0, 2	// tmp149, tmp148,
	add	x1, sp, 40	// tmp150,,
	ldr	w0, [x1, x0]	// _13, count[j_36]
// code.c:20:                     count[j]++;
	add	w2, w0, 1	// _14, _13,
	ldrsw	x0, [sp, 32]	// tmp151, j
	lsl	x0, x0, 2	// tmp152, tmp151,
	add	x1, sp, 40	// tmp153,,
	str	w2, [x1, x0]	// _14, count[j_36]
// code.c:21:                     break;
	b	.L8		//
.L7:
// code.c:18:             for (j = 0; j < 10; ++j) {
	ldr	w0, [sp, 32]	// tmp155, j
	add	w0, w0, 1	// tmp154, tmp155,
	str	w0, [sp, 32]	// tmp154, j
.L6:
// code.c:18:             for (j = 0; j < 10; ++j) {
	ldr	w0, [sp, 32]	// tmp156, j
	cmp	w0, 9	// tmp156,
	ble	.L9		//,
.L8:
// code.c:24:             numbers += i + 1;
	ldrsw	x0, [sp, 28]	// _15, i
	add	x0, x0, 1	// _16, _15,
	ldr	x1, [sp, 8]	// tmp158, numbers
	add	x0, x1, x0	// tmp157, tmp158, _16
	str	x0, [sp, 8]	// tmp157, numbers
// code.c:25:         } while (numbers[-1]);
	ldr	x0, [sp, 8]	// tmp159, numbers
	sub	x0, x0, #1	// _17, tmp159,
	ldrb	w0, [x0]	// _18, *_17
// code.c:25:         } while (numbers[-1]);
	cmp	w0, 0	// _18,
	bne	.L10		//,
.L2:
// code.c:28:     for (i = 0; i < 10; ++i) {
	str	wzr, [sp, 28]	//, i
// code.c:28:     for (i = 0; i < 10; ++i) {
	b	.L11		//
.L16:
// code.c:29:         for (j = 0; j < count[i]; ++j) {
	str	wzr, [sp, 32]	//, j
// code.c:29:         for (j = 0; j < count[i]; ++j) {
	b	.L12		//
.L15:
// code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	str	wzr, [sp, 36]	//, k
// code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	b	.L13		//
.L14:
// code.c:31:                 out[index] = numto[i][k];
	ldrsw	x0, [sp, 28]	// tmp160, i
	lsl	x0, x0, 3	// tmp161, tmp160,
	add	x1, sp, 80	// tmp162,,
	ldr	x1, [x1, x0]	// _19, numto[i_35]
// code.c:31:                 out[index] = numto[i][k];
	ldrsw	x0, [sp, 36]	// _20, k
	add	x0, x1, x0	// _21, _19, _20
	ldrb	w2, [x0]	// _22, *_21
// code.c:31:                 out[index] = numto[i][k];
	adrp	x0, out.0	// tmp164,
	add	x1, x0, :lo12:out.0	// tmp163, tmp164,
	ldrsw	x0, [sp, 24]	// tmp165, index
	strb	w2, [x1, x0]	// tmp166, out[index_31]
// code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	ldr	w0, [sp, 36]	// tmp168, k
	add	w0, w0, 1	// tmp167, tmp168,
	str	w0, [sp, 36]	// tmp167, k
// code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	ldr	w0, [sp, 24]	// tmp170, index
	add	w0, w0, 1	// tmp169, tmp170,
	str	w0, [sp, 24]	// tmp169, index
.L13:
// code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	ldrsw	x0, [sp, 28]	// tmp171, i
	lsl	x0, x0, 3	// tmp172, tmp171,
	add	x1, sp, 80	// tmp173,,
	ldr	x1, [x1, x0]	// _23, numto[i_35]
// code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	ldrsw	x0, [sp, 36]	// _24, k
	add	x0, x1, x0	// _25, _23, _24
	ldrb	w0, [x0]	// _26, *_25
// code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	cmp	w0, 0	// _26,
	bne	.L14		//,
// code.c:33:             out[index++] = ' '; 
	ldr	w0, [sp, 24]	// index.0_27, index
	add	w1, w0, 1	// tmp174, index.0_27,
	str	w1, [sp, 24]	// tmp174, index
// code.c:33:             out[index++] = ' '; 
	adrp	x1, out.0	// tmp176,
	add	x1, x1, :lo12:out.0	// tmp175, tmp176,
	sxtw	x0, w0	// tmp177, index.0_27
	mov	w2, 32	// tmp178,
	strb	w2, [x1, x0]	// tmp178, out[index.0_27]
// code.c:29:         for (j = 0; j < count[i]; ++j) {
	ldr	w0, [sp, 32]	// tmp180, j
	add	w0, w0, 1	// tmp179, tmp180,
	str	w0, [sp, 32]	// tmp179, j
.L12:
// code.c:29:         for (j = 0; j < count[i]; ++j) {
	ldrsw	x0, [sp, 28]	// tmp181, i
	lsl	x0, x0, 2	// tmp182, tmp181,
	add	x1, sp, 40	// tmp183,,
	ldr	w0, [x1, x0]	// _28, count[i_35]
// code.c:29:         for (j = 0; j < count[i]; ++j) {
	ldr	w1, [sp, 32]	// tmp184, j
	cmp	w1, w0	// tmp184, _28
	blt	.L15		//,
// code.c:28:     for (i = 0; i < 10; ++i) {
	ldr	w0, [sp, 28]	// tmp186, i
	add	w0, w0, 1	// tmp185, tmp186,
	str	w0, [sp, 28]	// tmp185, i
.L11:
// code.c:28:     for (i = 0; i < 10; ++i) {
	ldr	w0, [sp, 28]	// tmp187, i
	cmp	w0, 9	// tmp187,
	ble	.L16		//,
// code.c:37:     if (index > 0) {
	ldr	w0, [sp, 24]	// tmp188, index
	cmp	w0, 0	// tmp188,
	ble	.L17		//,
// code.c:38:         out[index - 1] = '\0'; 
	ldr	w0, [sp, 24]	// tmp189, index
	sub	w2, w0, #1	// _29, tmp189,
// code.c:38:         out[index - 1] = '\0'; 
	adrp	x0, out.0	// tmp191,
	add	x1, x0, :lo12:out.0	// tmp190, tmp191,
	sxtw	x0, w2	// tmp192, _29
	strb	wzr, [x1, x0]	//, out[_29]
	b	.L18		//
.L17:
// code.c:40:         out[0] = '\0';
	adrp	x0, out.0	// tmp194,
	add	x0, x0, :lo12:out.0	// tmp193, tmp194,
	strb	wzr, [x0]	//, out[0]
.L18:
// code.c:43:     return out;
	adrp	x0, out.0	// tmp195,
	add	x0, x0, :lo12:out.0	// _63, tmp195,
	mov	x1, x0	// <retval>, _63
// code.c:44: }
	adrp	x0, :got:__stack_chk_guard	// tmp197,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp197,
	ldr	x3, [sp, 168]	// tmp199, D.5095
	ldr	x2, [x0]	// tmp200,
	subs	x3, x3, x2	// tmp199, tmp200
	mov	x2, 0	// tmp200
	beq	.L20		//,
	bl	__stack_chk_fail		//
.L20:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp, 176]	//,,
	add	sp, sp, 192	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"zero"
	.align	3
.LC1:
	.string	"one"
	.align	3
.LC2:
	.string	"two"
	.align	3
.LC3:
	.string	"three"
	.align	3
.LC4:
	.string	"four"
	.align	3
.LC5:
	.string	"five"
	.align	3
.LC6:
	.string	"six"
	.align	3
.LC7:
	.string	"seven"
	.align	3
.LC8:
	.string	"eight"
	.align	3
.LC9:
	.string	"nine"
	.data
	.align	3
.LC11:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC5
	.xword	.LC6
	.xword	.LC7
	.xword	.LC8
	.xword	.LC9
	.text
	.local	out.0
	.comm	out.0,1000,8
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
