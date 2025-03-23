	.arch armv8-a
	.file	"problem157.c"
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
// problem157.c:4: void func0(int number, char *result) {
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp95,
	ldr	x1, [x0]	// tmp133,
	str	x1, [sp, 184]	// tmp133, D.5138
	mov	x1, 0	// tmp133
// problem157.c:5:     const char *rep[] = {"m", "cm", "d", "cd", "c", "xc", "l", "xl", "x", "ix", "v", "iv", "i"};
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
// problem157.c:6:     const int num[] = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
	adrp	x0, .LC14	// tmp108,
	add	x1, x0, :lo12:.LC14	// tmp107, tmp108,
	add	x0, sp, 24	// tmp109,,
	ldp	q0, q1, [x1]	// tmp111, tmp112,
	stp	q0, q1, [x0]	// tmp111, tmp112, num
	ldr	q0, [x1, 32]	// tmp113,
	str	q0, [x0, 32]	// tmp113, num
	ldr	w1, [x1, 48]	// tmp114,
	str	w1, [x0, 48]	// tmp114, num
// problem157.c:7:     int pos = 0;
	str	wzr, [sp, 20]	//, pos
// problem157.c:8:     result[0] = '\0';
	ldr	x0, [sp]	// tmp115, result
	strb	wzr, [x0]	//, *result_13(D)
// problem157.c:10:     while(number > 0) {
	b	.L2		//
.L4:
// problem157.c:12:             strcat(result, rep[pos]);
	ldrsw	x0, [sp, 20]	// tmp116, pos
	lsl	x0, x0, 3	// tmp117, tmp116,
	add	x1, sp, 80	// tmp118,,
	ldr	x0, [x1, x0]	// _1, rep[pos_6]
	mov	x1, x0	//, _1
	ldr	x0, [sp]	//, result
	bl	strcat		//
// problem157.c:13:             number -= num[pos];
	ldrsw	x0, [sp, 20]	// tmp119, pos
	lsl	x0, x0, 2	// tmp120, tmp119,
	add	x1, sp, 24	// tmp121,,
	ldr	w0, [x1, x0]	// _2, num[pos_6]
// problem157.c:13:             number -= num[pos];
	ldr	w1, [sp, 12]	// tmp123, number
	sub	w0, w1, w0	// tmp122, tmp123, _2
	str	w0, [sp, 12]	// tmp122, number
.L3:
// problem157.c:11:         while (number >= num[pos]) {
	ldrsw	x0, [sp, 20]	// tmp124, pos
	lsl	x0, x0, 2	// tmp125, tmp124,
	add	x1, sp, 24	// tmp126,,
	ldr	w0, [x1, x0]	// _3, num[pos_6]
// problem157.c:11:         while (number >= num[pos]) {
	ldr	w1, [sp, 12]	// tmp127, number
	cmp	w1, w0	// tmp127, _3
	bge	.L4		//,
// problem157.c:15:         if (number > 0) pos++;
	ldr	w0, [sp, 12]	// tmp128, number
	cmp	w0, 0	// tmp128,
	ble	.L2		//,
// problem157.c:15:         if (number > 0) pos++;
	ldr	w0, [sp, 20]	// tmp130, pos
	add	w0, w0, 1	// tmp129, tmp130,
	str	w0, [sp, 20]	// tmp129, pos
.L2:
// problem157.c:10:     while(number > 0) {
	ldr	w0, [sp, 12]	// tmp131, number
	cmp	w0, 0	// tmp131,
	bgt	.L3		//,
// problem157.c:17: }
	nop	
	adrp	x0, :got:__stack_chk_guard	// tmp132,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp132,
	ldr	x2, [sp, 184]	// tmp134, D.5138
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
	sub	sp, sp, #96	//,,
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80	//,,
// problem157.c:24: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp108,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp108,
	ldr	x1, [x0]	// tmp195,
	str	x1, [sp, 72]	// tmp195, D.5142
	mov	x1, 0	// tmp195
// problem157.c:27:     func0(19, result);
	add	x0, sp, 8	// tmp109,,
	mov	x1, x0	//, tmp109
	mov	w0, 19	//,
	bl	func0		//
// problem157.c:28:     assert(strcmp(result, "xix") == 0);
	add	x2, sp, 8	// tmp110,,
	adrp	x0, .LC16	// tmp111,
	add	x1, x0, :lo12:.LC16	//, tmp111,
	mov	x0, x2	//, tmp110
	bl	strcmp		//
