	.arch armv8-a
	.file	"problem20.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
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
// problem20.c:4: const char* func0(const char* numbers) {
	adrp	x0, :got:__stack_chk_guard	// tmp123,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp123,
	ldr	x1, [x0]	// tmp198,
	str	x1, [sp, 168]	// tmp198, D.5134
	mov	x1, 0	// tmp198
// problem20.c:5:     int count[10] = {0};
	stp	xzr, xzr, [sp, 40]	// count
	stp	xzr, xzr, [sp, 56]	// count
	str	xzr, [sp, 72]	//, count
// problem20.c:6:     const char* numto[10] = {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
	adrp	x0, .LC11	// tmp125,
	add	x1, x0, :lo12:.LC11	// tmp124, tmp125,
	add	x0, sp, 80	// tmp126,,
	ldp	q0, q1, [x1]	// tmp128, tmp129,
	stp	q0, q1, [x0]	// tmp128, tmp129, numto
	ldp	q0, q1, [x1, 32]	// tmp130, tmp131,
	stp	q0, q1, [x0, 32]	// tmp130, tmp131, numto
	ldr	q0, [x1, 64]	// tmp132,
	str	q0, [x0, 64]	// tmp132, numto
// problem20.c:11:     index = 0;
	str	wzr, [sp, 24]	//, index
// problem20.c:12:     if (*numbers) {
	ldr	x0, [sp, 8]	// tmp133, numbers
	ldrb	w0, [x0]	// _1, *numbers_51(D)
// problem20.c:12:     if (*numbers) {
	cmp	w0, 0	// _1,
	beq	.L2		//,
.L10:
// problem20.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	str	wzr, [sp, 28]	//, i
// problem20.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	b	.L3		//
.L5:
// problem20.c:15:                 current[i] = numbers[i];
	ldrsw	x0, [sp, 28]	// _2, i
	ldr	x1, [sp, 8]	// tmp134, numbers
	add	x0, x1, x0	// _3, tmp134, _2
	ldrb	w2, [x0]	// _4, *_3
// problem20.c:15:                 current[i] = numbers[i];
	ldrsw	x0, [sp, 28]	// tmp135, i
	add	x1, sp, 160	// tmp136,,
	strb	w2, [x1, x0]	// tmp137, current[i_34]
// problem20.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	ldr	w0, [sp, 28]	// tmp139, i
	add	w0, w0, 1	// tmp138, tmp139,
	str	w0, [sp, 28]	// tmp138, i
.L3:
// problem20.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	ldrsw	x0, [sp, 28]	// _5, i
	ldr	x1, [sp, 8]	// tmp140, numbers
	add	x0, x1, x0	// _6, tmp140, _5
	ldrb	w0, [x0]	// _7, *_6
// problem20.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	cmp	w0, 32	// _7,
	beq	.L4		//,
// problem20.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	ldrsw	x0, [sp, 28]	// _8, i
	ldr	x1, [sp, 8]	// tmp141, numbers
	add	x0, x1, x0	// _9, tmp141, _8
	ldrb	w0, [x0]	// _10, *_9
// problem20.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	cmp	w0, 0	// _10,
	bne	.L5		//,
.L4:
// problem20.c:17:             current[i] = '\0';
	ldrsw	x0, [sp, 28]	// tmp142, i
	add	x1, sp, 160	// tmp143,,
	strb	wzr, [x1, x0]	//, current[i_34]
// problem20.c:18:             for (j = 0; j < 10; ++j) {
	str	wzr, [sp, 32]	//, j
// problem20.c:18:             for (j = 0; j < 10; ++j) {
	b	.L6		//
.L9:
// problem20.c:19:                 if (strcmp(current, numto[j]) == 0) {
	ldrsw	x0, [sp, 32]	// tmp144, j
	lsl	x0, x0, 3	// tmp145, tmp144,
	add	x1, sp, 80	// tmp146,,
	ldr	x1, [x1, x0]	// _11, numto[j_36]
	add	x0, sp, 160	// tmp147,,
	bl	strcmp		//
// problem20.c:19:                 if (strcmp(current, numto[j]) == 0) {
	cmp	w0, 0	// _12,
	bne	.L7		//,
// problem20.c:20:                     count[j]++;
	ldrsw	x0, [sp, 32]	// tmp148, j
	lsl	x0, x0, 2	// tmp149, tmp148,
	add	x1, sp, 40	// tmp150,,
	ldr	w0, [x1, x0]	// _13, count[j_36]
