	.arch armv8-a
	.file	"problem125.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #80	//,,
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64	//,,
	str	x0, [sp, 8]	// date, date
// problem125.c:5: int func0(const char *date) {
	adrp	x0, :got:__stack_chk_guard	// tmp119,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp119,
	ldr	x1, [x0]	// tmp160,
	str	x1, [sp, 56]	// tmp160, D.5679
	mov	x1, 0	// tmp160
// problem125.c:8:     if (strlen(date) != 10) return 0;
	ldr	x0, [sp, 8]	//, date
	bl	strlen		//
// problem125.c:8:     if (strlen(date) != 10) return 0;
	cmp	x0, 10	// _1,
	beq	.L2		//,
// problem125.c:8:     if (strlen(date) != 10) return 0;
	mov	w0, 0	// _27,
// problem125.c:8:     if (strlen(date) != 10) return 0;
	b	.L18		//
.L2:
// problem125.c:9:     for (int i = 0; i < 10; i++) {
	str	wzr, [sp, 16]	//, i
// problem125.c:9:     for (int i = 0; i < 10; i++) {
	b	.L4		//
.L10:
// problem125.c:10:         if (i == 2 || i == 5) {
	ldr	w0, [sp, 16]	// tmp120, i
	cmp	w0, 2	// tmp120,
	beq	.L5		//,
// problem125.c:10:         if (i == 2 || i == 5) {
	ldr	w0, [sp, 16]	// tmp121, i
	cmp	w0, 5	// tmp121,
	bne	.L6		//,
.L5:
// problem125.c:11:             if (date[i] != '-') return 0;
	ldrsw	x0, [sp, 16]	// _2, i
	ldr	x1, [sp, 8]	// tmp122, date
	add	x0, x1, x0	// _3, tmp122, _2
	ldrb	w0, [x0]	// _4, *_3
// problem125.c:11:             if (date[i] != '-') return 0;
	cmp	w0, 45	// _4,
	beq	.L8		//,
// problem125.c:11:             if (date[i] != '-') return 0;
	mov	w0, 0	// _27,
// problem125.c:11:             if (date[i] != '-') return 0;
	b	.L18		//
.L6:
// problem125.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	ldrsw	x0, [sp, 16]	// _5, i
	ldr	x1, [sp, 8]	// tmp123, date
	add	x0, x1, x0	// _6, tmp123, _5
	ldrb	w0, [x0]	// _7, *_6
// problem125.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	cmp	w0, 47	// _7,
	bls	.L9		//,
// problem125.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	ldrsw	x0, [sp, 16]	// _8, i
	ldr	x1, [sp, 8]	// tmp124, date
	add	x0, x1, x0	// _9, tmp124, _8
	ldrb	w0, [x0]	// _10, *_9
// problem125.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	cmp	w0, 57	// _10,
	bls	.L8		//,
.L9:
// problem125.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	mov	w0, 0	// _27,
// problem125.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	b	.L18		//
.L8:
// problem125.c:9:     for (int i = 0; i < 10; i++) {
	ldr	w0, [sp, 16]	// tmp126, i
	add	w0, w0, 1	// tmp125, tmp126,
	str	w0, [sp, 16]	// tmp125, i
.L4:
// problem125.c:9:     for (int i = 0; i < 10; i++) {
	ldr	w0, [sp, 16]	// tmp127, i
	cmp	w0, 9	// tmp127,
	ble	.L10		//,
// problem125.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	ldr	x0, [sp, 8]	// tmp128, date
	ldrb	w0, [x0]	// _11, *date_30(D)
// problem125.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	strb	w0, [sp, 32]	// tmp129, str_month[0]
// problem125.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	ldr	x0, [sp, 8]	// tmp130, date
	add	x0, x0, 1	// _12, tmp130,
	ldrb	w0, [x0]	// _13, *_12
// problem125.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	strb	w0, [sp, 33]	// tmp131, str_month[1]
	strb	wzr, [sp, 34]	//, str_month[2]
// problem125.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	ldr	x0, [sp, 8]	// tmp132, date
	add	x0, x0, 3	// _14, tmp132,
	ldrb	w0, [x0]	// _15, *_14
// problem125.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	strb	w0, [sp, 40]	// tmp133, str_day[0]
// problem125.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	ldr	x0, [sp, 8]	// tmp134, date
	add	x0, x0, 4	// _16, tmp134,
	ldrb	w0, [x0]	// _17, *_16
// problem125.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	strb	w0, [sp, 41]	// tmp135, str_day[1]
	strb	wzr, [sp, 42]	//, str_day[2]