// problem157.c:28:     assert(strcmp(result, "xix") == 0);
	cmp	w0, 0	// _1,
	beq	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp112,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp112,
	mov	w2, 28	//,
	adrp	x0, .LC17	// tmp113,
	add	x1, x0, :lo12:.LC17	//, tmp113,
	adrp	x0, .LC18	// tmp114,
	add	x0, x0, :lo12:.LC18	//, tmp114,
	bl	__assert_fail		//
.L9:
// problem157.c:30:     func0(152, result);
	add	x0, sp, 8	// tmp115,,
	mov	x1, x0	//, tmp115
	mov	w0, 152	//,
	bl	func0		//
// problem157.c:31:     assert(strcmp(result, "clii") == 0);
	add	x2, sp, 8	// tmp116,,
	adrp	x0, .LC19	// tmp117,
	add	x1, x0, :lo12:.LC19	//, tmp117,
	mov	x0, x2	//, tmp116
	bl	strcmp		//
// problem157.c:31:     assert(strcmp(result, "clii") == 0);
	cmp	w0, 0	// _2,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp118,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp118,
	mov	w2, 31	//,
	adrp	x0, .LC17	// tmp119,
	add	x1, x0, :lo12:.LC17	//, tmp119,
	adrp	x0, .LC20	// tmp120,
	add	x0, x0, :lo12:.LC20	//, tmp120,
	bl	__assert_fail		//
.L10:
// problem157.c:33:     func0(251, result);
	add	x0, sp, 8	// tmp121,,
	mov	x1, x0	//, tmp121
	mov	w0, 251	//,
	bl	func0		//
// problem157.c:34:     assert(strcmp(result, "ccli") == 0);
	add	x2, sp, 8	// tmp122,,
	adrp	x0, .LC21	// tmp123,
	add	x1, x0, :lo12:.LC21	//, tmp123,
	mov	x0, x2	//, tmp122
	bl	strcmp		//
// problem157.c:34:     assert(strcmp(result, "ccli") == 0);
	cmp	w0, 0	// _3,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp124,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp124,
	mov	w2, 34	//,
	adrp	x0, .LC17	// tmp125,
	add	x1, x0, :lo12:.LC17	//, tmp125,
	adrp	x0, .LC22	// tmp126,
	add	x0, x0, :lo12:.LC22	//, tmp126,
	bl	__assert_fail		//
.L11:
// problem157.c:36:     func0(426, result);
	add	x0, sp, 8	// tmp127,,
	mov	x1, x0	//, tmp127
	mov	w0, 426	//,
	bl	func0		//
// problem157.c:37:     assert(strcmp(result, "cdxxvi") == 0);
	add	x2, sp, 8	// tmp128,,
	adrp	x0, .LC23	// tmp129,
	add	x1, x0, :lo12:.LC23	//, tmp129,
	mov	x0, x2	//, tmp128
	bl	strcmp		//
// problem157.c:37:     assert(strcmp(result, "cdxxvi") == 0);
	cmp	w0, 0	// _4,
	beq	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp130,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp130,
	mov	w2, 37	//,
	adrp	x0, .LC17	// tmp131,
	add	x1, x0, :lo12:.LC17	//, tmp131,
	adrp	x0, .LC24	// tmp132,
	add	x0, x0, :lo12:.LC24	//, tmp132,
	bl	__assert_fail		//
.L12:
// problem157.c:39:     func0(500, result);
	add	x0, sp, 8	// tmp133,,
	mov	x1, x0	//, tmp133
	mov	w0, 500	//,
	bl	func0		//
// problem157.c:40:     assert(strcmp(result, "d") == 0);
	add	x2, sp, 8	// tmp134,,
	adrp	x0, .LC2	// tmp135,
	add	x1, x0, :lo12:.LC2	//, tmp135,
	mov	x0, x2	//, tmp134
	bl	strcmp		//
// problem157.c:40:     assert(strcmp(result, "d") == 0);
	cmp	w0, 0	// _5,
	beq	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp136,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp136,
	mov	w2, 40	//,
	adrp	x0, .LC17	// tmp137,
	add	x1, x0, :lo12:.LC17	//, tmp137,
	adrp	x0, .LC25	// tmp138,
	add	x0, x0, :lo12:.LC25	//, tmp138,
	bl	__assert_fail		//
.L13:
// problem157.c:42:     func0(1, result);
	add	x0, sp, 8	// tmp139,,
	mov	x1, x0	//, tmp139
	mov	w0, 1	//,
	bl	func0		//
