	.arch armv8-a
	.file	"problem157.c"
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
// problem157.c:4: void func0(int number, char *result) {
	adrp	x0, :got:__stack_chk_guard	// tmp96,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp95, tmp96,
	ldr	x1, [x0]	// tmp135,
	str	x1, [sp, 200]	// tmp135, D.4529
	mov	x1, 0	// tmp135
// problem157.c:5:     const char *rep[] = {"m", "cm", "d", "cd", "c", "xc", "l", "xl", "x", "ix", "v", "iv", "i"};
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
// problem157.c:6:     const int num[] = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
	adrp	x0, .LC14	// tmp109,
	add	x1, x0, :lo12:.LC14	// tmp108, tmp109,
	add	x0, sp, 40	// tmp110,,
	ldp	q0, q1, [x1]	// tmp112, tmp113,
	stp	q0, q1, [x0]	// tmp112, tmp113, num
	ldr	q0, [x1, 32]	// tmp114,
	str	q0, [x0, 32]	// tmp114, num
	ldr	w1, [x1, 48]	// tmp115,
	str	w1, [x0, 48]	// tmp115, num
// problem157.c:7:     int pos = 0;
	str	wzr, [sp, 36]	//, pos
// problem157.c:8:     result[0] = '\0';
	ldr	x0, [sp, 16]	// tmp116, result
	strb	wzr, [x0]	//, *result_13(D)
// problem157.c:10:     while(number > 0) {
	b	.L2		//
.L4:
// problem157.c:12:             strcat(result, rep[pos]);
	ldrsw	x0, [sp, 36]	// tmp117, pos
	lsl	x0, x0, 3	// tmp118, tmp117,
	add	x1, sp, 96	// tmp119,,
	ldr	x0, [x1, x0]	// _1, rep[pos_6]
	mov	x1, x0	//, _1
	ldr	x0, [sp, 16]	//, result
	bl	strcat		//
// problem157.c:13:             number -= num[pos];
	ldrsw	x0, [sp, 36]	// tmp120, pos
	lsl	x0, x0, 2	// tmp121, tmp120,
	add	x1, sp, 40	// tmp122,,
	ldr	w0, [x1, x0]	// _2, num[pos_6]
// problem157.c:13:             number -= num[pos];
	ldr	w1, [sp, 28]	// tmp124, number
	sub	w0, w1, w0	// tmp123, tmp124, _2
	str	w0, [sp, 28]	// tmp123, number
.L3:
// problem157.c:11:         while (number >= num[pos]) {
	ldrsw	x0, [sp, 36]	// tmp125, pos
	lsl	x0, x0, 2	// tmp126, tmp125,
	add	x1, sp, 40	// tmp127,,
	ldr	w0, [x1, x0]	// _3, num[pos_6]
// problem157.c:11:         while (number >= num[pos]) {
	ldr	w1, [sp, 28]	// tmp128, number
	cmp	w1, w0	// tmp128, _3
	bge	.L4		//,
// problem157.c:15:         if (number > 0) pos++;
	ldr	w0, [sp, 28]	// tmp129, number
	cmp	w0, 0	// tmp129,
	ble	.L2		//,
// problem157.c:15:         if (number > 0) pos++;
	ldr	w0, [sp, 36]	// tmp131, pos
	add	w0, w0, 1	// tmp130, tmp131,
	str	w0, [sp, 36]	// tmp130, pos
.L2:
// problem157.c:10:     while(number > 0) {
	ldr	w0, [sp, 28]	// tmp132, number
	cmp	w0, 0	// tmp132,
	bgt	.L3		//,
// problem157.c:17: }
	nop	
	adrp	x0, :got:__stack_chk_guard	// tmp134,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp133, tmp134,
	ldr	x2, [sp, 200]	// tmp136, D.4529
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
	.section	.rodata
	.align	3
.LC16:
	.string	"xix"
	.align	3
.LC17:
	.string	"problem157.c"
	.align	3
.LC18:
	.string	"strcmp(result, \"xix\") == 0"
	.align	3