// problem125.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	ldr	x0, [sp, 8]	// tmp136, date
	add	x0, x0, 6	// _18, tmp136,
	ldrb	w0, [x0]	// _19, *_18
// problem125.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	strb	w0, [sp, 48]	// tmp137, str_year[0]
// problem125.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	ldr	x0, [sp, 8]	// tmp138, date
	add	x0, x0, 7	// _20, tmp138,
	ldrb	w0, [x0]	// _21, *_20
// problem125.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	strb	w0, [sp, 49]	// tmp139, str_year[1]
// problem125.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	ldr	x0, [sp, 8]	// tmp140, date
	add	x0, x0, 8	// _22, tmp140,
	ldrb	w0, [x0]	// _23, *_22
// problem125.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	strb	w0, [sp, 50]	// tmp141, str_year[2]
// problem125.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	ldr	x0, [sp, 8]	// tmp142, date
	add	x0, x0, 9	// _24, tmp142,
	ldrb	w0, [x0]	// _25, *_24
// problem125.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	strb	w0, [sp, 51]	// tmp143, str_year[3]
	strb	wzr, [sp, 52]	//, str_year[4]
// problem125.c:21:     mm = atoi(str_month);
	add	x0, sp, 32	// tmp144,,
	bl	atoi		//
	str	w0, [sp, 20]	//, mm
// problem125.c:22:     dd = atoi(str_day);
	add	x0, sp, 40	// tmp145,,
	bl	atoi		//
	str	w0, [sp, 24]	//, dd
// problem125.c:23:     yy = atoi(str_year);
	add	x0, sp, 48	// tmp146,,
	bl	atoi		//
	str	w0, [sp, 28]	//, yy
// problem125.c:25:     if (mm < 1 || mm > 12) return 0;
	ldr	w0, [sp, 20]	// tmp147, mm
	cmp	w0, 0	// tmp147,
	ble	.L11		//,
// problem125.c:25:     if (mm < 1 || mm > 12) return 0;
	ldr	w0, [sp, 20]	// tmp148, mm
	cmp	w0, 12	// tmp148,
	ble	.L12		//,
.L11:
// problem125.c:25:     if (mm < 1 || mm > 12) return 0;
	mov	w0, 0	// _27,
// problem125.c:25:     if (mm < 1 || mm > 12) return 0;
	b	.L18		//
.L12:
// problem125.c:26:     if (dd < 1 || dd > 31) return 0;
	ldr	w0, [sp, 24]	// tmp149, dd
	cmp	w0, 0	// tmp149,
	ble	.L13		//,
// problem125.c:26:     if (dd < 1 || dd > 31) return 0;
	ldr	w0, [sp, 24]	// tmp150, dd
	cmp	w0, 31	// tmp150,
	ble	.L14		//,
.L13:
// problem125.c:26:     if (dd < 1 || dd > 31) return 0;
	mov	w0, 0	// _27,
// problem125.c:26:     if (dd < 1 || dd > 31) return 0;
	b	.L18		//
.L14:
// problem125.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	ldr	w0, [sp, 20]	// tmp151, mm
	cmp	w0, 4	// tmp151,
	beq	.L15		//,
// problem125.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	ldr	w0, [sp, 20]	// tmp152, mm
	cmp	w0, 6	// tmp152,
	beq	.L15		//,
// problem125.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	ldr	w0, [sp, 20]	// tmp153, mm
	cmp	w0, 9	// tmp153,
	beq	.L15		//,
// problem125.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	ldr	w0, [sp, 20]	// tmp154, mm
	cmp	w0, 11	// tmp154,
	bne	.L16		//,
.L15:
// problem125.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	ldr	w0, [sp, 24]	// tmp155, dd
	cmp	w0, 31	// tmp155,
	bne	.L16		//,
// problem125.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	mov	w0, 0	// _27,
// problem125.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	b	.L18		//
.L16:
// problem125.c:28:     if (mm == 2 && dd > 29) return 0;
	ldr	w0, [sp, 20]	// tmp156, mm
	cmp	w0, 2	// tmp156,
	bne	.L17		//,
// problem125.c:28:     if (mm == 2 && dd > 29) return 0;
	ldr	w0, [sp, 24]	// tmp157, dd
	cmp	w0, 29	// tmp157,
	ble	.L17		//,
// problem125.c:28:     if (mm == 2 && dd > 29) return 0;
	mov	w0, 0	// _27,
// problem125.c:28:     if (mm == 2 && dd > 29) return 0;
	b	.L18		//
.L17:
// problem125.c:30:     return 1;
	mov	w0, 1	// _27,