// problem20.c:20:                     count[j]++;
	add	w2, w0, 1	// _14, _13,
	ldrsw	x0, [sp, 32]	// tmp151, j
	lsl	x0, x0, 2	// tmp152, tmp151,
	add	x1, sp, 40	// tmp153,,
	str	w2, [x1, x0]	// _14, count[j_36]
// problem20.c:21:                     break;
	b	.L8		//
.L7:
// problem20.c:18:             for (j = 0; j < 10; ++j) {
	ldr	w0, [sp, 32]	// tmp155, j
	add	w0, w0, 1	// tmp154, tmp155,
	str	w0, [sp, 32]	// tmp154, j
.L6:
// problem20.c:18:             for (j = 0; j < 10; ++j) {
	ldr	w0, [sp, 32]	// tmp156, j
	cmp	w0, 9	// tmp156,
	ble	.L9		//,
.L8:
// problem20.c:24:             numbers += i + 1;
	ldrsw	x0, [sp, 28]	// _15, i
	add	x0, x0, 1	// _16, _15,
	ldr	x1, [sp, 8]	// tmp158, numbers
	add	x0, x1, x0	// tmp157, tmp158, _16
	str	x0, [sp, 8]	// tmp157, numbers
// problem20.c:25:         } while (numbers[-1]);
	ldr	x0, [sp, 8]	// tmp159, numbers
	sub	x0, x0, #1	// _17, tmp159,
	ldrb	w0, [x0]	// _18, *_17
// problem20.c:25:         } while (numbers[-1]);
	cmp	w0, 0	// _18,
	bne	.L10		//,
.L2:
// problem20.c:28:     for (i = 0; i < 10; ++i) {
	str	wzr, [sp, 28]	//, i
// problem20.c:28:     for (i = 0; i < 10; ++i) {
	b	.L11		//
.L16:
// problem20.c:29:         for (j = 0; j < count[i]; ++j) {
	str	wzr, [sp, 32]	//, j
// problem20.c:29:         for (j = 0; j < count[i]; ++j) {
	b	.L12		//
.L15:
// problem20.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	str	wzr, [sp, 36]	//, k
// problem20.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	b	.L13		//
.L14:
// problem20.c:31:                 out[index] = numto[i][k];
	ldrsw	x0, [sp, 28]	// tmp160, i
	lsl	x0, x0, 3	// tmp161, tmp160,
	add	x1, sp, 80	// tmp162,,
	ldr	x1, [x1, x0]	// _19, numto[i_35]
// problem20.c:31:                 out[index] = numto[i][k];
	ldrsw	x0, [sp, 36]	// _20, k
	add	x0, x1, x0	// _21, _19, _20
	ldrb	w2, [x0]	// _22, *_21
// problem20.c:31:                 out[index] = numto[i][k];
	adrp	x0, out.1	// tmp164,
	add	x1, x0, :lo12:out.1	// tmp163, tmp164,
	ldrsw	x0, [sp, 24]	// tmp165, index
	strb	w2, [x1, x0]	// tmp166, out[index_31]
// problem20.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	ldr	w0, [sp, 36]	// tmp168, k
	add	w0, w0, 1	// tmp167, tmp168,
	str	w0, [sp, 36]	// tmp167, k
// problem20.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	ldr	w0, [sp, 24]	// tmp170, index
	add	w0, w0, 1	// tmp169, tmp170,
	str	w0, [sp, 24]	// tmp169, index
.L13:
// problem20.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	ldrsw	x0, [sp, 28]	// tmp171, i
	lsl	x0, x0, 3	// tmp172, tmp171,
	add	x1, sp, 80	// tmp173,,
	ldr	x1, [x1, x0]	// _23, numto[i_35]
// problem20.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	ldrsw	x0, [sp, 36]	// _24, k
	add	x0, x1, x0	// _25, _23, _24
	ldrb	w0, [x0]	// _26, *_25
// problem20.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	cmp	w0, 0	// _26,
	bne	.L14		//,
// problem20.c:33:             out[index++] = ' '; 
	ldr	w0, [sp, 24]	// index.0_27, index
	add	w1, w0, 1	// tmp174, index.0_27,
	str	w1, [sp, 24]	// tmp174, index
// problem20.c:33:             out[index++] = ' '; 
	adrp	x1, out.1	// tmp176,
	add	x1, x1, :lo12:out.1	// tmp175, tmp176,
	sxtw	x0, w0	// tmp177, index.0_27
	mov	w2, 32	// tmp178,
	strb	w2, [x1, x0]	// tmp178, out[index.0_27]
// problem20.c:29:         for (j = 0; j < count[i]; ++j) {
	ldr	w0, [sp, 32]	// tmp180, j
	add	w0, w0, 1	// tmp179, tmp180,
	str	w0, [sp, 32]	// tmp179, j