.LC19:
	.string	"clii"
	.align	3
.LC20:
	.string	"strcmp(result, \"clii\") == 0"
	.align	3
.LC21:
	.string	"ccli"
	.align	3
.LC22:
	.string	"strcmp(result, \"ccli\") == 0"
	.align	3
.LC23:
	.string	"cdxxvi"
	.align	3
.LC24:
	.string	"strcmp(result, \"cdxxvi\") == 0"
	.align	3
.LC25:
	.string	"strcmp(result, \"d\") == 0"
	.align	3
.LC26:
	.string	"strcmp(result, \"i\") == 0"
	.align	3
.LC27:
	.string	"strcmp(result, \"iv\") == 0"
	.align	3
.LC28:
	.string	"xliii"
	.align	3
.LC29:
	.string	"strcmp(result, \"xliii\") == 0"
	.align	3
.LC30:
	.string	"strcmp(result, \"xc\") == 0"
	.align	3
.LC31:
	.string	"xciv"
	.align	3
.LC32:
	.string	"strcmp(result, \"xciv\") == 0"
	.align	3
.LC33:
	.string	"dxxxii"
	.align	3
.LC34:
	.string	"strcmp(result, \"dxxxii\") == 0"
	.align	3
.LC35:
	.string	"strcmp(result, \"cm\") == 0"
	.align	3
.LC36:
	.string	"cmxciv"
	.align	3
.LC37:
	.string	"strcmp(result, \"cmxciv\") == 0"
	.align	3
.LC38:
	.string	"strcmp(result, \"m\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
// problem157.c:24: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp109,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp108, tmp109,
	ldr	x1, [x0]	// tmp197,
	str	x1, [sp, 88]	// tmp197, D.4533
	mov	x1, 0	// tmp197
// problem157.c:27:     func0(19, result);
	add	x0, sp, 24	// tmp110,,
	mov	x1, x0	//, tmp110
	mov	w0, 19	//,
	bl	func0		//
// problem157.c:28:     assert(strcmp(result, "xix") == 0);
	add	x2, sp, 24	// tmp111,,
	adrp	x0, .LC16	// tmp112,
	add	x1, x0, :lo12:.LC16	//, tmp112,
	mov	x0, x2	//, tmp111
	bl	strcmp		//
	cmp	w0, 0	// _1,
	beq	.L8		//,
// problem157.c:28:     assert(strcmp(result, "xix") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp113,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp113,
	mov	w2, 28	//,
	adrp	x0, .LC17	// tmp114,
	add	x1, x0, :lo12:.LC17	//, tmp114,
	adrp	x0, .LC18	// tmp115,
	add	x0, x0, :lo12:.LC18	//, tmp115,
	bl	__assert_fail		//
.L8:
// problem157.c:30:     func0(152, result);
	add	x0, sp, 24	// tmp116,,
	mov	x1, x0	//, tmp116
	mov	w0, 152	//,
	bl	func0		//
// problem157.c:31:     assert(strcmp(result, "clii") == 0);
	add	x2, sp, 24	// tmp117,,
	adrp	x0, .LC19	// tmp118,
	add	x1, x0, :lo12:.LC19	//, tmp118,
	mov	x0, x2	//, tmp117
	bl	strcmp		//
	cmp	w0, 0	// _2,
	beq	.L9		//,
// problem157.c:31:     assert(strcmp(result, "clii") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 31	//,
	adrp	x0, .LC17	// tmp120,
	add	x1, x0, :lo12:.LC17	//, tmp120,
	adrp	x0, .LC20	// tmp121,
	add	x0, x0, :lo12:.LC20	//, tmp121,
	bl	__assert_fail		//
.L9:
// problem157.c:33:     func0(251, result);
	add	x0, sp, 24	// tmp122,,
	mov	x1, x0	//, tmp122
	mov	w0, 251	//,
	bl	func0		//