// problem157.c:43:     assert(strcmp(result, "i") == 0);
	add	x2, sp, 8	// tmp140,,
	adrp	x0, .LC12	// tmp141,
	add	x1, x0, :lo12:.LC12	//, tmp141,
	mov	x0, x2	//, tmp140
	bl	strcmp		//
// problem157.c:43:     assert(strcmp(result, "i") == 0);
	cmp	w0, 0	// _6,
	beq	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp142,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp142,
	mov	w2, 43	//,
	adrp	x0, .LC17	// tmp143,
	add	x1, x0, :lo12:.LC17	//, tmp143,
	adrp	x0, .LC26	// tmp144,
	add	x0, x0, :lo12:.LC26	//, tmp144,
	bl	__assert_fail		//
.L14:
// problem157.c:45:     func0(4, result);
	add	x0, sp, 8	// tmp145,,
	mov	x1, x0	//, tmp145
	mov	w0, 4	//,
	bl	func0		//
// problem157.c:46:     assert(strcmp(result, "iv") == 0);
	add	x2, sp, 8	// tmp146,,
	adrp	x0, .LC11	// tmp147,
	add	x1, x0, :lo12:.LC11	//, tmp147,
	mov	x0, x2	//, tmp146
	bl	strcmp		//
// problem157.c:46:     assert(strcmp(result, "iv") == 0);
	cmp	w0, 0	// _7,
	beq	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp148,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp148,
	mov	w2, 46	//,
	adrp	x0, .LC17	// tmp149,
	add	x1, x0, :lo12:.LC17	//, tmp149,
	adrp	x0, .LC27	// tmp150,
	add	x0, x0, :lo12:.LC27	//, tmp150,
	bl	__assert_fail		//
.L15:
// problem157.c:48:     func0(43, result);
	add	x0, sp, 8	// tmp151,,
	mov	x1, x0	//, tmp151
	mov	w0, 43	//,
	bl	func0		//
// problem157.c:49:     assert(strcmp(result, "xliii") == 0);
	add	x2, sp, 8	// tmp152,,
	adrp	x0, .LC28	// tmp153,
	add	x1, x0, :lo12:.LC28	//, tmp153,
	mov	x0, x2	//, tmp152
	bl	strcmp		//
// problem157.c:49:     assert(strcmp(result, "xliii") == 0);
	cmp	w0, 0	// _8,
	beq	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp154,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp154,
	mov	w2, 49	//,
	adrp	x0, .LC17	// tmp155,
	add	x1, x0, :lo12:.LC17	//, tmp155,
	adrp	x0, .LC29	// tmp156,
	add	x0, x0, :lo12:.LC29	//, tmp156,
	bl	__assert_fail		//
.L16:
// problem157.c:51:     func0(90, result);
	add	x0, sp, 8	// tmp157,,
	mov	x1, x0	//, tmp157
	mov	w0, 90	//,
	bl	func0		//
// problem157.c:52:     assert(strcmp(result, "xc") == 0);
	add	x2, sp, 8	// tmp158,,
	adrp	x0, .LC5	// tmp159,
	add	x1, x0, :lo12:.LC5	//, tmp159,
	mov	x0, x2	//, tmp158
	bl	strcmp		//
// problem157.c:52:     assert(strcmp(result, "xc") == 0);
	cmp	w0, 0	// _9,
	beq	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp160,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp160,
	mov	w2, 52	//,
	adrp	x0, .LC17	// tmp161,
	add	x1, x0, :lo12:.LC17	//, tmp161,
	adrp	x0, .LC30	// tmp162,
	add	x0, x0, :lo12:.LC30	//, tmp162,
	bl	__assert_fail		//
.L17:
// problem157.c:54:     func0(94, result);
	add	x0, sp, 8	// tmp163,,
	mov	x1, x0	//, tmp163
	mov	w0, 94	//,
	bl	func0		//
// problem157.c:55:     assert(strcmp(result, "xciv") == 0);
	add	x2, sp, 8	// tmp164,,
	adrp	x0, .LC31	// tmp165,
	add	x1, x0, :lo12:.LC31	//, tmp165,
	mov	x0, x2	//, tmp164
	bl	strcmp		//
// problem157.c:55:     assert(strcmp(result, "xciv") == 0);
	cmp	w0, 0	// _10,
	beq	.L18		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp166,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp166,
	mov	w2, 55	//,
	adrp	x0, .LC17	// tmp167,
	add	x1, x0, :lo12:.LC17	//, tmp167,
	adrp	x0, .LC32	// tmp168,
	add	x0, x0, :lo12:.LC32	//, tmp168,
	bl	__assert_fail		//