.L12:
// problem20.c:29:         for (j = 0; j < count[i]; ++j) {
	ldrsw	x0, [sp, 28]	// tmp181, i
	lsl	x0, x0, 2	// tmp182, tmp181,
	add	x1, sp, 40	// tmp183,,
	ldr	w0, [x1, x0]	// _28, count[i_35]
// problem20.c:29:         for (j = 0; j < count[i]; ++j) {
	ldr	w1, [sp, 32]	// tmp184, j
	cmp	w1, w0	// tmp184, _28
	blt	.L15		//,
// problem20.c:28:     for (i = 0; i < 10; ++i) {
	ldr	w0, [sp, 28]	// tmp186, i
	add	w0, w0, 1	// tmp185, tmp186,
	str	w0, [sp, 28]	// tmp185, i
.L11:
// problem20.c:28:     for (i = 0; i < 10; ++i) {
	ldr	w0, [sp, 28]	// tmp187, i
	cmp	w0, 9	// tmp187,
	ble	.L16		//,
// problem20.c:37:     if (index > 0) {
	ldr	w0, [sp, 24]	// tmp188, index
	cmp	w0, 0	// tmp188,
	ble	.L17		//,
// problem20.c:38:         out[index - 1] = '\0'; 
	ldr	w0, [sp, 24]	// tmp189, index
	sub	w2, w0, #1	// _29, tmp189,
// problem20.c:38:         out[index - 1] = '\0'; 
	adrp	x0, out.1	// tmp191,
	add	x1, x0, :lo12:out.1	// tmp190, tmp191,
	sxtw	x0, w2	// tmp192, _29
	strb	wzr, [x1, x0]	//, out[_29]
	b	.L18		//
.L17:
// problem20.c:40:         out[0] = '\0';
	adrp	x0, out.1	// tmp194,
	add	x0, x0, :lo12:out.1	// tmp193, tmp194,
	strb	wzr, [x0]	//, out[0]
.L18:
// problem20.c:43:     return out;
	adrp	x0, out.1	// tmp195,
	add	x0, x0, :lo12:out.1	// _63, tmp195,
	mov	x1, x0	// <retval>, _63
// problem20.c:44: }
	adrp	x0, :got:__stack_chk_guard	// tmp197,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp197,
	ldr	x3, [sp, 168]	// tmp199, D.5134
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
	.section	.rodata
	.align	3
.LC12:
	.string	""
	.align	3
.LC13:
	.string	"problem20.c"
	.align	3
.LC14:
	.string	"strcmp(func0(\"\"), \"\") == 0"
	.align	3
.LC15:
	.string	"strcmp(func0(\"three\"), \"three\") == 0"
	.align	3
.LC16:
	.string	"three five nine"
	.align	3
.LC17:
	.string	"strcmp(func0(\"three five nine\"), \"three five nine\") == 0"
	.align	3
.LC18:
	.string	"five zero four seven nine eight"
	.align	3
.LC19:
	.string	"zero four five seven eight nine"
	.align	3
.LC20:
	.string	"strcmp(func0(\"five zero four seven nine eight\"), \"zero four five seven eight nine\") == 0"
	.align	3
.LC21:
	.string	"six five four three two one zero"
	.align	3
.LC22:
	.string	"zero one two three four five six"
	.align	3
.LC23:
	.string	"strcmp(func0(\"six five four three two one zero\"), \"zero one two three four five six\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp	//,
// problem20.c:52:     assert(strcmp(func0(""), "") == 0);
	adrp	x0, .LC12	// tmp105,
	add	x0, x0, :lo12:.LC12	//, tmp105,
	bl	func0		//
// problem20.c:52:     assert(strcmp(func0(""), "") == 0);
	ldrb	w0, [x0]	// _13, MEM[(const unsigned char * {ref-all})_1]
	cmp	w0, 0	// _2,
	beq	.L22		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp106,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp106,
	mov	w2, 52	//,
	adrp	x0, .LC13	// tmp107,
	add	x1, x0, :lo12:.LC13	//, tmp107,
	adrp	x0, .LC14	// tmp108,
	add	x0, x0, :lo12:.LC14	//, tmp108,
	bl	__assert_fail		//
.L22:
// problem20.c:53:     assert(strcmp(func0("three"), "three") == 0);
	adrp	x0, .LC3	// tmp109,
	add	x0, x0, :lo12:.LC3	//, tmp109,
	bl	func0		//
	mov	x2, x0	// _3,
