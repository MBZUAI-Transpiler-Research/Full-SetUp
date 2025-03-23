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
	stp	x29, x30, [sp, -208]!	//,,,
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	mov	x29, sp	//,
	str	w0, [sp, 28]	// number, number
	str	x1, [sp, 16]	// result, result
// eval/problem157//code.c:4: void func0(int number, char *result) {
	adrp	x0, :got:__stack_chk_guard	// tmp96,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp95, tmp96,
	ldr	x1, [x0]	// tmp135,
	str	x1, [sp, 200]	// tmp135, D.4460
	mov	x1, 0	// tmp135
// eval/problem157//code.c:5:     const char *rep[] = {"m", "cm", "d", "cd", "c", "xc", "l", "xl", "x", "ix", "v", "iv", "i"};
	adrp	x0, .LC15	// tmp98,
	add	x1, x0, :lo12:.LC15	// tmp97, tmp98,
	add	x0, sp, 96	// tmp99,,
	ldp	q0, q1, [x1]	// tmp101, tmp102,
	stp	q0, q1, [x0]	// tmp101, tmp102, rep
	ldp	q0, q1, [x1, 32]	// tmp103, tmp104,
	stp	q0, q1, [x0, 32]	// tmp103, tmp104, rep
	ldp	q0, q1, [x1, 64]	// tmp105, tmp106,
	stp	q0, q1, [x0, 64]	// tmp105, tmp106, rep
	ldr	x1, [x1, 96]	// tmp107,
	str	x1, [x0, 96]	// tmp107, rep
// eval/problem157//code.c:6:     const int num[] = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
	adrp	x0, .LC14	// tmp109,
	add	x1, x0, :lo12:.LC14	// tmp108, tmp109,
	add	x0, sp, 40	// tmp110,,
	ldp	q0, q1, [x1]	// tmp112, tmp113,
	stp	q0, q1, [x0]	// tmp112, tmp113, num
	ldr	q0, [x1, 32]	// tmp114,
	str	q0, [x0, 32]	// tmp114, num
	ldr	w1, [x1, 48]	// tmp115,
	str	w1, [x0, 48]	// tmp115, num
// eval/problem157//code.c:7:     int pos = 0;
	str	wzr, [sp, 36]	//, pos
// eval/problem157//code.c:8:     result[0] = '\0';
	ldr	x0, [sp, 16]	// tmp116, result
	strb	wzr, [x0]	//, *result_13(D)
// eval/problem157//code.c:10:     while(number > 0) {
	b	.L2		//
.L4:
// eval/problem157//code.c:12:             strcat(result, rep[pos]);
	ldrsw	x0, [sp, 36]	// tmp117, pos
	lsl	x0, x0, 3	// tmp118, tmp117,
	add	x1, sp, 96	// tmp119,,
	ldr	x0, [x1, x0]	// _1, rep[pos_6]
	mov	x1, x0	//, _1
	ldr	x0, [sp, 16]	//, result
	bl	strcat		//
// eval/problem157//code.c:13:             number -= num[pos];
	ldrsw	x0, [sp, 36]	// tmp120, pos
	lsl	x0, x0, 2	// tmp121, tmp120,
	add	x1, sp, 40	// tmp122,,
	ldr	w0, [x1, x0]	// _2, num[pos_6]
// eval/problem157//code.c:13:             number -= num[pos];
	ldr	w1, [sp, 28]	// tmp124, number
	sub	w0, w1, w0	// tmp123, tmp124, _2
	str	w0, [sp, 28]	// tmp123, number
.L3:
// eval/problem157//code.c:11:         while (number >= num[pos]) {
	ldrsw	x0, [sp, 36]	// tmp125, pos
	lsl	x0, x0, 2	// tmp126, tmp125,
	add	x1, sp, 40	// tmp127,,
	ldr	w0, [x1, x0]	// _3, num[pos_6]
// eval/problem157//code.c:11:         while (number >= num[pos]) {
	ldr	w1, [sp, 28]	// tmp128, number
	cmp	w1, w0	// tmp128, _3
	bge	.L4		//,
// eval/problem157//code.c:15:         if (number > 0) pos++;
	ldr	w0, [sp, 28]	// tmp129, number
	cmp	w0, 0	// tmp129,
	ble	.L2		//,
// eval/problem157//code.c:15:         if (number > 0) pos++;
	ldr	w0, [sp, 36]	// tmp131, pos
	add	w0, w0, 1	// tmp130, tmp131,
	str	w0, [sp, 36]	// tmp130, pos
.L2:
// eval/problem157//code.c:10:     while(number > 0) {
	ldr	w0, [sp, 28]	// tmp132, number
	cmp	w0, 0	// tmp132,
	bgt	.L3		//,
// eval/problem157//code.c:17: }
	nop	
	adrp	x0, :got:__stack_chk_guard	// tmp134,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp133, tmp134,
	ldr	x2, [sp, 200]	// tmp136, D.4460
	ldr	x1, [x0]	// tmp137,
	subs	x2, x2, x1	// tmp136, tmp137
	mov	x1, 0	// tmp137
	beq	.L6		//,
	bl	__stack_chk_fail		//
.L6:
	ldp	x29, x30, [sp], 208	//,,,
	.cfi_restore 30
	.cfi_restore 29
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