.L18:
// problem157.c:57:     func0(532, result);
	add	x0, sp, 8	// tmp169,,
	mov	x1, x0	//, tmp169
	mov	w0, 532	//,
	bl	func0		//
// problem157.c:58:     assert(strcmp(result, "dxxxii") == 0);
	add	x2, sp, 8	// tmp170,,
	adrp	x0, .LC33	// tmp171,
	add	x1, x0, :lo12:.LC33	//, tmp171,
	mov	x0, x2	//, tmp170
	bl	strcmp		//
// problem157.c:58:     assert(strcmp(result, "dxxxii") == 0);
	cmp	w0, 0	// _11,
	beq	.L19		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp172,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp172,
	mov	w2, 58	//,
	adrp	x0, .LC17	// tmp173,
	add	x1, x0, :lo12:.LC17	//, tmp173,
	adrp	x0, .LC34	// tmp174,
	add	x0, x0, :lo12:.LC34	//, tmp174,
	bl	__assert_fail		//
.L19:
// problem157.c:60:     func0(900, result);
	add	x0, sp, 8	// tmp175,,
	mov	x1, x0	//, tmp175
	mov	w0, 900	//,
	bl	func0		//
// problem157.c:61:     assert(strcmp(result, "cm") == 0);
	add	x2, sp, 8	// tmp176,,
	adrp	x0, .LC1	// tmp177,
	add	x1, x0, :lo12:.LC1	//, tmp177,
	mov	x0, x2	//, tmp176
	bl	strcmp		//
// problem157.c:61:     assert(strcmp(result, "cm") == 0);
	cmp	w0, 0	// _12,
	beq	.L20		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp178,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp178,
	mov	w2, 61	//,
	adrp	x0, .LC17	// tmp179,
	add	x1, x0, :lo12:.LC17	//, tmp179,
	adrp	x0, .LC35	// tmp180,
	add	x0, x0, :lo12:.LC35	//, tmp180,
	bl	__assert_fail		//
.L20:
// problem157.c:63:     func0(994, result);
	add	x0, sp, 8	// tmp181,,
	mov	x1, x0	//, tmp181
	mov	w0, 994	//,
	bl	func0		//
// problem157.c:64:     assert(strcmp(result, "cmxciv") == 0);
	add	x2, sp, 8	// tmp182,,
	adrp	x0, .LC36	// tmp183,
	add	x1, x0, :lo12:.LC36	//, tmp183,
	mov	x0, x2	//, tmp182
	bl	strcmp		//
// problem157.c:64:     assert(strcmp(result, "cmxciv") == 0);
	cmp	w0, 0	// _13,
	beq	.L21		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp184,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp184,
	mov	w2, 64	//,
	adrp	x0, .LC17	// tmp185,
	add	x1, x0, :lo12:.LC17	//, tmp185,
	adrp	x0, .LC37	// tmp186,
	add	x0, x0, :lo12:.LC37	//, tmp186,
	bl	__assert_fail		//
.L21:
// problem157.c:66:     func0(1000, result);
	add	x0, sp, 8	// tmp187,,
	mov	x1, x0	//, tmp187
	mov	w0, 1000	//,
	bl	func0		//
// problem157.c:67:     assert(strcmp(result, "m") == 0);
	add	x2, sp, 8	// tmp188,,
	adrp	x0, .LC0	// tmp189,
	add	x1, x0, :lo12:.LC0	//, tmp189,
	mov	x0, x2	//, tmp188
	bl	strcmp		//
// problem157.c:67:     assert(strcmp(result, "m") == 0);
	cmp	w0, 0	// _14,
	beq	.L22		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp190,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp190,
	mov	w2, 67	//,
	adrp	x0, .LC17	// tmp191,
	add	x1, x0, :lo12:.LC17	//, tmp191,
	adrp	x0, .LC38	// tmp192,
	add	x0, x0, :lo12:.LC38	//, tmp192,
	bl	__assert_fail		//
.L22:
// problem157.c:69:     return 0;
	mov	w0, 0	// _44,
// problem157.c:70: }
	mov	w1, w0	// <retval>, _44
	adrp	x0, :got:__stack_chk_guard	// tmp194,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp194,
	ldr	x3, [sp, 72]	// tmp196, D.5142
	ldr	x2, [x0]	// tmp197,
	subs	x3, x3, x2	// tmp196, tmp197
	mov	x2, 0	// tmp197
	beq	.L24		//,
	bl	__stack_chk_fail		//
.L24:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 80]	//,,
	add	sp, sp, 96	//,,
	.cfi_restore 29
	.cfi_restore 30
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