.L18:
// problem125.c:31: }
	mov	w1, w0	// <retval>, _27
	adrp	x0, :got:__stack_chk_guard	// tmp159,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp159,
	ldr	x3, [sp, 56]	// tmp161, D.5679
	ldr	x2, [x0]	// tmp162,
	subs	x3, x3, x2	// tmp161, tmp162
	mov	x2, 0	// tmp162
	beq	.L19		//,
	bl	__stack_chk_fail		//
.L19:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 64]	//,,
	add	sp, sp, 80	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"03-11-2000"
	.align	3
.LC1:
	.string	"problem125.c"
	.align	3
.LC2:
	.string	"func0(\"03-11-2000\") == 1"
	.align	3
.LC3:
	.string	"15-01-2012"
	.align	3
.LC4:
	.string	"func0(\"15-01-2012\") == 0"
	.align	3
.LC5:
	.string	"04-0-2040"
	.align	3
.LC6:
	.string	"func0(\"04-0-2040\") == 0"
	.align	3
.LC7:
	.string	"06-04-2020"
	.align	3
.LC8:
	.string	"func0(\"06-04-2020\") == 1"
	.align	3
.LC9:
	.string	"01-01-2007"
	.align	3
.LC10:
	.string	"func0(\"01-01-2007\") == 1"
	.align	3
.LC11:
	.string	"03-32-2011"
	.align	3
.LC12:
	.string	"func0(\"03-32-2011\") == 0"
	.align	3
.LC13:
	.string	""
	.align	3
.LC14:
	.string	"func0(\"\") == 0"
	.align	3
.LC15:
	.string	"04-31-3000"
	.align	3
.LC16:
	.string	"func0(\"04-31-3000\") == 0"
	.align	3
.LC17:
	.string	"06-06-2005"
	.align	3
.LC18:
	.string	"func0(\"06-06-2005\") == 1"
	.align	3
.LC19:
	.string	"21-31-2000"
	.align	3
.LC20:
	.string	"func0(\"21-31-2000\") == 0"
	.align	3
.LC21:
	.string	"04-12-2003"
	.align	3
.LC22:
	.string	"func0(\"04-12-2003\") == 1"
	.align	3
.LC23:
	.string	"04122003"
	.align	3
.LC24:
	.string	"func0(\"04122003\") == 0"
	.align	3
.LC25:
	.string	"20030412"
	.align	3
.LC26:
	.string	"func0(\"20030412\") == 0"
	.align	3
.LC27:
	.string	"2003-04"
	.align	3
.LC28:
	.string	"func0(\"2003-04\") == 0"
	.align	3
.LC29:
	.string	"2003-04-12"
	.align	3
.LC30:
	.string	"func0(\"2003-04-12\") == 0"
	.align	3
.LC31:
	.string	"04-2003"
	.align	3
.LC32:
	.string	"func0(\"04-2003\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp	//,
// problem125.c:38:     assert(func0("03-11-2000") == 1);
	adrp	x0, .LC0	// tmp110,
	add	x0, x0, :lo12:.LC0	//, tmp110,
	bl	func0		//
// problem125.c:38:     assert(func0("03-11-2000") == 1);
	cmp	w0, 1	// _1,
	beq	.L21		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp111,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp111,
	mov	w2, 38	//,
	adrp	x0, .LC1	// tmp112,
	add	x1, x0, :lo12:.LC1	//, tmp112,
	adrp	x0, .LC2	// tmp113,
	add	x0, x0, :lo12:.LC2	//, tmp113,
	bl	__assert_fail		//
.L21:
// problem125.c:39:     assert(func0("15-01-2012") == 0);
	adrp	x0, .LC3	// tmp114,
	add	x0, x0, :lo12:.LC3	//, tmp114,
	bl	func0		//
// problem125.c:39:     assert(func0("15-01-2012") == 0);
	cmp	w0, 0	// _2,
	beq	.L22		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp115,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp115,
	mov	w2, 39	//,
	adrp	x0, .LC1	// tmp116,
	add	x1, x0, :lo12:.LC1	//, tmp116,
	adrp	x0, .LC4	// tmp117,
	add	x0, x0, :lo12:.LC4	//, tmp117,
	bl	__assert_fail		//
.L22:
// problem125.c:40:     assert(func0("04-0-2040") == 0);
	adrp	x0, .LC5	// tmp118,
	add	x0, x0, :lo12:.LC5	//, tmp118,
	bl	func0		//