// problem20.c:53:     assert(strcmp(func0("three"), "three") == 0);
	adrp	x0, .LC3	// tmp110,
	add	x1, x0, :lo12:.LC3	//, tmp110,
	mov	x0, x2	//, _3
	bl	strcmp		//
// problem20.c:53:     assert(strcmp(func0("three"), "three") == 0);
	cmp	w0, 0	// _4,
	beq	.L23		//,
// problem20.c:53:     assert(strcmp(func0("three"), "three") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp111,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp111,
	mov	w2, 53	//,
	adrp	x0, .LC13	// tmp112,
	add	x1, x0, :lo12:.LC13	//, tmp112,
	adrp	x0, .LC15	// tmp113,
	add	x0, x0, :lo12:.LC15	//, tmp113,
	bl	__assert_fail		//
.L23:
// problem20.c:54:     assert(strcmp(func0("three five nine"), "three five nine") == 0);
	adrp	x0, .LC16	// tmp114,
	add	x0, x0, :lo12:.LC16	//, tmp114,
	bl	func0		//
	mov	x2, x0	// _5,
// problem20.c:54:     assert(strcmp(func0("three five nine"), "three five nine") == 0);
	adrp	x0, .LC16	// tmp115,
	add	x1, x0, :lo12:.LC16	//, tmp115,
	mov	x0, x2	//, _5
	bl	strcmp		//
// problem20.c:54:     assert(strcmp(func0("three five nine"), "three five nine") == 0);
	cmp	w0, 0	// _6,
	beq	.L24		//,
// problem20.c:54:     assert(strcmp(func0("three five nine"), "three five nine") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 54	//,
	adrp	x0, .LC13	// tmp117,
	add	x1, x0, :lo12:.LC13	//, tmp117,
	adrp	x0, .LC17	// tmp118,
	add	x0, x0, :lo12:.LC17	//, tmp118,
	bl	__assert_fail		//
.L24:
// problem20.c:55:     assert(strcmp(func0("five zero four seven nine eight"), "zero four five seven eight nine") == 0);
	adrp	x0, .LC18	// tmp119,
	add	x0, x0, :lo12:.LC18	//, tmp119,
	bl	func0		//
	mov	x2, x0	// _7,
// problem20.c:55:     assert(strcmp(func0("five zero four seven nine eight"), "zero four five seven eight nine") == 0);
	adrp	x0, .LC19	// tmp120,
	add	x1, x0, :lo12:.LC19	//, tmp120,
	mov	x0, x2	//, _7
	bl	strcmp		//
// problem20.c:55:     assert(strcmp(func0("five zero four seven nine eight"), "zero four five seven eight nine") == 0);
	cmp	w0, 0	// _8,
	beq	.L25		//,
// problem20.c:55:     assert(strcmp(func0("five zero four seven nine eight"), "zero four five seven eight nine") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp121,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp121,
	mov	w2, 55	//,
	adrp	x0, .LC13	// tmp122,
	add	x1, x0, :lo12:.LC13	//, tmp122,
	adrp	x0, .LC20	// tmp123,
	add	x0, x0, :lo12:.LC20	//, tmp123,
	bl	__assert_fail		//
.L25:
// problem20.c:56:     assert(strcmp(func0("six five four three two one zero"), "zero one two three four five six") == 0);
	adrp	x0, .LC21	// tmp124,
	add	x0, x0, :lo12:.LC21	//, tmp124,
	bl	func0		//
	mov	x2, x0	// _9,
// problem20.c:56:     assert(strcmp(func0("six five four three two one zero"), "zero one two three four five six") == 0);
	adrp	x0, .LC22	// tmp125,
	add	x1, x0, :lo12:.LC22	//, tmp125,
	mov	x0, x2	//, _9
	bl	strcmp		//
// problem20.c:56:     assert(strcmp(func0("six five four three two one zero"), "zero one two three four five six") == 0);
	cmp	w0, 0	// _10,
	beq	.L26		//,
// problem20.c:56:     assert(strcmp(func0("six five four three two one zero"), "zero one two three four five six") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp126,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp126,
	mov	w2, 56	//,
	adrp	x0, .LC13	// tmp127,
	add	x1, x0, :lo12:.LC13	//, tmp127,
	adrp	x0, .LC23	// tmp128,
	add	x0, x0, :lo12:.LC23	//, tmp128,
	bl	__assert_fail		//
.L26:
// problem20.c:58:     return 0;
	mov	w0, 0	// _23,
// problem20.c:59: }
	ldp	x29, x30, [sp], 16	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.local	out.1
	.comm	out.1,1000,8
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
