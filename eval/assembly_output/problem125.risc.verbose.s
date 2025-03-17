	.file	"problem125.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
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
# problem125.c:5: int func0(const char *date) {
	la	a5,__stack_chk_guard		# tmp161,
	ld	a4, 0(a5)	# tmp246, __stack_chk_guard
	sd	a4, -24(s0)	# tmp246, D.3558
	li	a4, 0	# tmp246
# problem125.c:8:     if (strlen(date) != 10) return 0;
	ld	a0,-72(s0)		#, date
	call	strlen@plt	#
	mv	a4,a0	# _1,
# problem125.c:8:     if (strlen(date) != 10) return 0;
	li	a5,10		# tmp162,
	beq	a4,a5,.L2	#, _1, tmp162,
# problem125.c:8:     if (strlen(date) != 10) return 0;
	li	a5,0		# _27,
# problem125.c:8:     if (strlen(date) != 10) return 0;
	j	.L18		#
.L2:
# problem125.c:9:     for (int i = 0; i < 10; i++) {
	sw	zero,-64(s0)	#, i
# problem125.c:9:     for (int i = 0; i < 10; i++) {
	j	.L4		#
.L10:
# problem125.c:10:         if (i == 2 || i == 5) {
	lw	a5,-64(s0)		# tmp164, i
	sext.w	a4,a5	# tmp165, tmp163
	li	a5,2		# tmp166,
	beq	a4,a5,.L5	#, tmp165, tmp166,
# problem125.c:10:         if (i == 2 || i == 5) {
	lw	a5,-64(s0)		# tmp168, i
	sext.w	a4,a5	# tmp169, tmp167
	li	a5,5		# tmp170,
	bne	a4,a5,.L6	#, tmp169, tmp170,
.L5:
# problem125.c:11:             if (date[i] != '-') return 0;
	lw	a5,-64(s0)		# _2, i
	ld	a4,-72(s0)		# tmp171, date
	add	a5,a4,a5	# _2, _3, tmp171
	lbu	a5,0(a5)	# _4, *_3
# problem125.c:11:             if (date[i] != '-') return 0;
	mv	a4,a5	# tmp172, _4
	li	a5,45		# tmp173,
	beq	a4,a5,.L8	#, tmp172, tmp173,
# problem125.c:11:             if (date[i] != '-') return 0;
	li	a5,0		# _27,
# problem125.c:11:             if (date[i] != '-') return 0;
	j	.L18		#
.L6:
# problem125.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	lw	a5,-64(s0)		# _5, i
	ld	a4,-72(s0)		# tmp174, date
	add	a5,a4,a5	# _5, _6, tmp174
	lbu	a5,0(a5)	# _7, *_6
# problem125.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	mv	a4,a5	# tmp175, _7
	li	a5,47		# tmp176,
	bleu	a4,a5,.L9	#, tmp175, tmp176,
# problem125.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	lw	a5,-64(s0)		# _8, i
	ld	a4,-72(s0)		# tmp177, date
	add	a5,a4,a5	# _8, _9, tmp177
	lbu	a5,0(a5)	# _10, *_9
# problem125.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	mv	a4,a5	# tmp178, _10
	li	a5,57		# tmp179,
	bleu	a4,a5,.L8	#, tmp178, tmp179,
.L9:
# problem125.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	li	a5,0		# _27,
# problem125.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	j	.L18		#
.L8:
# problem125.c:9:     for (int i = 0; i < 10; i++) {
	lw	a5,-64(s0)		# tmp182, i
	addiw	a5,a5,1	#, tmp180, tmp181
	sw	a5,-64(s0)	# tmp180, i
.L4:
# problem125.c:9:     for (int i = 0; i < 10; i++) {
	lw	a5,-64(s0)		# tmp184, i
	sext.w	a4,a5	# tmp185, tmp183
	li	a5,9		# tmp186,
	ble	a4,a5,.L10	#, tmp185, tmp186,
# problem125.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	ld	a5,-72(s0)		# tmp187, date
	lbu	a5,0(a5)	# _11, *date_30(D)
# problem125.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	sb	a5,-48(s0)	# _11, str_month[0]
# problem125.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	ld	a5,-72(s0)		# tmp188, date
	addi	a5,a5,1	#, _12, tmp188
	lbu	a5,0(a5)	# _13, *_12