// problem157.c:34:     assert(strcmp(result, "ccli") == 0);
	add	x2, sp, 24	// tmp123,,
	adrp	x0, .LC21	// tmp124,
	add	x1, x0, :lo12:.LC21	//, tmp124,
	mov	x0, x2	//, tmp123
	bl	strcmp		//
	cmp	w0, 0	// _3,
	beq	.L10		//,
// problem157.c:34:     assert(strcmp(result, "ccli") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp125,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp125,
	mov	w2, 34	//,
	adrp	x0, .LC17	// tmp126,
	add	x1, x0, :lo12:.LC17	//, tmp126,
	adrp	x0, .LC22	// tmp127,
	add	x0, x0, :lo12:.LC22	//, tmp127,
	bl	__assert_fail		//
.L10:
// problem157.c:36:     func0(426, result);
	add	x0, sp, 24	// tmp128,,
	mov	x1, x0	//, tmp128
	mov	w0, 426	//,
	bl	func0		//
// problem157.c:37:     assert(strcmp(result, "cdxxvi") == 0);
	add	x2, sp, 24	// tmp129,,
	adrp	x0, .LC23	// tmp130,
	add	x1, x0, :lo12:.LC23	//, tmp130,
	mov	x0, x2	//, tmp129
	bl	strcmp		//
	cmp	w0, 0	// _4,
	beq	.L11		//,
// problem157.c:37:     assert(strcmp(result, "cdxxvi") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp131,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp131,
	mov	w2, 37	//,
	adrp	x0, .LC17	// tmp132,
	add	x1, x0, :lo12:.LC17	//, tmp132,
	adrp	x0, .LC24	// tmp133,
	add	x0, x0, :lo12:.LC24	//, tmp133,
	bl	__assert_fail		//
.L11:
// problem157.c:39:     func0(500, result);
	add	x0, sp, 24	// tmp134,,
	mov	x1, x0	//, tmp134
	mov	w0, 500	//,
	bl	func0		//
// problem157.c:40:     assert(strcmp(result, "d") == 0);
	add	x2, sp, 24	// tmp135,,
	adrp	x0, .LC2	// tmp136,
	add	x1, x0, :lo12:.LC2	//, tmp136,
	mov	x0, x2	//, tmp135
	bl	strcmp		//
	cmp	w0, 0	// _5,
	beq	.L12		//,
// problem157.c:40:     assert(strcmp(result, "d") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp137,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp137,
	mov	w2, 40	//,
	adrp	x0, .LC17	// tmp138,
	add	x1, x0, :lo12:.LC17	//, tmp138,
	adrp	x0, .LC25	// tmp139,
	add	x0, x0, :lo12:.LC25	//, tmp139,
	bl	__assert_fail		//
.L12:
// problem157.c:42:     func0(1, result);
	add	x0, sp, 24	// tmp140,,
	mov	x1, x0	//, tmp140
	mov	w0, 1	//,
	bl	func0		//
// problem157.c:43:     assert(strcmp(result, "i") == 0);
	add	x2, sp, 24	// tmp141,,
	adrp	x0, .LC12	// tmp142,
	add	x1, x0, :lo12:.LC12	//, tmp142,
	mov	x0, x2	//, tmp141
	bl	strcmp		//
	cmp	w0, 0	// _6,
	beq	.L13		//,
// problem157.c:43:     assert(strcmp(result, "i") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp143,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp143,
	mov	w2, 43	//,
	adrp	x0, .LC17	// tmp144,
	add	x1, x0, :lo12:.LC17	//, tmp144,
	adrp	x0, .LC26	// tmp145,
	add	x0, x0, :lo12:.LC26	//, tmp145,
	bl	__assert_fail		//
.L13:
// problem157.c:45:     func0(4, result);
	add	x0, sp, 24	// tmp146,,
	mov	x1, x0	//, tmp146
	mov	w0, 4	//,
	bl	func0		//
