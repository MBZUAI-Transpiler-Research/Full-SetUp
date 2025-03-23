	.arch armv8-a
	.file	"code.c"
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
	sub	sp, sp, #208	//,,
	.cfi_def_cfa_offset 208
	stp	x29, x30, [sp, 192]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 192	//,,
	str	w0, [sp, 12]	// number, number
	str	x1, [sp]	// result, result
// eval/problem157//code.c:4: void func0(int number, char *result) {
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp95,
	ldr	x1, [x0]	// tmp133,
	str	x1, [sp, 184]	// tmp133, D.5069
	mov	x1, 0	// tmp133
// eval/problem157//code.c:5:     const char *rep[] = {"m", "cm", "d", "cd", "c", "xc", "l", "xl", "x", "ix", "v", "iv", "i"};
	adrp	x0, .LC15	// tmp97,
	add	x1, x0, :lo12:.LC15	// tmp96, tmp97,
	add	x0, sp, 80	// tmp98,,
	ldp	q0, q1, [x1]	// tmp100, tmp101,
	stp	q0, q1, [x0]	// tmp100, tmp101, rep
	ldp	q0, q1, [x1, 32]	// tmp102, tmp103,
	stp	q0, q1, [x0, 32]	// tmp102, tmp103, rep
	ldp	q0, q1, [x1, 64]	// tmp104, tmp105,
	stp	q0, q1, [x0, 64]	// tmp104, tmp105, rep
	ldr	x1, [x1, 96]	// tmp106,
	str	x1, [x0, 96]	// tmp106, rep
// eval/problem157//code.c:6:     const int num[] = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
	adrp	x0, .LC14	// tmp108,
	add	x1, x0, :lo12:.LC14	// tmp107, tmp108,
	add	x0, sp, 24	// tmp109,,
	ldp	q0, q1, [x1]	// tmp111, tmp112,
	stp	q0, q1, [x0]	// tmp111, tmp112, num
	ldr	q0, [x1, 32]	// tmp113,
	str	q0, [x0, 32]	// tmp113, num
	ldr	w1, [x1, 48]	// tmp114,
	str	w1, [x0, 48]	// tmp114, num
// eval/problem157//code.c:7:     int pos = 0;
	str	wzr, [sp, 20]	//, pos
// eval/problem157//code.c:8:     result[0] = '\0';
	ldr	x0, [sp]	// tmp115, result
	strb	wzr, [x0]	//, *result_13(D)
// eval/problem157//code.c:10:     while(number > 0) {
	b	.L2		//
.L4:
// eval/problem157//code.c:12:             strcat(result, rep[pos]);
	ldrsw	x0, [sp, 20]	// tmp116, pos
	lsl	x0, x0, 3	// tmp117, tmp116,
	add	x1, sp, 80	// tmp118,,
	ldr	x0, [x1, x0]	// _1, rep[pos_6]
	mov	x1, x0	//, _1
	ldr	x0, [sp]	//, result
	bl	strcat		//
// eval/problem157//code.c:13:             number -= num[pos];
	ldrsw	x0, [sp, 20]	// tmp119, pos
	lsl	x0, x0, 2	// tmp120, tmp119,
	add	x1, sp, 24	// tmp121,,
	ldr	w0, [x1, x0]	// _2, num[pos_6]
// eval/problem157//code.c:13:             number -= num[pos];
	ldr	w1, [sp, 12]	// tmp123, number
	sub	w0, w1, w0	// tmp122, tmp123, _2
	str	w0, [sp, 12]	// tmp122, number
.L3:
// eval/problem157//code.c:11:         while (number >= num[pos]) {
	ldrsw	x0, [sp, 20]	// tmp124, pos
	lsl	x0, x0, 2	// tmp125, tmp124,
	add	x1, sp, 24	// tmp126,,
	ldr	w0, [x1, x0]	// _3, num[pos_6]
// eval/problem157//code.c:11:         while (number >= num[pos]) {
	ldr	w1, [sp, 12]	// tmp127, number
	cmp	w1, w0	// tmp127, _3
	bge	.L4		//,
// eval/problem157//code.c:15:         if (number > 0) pos++;
	ldr	w0, [sp, 12]	// tmp128, number
	cmp	w0, 0	// tmp128,
	ble	.L2		//,
// eval/problem157//code.c:15:         if (number > 0) pos++;
	ldr	w0, [sp, 20]	// tmp130, pos
	add	w0, w0, 1	// tmp129, tmp130,
	str	w0, [sp, 20]	// tmp129, pos
.L2:
// eval/problem157//code.c:10:     while(number > 0) {
	ldr	w0, [sp, 12]	// tmp131, number
	cmp	w0, 0	// tmp131,
	bgt	.L3		//,
// eval/problem157//code.c:17: }
	nop	
	adrp	x0, :got:__stack_chk_guard	// tmp132,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp132,
	ldr	x2, [sp, 184]	// tmp134, D.5069
	ldr	x1, [x0]	// tmp135,
	subs	x2, x2, x1	// tmp134, tmp135
	mov	x1, 0	// tmp135
	beq	.L7		//,
	bl	__stack_chk_fail		//
.L7:
	ldp	x29, x30, [sp, 192]	//,,
	add	sp, sp, 208	//,,
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
	.string	"m"
	.align	3
.LC1:
	.string	"cm"
	.align	3
.LC2:
	.string	"d"
	.align	3
.LC3:
	.string	"cd"
	.align	3
.LC4:
	.string	"c"
	.align	3
.LC5:
	.string	"xc"
	.align	3
.LC6:
	.string	"l"
	.align	3
.LC7:
	.string	"xl"
	.align	3
.LC8:
	.string	"x"
	.align	3
.LC9:
	.string	"ix"
	.align	3
.LC10:
	.string	"v"
	.align	3
.LC11:
	.string	"iv"
	.align	3
.LC12:
	.string	"i"
	.data
	.align	3
.LC15:
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
	.xword	.LC10
	.xword	.LC11
	.xword	.LC12
	.section	.rodata
	.align	3
.LC14:
	.word	1000
	.word	900
	.word	500
	.word	400
	.word	100
	.word	90
	.word	50
	.word	40
	.word	10
	.word	9
	.word	5
	.word	4
	.word	1
	.text
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