# problem125.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	sb	a5,-47(s0)	# _13, str_month[1]
	sb	zero,-46(s0)	#, str_month[2]
# problem125.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	ld	a5,-72(s0)		# tmp189, date
	addi	a5,a5,3	#, _14, tmp189
	lbu	a5,0(a5)	# _15, *_14
# problem125.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	sb	a5,-40(s0)	# _15, str_day[0]
# problem125.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	ld	a5,-72(s0)		# tmp190, date
	addi	a5,a5,4	#, _16, tmp190
	lbu	a5,0(a5)	# _17, *_16
# problem125.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	sb	a5,-39(s0)	# _17, str_day[1]
	sb	zero,-38(s0)	#, str_day[2]
# problem125.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	ld	a5,-72(s0)		# tmp191, date
	addi	a5,a5,6	#, _18, tmp191
	lbu	a5,0(a5)	# _19, *_18
# problem125.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	sb	a5,-32(s0)	# _19, str_year[0]
# problem125.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	ld	a5,-72(s0)		# tmp192, date
	addi	a5,a5,7	#, _20, tmp192
	lbu	a5,0(a5)	# _21, *_20
# problem125.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	sb	a5,-31(s0)	# _21, str_year[1]
# problem125.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	ld	a5,-72(s0)		# tmp193, date
	addi	a5,a5,8	#, _22, tmp193
	lbu	a5,0(a5)	# _23, *_22
# problem125.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	sb	a5,-30(s0)	# _23, str_year[2]
# problem125.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	ld	a5,-72(s0)		# tmp194, date
	addi	a5,a5,9	#, _24, tmp194
	lbu	a5,0(a5)	# _25, *_24
# problem125.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	sb	a5,-29(s0)	# _25, str_year[3]
	sb	zero,-28(s0)	#, str_year[4]
# problem125.c:21:     mm = atoi(str_month);
	addi	a5,s0,-48	#, tmp195,
	mv	a0,a5	#, tmp195
	call	atoi@plt	#
	mv	a5,a0	# tmp196,
	sw	a5,-60(s0)	# tmp196, mm
# problem125.c:22:     dd = atoi(str_day);
	addi	a5,s0,-40	#, tmp197,
	mv	a0,a5	#, tmp197
	call	atoi@plt	#
	mv	a5,a0	# tmp198,
	sw	a5,-56(s0)	# tmp198, dd
# problem125.c:23:     yy = atoi(str_year);
	addi	a5,s0,-32	#, tmp199,
	mv	a0,a5	#, tmp199
	call	atoi@plt	#
	mv	a5,a0	# tmp200,
	sw	a5,-52(s0)	# tmp200, yy
# problem125.c:25:     if (mm < 1 || mm > 12) return 0;
	lw	a5,-60(s0)		# tmp202, mm
	sext.w	a5,a5	# tmp203, tmp201
	ble	a5,zero,.L11	#, tmp203,,
# problem125.c:25:     if (mm < 1 || mm > 12) return 0;
	lw	a5,-60(s0)		# tmp205, mm
	sext.w	a4,a5	# tmp206, tmp204
	li	a5,12		# tmp207,
	ble	a4,a5,.L12	#, tmp206, tmp207,
.L11:
# problem125.c:25:     if (mm < 1 || mm > 12) return 0;
	li	a5,0		# _27,
# problem125.c:25:     if (mm < 1 || mm > 12) return 0;
	j	.L18		#
.L12:
# problem125.c:26:     if (dd < 1 || dd > 31) return 0;
	lw	a5,-56(s0)		# tmp209, dd
	sext.w	a5,a5	# tmp210, tmp208
	ble	a5,zero,.L13	#, tmp210,,
# problem125.c:26:     if (dd < 1 || dd > 31) return 0;
	lw	a5,-56(s0)		# tmp212, dd
	sext.w	a4,a5	# tmp213, tmp211
	li	a5,31		# tmp214,
	ble	a4,a5,.L14	#, tmp213, tmp214,
.L13:
# problem125.c:26:     if (dd < 1 || dd > 31) return 0;
	li	a5,0		# _27,
# problem125.c:26:     if (dd < 1 || dd > 31) return 0;
	j	.L18		#
.L14:
# problem125.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	lw	a5,-60(s0)		# tmp216, mm
	sext.w	a4,a5	# tmp217, tmp215
	li	a5,4		# tmp218,
	beq	a4,a5,.L15	#, tmp217, tmp218,
