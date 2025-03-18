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
.LFB6:
	.cfi_startproc
	sub	sp, sp, #80	//,,
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64	//,,
	str	x0, [sp, 8]	// date, date
// eval/problem125//code.c:5: int func0(const char *date) {
	adrp	x0, :got:__stack_chk_guard	// tmp119,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp119,
	ldr	x1, [x0]	// tmp160,
	str	x1, [sp, 56]	// tmp160, D.5608
	mov	x1, 0	// tmp160
// eval/problem125//code.c:8:     if (strlen(date) != 10) return 0;
	ldr	x0, [sp, 8]	//, date
	bl	strlen		//
// eval/problem125//code.c:8:     if (strlen(date) != 10) return 0;
	cmp	x0, 10	// _1,
	beq	.L2		//,
// eval/problem125//code.c:8:     if (strlen(date) != 10) return 0;
	mov	w0, 0	// _27,
// eval/problem125//code.c:8:     if (strlen(date) != 10) return 0;
	b	.L18		//
.L2:
// eval/problem125//code.c:9:     for (int i = 0; i < 10; i++) {
	str	wzr, [sp, 16]	//, i
// eval/problem125//code.c:9:     for (int i = 0; i < 10; i++) {
	b	.L4		//
.L10:
// eval/problem125//code.c:10:         if (i == 2 || i == 5) {
	ldr	w0, [sp, 16]	// tmp120, i
	cmp	w0, 2	// tmp120,
	beq	.L5		//,
// eval/problem125//code.c:10:         if (i == 2 || i == 5) {
	ldr	w0, [sp, 16]	// tmp121, i
	cmp	w0, 5	// tmp121,
	bne	.L6		//,
.L5:
// eval/problem125//code.c:11:             if (date[i] != '-') return 0;
	ldrsw	x0, [sp, 16]	// _2, i
	ldr	x1, [sp, 8]	// tmp122, date
	add	x0, x1, x0	// _3, tmp122, _2
	ldrb	w0, [x0]	// _4, *_3
// eval/problem125//code.c:11:             if (date[i] != '-') return 0;
	cmp	w0, 45	// _4,
	beq	.L8		//,
// eval/problem125//code.c:11:             if (date[i] != '-') return 0;
	mov	w0, 0	// _27,
// eval/problem125//code.c:11:             if (date[i] != '-') return 0;
	b	.L18		//
.L6:
// eval/problem125//code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	ldrsw	x0, [sp, 16]	// _5, i
	ldr	x1, [sp, 8]	// tmp123, date
	add	x0, x1, x0	// _6, tmp123, _5
	ldrb	w0, [x0]	// _7, *_6
// eval/problem125//code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	cmp	w0, 47	// _7,
	bls	.L9		//,
// eval/problem125//code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	ldrsw	x0, [sp, 16]	// _8, i
	ldr	x1, [sp, 8]	// tmp124, date
	add	x0, x1, x0	// _9, tmp124, _8
	ldrb	w0, [x0]	// _10, *_9
// eval/problem125//code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	cmp	w0, 57	// _10,
	bls	.L8		//,
.L9:
// eval/problem125//code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	mov	w0, 0	// _27,
// eval/problem125//code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	b	.L18		//
.L8:
// eval/problem125//code.c:9:     for (int i = 0; i < 10; i++) {
	ldr	w0, [sp, 16]	// tmp126, i
	add	w0, w0, 1	// tmp125, tmp126,
	str	w0, [sp, 16]	// tmp125, i
.L4:
// eval/problem125//code.c:9:     for (int i = 0; i < 10; i++) {
	ldr	w0, [sp, 16]	// tmp127, i
	cmp	w0, 9	// tmp127,
	ble	.L10		//,
// eval/problem125//code.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	ldr	x0, [sp, 8]	// tmp128, date
	ldrb	w0, [x0]	// _11, *date_30(D)
// eval/problem125//code.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	strb	w0, [sp, 32]	// tmp129, str_month[0]
// eval/problem125//code.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	ldr	x0, [sp, 8]	// tmp130, date
	add	x0, x0, 1	// _12, tmp130,
	ldrb	w0, [x0]	// _13, *_12
// eval/problem125//code.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	strb	w0, [sp, 33]	// tmp131, str_month[1]
	strb	wzr, [sp, 34]	//, str_month[2]
// eval/problem125//code.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	ldr	x0, [sp, 8]	// tmp132, date
	add	x0, x0, 3	// _14, tmp132,
	ldrb	w0, [x0]	// _15, *_14
// eval/problem125//code.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	strb	w0, [sp, 40]	// tmp133, str_day[0]
// eval/problem125//code.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	ldr	x0, [sp, 8]	// tmp134, date
	add	x0, x0, 4	// _16, tmp134,
	ldrb	w0, [x0]	// _17, *_16
// eval/problem125//code.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	strb	w0, [sp, 41]	// tmp135, str_day[1]
	strb	wzr, [sp, 42]	//, str_day[2]
// eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	ldr	x0, [sp, 8]	// tmp136, date
	add	x0, x0, 6	// _18, tmp136,
	ldrb	w0, [x0]	// _19, *_18
// eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	strb	w0, [sp, 48]	// tmp137, str_year[0]
// eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	ldr	x0, [sp, 8]	// tmp138, date
	add	x0, x0, 7	// _20, tmp138,
	ldrb	w0, [x0]	// _21, *_20
// eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	strb	w0, [sp, 49]	// tmp139, str_year[1]
// eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	ldr	x0, [sp, 8]	// tmp140, date
	add	x0, x0, 8	// _22, tmp140,
	ldrb	w0, [x0]	// _23, *_22
// eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	strb	w0, [sp, 50]	// tmp141, str_year[2]
// eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	ldr	x0, [sp, 8]	// tmp142, date
	add	x0, x0, 9	// _24, tmp142,
	ldrb	w0, [x0]	// _25, *_24
// eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	strb	w0, [sp, 51]	// tmp143, str_year[3]
	strb	wzr, [sp, 52]	//, str_year[4]
// eval/problem125//code.c:21:     mm = atoi(str_month);
	add	x0, sp, 32	// tmp144,,
	bl	atoi		//
	str	w0, [sp, 20]	//, mm
// eval/problem125//code.c:22:     dd = atoi(str_day);
	add	x0, sp, 40	// tmp145,,
	bl	atoi		//
	str	w0, [sp, 24]	//, dd
// eval/problem125//code.c:23:     yy = atoi(str_year);
	add	x0, sp, 48	// tmp146,,
	bl	atoi		//
	str	w0, [sp, 28]	//, yy
// eval/problem125//code.c:25:     if (mm < 1 || mm > 12) return 0;
	ldr	w0, [sp, 20]	// tmp147, mm
	cmp	w0, 0	// tmp147,
	ble	.L11		//,
// eval/problem125//code.c:25:     if (mm < 1 || mm > 12) return 0;
	ldr	w0, [sp, 20]	// tmp148, mm
	cmp	w0, 12	// tmp148,
	ble	.L12		//,
.L11:
// eval/problem125//code.c:25:     if (mm < 1 || mm > 12) return 0;
	mov	w0, 0	// _27,
// eval/problem125//code.c:25:     if (mm < 1 || mm > 12) return 0;
	b	.L18		//
.L12:
// eval/problem125//code.c:26:     if (dd < 1 || dd > 31) return 0;
	ldr	w0, [sp, 24]	// tmp149, dd
	cmp	w0, 0	// tmp149,
	ble	.L13		//,
// eval/problem125//code.c:26:     if (dd < 1 || dd > 31) return 0;
	ldr	w0, [sp, 24]	// tmp150, dd
	cmp	w0, 31	// tmp150,
	ble	.L14		//,
.L13:
// eval/problem125//code.c:26:     if (dd < 1 || dd > 31) return 0;
	mov	w0, 0	// _27,
// eval/problem125//code.c:26:     if (dd < 1 || dd > 31) return 0;
	b	.L18		//
.L14:
// eval/problem125//code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	ldr	w0, [sp, 20]	// tmp151, mm
	cmp	w0, 4	// tmp151,
	beq	.L15		//,
// eval/problem125//code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	ldr	w0, [sp, 20]	// tmp152, mm
	cmp	w0, 6	// tmp152,
	beq	.L15		//,
// eval/problem125//code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	ldr	w0, [sp, 20]	// tmp153, mm
	cmp	w0, 9	// tmp153,
	beq	.L15		//,
// eval/problem125//code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	ldr	w0, [sp, 20]	// tmp154, mm
	cmp	w0, 11	// tmp154,
	bne	.L16		//,
.L15:
// eval/problem125//code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	ldr	w0, [sp, 24]	// tmp155, dd
	cmp	w0, 31	// tmp155,
	bne	.L16		//,
// eval/problem125//code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	mov	w0, 0	// _27,
// eval/problem125//code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	b	.L18		//
.L16:
// eval/problem125//code.c:28:     if (mm == 2 && dd > 29) return 0;
	ldr	w0, [sp, 20]	// tmp156, mm
	cmp	w0, 2	// tmp156,
	bne	.L17		//,
// eval/problem125//code.c:28:     if (mm == 2 && dd > 29) return 0;
	ldr	w0, [sp, 24]	// tmp157, dd
	cmp	w0, 29	// tmp157,
	ble	.L17		//,
// eval/problem125//code.c:28:     if (mm == 2 && dd > 29) return 0;
	mov	w0, 0	// _27,
// eval/problem125//code.c:28:     if (mm == 2 && dd > 29) return 0;
	b	.L18		//
.L17:
// eval/problem125//code.c:30:     return 1;
	mov	w0, 1	// _27,
.L18:
// eval/problem125//code.c:31: }
	mov	w1, w0	// <retval>, _27
	adrp	x0, :got:__stack_chk_guard	// tmp159,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp159,
	ldr	x3, [sp, 56]	// tmp161, D.5608
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