// problem125.c:40:     assert(func0("04-0-2040") == 0);
	cmp	w0, 0	// _3,
	beq	.L23		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 40	//,
	adrp	x0, .LC1	// tmp120,
	add	x1, x0, :lo12:.LC1	//, tmp120,
	adrp	x0, .LC6	// tmp121,
	add	x0, x0, :lo12:.LC6	//, tmp121,
	bl	__assert_fail		//
.L23:
// problem125.c:41:     assert(func0("06-04-2020") == 1);
	adrp	x0, .LC7	// tmp122,
	add	x0, x0, :lo12:.LC7	//, tmp122,
	bl	func0		//
// problem125.c:41:     assert(func0("06-04-2020") == 1);
	cmp	w0, 1	// _4,
	beq	.L24		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp123,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp123,
	mov	w2, 41	//,
	adrp	x0, .LC1	// tmp124,
	add	x1, x0, :lo12:.LC1	//, tmp124,
	adrp	x0, .LC8	// tmp125,
	add	x0, x0, :lo12:.LC8	//, tmp125,
	bl	__assert_fail		//
.L24:
// problem125.c:42:     assert(func0("01-01-2007") == 1);
	adrp	x0, .LC9	// tmp126,
	add	x0, x0, :lo12:.LC9	//, tmp126,
	bl	func0		//
// problem125.c:42:     assert(func0("01-01-2007") == 1);
	cmp	w0, 1	// _5,
	beq	.L25		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp127,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp127,
	mov	w2, 42	//,
	adrp	x0, .LC1	// tmp128,
	add	x1, x0, :lo12:.LC1	//, tmp128,
	adrp	x0, .LC10	// tmp129,
	add	x0, x0, :lo12:.LC10	//, tmp129,
	bl	__assert_fail		//
.L25:
// problem125.c:43:     assert(func0("03-32-2011") == 0);
	adrp	x0, .LC11	// tmp130,
	add	x0, x0, :lo12:.LC11	//, tmp130,
	bl	func0		//
// problem125.c:43:     assert(func0("03-32-2011") == 0);
	cmp	w0, 0	// _6,
	beq	.L26		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp131,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp131,
	mov	w2, 43	//,
	adrp	x0, .LC1	// tmp132,
	add	x1, x0, :lo12:.LC1	//, tmp132,
	adrp	x0, .LC12	// tmp133,
	add	x0, x0, :lo12:.LC12	//, tmp133,
	bl	__assert_fail		//
.L26:
// problem125.c:44:     assert(func0("") == 0);
	adrp	x0, .LC13	// tmp134,
	add	x0, x0, :lo12:.LC13	//, tmp134,
	bl	func0		//
// problem125.c:44:     assert(func0("") == 0);
	cmp	w0, 0	// _7,
	beq	.L27		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp135,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp135,
	mov	w2, 44	//,
	adrp	x0, .LC1	// tmp136,
	add	x1, x0, :lo12:.LC1	//, tmp136,
	adrp	x0, .LC14	// tmp137,
	add	x0, x0, :lo12:.LC14	//, tmp137,
	bl	__assert_fail		//
.L27:
// problem125.c:45:     assert(func0("04-31-3000") == 0);
	adrp	x0, .LC15	// tmp138,
	add	x0, x0, :lo12:.LC15	//, tmp138,
	bl	func0		//
// problem125.c:45:     assert(func0("04-31-3000") == 0);
	cmp	w0, 0	// _8,
	beq	.L28		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp139,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp139,
	mov	w2, 45	//,
	adrp	x0, .LC1	// tmp140,
	add	x1, x0, :lo12:.LC1	//, tmp140,
	adrp	x0, .LC16	// tmp141,
	add	x0, x0, :lo12:.LC16	//, tmp141,
	bl	__assert_fail		//
.L28:
// problem125.c:46:     assert(func0("06-06-2005") == 1);
	adrp	x0, .LC17	// tmp142,
	add	x0, x0, :lo12:.LC17	//, tmp142,
	bl	func0		//
// problem125.c:46:     assert(func0("06-06-2005") == 1);
	cmp	w0, 1	// _9,
	beq	.L29		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp143,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp143,
	mov	w2, 46	//,
	adrp	x0, .LC1	// tmp144,
	add	x1, x0, :lo12:.LC1	//, tmp144,
	adrp	x0, .LC18	// tmp145,
	add	x0, x0, :lo12:.LC18	//, tmp145,
	bl	__assert_fail		//
.L29:
// problem125.c:47:     assert(func0("21-31-2000") == 0);
	adrp	x0, .LC19	// tmp146,
	add	x0, x0, :lo12:.LC19	//, tmp146,
	bl	func0		//
