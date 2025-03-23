	.file	"code.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-80	#,,
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	addi	s0,sp,80	#,,
	sd	a0,-72(s0)	# date, date
# eval/problem125//code.c:5: int func0(const char *date) {
	la	a5,__stack_chk_guard		# tmp99,
	ld	a4, 0(a5)	# tmp184, __stack_chk_guard
	sd	a4, -24(s0)	# tmp184, D.2635
	li	a4, 0	# tmp184
# eval/problem125//code.c:8:     if (strlen(date) != 10) return 0;
	ld	a0,-72(s0)		#, date
	call	strlen@plt	#
	mv	a4,a0	# _1,
# eval/problem125//code.c:8:     if (strlen(date) != 10) return 0;
	li	a5,10		# tmp100,
	beq	a4,a5,.L2	#, _1, tmp100,
# eval/problem125//code.c:8:     if (strlen(date) != 10) return 0;
	li	a5,0		# _27,
	j	.L18		#
.L2:
# eval/problem125//code.c:9:     for (int i = 0; i < 10; i++) {
	sw	zero,-64(s0)	#, i
# eval/problem125//code.c:9:     for (int i = 0; i < 10; i++) {
	j	.L4		#
.L10:
# eval/problem125//code.c:10:         if (i == 2 || i == 5) {
	lw	a5,-64(s0)		# tmp102, i
	sext.w	a4,a5	# tmp103, tmp101
	li	a5,2		# tmp104,
	beq	a4,a5,.L5	#, tmp103, tmp104,
# eval/problem125//code.c:10:         if (i == 2 || i == 5) {
	lw	a5,-64(s0)		# tmp106, i
	sext.w	a4,a5	# tmp107, tmp105
	li	a5,5		# tmp108,
	bne	a4,a5,.L6	#, tmp107, tmp108,
.L5:
# eval/problem125//code.c:11:             if (date[i] != '-') return 0;
	lw	a5,-64(s0)		# _2, i
	ld	a4,-72(s0)		# tmp109, date
	add	a5,a4,a5	# _2, _3, tmp109
	lbu	a5,0(a5)	# _4, *_3
# eval/problem125//code.c:11:             if (date[i] != '-') return 0;
	mv	a4,a5	# tmp110, _4
	li	a5,45		# tmp111,
	beq	a4,a5,.L8	#, tmp110, tmp111,
# eval/problem125//code.c:11:             if (date[i] != '-') return 0;
	li	a5,0		# _27,
	j	.L18		#
.L6:
# eval/problem125//code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	lw	a5,-64(s0)		# _5, i
	ld	a4,-72(s0)		# tmp112, date
	add	a5,a4,a5	# _5, _6, tmp112
	lbu	a5,0(a5)	# _7, *_6
# eval/problem125//code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	mv	a4,a5	# tmp113, _7
	li	a5,47		# tmp114,
	bleu	a4,a5,.L9	#, tmp113, tmp114,
# eval/problem125//code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	lw	a5,-64(s0)		# _8, i
	ld	a4,-72(s0)		# tmp115, date
	add	a5,a4,a5	# _8, _9, tmp115
	lbu	a5,0(a5)	# _10, *_9
# eval/problem125//code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	mv	a4,a5	# tmp116, _10
	li	a5,57		# tmp117,
	bleu	a4,a5,.L8	#, tmp116, tmp117,
.L9:
# eval/problem125//code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	li	a5,0		# _27,
	j	.L18		#
.L8:
# eval/problem125//code.c:9:     for (int i = 0; i < 10; i++) {
	lw	a5,-64(s0)		# tmp120, i
	addiw	a5,a5,1	#, tmp118, tmp119
	sw	a5,-64(s0)	# tmp118, i
.L4:
# eval/problem125//code.c:9:     for (int i = 0; i < 10; i++) {
	lw	a5,-64(s0)		# tmp122, i
	sext.w	a4,a5	# tmp123, tmp121
	li	a5,9		# tmp124,
	ble	a4,a5,.L10	#, tmp123, tmp124,
# eval/problem125//code.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	ld	a5,-72(s0)		# tmp125, date
	lbu	a5,0(a5)	# _11, *date_30(D)
# eval/problem125//code.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	sb	a5,-48(s0)	# _11, str_month[0]
# eval/problem125//code.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	ld	a5,-72(s0)		# tmp126, date
	addi	a5,a5,1	#, _12, tmp126
	lbu	a5,0(a5)	# _13, *_12
# eval/problem125//code.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	sb	a5,-47(s0)	# _13, str_month[1]
	sb	zero,-46(s0)	#, str_month[2]
# eval/problem125//code.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	ld	a5,-72(s0)		# tmp127, date
	addi	a5,a5,3	#, _14, tmp127
	lbu	a5,0(a5)	# _15, *_14
# eval/problem125//code.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	sb	a5,-40(s0)	# _15, str_day[0]
# eval/problem125//code.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	ld	a5,-72(s0)		# tmp128, date
	addi	a5,a5,4	#, _16, tmp128
	lbu	a5,0(a5)	# _17, *_16
# eval/problem125//code.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	sb	a5,-39(s0)	# _17, str_day[1]
	sb	zero,-38(s0)	#, str_day[2]
# eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	ld	a5,-72(s0)		# tmp129, date
	addi	a5,a5,6	#, _18, tmp129
	lbu	a5,0(a5)	# _19, *_18
# eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	sb	a5,-32(s0)	# _19, str_year[0]
# eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	ld	a5,-72(s0)		# tmp130, date
	addi	a5,a5,7	#, _20, tmp130
	lbu	a5,0(a5)	# _21, *_20
# eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	sb	a5,-31(s0)	# _21, str_year[1]
# eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	ld	a5,-72(s0)		# tmp131, date
	addi	a5,a5,8	#, _22, tmp131
	lbu	a5,0(a5)	# _23, *_22
# eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	sb	a5,-30(s0)	# _23, str_year[2]
# eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	ld	a5,-72(s0)		# tmp132, date
	addi	a5,a5,9	#, _24, tmp132
	lbu	a5,0(a5)	# _25, *_24
# eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	sb	a5,-29(s0)	# _25, str_year[3]
	sb	zero,-28(s0)	#, str_year[4]
# eval/problem125//code.c:21:     mm = atoi(str_month);
	addi	a5,s0,-48	#, tmp133,
	mv	a0,a5	#, tmp133
	call	atoi@plt	#
	mv	a5,a0	# tmp134,
	sw	a5,-60(s0)	# tmp134, mm
# eval/problem125//code.c:22:     dd = atoi(str_day);
	addi	a5,s0,-40	#, tmp135,
	mv	a0,a5	#, tmp135
	call	atoi@plt	#
	mv	a5,a0	# tmp136,
	sw	a5,-56(s0)	# tmp136, dd
# eval/problem125//code.c:23:     yy = atoi(str_year);
	addi	a5,s0,-32	#, tmp137,
	mv	a0,a5	#, tmp137
	call	atoi@plt	#
	mv	a5,a0	# tmp138,
	sw	a5,-52(s0)	# tmp138, yy
# eval/problem125//code.c:25:     if (mm < 1 || mm > 12) return 0;
	lw	a5,-60(s0)		# tmp140, mm
	sext.w	a5,a5	# tmp141, tmp139
	ble	a5,zero,.L11	#, tmp141,,
# eval/problem125//code.c:25:     if (mm < 1 || mm > 12) return 0;
	lw	a5,-60(s0)		# tmp143, mm
	sext.w	a4,a5	# tmp144, tmp142
	li	a5,12		# tmp145,
	ble	a4,a5,.L12	#, tmp144, tmp145,
.L11:
# eval/problem125//code.c:25:     if (mm < 1 || mm > 12) return 0;
	li	a5,0		# _27,
	j	.L18		#
.L12:
# eval/problem125//code.c:26:     if (dd < 1 || dd > 31) return 0;
	lw	a5,-56(s0)		# tmp147, dd
	sext.w	a5,a5	# tmp148, tmp146
	ble	a5,zero,.L13	#, tmp148,,
# eval/problem125//code.c:26:     if (dd < 1 || dd > 31) return 0;
	lw	a5,-56(s0)		# tmp150, dd
	sext.w	a4,a5	# tmp151, tmp149
	li	a5,31		# tmp152,
	ble	a4,a5,.L14	#, tmp151, tmp152,
.L13:
# eval/problem125//code.c:26:     if (dd < 1 || dd > 31) return 0;
	li	a5,0		# _27,
	j	.L18		#
.L14:
# eval/problem125//code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	lw	a5,-60(s0)		# tmp154, mm
	sext.w	a4,a5	# tmp155, tmp153
	li	a5,4		# tmp156,
	beq	a4,a5,.L15	#, tmp155, tmp156,
# eval/problem125//code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	lw	a5,-60(s0)		# tmp158, mm
	sext.w	a4,a5	# tmp159, tmp157
	li	a5,6		# tmp160,
	beq	a4,a5,.L15	#, tmp159, tmp160,
# eval/problem125//code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	lw	a5,-60(s0)		# tmp162, mm
	sext.w	a4,a5	# tmp163, tmp161
	li	a5,9		# tmp164,
	beq	a4,a5,.L15	#, tmp163, tmp164,
# eval/problem125//code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	lw	a5,-60(s0)		# tmp166, mm
	sext.w	a4,a5	# tmp167, tmp165
	li	a5,11		# tmp168,
	bne	a4,a5,.L16	#, tmp167, tmp168,
.L15:
# eval/problem125//code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	lw	a5,-56(s0)		# tmp170, dd
	sext.w	a4,a5	# tmp171, tmp169
	li	a5,31		# tmp172,
	bne	a4,a5,.L16	#, tmp171, tmp172,
# eval/problem125//code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	li	a5,0		# _27,
	j	.L18		#
.L16:
# eval/problem125//code.c:28:     if (mm == 2 && dd > 29) return 0;
	lw	a5,-60(s0)		# tmp174, mm
	sext.w	a4,a5	# tmp175, tmp173
	li	a5,2		# tmp176,
	bne	a4,a5,.L17	#, tmp175, tmp176,
# eval/problem125//code.c:28:     if (mm == 2 && dd > 29) return 0;
	lw	a5,-56(s0)		# tmp178, dd
	sext.w	a4,a5	# tmp179, tmp177
	li	a5,29		# tmp180,
	ble	a4,a5,.L17	#, tmp179, tmp180,
# eval/problem125//code.c:28:     if (mm == 2 && dd > 29) return 0;
	li	a5,0		# _27,
	j	.L18		#
.L17:
# eval/problem125//code.c:30:     return 1;
	li	a5,1		# _27,
.L18:
# eval/problem125//code.c:31: }
	mv	a4,a5	# <retval>, _27
	la	a5,__stack_chk_guard		# tmp182,
	ld	a3, -24(s0)	# tmp185, D.2635
	ld	a5, 0(a5)	# tmp183, __stack_chk_guard
	xor	a5, a3, a5	# tmp183, tmp185
	li	a3, 0	# tmp185
	beq	a5,zero,.L19	#, tmp183,,
# eval/problem125//code.c:31: }
	call	__stack_chk_fail@plt	#
.L19:
	mv	a0,a4	#, <retval>
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