// problem157.c:46:     assert(strcmp(result, "iv") == 0);
	add	x2, sp, 24	// tmp147,,
	adrp	x0, .LC11	// tmp148,
	add	x1, x0, :lo12:.LC11	//, tmp148,
	mov	x0, x2	//, tmp147
	bl	strcmp		//
	cmp	w0, 0	// _7,
	beq	.L14		//,
// problem157.c:46:     assert(strcmp(result, "iv") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp149,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp149,
	mov	w2, 46	//,
	adrp	x0, .LC17	// tmp150,
	add	x1, x0, :lo12:.LC17	//, tmp150,
	adrp	x0, .LC27	// tmp151,
	add	x0, x0, :lo12:.LC27	//, tmp151,
	bl	__assert_fail		//
.L14:
// problem157.c:48:     func0(43, result);
	add	x0, sp, 24	// tmp152,,
	mov	x1, x0	//, tmp152
	mov	w0, 43	//,
	bl	func0		//
// problem157.c:49:     assert(strcmp(result, "xliii") == 0);
	add	x2, sp, 24	// tmp153,,
	adrp	x0, .LC28	// tmp154,
	add	x1, x0, :lo12:.LC28	//, tmp154,
	mov	x0, x2	//, tmp153
	bl	strcmp		//
	cmp	w0, 0	// _8,
	beq	.L15		//,
// problem157.c:49:     assert(strcmp(result, "xliii") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp155,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp155,
	mov	w2, 49	//,
	adrp	x0, .LC17	// tmp156,
	add	x1, x0, :lo12:.LC17	//, tmp156,
	adrp	x0, .LC29	// tmp157,
	add	x0, x0, :lo12:.LC29	//, tmp157,
	bl	__assert_fail		//
.L15:
// problem157.c:51:     func0(90, result);
	add	x0, sp, 24	// tmp158,,
	mov	x1, x0	//, tmp158
	mov	w0, 90	//,
	bl	func0		//
// problem157.c:52:     assert(strcmp(result, "xc") == 0);
	add	x2, sp, 24	// tmp159,,
	adrp	x0, .LC5	// tmp160,
	add	x1, x0, :lo12:.LC5	//, tmp160,
	mov	x0, x2	//, tmp159
	bl	strcmp		//
	cmp	w0, 0	// _9,
	beq	.L16		//,
// problem157.c:52:     assert(strcmp(result, "xc") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp161,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp161,
	mov	w2, 52	//,
	adrp	x0, .LC17	// tmp162,
	add	x1, x0, :lo12:.LC17	//, tmp162,
	adrp	x0, .LC30	// tmp163,
	add	x0, x0, :lo12:.LC30	//, tmp163,
	bl	__assert_fail		//
.L16:
// problem157.c:54:     func0(94, result);
	add	x0, sp, 24	// tmp164,,
	mov	x1, x0	//, tmp164
	mov	w0, 94	//,
	bl	func0		//
// problem157.c:55:     assert(strcmp(result, "xciv") == 0);
	add	x2, sp, 24	// tmp165,,
	adrp	x0, .LC31	// tmp166,
	add	x1, x0, :lo12:.LC31	//, tmp166,
	mov	x0, x2	//, tmp165
	bl	strcmp		//
	cmp	w0, 0	// _10,
	beq	.L17		//,
// problem157.c:55:     assert(strcmp(result, "xciv") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp167,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp167,
	mov	w2, 55	//,
	adrp	x0, .LC17	// tmp168,
	add	x1, x0, :lo12:.LC17	//, tmp168,
	adrp	x0, .LC32	// tmp169,
	add	x0, x0, :lo12:.LC32	//, tmp169,
	bl	__assert_fail		//
.L17:
// problem157.c:57:     func0(532, result);
	add	x0, sp, 24	// tmp170,,
	mov	x1, x0	//, tmp170
	mov	w0, 532	//,
	bl	func0		//
// problem157.c:58:     assert(strcmp(result, "dxxxii") == 0);
	add	x2, sp, 24	// tmp171,,
	adrp	x0, .LC33	// tmp172,
	add	x1, x0, :lo12:.LC33	//, tmp172,
	mov	x0, x2	//, tmp171
	bl	strcmp		//
	cmp	w0, 0	// _11,
	beq	.L18		//,