# problem125.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	lw	a5,-60(s0)		# tmp220, mm
	sext.w	a4,a5	# tmp221, tmp219
	li	a5,6		# tmp222,
	beq	a4,a5,.L15	#, tmp221, tmp222,
# problem125.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	lw	a5,-60(s0)		# tmp224, mm
	sext.w	a4,a5	# tmp225, tmp223
	li	a5,9		# tmp226,
	beq	a4,a5,.L15	#, tmp225, tmp226,
# problem125.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	lw	a5,-60(s0)		# tmp228, mm
	sext.w	a4,a5	# tmp229, tmp227
	li	a5,11		# tmp230,
	bne	a4,a5,.L16	#, tmp229, tmp230,
.L15:
# problem125.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	lw	a5,-56(s0)		# tmp232, dd
	sext.w	a4,a5	# tmp233, tmp231
	li	a5,31		# tmp234,
	bne	a4,a5,.L16	#, tmp233, tmp234,
# problem125.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	li	a5,0		# _27,
# problem125.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	j	.L18		#
.L16:
# problem125.c:28:     if (mm == 2 && dd > 29) return 0;
	lw	a5,-60(s0)		# tmp236, mm
	sext.w	a4,a5	# tmp237, tmp235
	li	a5,2		# tmp238,
	bne	a4,a5,.L17	#, tmp237, tmp238,
# problem125.c:28:     if (mm == 2 && dd > 29) return 0;
	lw	a5,-56(s0)		# tmp240, dd
	sext.w	a4,a5	# tmp241, tmp239
	li	a5,29		# tmp242,
	ble	a4,a5,.L17	#, tmp241, tmp242,
# problem125.c:28:     if (mm == 2 && dd > 29) return 0;
	li	a5,0		# _27,
# problem125.c:28:     if (mm == 2 && dd > 29) return 0;
	j	.L18		#
.L17:
# problem125.c:30:     return 1;
	li	a5,1		# _27,
.L18:
# problem125.c:31: }
	mv	a4,a5	# <retval>, _27
	la	a5,__stack_chk_guard		# tmp244,
	ld	a3, -24(s0)	# tmp247, D.3558
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
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
# problem125.c:38:     assert(func0("03-11-2000") == 1);
	lla	a0,.LC0	#,
	call	func0		#
	mv	a5,a0	# tmp152,
# problem125.c:38:     assert(func0("03-11-2000") == 1);
	mv	a4,a5	# tmp153, _1
	li	a5,1		# tmp154,
	beq	a4,a5,.L21	#, tmp153, tmp154,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L21:
# problem125.c:39:     assert(func0("15-01-2012") == 0);
	lla	a0,.LC3	#,
	call	func0		#
	mv	a5,a0	# tmp155,
# problem125.c:39:     assert(func0("15-01-2012") == 0);
	beq	a5,zero,.L22	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,39		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L22:
# problem125.c:40:     assert(func0("04-0-2040") == 0);
	lla	a0,.LC5	#,
	call	func0		#
	mv	a5,a0	# tmp156,
# problem125.c:40:     assert(func0("04-0-2040") == 0);
	beq	a5,zero,.L23	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC1	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L23:
# problem125.c:41:     assert(func0("06-04-2020") == 1);
	lla	a0,.LC7	#,
	call	func0		#
	mv	a5,a0	# tmp157,
# problem125.c:41:     assert(func0("06-04-2020") == 1);
	mv	a4,a5	# tmp158, _4
	li	a5,1		# tmp159,
	beq	a4,a5,.L24	#, tmp158, tmp159,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC1	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L24:
# problem125.c:42:     assert(func0("01-01-2007") == 1);
	lla	a0,.LC9	#,
	call	func0		#
	mv	a5,a0	# tmp160,
# problem125.c:42:     assert(func0("01-01-2007") == 1);
	mv	a4,a5	# tmp161, _5
	li	a5,1		# tmp162,
	beq	a4,a5,.L25	#, tmp161, tmp162,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,42		#,
	lla	a1,.LC1	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L25:
# problem125.c:43:     assert(func0("03-32-2011") == 0);
	lla	a0,.LC11	#,
	call	func0		#
	mv	a5,a0	# tmp163,
# problem125.c:43:     assert(func0("03-32-2011") == 0);
	beq	a5,zero,.L26	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,43		#,
	lla	a1,.LC1	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L26:
