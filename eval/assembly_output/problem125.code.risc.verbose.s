	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -O0 -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)	# date, date
# code.c:5: int func0(const char *date) {
	la	a5,__stack_chk_guard		# tmp161,
	ld	a4, 0(a5)	# tmp246, __stack_chk_guard
	sd	a4, -24(s0)	# tmp246, D.3487
	li	a4, 0	# tmp246
# code.c:8:     if (strlen(date) != 10) return 0;
	ld	a0,-72(s0)		#, date
	call	strlen@plt	#
	mv	a4,a0	# _1,
# code.c:8:     if (strlen(date) != 10) return 0;
	li	a5,10		# tmp162,
	beq	a4,a5,.L2	#, _1, tmp162,
# code.c:8:     if (strlen(date) != 10) return 0;
	li	a5,0		# _27,
# code.c:8:     if (strlen(date) != 10) return 0;
	j	.L18		#
.L2:
# code.c:9:     for (int i = 0; i < 10; i++) {
	sw	zero,-64(s0)	#, i
# code.c:9:     for (int i = 0; i < 10; i++) {
	j	.L4		#
.L10:
# code.c:10:         if (i == 2 || i == 5) {
	lw	a5,-64(s0)		# tmp164, i
	sext.w	a4,a5	# tmp165, tmp163
	li	a5,2		# tmp166,
	beq	a4,a5,.L5	#, tmp165, tmp166,
# code.c:10:         if (i == 2 || i == 5) {
	lw	a5,-64(s0)		# tmp168, i
	sext.w	a4,a5	# tmp169, tmp167
	li	a5,5		# tmp170,
	bne	a4,a5,.L6	#, tmp169, tmp170,
.L5:
# code.c:11:             if (date[i] != '-') return 0;
	lw	a5,-64(s0)		# _2, i
	ld	a4,-72(s0)		# tmp171, date
	add	a5,a4,a5	# _2, _3, tmp171
	lbu	a5,0(a5)	# _4, *_3
# code.c:11:             if (date[i] != '-') return 0;
	mv	a4,a5	# tmp172, _4
	li	a5,45		# tmp173,
	beq	a4,a5,.L8	#, tmp172, tmp173,
# code.c:11:             if (date[i] != '-') return 0;
	li	a5,0		# _27,
# code.c:11:             if (date[i] != '-') return 0;
	j	.L18		#
.L6:
# code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	lw	a5,-64(s0)		# _5, i
	ld	a4,-72(s0)		# tmp174, date
	add	a5,a4,a5	# _5, _6, tmp174
	lbu	a5,0(a5)	# _7, *_6
# code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	mv	a4,a5	# tmp175, _7
	li	a5,47		# tmp176,
	bleu	a4,a5,.L9	#, tmp175, tmp176,
# code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	lw	a5,-64(s0)		# _8, i
	ld	a4,-72(s0)		# tmp177, date
	add	a5,a4,a5	# _8, _9, tmp177
	lbu	a5,0(a5)	# _10, *_9
# code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	mv	a4,a5	# tmp178, _10
	li	a5,57		# tmp179,
	bleu	a4,a5,.L8	#, tmp178, tmp179,
.L9:
# code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	li	a5,0		# _27,
# code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	j	.L18		#
.L8:
# code.c:9:     for (int i = 0; i < 10; i++) {
	lw	a5,-64(s0)		# tmp182, i
	addiw	a5,a5,1	#, tmp180, tmp181
	sw	a5,-64(s0)	# tmp180, i
.L4:
# code.c:9:     for (int i = 0; i < 10; i++) {
	lw	a5,-64(s0)		# tmp184, i
	sext.w	a4,a5	# tmp185, tmp183
	li	a5,9		# tmp186,
	ble	a4,a5,.L10	#, tmp185, tmp186,
# code.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	ld	a5,-72(s0)		# tmp187, date
	lbu	a5,0(a5)	# _11, *date_30(D)
# code.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	sb	a5,-48(s0)	# _11, str_month[0]
# code.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	ld	a5,-72(s0)		# tmp188, date
	addi	a5,a5,1	#, _12, tmp188
	lbu	a5,0(a5)	# _13, *_12
# code.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	sb	a5,-47(s0)	# _13, str_month[1]
	sb	zero,-46(s0)	#, str_month[2]
# code.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	ld	a5,-72(s0)		# tmp189, date
	addi	a5,a5,3	#, _14, tmp189
	lbu	a5,0(a5)	# _15, *_14
# code.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	sb	a5,-40(s0)	# _15, str_day[0]
# code.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	ld	a5,-72(s0)		# tmp190, date
	addi	a5,a5,4	#, _16, tmp190
	lbu	a5,0(a5)	# _17, *_16
# code.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	sb	a5,-39(s0)	# _17, str_day[1]
	sb	zero,-38(s0)	#, str_day[2]
# code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	ld	a5,-72(s0)		# tmp191, date
	addi	a5,a5,6	#, _18, tmp191
	lbu	a5,0(a5)	# _19, *_18
# code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	sb	a5,-32(s0)	# _19, str_year[0]
# code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	ld	a5,-72(s0)		# tmp192, date
	addi	a5,a5,7	#, _20, tmp192
	lbu	a5,0(a5)	# _21, *_20
# code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	sb	a5,-31(s0)	# _21, str_year[1]
# code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	ld	a5,-72(s0)		# tmp193, date
	addi	a5,a5,8	#, _22, tmp193
	lbu	a5,0(a5)	# _23, *_22