// problem157.c:58:     assert(strcmp(result, "dxxxii") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp173,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp173,
	mov	w2, 58	//,
	adrp	x0, .LC17	// tmp174,
	add	x1, x0, :lo12:.LC17	//, tmp174,
	adrp	x0, .LC34	// tmp175,
	add	x0, x0, :lo12:.LC34	//, tmp175,
	bl	__assert_fail		//
.L18:
// problem157.c:60:     func0(900, result);
	add	x0, sp, 24	// tmp176,,
	mov	x1, x0	//, tmp176
	mov	w0, 900	//,
	bl	func0		//
// problem157.c:61:     assert(strcmp(result, "cm") == 0);
	add	x2, sp, 24	// tmp177,,
	adrp	x0, .LC1	// tmp178,
	add	x1, x0, :lo12:.LC1	//, tmp178,
	mov	x0, x2	//, tmp177
	bl	strcmp		//
	cmp	w0, 0	// _12,
	beq	.L19		//,
// problem157.c:61:     assert(strcmp(result, "cm") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp179,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp179,
	mov	w2, 61	//,
	adrp	x0, .LC17	// tmp180,
	add	x1, x0, :lo12:.LC17	//, tmp180,
	adrp	x0, .LC35	// tmp181,
	add	x0, x0, :lo12:.LC35	//, tmp181,
	bl	__assert_fail		//
.L19:
// problem157.c:63:     func0(994, result);
	add	x0, sp, 24	// tmp182,,
	mov	x1, x0	//, tmp182
	mov	w0, 994	//,
	bl	func0		//
// problem157.c:64:     assert(strcmp(result, "cmxciv") == 0);
	add	x2, sp, 24	// tmp183,,
	adrp	x0, .LC36	// tmp184,
	add	x1, x0, :lo12:.LC36	//, tmp184,
	mov	x0, x2	//, tmp183
	bl	strcmp		//
	cmp	w0, 0	// _13,
	beq	.L20		//,
// problem157.c:64:     assert(strcmp(result, "cmxciv") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp185,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp185,
	mov	w2, 64	//,
	adrp	x0, .LC17	// tmp186,
	add	x1, x0, :lo12:.LC17	//, tmp186,
	adrp	x0, .LC37	// tmp187,
	add	x0, x0, :lo12:.LC37	//, tmp187,
	bl	__assert_fail		//
.L20:
// problem157.c:66:     func0(1000, result);
	add	x0, sp, 24	// tmp188,,
	mov	x1, x0	//, tmp188
	mov	w0, 1000	//,
	bl	func0		//
// problem157.c:67:     assert(strcmp(result, "m") == 0);
	add	x2, sp, 24	// tmp189,,
	adrp	x0, .LC0	// tmp190,
	add	x1, x0, :lo12:.LC0	//, tmp190,
	mov	x0, x2	//, tmp189
	bl	strcmp		//
	cmp	w0, 0	// _14,
	beq	.L21		//,
// problem157.c:67:     assert(strcmp(result, "m") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp191,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp191,
	mov	w2, 67	//,
	adrp	x0, .LC17	// tmp192,
	add	x1, x0, :lo12:.LC17	//, tmp192,
	adrp	x0, .LC38	// tmp193,
	add	x0, x0, :lo12:.LC38	//, tmp193,
	bl	__assert_fail		//
.L21:
// problem157.c:69:     return 0;
	mov	w0, 0	// _44,
// problem157.c:70: }
	mov	w1, w0	// <retval>, _44
	adrp	x0, :got:__stack_chk_guard	// tmp196,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp195, tmp196,
	ldr	x3, [sp, 88]	// tmp198, D.4533
	ldr	x2, [x0]	// tmp199,
	subs	x3, x3, x2	// tmp198, tmp199
	mov	x2, 0	// tmp199
	beq	.L23		//,
	bl	__stack_chk_fail		//
.L23:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
