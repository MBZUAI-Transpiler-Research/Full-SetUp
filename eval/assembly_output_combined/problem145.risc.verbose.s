	.file	"problem145.c"
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
	addi	sp,sp,-272	#,,
	.cfi_def_cfa_offset 272
	sd	ra,264(sp)	#,
	sd	s0,256(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,272	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-264(s0)	# x, x
	sd	a1,-272(s0)	# n, n
# problem145.c:4: int func0(const char* x, const char* n){
	la	a5,__stack_chk_guard		# tmp163,
	ld	a4, 0(a5)	# tmp240, __stack_chk_guard
	sd	a4, -24(s0)	# tmp240, D.3328
	li	a4, 0	# tmp240
# problem145.c:8:     for (i = 0; x[i] != '/'; i++) {
	sw	zero,-256(s0)	#, i
# problem145.c:8:     for (i = 0; x[i] != '/'; i++) {
	j	.L2		#
.L3:
# problem145.c:9:         num[i] = x[i];
	lw	a5,-256(s0)		# _1, i
	ld	a4,-264(s0)		# tmp164, x
	add	a5,a4,a5	# _1, _2, tmp164
	lbu	a4,0(a5)	# _3, *_2
# problem145.c:9:         num[i] = x[i];
	lw	a5,-256(s0)		# tmp165, i
	addi	a5,a5,-16	#, tmp244, tmp165
	add	a5,a5,s0	#, tmp166, tmp244
	sb	a4,-216(a5)	# _3, num[i_28]
# problem145.c:8:     for (i = 0; x[i] != '/'; i++) {
	lw	a5,-256(s0)		# tmp169, i
	addiw	a5,a5,1	#, tmp167, tmp168
	sw	a5,-256(s0)	# tmp167, i
.L2:
# problem145.c:8:     for (i = 0; x[i] != '/'; i++) {
	lw	a5,-256(s0)		# _4, i
	ld	a4,-264(s0)		# tmp170, x
	add	a5,a4,a5	# _4, _5, tmp170
	lbu	a5,0(a5)	# _6, *_5
# problem145.c:8:     for (i = 0; x[i] != '/'; i++) {
	mv	a4,a5	# tmp171, _6
	li	a5,47		# tmp172,
	bne	a4,a5,.L3	#, tmp171, tmp172,
# problem145.c:11:     num[i] = '\0';
	lw	a5,-256(s0)		# tmp173, i
	addi	a5,a5,-16	#, tmp245, tmp173
	add	a5,a5,s0	#, tmp174, tmp245
	sb	zero,-216(a5)	#, num[i_28]
# problem145.c:12:     a = atoi(num);
	addi	a5,s0,-232	#, tmp175,
	mv	a0,a5	#, tmp175
	call	atoi@plt	#
	mv	a5,a0	# tmp176,
	sw	a5,-248(s0)	# tmp176, a
# problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	sw	zero,-252(s0)	#, j
# problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	lw	a5,-256(s0)		# tmp179, i
	addiw	a5,a5,1	#, tmp177, tmp178
	sw	a5,-256(s0)	# tmp177, i
# problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	j	.L4		#
.L5:
# problem145.c:15:         den[j] = x[i];
	lw	a5,-256(s0)		# _7, i
	ld	a4,-264(s0)		# tmp180, x
	add	a5,a4,a5	# _7, _8, tmp180
	lbu	a4,0(a5)	# _9, *_8
# problem145.c:15:         den[j] = x[i];
	lw	a5,-252(s0)		# tmp181, j
	addi	a5,a5,-16	#, tmp246, tmp181
	add	a5,a5,s0	#, tmp182, tmp246
	sb	a4,-112(a5)	# _9, den[j_32]
# problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	lw	a5,-256(s0)		# tmp185, i
	addiw	a5,a5,1	#, tmp183, tmp184
	sw	a5,-256(s0)	# tmp183, i
# problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	lw	a5,-252(s0)		# tmp188, j
	addiw	a5,a5,1	#, tmp186, tmp187
	sw	a5,-252(s0)	# tmp186, j
.L4:
# problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	lw	a5,-256(s0)		# _10, i
	ld	a4,-264(s0)		# tmp189, x
	add	a5,a4,a5	# _10, _11, tmp189
	lbu	a5,0(a5)	# _12, *_11
# problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	bne	a5,zero,.L5	#, _12,,
# problem145.c:17:     den[j] = '\0';
	lw	a5,-252(s0)		# tmp190, j
	addi	a5,a5,-16	#, tmp247, tmp190
	add	a5,a5,s0	#, tmp191, tmp247
	sb	zero,-112(a5)	#, den[j_32]
# problem145.c:18:     b = atoi(den);
	addi	a5,s0,-128	#, tmp192,
	mv	a0,a5	#, tmp192
	call	atoi@plt	#
	mv	a5,a0	# tmp193,
	sw	a5,-244(s0)	# tmp193, b
# problem145.c:20:     for (i = 0; n[i] != '/'; i++) {
	sw	zero,-256(s0)	#, i
# problem145.c:20:     for (i = 0; n[i] != '/'; i++) {
	j	.L6		#
.L7:
# problem145.c:21:         num[i] = n[i];
	lw	a5,-256(s0)		# _13, i
	ld	a4,-272(s0)		# tmp194, n
	add	a5,a4,a5	# _13, _14, tmp194
	lbu	a4,0(a5)	# _15, *_14
# problem145.c:21:         num[i] = n[i];
	lw	a5,-256(s0)		# tmp195, i
	addi	a5,a5,-16	#, tmp248, tmp195
	add	a5,a5,s0	#, tmp196, tmp248
	sb	a4,-216(a5)	# _15, num[i_30]
# problem145.c:20:     for (i = 0; n[i] != '/'; i++) {
	lw	a5,-256(s0)		# tmp199, i
	addiw	a5,a5,1	#, tmp197, tmp198
	sw	a5,-256(s0)	# tmp197, i
.L6:
# problem145.c:20:     for (i = 0; n[i] != '/'; i++) {
	lw	a5,-256(s0)		# _16, i
	ld	a4,-272(s0)		# tmp200, n
	add	a5,a4,a5	# _16, _17, tmp200
	lbu	a5,0(a5)	# _18, *_17
# problem145.c:20:     for (i = 0; n[i] != '/'; i++) {
	mv	a4,a5	# tmp201, _18
	li	a5,47		# tmp202,
	bne	a4,a5,.L7	#, tmp201, tmp202,
# problem145.c:23:     num[i] = '\0';
	lw	a5,-256(s0)		# tmp203, i
	addi	a5,a5,-16	#, tmp249, tmp203
	add	a5,a5,s0	#, tmp204, tmp249
	sb	zero,-216(a5)	#, num[i_30]
# problem145.c:24:     c = atoi(num);
	addi	a5,s0,-232	#, tmp205,
	mv	a0,a5	#, tmp205
	call	atoi@plt	#
	mv	a5,a0	# tmp206,
	sw	a5,-240(s0)	# tmp206, c
# problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	sw	zero,-252(s0)	#, j
# problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	lw	a5,-256(s0)		# tmp209, i
	addiw	a5,a5,1	#, tmp207, tmp208
	sw	a5,-256(s0)	# tmp207, i
# problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	j	.L8		#
.L9:
# problem145.c:27:         den[j] = n[i];
	lw	a5,-256(s0)		# _19, i
	ld	a4,-272(s0)		# tmp210, n
	add	a5,a4,a5	# _19, _20, tmp210
	lbu	a4,0(a5)	# _21, *_20
# problem145.c:27:         den[j] = n[i];
	lw	a5,-252(s0)		# tmp211, j
	addi	a5,a5,-16	#, tmp250, tmp211
	add	a5,a5,s0	#, tmp212, tmp250
	sb	a4,-112(a5)	# _21, den[j_33]
# problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	lw	a5,-256(s0)		# tmp215, i
	addiw	a5,a5,1	#, tmp213, tmp214
	sw	a5,-256(s0)	# tmp213, i
# problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	lw	a5,-252(s0)		# tmp218, j
	addiw	a5,a5,1	#, tmp216, tmp217
	sw	a5,-252(s0)	# tmp216, j
.L8:
# problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	lw	a5,-256(s0)		# _22, i
	ld	a4,-272(s0)		# tmp219, n
	add	a5,a4,a5	# _22, _23, tmp219
	lbu	a5,0(a5)	# _24, *_23
# problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	bne	a5,zero,.L9	#, _24,,
# problem145.c:29:     den[j] = '\0';
	lw	a5,-252(s0)		# tmp220, j
	addi	a5,a5,-16	#, tmp251, tmp220
	add	a5,a5,s0	#, tmp221, tmp251
	sb	zero,-112(a5)	#, den[j_33]
# problem145.c:30:     d = atoi(den);
	addi	a5,s0,-128	#, tmp222,
	mv	a0,a5	#, tmp222
	call	atoi@plt	#
	mv	a5,a0	# tmp223,
	sw	a5,-236(s0)	# tmp223, d
# problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	lw	a5,-248(s0)		# tmp226, a
	mv	a4,a5	# tmp225, tmp226
	lw	a5,-240(s0)		# tmp228, c
	mulw	a5,a4,a5	# tmp224, tmp225, tmp227
	sext.w	a4,a5	# _25, tmp224
# problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	lw	a5,-244(s0)		# tmp231, b
	mv	a3,a5	# tmp230, tmp231
	lw	a5,-236(s0)		# tmp233, d
	mulw	a5,a3,a5	# tmp229, tmp230, tmp232
	sext.w	a5,a5	# _26, tmp229
# problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	remw	a5,a4,a5	# _26, tmp236, tmp235
	sext.w	a5,a5	# _27, tmp236
# problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	bne	a5,zero,.L10	#, _27,,
# problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	li	a5,1		# _34,
# problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	j	.L12		#
.L10:
# problem145.c:33:     return 0;
	li	a5,0		# _34,
.L12:
# problem145.c:34: }
	mv	a4,a5	# <retval>, _34
	la	a5,__stack_chk_guard		# tmp238,
	ld	a3, -24(s0)	# tmp241, D.3328
	ld	a5, 0(a5)	# tmp239, __stack_chk_guard
	xor	a5, a3, a5	# tmp239, tmp241
	li	a3, 0	# tmp241
	beq	a5,zero,.L13	#, tmp239,,
	call	__stack_chk_fail@plt	#
.L13:
	mv	a0,a4	#, <retval>
	ld	ra,264(sp)		#,
	.cfi_restore 1
	ld	s0,256(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 272
	addi	sp,sp,272	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"5/1"
	.align	3
.LC1:
	.string	"1/5"
	.align	3
.LC2:
	.string	"problem145.c"
	.align	3
.LC3:
	.string	"func0(\"1/5\", \"5/1\") == 1"
	.align	3
.LC4:
	.string	"2/1"
	.align	3
.LC5:
	.string	"1/6"
	.align	3
.LC6:
	.string	"func0(\"1/6\", \"2/1\") == 0"
	.align	3
.LC7:
	.string	"3/1"
	.align	3
.LC8:
	.string	"func0(\"5/1\", \"3/1\") == 1"
	.align	3
.LC9:
	.string	"10/2"
	.align	3
.LC10:
	.string	"7/10"
	.align	3
.LC11:
	.string	"func0(\"7/10\", \"10/2\") == 0"
	.align	3
.LC12:
	.string	"50/10"
	.align	3
.LC13:
	.string	"2/10"
	.align	3
.LC14:
	.string	"func0(\"2/10\", \"50/10\") == 1"
	.align	3
.LC15:
	.string	"4/2"
	.align	3
.LC16:
	.string	"7/2"
	.align	3
.LC17:
	.string	"func0(\"7/2\", \"4/2\") == 1"
	.align	3
.LC18:
	.string	"6/1"
	.align	3
.LC19:
	.string	"11/6"
	.align	3
.LC20:
	.string	"func0(\"11/6\", \"6/1\") == 1"
	.align	3
.LC21:
	.string	"5/2"
	.align	3
.LC22:
	.string	"2/3"
	.align	3
.LC23:
	.string	"func0(\"2/3\", \"5/2\") == 0"
	.align	3
.LC24:
	.string	"3/5"
	.align	3
.LC25:
	.string	"func0(\"5/2\", \"3/5\") == 0"
	.align	3
.LC26:
	.string	"8/4"
	.align	3
.LC27:
	.string	"2/4"
	.align	3
.LC28:
	.string	"func0(\"2/4\", \"8/4\") == 1"
	.align	3
.LC29:
	.string	"func0(\"2/4\", \"4/2\") == 1"
	.align	3
.LC30:
	.string	"func0(\"1/5\", \"1/5\") == 0"
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
# problem145.c:41:     assert(func0("1/5", "5/1") == 1);
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	func0		#
	mv	a5,a0	# tmp149,
# problem145.c:41:     assert(func0("1/5", "5/1") == 1);
	mv	a4,a5	# tmp150, _1
	li	a5,1		# tmp151,
	beq	a4,a5,.L15	#, tmp150, tmp151,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L15:
# problem145.c:42:     assert(func0("1/6", "2/1") == 0);
	lla	a1,.LC4	#,
	lla	a0,.LC5	#,
	call	func0		#
	mv	a5,a0	# tmp152,
# problem145.c:42:     assert(func0("1/6", "2/1") == 0);
	beq	a5,zero,.L16	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,42		#,
	lla	a1,.LC2	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L16:
# problem145.c:43:     assert(func0("5/1", "3/1") == 1);
	lla	a1,.LC7	#,
	lla	a0,.LC0	#,
	call	func0		#
	mv	a5,a0	# tmp153,
# problem145.c:43:     assert(func0("5/1", "3/1") == 1);
	mv	a4,a5	# tmp154, _3
	li	a5,1		# tmp155,
	beq	a4,a5,.L17	#, tmp154, tmp155,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,43		#,
	lla	a1,.LC2	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L17:
# problem145.c:44:     assert(func0("7/10", "10/2") == 0);
	lla	a1,.LC9	#,
	lla	a0,.LC10	#,
	call	func0		#
	mv	a5,a0	# tmp156,
# problem145.c:44:     assert(func0("7/10", "10/2") == 0);
	beq	a5,zero,.L18	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,44		#,
	lla	a1,.LC2	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L18:
# problem145.c:45:     assert(func0("2/10", "50/10") == 1);
	lla	a1,.LC12	#,
	lla	a0,.LC13	#,
	call	func0		#
	mv	a5,a0	# tmp157,
# problem145.c:45:     assert(func0("2/10", "50/10") == 1);
	mv	a4,a5	# tmp158, _5
	li	a5,1		# tmp159,
	beq	a4,a5,.L19	#, tmp158, tmp159,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC2	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L19:
# problem145.c:46:     assert(func0("7/2", "4/2") == 1);
	lla	a1,.LC15	#,
	lla	a0,.LC16	#,
	call	func0		#
	mv	a5,a0	# tmp160,
# problem145.c:46:     assert(func0("7/2", "4/2") == 1);
	mv	a4,a5	# tmp161, _6
	li	a5,1		# tmp162,
	beq	a4,a5,.L20	#, tmp161, tmp162,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,46		#,
	lla	a1,.LC2	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L20:
# problem145.c:47:     assert(func0("11/6", "6/1") == 1);
	lla	a1,.LC18	#,
	lla	a0,.LC19	#,
	call	func0		#
	mv	a5,a0	# tmp163,
# problem145.c:47:     assert(func0("11/6", "6/1") == 1);
	mv	a4,a5	# tmp164, _7
	li	a5,1		# tmp165,
	beq	a4,a5,.L21	#, tmp164, tmp165,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,47		#,
	lla	a1,.LC2	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L21:
# problem145.c:48:     assert(func0("2/3", "5/2") == 0);
	lla	a1,.LC21	#,
	lla	a0,.LC22	#,
	call	func0		#
	mv	a5,a0	# tmp166,
# problem145.c:48:     assert(func0("2/3", "5/2") == 0);
	beq	a5,zero,.L22	#, _8,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,48		#,
	lla	a1,.LC2	#,
	lla	a0,.LC23	#,
	call	__assert_fail@plt	#
.L22:
# problem145.c:49:     assert(func0("5/2", "3/5") == 0);
	lla	a1,.LC24	#,
	lla	a0,.LC21	#,
	call	func0		#
	mv	a5,a0	# tmp167,
# problem145.c:49:     assert(func0("5/2", "3/5") == 0);
	beq	a5,zero,.L23	#, _9,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,49		#,
	lla	a1,.LC2	#,
	lla	a0,.LC25	#,
	call	__assert_fail@plt	#
.L23:
# problem145.c:50:     assert(func0("2/4", "8/4") == 1);
	lla	a1,.LC26	#,
	lla	a0,.LC27	#,
	call	func0		#
	mv	a5,a0	# tmp168,
# problem145.c:50:     assert(func0("2/4", "8/4") == 1);
	mv	a4,a5	# tmp169, _10
	li	a5,1		# tmp170,
	beq	a4,a5,.L24	#, tmp169, tmp170,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,50		#,
	lla	a1,.LC2	#,
	lla	a0,.LC28	#,
	call	__assert_fail@plt	#
.L24:
# problem145.c:51:     assert(func0("2/4", "4/2") == 1);
	lla	a1,.LC15	#,
	lla	a0,.LC27	#,
	call	func0		#
	mv	a5,a0	# tmp171,
# problem145.c:51:     assert(func0("2/4", "4/2") == 1);
	mv	a4,a5	# tmp172, _11
	li	a5,1		# tmp173,
	beq	a4,a5,.L25	#, tmp172, tmp173,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,51		#,
	lla	a1,.LC2	#,
	lla	a0,.LC29	#,
	call	__assert_fail@plt	#
.L25:
# problem145.c:52:     assert(func0("1/5", "5/1") == 1);
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	func0		#
	mv	a5,a0	# tmp174,
# problem145.c:52:     assert(func0("1/5", "5/1") == 1);
	mv	a4,a5	# tmp175, _12
	li	a5,1		# tmp176,
	beq	a4,a5,.L26	#, tmp175, tmp176,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,52		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L26:
# problem145.c:53:     assert(func0("1/5", "1/5") == 0);
	lla	a1,.LC1	#,
	lla	a0,.LC1	#,
	call	func0		#
	mv	a5,a0	# tmp177,
# problem145.c:53:     assert(func0("1/5", "1/5") == 0);
	beq	a5,zero,.L27	#, _13,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,53		#,
	lla	a1,.LC2	#,
	lla	a0,.LC30	#,
	call	__assert_fail@plt	#
.L27:
# problem145.c:55:     return 0;
	li	a5,0		# _41,
# problem145.c:56: }
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