# code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	sb	a5,-30(s0)	# _23, str_year[2]
# code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	ld	a5,-72(s0)		# tmp194, date
	addi	a5,a5,9	#, _24, tmp194
	lbu	a5,0(a5)	# _25, *_24
# code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	sb	a5,-29(s0)	# _25, str_year[3]
	sb	zero,-28(s0)	#, str_year[4]
# code.c:21:     mm = atoi(str_month);
	addi	a5,s0,-48	#, tmp195,
	mv	a0,a5	#, tmp195
	call	atoi@plt	#
	mv	a5,a0	# tmp196,
	sw	a5,-60(s0)	# tmp196, mm
# code.c:22:     dd = atoi(str_day);
	addi	a5,s0,-40	#, tmp197,
	mv	a0,a5	#, tmp197
	call	atoi@plt	#
	mv	a5,a0	# tmp198,
	sw	a5,-56(s0)	# tmp198, dd
# code.c:23:     yy = atoi(str_year);
	addi	a5,s0,-32	#, tmp199,
	mv	a0,a5	#, tmp199
	call	atoi@plt	#
	mv	a5,a0	# tmp200,
	sw	a5,-52(s0)	# tmp200, yy
# code.c:25:     if (mm < 1 || mm > 12) return 0;
	lw	a5,-60(s0)		# tmp202, mm
	sext.w	a5,a5	# tmp203, tmp201
	ble	a5,zero,.L11	#, tmp203,,
# code.c:25:     if (mm < 1 || mm > 12) return 0;
	lw	a5,-60(s0)		# tmp205, mm
	sext.w	a4,a5	# tmp206, tmp204
	li	a5,12		# tmp207,
	ble	a4,a5,.L12	#, tmp206, tmp207,
.L11:
# code.c:25:     if (mm < 1 || mm > 12) return 0;
	li	a5,0		# _27,
# code.c:25:     if (mm < 1 || mm > 12) return 0;
	j	.L18		#
.L12:
# code.c:26:     if (dd < 1 || dd > 31) return 0;
	lw	a5,-56(s0)		# tmp209, dd
	sext.w	a5,a5	# tmp210, tmp208
	ble	a5,zero,.L13	#, tmp210,,
# code.c:26:     if (dd < 1 || dd > 31) return 0;
	lw	a5,-56(s0)		# tmp212, dd
	sext.w	a4,a5	# tmp213, tmp211
	li	a5,31		# tmp214,
	ble	a4,a5,.L14	#, tmp213, tmp214,
.L13:
# code.c:26:     if (dd < 1 || dd > 31) return 0;
	li	a5,0		# _27,
# code.c:26:     if (dd < 1 || dd > 31) return 0;
	j	.L18		#
.L14:
# code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	lw	a5,-60(s0)		# tmp216, mm
	sext.w	a4,a5	# tmp217, tmp215
	li	a5,4		# tmp218,
	beq	a4,a5,.L15	#, tmp217, tmp218,
# code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	lw	a5,-60(s0)		# tmp220, mm
	sext.w	a4,a5	# tmp221, tmp219
	li	a5,6		# tmp222,
	beq	a4,a5,.L15	#, tmp221, tmp222,
# code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	lw	a5,-60(s0)		# tmp224, mm
	sext.w	a4,a5	# tmp225, tmp223
	li	a5,9		# tmp226,
	beq	a4,a5,.L15	#, tmp225, tmp226,
# code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	lw	a5,-60(s0)		# tmp228, mm
	sext.w	a4,a5	# tmp229, tmp227
	li	a5,11		# tmp230,
	bne	a4,a5,.L16	#, tmp229, tmp230,
.L15:
# code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	lw	a5,-56(s0)		# tmp232, dd
	sext.w	a4,a5	# tmp233, tmp231
	li	a5,31		# tmp234,
	bne	a4,a5,.L16	#, tmp233, tmp234,
# code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	li	a5,0		# _27,
# code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	j	.L18		#
.L16:
# code.c:28:     if (mm == 2 && dd > 29) return 0;
	lw	a5,-60(s0)		# tmp236, mm
	sext.w	a4,a5	# tmp237, tmp235
	li	a5,2		# tmp238,
	bne	a4,a5,.L17	#, tmp237, tmp238,
# code.c:28:     if (mm == 2 && dd > 29) return 0;
	lw	a5,-56(s0)		# tmp240, dd
	sext.w	a4,a5	# tmp241, tmp239
	li	a5,29		# tmp242,
	ble	a4,a5,.L17	#, tmp241, tmp242,
# code.c:28:     if (mm == 2 && dd > 29) return 0;
	li	a5,0		# _27,
# code.c:28:     if (mm == 2 && dd > 29) return 0;
	j	.L18		#
.L17:
# code.c:30:     return 1;
	li	a5,1		# _27,
.L18:
# code.c:31: }
	mv	a4,a5	# <retval>, _27
	la	a5,__stack_chk_guard		# tmp244,
	ld	a3, -24(s0)	# tmp247, D.3487
	ld	a5, 0(a5)	# tmp245, __stack_chk_guard
	xor	a5, a3, a5	# tmp245, tmp247
	li	a3, 0	# tmp247
	beq	a5,zero,.L19	#, tmp245,,
	call	__stack_chk_fail@plt	#
.L19:
	mv	a0,a4	#, <retval>
	ld	ra,72(sp)		#,
	.cfi_restore 1
	ld	s0,64(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