// problem125.c:47:     assert(func0("21-31-2000") == 0);
	cmp	w0, 0	// _10,
	beq	.L30		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp147,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp147,
	mov	w2, 47	//,
	adrp	x0, .LC1	// tmp148,
	add	x1, x0, :lo12:.LC1	//, tmp148,
	adrp	x0, .LC20	// tmp149,
	add	x0, x0, :lo12:.LC20	//, tmp149,
	bl	__assert_fail		//
.L30:
// problem125.c:48:     assert(func0("04-12-2003") == 1);
	adrp	x0, .LC21	// tmp150,
	add	x0, x0, :lo12:.LC21	//, tmp150,
	bl	func0		//
// problem125.c:48:     assert(func0("04-12-2003") == 1);
	cmp	w0, 1	// _11,
	beq	.L31		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp151,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp151,
	mov	w2, 48	//,
	adrp	x0, .LC1	// tmp152,
	add	x1, x0, :lo12:.LC1	//, tmp152,
	adrp	x0, .LC22	// tmp153,
	add	x0, x0, :lo12:.LC22	//, tmp153,
	bl	__assert_fail		//
.L31:
// problem125.c:49:     assert(func0("04122003") == 0);
	adrp	x0, .LC23	// tmp154,
	add	x0, x0, :lo12:.LC23	//, tmp154,
	bl	func0		//
// problem125.c:49:     assert(func0("04122003") == 0);
	cmp	w0, 0	// _12,
	beq	.L32		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp155,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp155,
	mov	w2, 49	//,
	adrp	x0, .LC1	// tmp156,
	add	x1, x0, :lo12:.LC1	//, tmp156,
	adrp	x0, .LC24	// tmp157,
	add	x0, x0, :lo12:.LC24	//, tmp157,
	bl	__assert_fail		//
.L32:
// problem125.c:50:     assert(func0("20030412") == 0);
	adrp	x0, .LC25	// tmp158,
	add	x0, x0, :lo12:.LC25	//, tmp158,
	bl	func0		//
// problem125.c:50:     assert(func0("20030412") == 0);
	cmp	w0, 0	// _13,
	beq	.L33		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp159,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp159,
	mov	w2, 50	//,
	adrp	x0, .LC1	// tmp160,
	add	x1, x0, :lo12:.LC1	//, tmp160,
	adrp	x0, .LC26	// tmp161,
	add	x0, x0, :lo12:.LC26	//, tmp161,
	bl	__assert_fail		//
.L33:
// problem125.c:51:     assert(func0("2003-04") == 0);
	adrp	x0, .LC27	// tmp162,
	add	x0, x0, :lo12:.LC27	//, tmp162,
	bl	func0		//
// problem125.c:51:     assert(func0("2003-04") == 0);
	cmp	w0, 0	// _14,
	beq	.L34		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp163,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp163,
	mov	w2, 51	//,
	adrp	x0, .LC1	// tmp164,
	add	x1, x0, :lo12:.LC1	//, tmp164,
	adrp	x0, .LC28	// tmp165,
	add	x0, x0, :lo12:.LC28	//, tmp165,
	bl	__assert_fail		//
.L34:
// problem125.c:52:     assert(func0("2003-04-12") == 0);
	adrp	x0, .LC29	// tmp166,
	add	x0, x0, :lo12:.LC29	//, tmp166,
	bl	func0		//
// problem125.c:52:     assert(func0("2003-04-12") == 0);
	cmp	w0, 0	// _15,
	beq	.L35		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp167,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp167,
	mov	w2, 52	//,
	adrp	x0, .LC1	// tmp168,
	add	x1, x0, :lo12:.LC1	//, tmp168,
	adrp	x0, .LC30	// tmp169,
	add	x0, x0, :lo12:.LC30	//, tmp169,
	bl	__assert_fail		//
.L35:
// problem125.c:53:     assert(func0("04-2003") == 0);
	adrp	x0, .LC31	// tmp170,
	add	x0, x0, :lo12:.LC31	//, tmp170,
	bl	func0		//
// problem125.c:53:     assert(func0("04-2003") == 0);
	cmp	w0, 0	// _16,
	beq	.L36		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp171,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp171,
	mov	w2, 53	//,
	adrp	x0, .LC1	// tmp172,
	add	x1, x0, :lo12:.LC1	//, tmp172,
	adrp	x0, .LC32	// tmp173,
	add	x0, x0, :lo12:.LC32	//, tmp173,
	bl	__assert_fail		//
.L36:
// problem125.c:55:     return 0;
	mov	w0, 0	// _50,
// problem125.c:56: }
	ldp	x29, x30, [sp], 16	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