# problem125.c:44:     assert(func0("") == 0);
	lla	a0,.LC13	#,
	call	func0		#
	mv	a5,a0	# tmp164,
# problem125.c:44:     assert(func0("") == 0);
	beq	a5,zero,.L27	#, _7,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,44		#,
	lla	a1,.LC1	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L27:
# problem125.c:45:     assert(func0("04-31-3000") == 0);
	lla	a0,.LC15	#,
	call	func0		#
	mv	a5,a0	# tmp165,
# problem125.c:45:     assert(func0("04-31-3000") == 0);
	beq	a5,zero,.L28	#, _8,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC1	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L28:
# problem125.c:46:     assert(func0("06-06-2005") == 1);
	lla	a0,.LC17	#,
	call	func0		#
	mv	a5,a0	# tmp166,
# problem125.c:46:     assert(func0("06-06-2005") == 1);
	mv	a4,a5	# tmp167, _9
	li	a5,1		# tmp168,
	beq	a4,a5,.L29	#, tmp167, tmp168,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,46		#,
	lla	a1,.LC1	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L29:
# problem125.c:47:     assert(func0("21-31-2000") == 0);
	lla	a0,.LC19	#,
	call	func0		#
	mv	a5,a0	# tmp169,
# problem125.c:47:     assert(func0("21-31-2000") == 0);
	beq	a5,zero,.L30	#, _10,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,47		#,
	lla	a1,.LC1	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L30:
# problem125.c:48:     assert(func0("04-12-2003") == 1);
	lla	a0,.LC21	#,
	call	func0		#
	mv	a5,a0	# tmp170,
# problem125.c:48:     assert(func0("04-12-2003") == 1);
	mv	a4,a5	# tmp171, _11
	li	a5,1		# tmp172,
	beq	a4,a5,.L31	#, tmp171, tmp172,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,48		#,
	lla	a1,.LC1	#,
	lla	a0,.LC22	#,
	call	__assert_fail@plt	#
.L31:
# problem125.c:49:     assert(func0("04122003") == 0);
	lla	a0,.LC23	#,
	call	func0		#
	mv	a5,a0	# tmp173,
# problem125.c:49:     assert(func0("04122003") == 0);
	beq	a5,zero,.L32	#, _12,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,49		#,
	lla	a1,.LC1	#,
	lla	a0,.LC24	#,
	call	__assert_fail@plt	#
.L32:
# problem125.c:50:     assert(func0("20030412") == 0);
	lla	a0,.LC25	#,
	call	func0		#
	mv	a5,a0	# tmp174,
# problem125.c:50:     assert(func0("20030412") == 0);
	beq	a5,zero,.L33	#, _13,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,50		#,
	lla	a1,.LC1	#,
	lla	a0,.LC26	#,
	call	__assert_fail@plt	#
.L33:
# problem125.c:51:     assert(func0("2003-04") == 0);
	lla	a0,.LC27	#,
	call	func0		#
	mv	a5,a0	# tmp175,
# problem125.c:51:     assert(func0("2003-04") == 0);
	beq	a5,zero,.L34	#, _14,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,51		#,
	lla	a1,.LC1	#,
	lla	a0,.LC28	#,
	call	__assert_fail@plt	#
.L34:
# problem125.c:52:     assert(func0("2003-04-12") == 0);
	lla	a0,.LC29	#,
	call	func0		#
	mv	a5,a0	# tmp176,
# problem125.c:52:     assert(func0("2003-04-12") == 0);
	beq	a5,zero,.L35	#, _15,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,52		#,
	lla	a1,.LC1	#,
	lla	a0,.LC30	#,
	call	__assert_fail@plt	#
.L35:
# problem125.c:53:     assert(func0("04-2003") == 0);
	lla	a0,.LC31	#,
	call	func0		#
	mv	a5,a0	# tmp177,
# problem125.c:53:     assert(func0("04-2003") == 0);
	beq	a5,zero,.L36	#, _16,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,53		#,
	lla	a1,.LC1	#,
	lla	a0,.LC32	#,
	call	__assert_fail@plt	#
.L36:
# problem125.c:55:     return 0;
	li	a5,0		# _50,
# problem125.c:56: }
	mv	a0,a5	#, <retval>
	ld	ra,8(sp)		#,
	.cfi_restore 1
	ld	s0,0(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
