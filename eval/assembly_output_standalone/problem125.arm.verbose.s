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
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!	//,,,
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp	//,
	str	x0, [sp, 24]	// date, date
// eval/problem125//code.c:5: int func0(const char *date) {
	adrp	x0, :got:__stack_chk_guard	// tmp120,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp119, tmp120,
	ldr	x1, [x0]	// tmp162,
	str	x1, [sp, 72]	// tmp162, D.4992
	mov	x1, 0	// tmp162
// eval/problem125//code.c:8:     if (strlen(date) != 10) return 0;
	ldr	x0, [sp, 24]	//, date
	bl	strlen		//
// eval/problem125//code.c:8:     if (strlen(date) != 10) return 0;
	cmp	x0, 10	// _1,
	beq	.L2		//,
// eval/problem125//code.c:8:     if (strlen(date) != 10) return 0;
	mov	w0, 0	// _27,
	b	.L18		//
.L2:
// eval/problem125//code.c:9:     for (int i = 0; i < 10; i++) {
	str	wzr, [sp, 32]	//, i
// eval/problem125//code.c:9:     for (int i = 0; i < 10; i++) {
	b	.L4		//
.L10:
// eval/problem125//code.c:10:         if (i == 2 || i == 5) {
	ldr	w0, [sp, 32]	// tmp121, i
	cmp	w0, 2	// tmp121,
	beq	.L5		//,
// eval/problem125//code.c:10:         if (i == 2 || i == 5) {
	ldr	w0, [sp, 32]	// tmp122, i
	cmp	w0, 5	// tmp122,
	bne	.L6		//,
.L5:
// eval/problem125//code.c:11:             if (date[i] != '-') return 0;
	ldrsw	x0, [sp, 32]	// _2, i
	ldr	x1, [sp, 24]	// tmp123, date
	add	x0, x1, x0	// _3, tmp123, _2
	ldrb	w0, [x0]	// _4, *_3
// eval/problem125//code.c:11:             if (date[i] != '-') return 0;
	cmp	w0, 45	// _4,
	beq	.L8		//,
// eval/problem125//code.c:11:             if (date[i] != '-') return 0;
	mov	w0, 0	// _27,
	b	.L18		//
.L6:
// eval/problem125//code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	ldrsw	x0, [sp, 32]	// _5, i
	ldr	x1, [sp, 24]	// tmp124, date
	add	x0, x1, x0	// _6, tmp124, _5
	ldrb	w0, [x0]	// _7, *_6
// eval/problem125//code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	cmp	w0, 47	// _7,
	bls	.L9		//,
// eval/problem125//code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	ldrsw	x0, [sp, 32]	// _8, i
	ldr	x1, [sp, 24]	// tmp125, date
	add	x0, x1, x0	// _9, tmp125, _8
	ldrb	w0, [x0]	// _10, *_9
// eval/problem125//code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	cmp	w0, 57	// _10,
	bls	.L8		//,
.L9:
// eval/problem125//code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	mov	w0, 0	// _27,
	b	.L18		//
.L8:
// eval/problem125//code.c:9:     for (int i = 0; i < 10; i++) {
	ldr	w0, [sp, 32]	// tmp127, i
	add	w0, w0, 1	// tmp126, tmp127,
	str	w0, [sp, 32]	// tmp126, i
.L4:
// eval/problem125//code.c:9:     for (int i = 0; i < 10; i++) {
	ldr	w0, [sp, 32]	// tmp128, i
	cmp	w0, 9	// tmp128,
	ble	.L10		//,
// eval/problem125//code.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	ldr	x0, [sp, 24]	// tmp129, date
	ldrb	w0, [x0]	// _11, *date_30(D)
// eval/problem125//code.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	strb	w0, [sp, 48]	// tmp130, str_month[0]
// eval/problem125//code.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	ldr	x0, [sp, 24]	// tmp131, date
	add	x0, x0, 1	// _12, tmp131,
	ldrb	w0, [x0]	// _13, *_12
// eval/problem125//code.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	strb	w0, [sp, 49]	// tmp132, str_month[1]
	strb	wzr, [sp, 50]	//, str_month[2]
// eval/problem125//code.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	ldr	x0, [sp, 24]	// tmp133, date
	add	x0, x0, 3	// _14, tmp133,
	ldrb	w0, [x0]	// _15, *_14
// eval/problem125//code.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	strb	w0, [sp, 56]	// tmp134, str_day[0]
// eval/problem125//code.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	ldr	x0, [sp, 24]	// tmp135, date
	add	x0, x0, 4	// _16, tmp135,
	ldrb	w0, [x0]	// _17, *_16
// eval/problem125//code.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	strb	w0, [sp, 57]	// tmp136, str_day[1]
	strb	wzr, [sp, 58]	//, str_day[2]
// eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	ldr	x0, [sp, 24]	// tmp137, date
	add	x0, x0, 6	// _18, tmp137,
	ldrb	w0, [x0]	// _19, *_18
// eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	strb	w0, [sp, 64]	// tmp138, str_year[0]
// eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	ldr	x0, [sp, 24]	// tmp139, date
	add	x0, x0, 7	// _20, tmp139,
	ldrb	w0, [x0]	// _21, *_20
// eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	strb	w0, [sp, 65]	// tmp140, str_year[1]
// eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	ldr	x0, [sp, 24]	// tmp141, date
	add	x0, x0, 8	// _22, tmp141,
	ldrb	w0, [x0]	// _23, *_22
// eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	strb	w0, [sp, 66]	// tmp142, str_year[2]
// eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	ldr	x0, [sp, 24]	// tmp143, date
	add	x0, x0, 9	// _24, tmp143,
	ldrb	w0, [x0]	// _25, *_24
// eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	strb	w0, [sp, 67]	// tmp144, str_year[3]
	strb	wzr, [sp, 68]	//, str_year[4]
// eval/problem125//code.c:21:     mm = atoi(str_month);
	add	x0, sp, 48	// tmp145,,
	bl	atoi		//
	str	w0, [sp, 36]	//, mm
// eval/problem125//code.c:22:     dd = atoi(str_day);
	add	x0, sp, 56	// tmp146,,
	bl	atoi		//
	str	w0, [sp, 40]	//, dd
// eval/problem125//code.c:23:     yy = atoi(str_year);
	add	x0, sp, 64	// tmp147,,
	bl	atoi		//
	str	w0, [sp, 44]	//, yy
// eval/problem125//code.c:25:     if (mm < 1 || mm > 12) return 0;
	ldr	w0, [sp, 36]	// tmp148, mm
	cmp	w0, 0	// tmp148,
	ble	.L11		//,
// eval/problem125//code.c:25:     if (mm < 1 || mm > 12) return 0;
	ldr	w0, [sp, 36]	// tmp149, mm
	cmp	w0, 12	// tmp149,
	ble	.L12		//,
.L11:
// eval/problem125//code.c:25:     if (mm < 1 || mm > 12) return 0;
	mov	w0, 0	// _27,
	b	.L18		//
.L12:
// eval/problem125//code.c:26:     if (dd < 1 || dd > 31) return 0;
	ldr	w0, [sp, 40]	// tmp150, dd
	cmp	w0, 0	// tmp150,
	ble	.L13		//,
// eval/problem125//code.c:26:     if (dd < 1 || dd > 31) return 0;
	ldr	w0, [sp, 40]	// tmp151, dd
	cmp	w0, 31	// tmp151,
	ble	.L14		//,
.L13:
// eval/problem125//code.c:26:     if (dd < 1 || dd > 31) return 0;
	mov	w0, 0	// _27,
	b	.L18		//
.L14:
// eval/problem125//code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	ldr	w0, [sp, 36]	// tmp152, mm
	cmp	w0, 4	// tmp152,
	beq	.L15		//,
// eval/problem125//code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	ldr	w0, [sp, 36]	// tmp153, mm
	cmp	w0, 6	// tmp153,
	beq	.L15		//,
// eval/problem125//code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	ldr	w0, [sp, 36]	// tmp154, mm
	cmp	w0, 9	// tmp154,
	beq	.L15		//,
// eval/problem125//code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	ldr	w0, [sp, 36]	// tmp155, mm
	cmp	w0, 11	// tmp155,
	bne	.L16		//,
.L15:
// eval/problem125//code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	ldr	w0, [sp, 40]	// tmp156, dd
	cmp	w0, 31	// tmp156,
	bne	.L16		//,
// eval/problem125//code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	mov	w0, 0	// _27,
	b	.L18		//
.L16:
// eval/problem125//code.c:28:     if (mm == 2 && dd > 29) return 0;
	ldr	w0, [sp, 36]	// tmp157, mm
	cmp	w0, 2	// tmp157,
	bne	.L17		//,
// eval/problem125//code.c:28:     if (mm == 2 && dd > 29) return 0;
	ldr	w0, [sp, 40]	// tmp158, dd
	cmp	w0, 29	// tmp158,
	ble	.L17		//,
// eval/problem125//code.c:28:     if (mm == 2 && dd > 29) return 0;
	mov	w0, 0	// _27,
	b	.L18		//
.L17:
// eval/problem125//code.c:30:     return 1;
	mov	w0, 1	// _27,
.L18:
// eval/problem125//code.c:31: }
	mov	w1, w0	// <retval>, _27
	adrp	x0, :got:__stack_chk_guard	// tmp161,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp160, tmp161,
	ldr	x3, [sp, 72]	// tmp163, D.4992
	ldr	x2, [x0]	// tmp164,
	subs	x3, x3, x2	// tmp163, tmp164
	mov	x2, 0	// tmp164
	beq	.L19		//,
// eval/problem125//code.c:31: }
	bl	__stack_chk_fail		//
.L19:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 80	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
