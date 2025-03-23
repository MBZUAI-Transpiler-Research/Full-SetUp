	.file	"problem145.c"
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
	addi	sp,sp,-272	#,,
	sd	ra,264(sp)	#,
	sd	s0,256(sp)	#,
	addi	s0,sp,272	#,,
	sd	a0,-264(s0)	# x, x
	sd	a1,-272(s0)	# n, n
# problem145.c:4: int func0(const char* x, const char* n){
	la	a5,__stack_chk_guard		# tmp101,
	ld	a4, 0(a5)	# tmp178, __stack_chk_guard
	sd	a4, -24(s0)	# tmp178, D.2503
	li	a4, 0	# tmp178
# problem145.c:8:     for (i = 0; x[i] != '/'; i++) {
	sw	zero,-256(s0)	#, i
# problem145.c:8:     for (i = 0; x[i] != '/'; i++) {
	j	.L2		#
.L3:
# problem145.c:9:         num[i] = x[i];
	lw	a5,-256(s0)		# _1, i
	ld	a4,-264(s0)		# tmp102, x
	add	a5,a4,a5	# _1, _2, tmp102
	lbu	a4,0(a5)	# _3, *_2
# problem145.c:9:         num[i] = x[i];
	lw	a5,-256(s0)		# tmp103, i
	addi	a5,a5,-16	#, tmp182, tmp103
	add	a5,a5,s0	#, tmp104, tmp182
	sb	a4,-216(a5)	# _3, num[i_28]
# problem145.c:8:     for (i = 0; x[i] != '/'; i++) {
	lw	a5,-256(s0)		# tmp107, i
	addiw	a5,a5,1	#, tmp105, tmp106
	sw	a5,-256(s0)	# tmp105, i
.L2:
# problem145.c:8:     for (i = 0; x[i] != '/'; i++) {
	lw	a5,-256(s0)		# _4, i
	ld	a4,-264(s0)		# tmp108, x
	add	a5,a4,a5	# _4, _5, tmp108
	lbu	a5,0(a5)	# _6, *_5
# problem145.c:8:     for (i = 0; x[i] != '/'; i++) {
	mv	a4,a5	# tmp109, _6
	li	a5,47		# tmp110,
	bne	a4,a5,.L3	#, tmp109, tmp110,
# problem145.c:11:     num[i] = '\0';
	lw	a5,-256(s0)		# tmp111, i
	addi	a5,a5,-16	#, tmp183, tmp111
	add	a5,a5,s0	#, tmp112, tmp183
	sb	zero,-216(a5)	#, num[i_28]
# problem145.c:12:     a = atoi(num);
	addi	a5,s0,-232	#, tmp113,
	mv	a0,a5	#, tmp113
	call	atoi@plt	#
	mv	a5,a0	# tmp114,
	sw	a5,-248(s0)	# tmp114, a
# problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	sw	zero,-252(s0)	#, j
# problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	lw	a5,-256(s0)		# tmp117, i
	addiw	a5,a5,1	#, tmp115, tmp116
	sw	a5,-256(s0)	# tmp115, i
# problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	j	.L4		#
.L5:
# problem145.c:15:         den[j] = x[i];
	lw	a5,-256(s0)		# _7, i
	ld	a4,-264(s0)		# tmp118, x
	add	a5,a4,a5	# _7, _8, tmp118
	lbu	a4,0(a5)	# _9, *_8
# problem145.c:15:         den[j] = x[i];
	lw	a5,-252(s0)		# tmp119, j
	addi	a5,a5,-16	#, tmp184, tmp119
	add	a5,a5,s0	#, tmp120, tmp184
	sb	a4,-112(a5)	# _9, den[j_32]
# problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	lw	a5,-256(s0)		# tmp123, i
	addiw	a5,a5,1	#, tmp121, tmp122
	sw	a5,-256(s0)	# tmp121, i
# problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	lw	a5,-252(s0)		# tmp126, j
	addiw	a5,a5,1	#, tmp124, tmp125
	sw	a5,-252(s0)	# tmp124, j
.L4:
# problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	lw	a5,-256(s0)		# _10, i
	ld	a4,-264(s0)		# tmp127, x
	add	a5,a4,a5	# _10, _11, tmp127
	lbu	a5,0(a5)	# _12, *_11
# problem145.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	bne	a5,zero,.L5	#, _12,,
# problem145.c:17:     den[j] = '\0';
	lw	a5,-252(s0)		# tmp128, j
	addi	a5,a5,-16	#, tmp185, tmp128
	add	a5,a5,s0	#, tmp129, tmp185
	sb	zero,-112(a5)	#, den[j_32]
# problem145.c:18:     b = atoi(den);
	addi	a5,s0,-128	#, tmp130,
	mv	a0,a5	#, tmp130
	call	atoi@plt	#
	mv	a5,a0	# tmp131,
	sw	a5,-244(s0)	# tmp131, b
# problem145.c:20:     for (i = 0; n[i] != '/'; i++) {
	sw	zero,-256(s0)	#, i
# problem145.c:20:     for (i = 0; n[i] != '/'; i++) {
	j	.L6		#
.L7:
# problem145.c:21:         num[i] = n[i];
	lw	a5,-256(s0)		# _13, i
	ld	a4,-272(s0)		# tmp132, n
	add	a5,a4,a5	# _13, _14, tmp132
	lbu	a4,0(a5)	# _15, *_14
# problem145.c:21:         num[i] = n[i];
	lw	a5,-256(s0)		# tmp133, i
	addi	a5,a5,-16	#, tmp186, tmp133
	add	a5,a5,s0	#, tmp134, tmp186
	sb	a4,-216(a5)	# _15, num[i_30]
# problem145.c:20:     for (i = 0; n[i] != '/'; i++) {
	lw	a5,-256(s0)		# tmp137, i
	addiw	a5,a5,1	#, tmp135, tmp136
	sw	a5,-256(s0)	# tmp135, i
.L6:
# problem145.c:20:     for (i = 0; n[i] != '/'; i++) {
	lw	a5,-256(s0)		# _16, i
	ld	a4,-272(s0)		# tmp138, n
	add	a5,a4,a5	# _16, _17, tmp138
	lbu	a5,0(a5)	# _18, *_17
# problem145.c:20:     for (i = 0; n[i] != '/'; i++) {
	mv	a4,a5	# tmp139, _18
	li	a5,47		# tmp140,
	bne	a4,a5,.L7	#, tmp139, tmp140,
# problem145.c:23:     num[i] = '\0';
	lw	a5,-256(s0)		# tmp141, i
	addi	a5,a5,-16	#, tmp187, tmp141
	add	a5,a5,s0	#, tmp142, tmp187
	sb	zero,-216(a5)	#, num[i_30]
# problem145.c:24:     c = atoi(num);
	addi	a5,s0,-232	#, tmp143,
	mv	a0,a5	#, tmp143
	call	atoi@plt	#
	mv	a5,a0	# tmp144,
	sw	a5,-240(s0)	# tmp144, c
# problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	sw	zero,-252(s0)	#, j
# problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	lw	a5,-256(s0)		# tmp147, i
	addiw	a5,a5,1	#, tmp145, tmp146
	sw	a5,-256(s0)	# tmp145, i
# problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	j	.L8		#
.L9:
# problem145.c:27:         den[j] = n[i];
	lw	a5,-256(s0)		# _19, i
	ld	a4,-272(s0)		# tmp148, n
	add	a5,a4,a5	# _19, _20, tmp148
	lbu	a4,0(a5)	# _21, *_20
# problem145.c:27:         den[j] = n[i];
	lw	a5,-252(s0)		# tmp149, j
	addi	a5,a5,-16	#, tmp188, tmp149
	add	a5,a5,s0	#, tmp150, tmp188
	sb	a4,-112(a5)	# _21, den[j_33]
# problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	lw	a5,-256(s0)		# tmp153, i
	addiw	a5,a5,1	#, tmp151, tmp152
	sw	a5,-256(s0)	# tmp151, i
# problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	lw	a5,-252(s0)		# tmp156, j
	addiw	a5,a5,1	#, tmp154, tmp155
	sw	a5,-252(s0)	# tmp154, j
.L8:
# problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	lw	a5,-256(s0)		# _22, i
	ld	a4,-272(s0)		# tmp157, n
	add	a5,a4,a5	# _22, _23, tmp157
	lbu	a5,0(a5)	# _24, *_23
# problem145.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	bne	a5,zero,.L9	#, _24,,
# problem145.c:29:     den[j] = '\0';
	lw	a5,-252(s0)		# tmp158, j
	addi	a5,a5,-16	#, tmp189, tmp158
	add	a5,a5,s0	#, tmp159, tmp189
	sb	zero,-112(a5)	#, den[j_33]
# problem145.c:30:     d = atoi(den);
	addi	a5,s0,-128	#, tmp160,
	mv	a0,a5	#, tmp160
	call	atoi@plt	#
	mv	a5,a0	# tmp161,
	sw	a5,-236(s0)	# tmp161, d
# problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	lw	a5,-248(s0)		# tmp164, a
	mv	a4,a5	# tmp163, tmp164
	lw	a5,-240(s0)		# tmp166, c
	mulw	a5,a4,a5	# tmp162, tmp163, tmp165
	sext.w	a4,a5	# _25, tmp162
# problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	lw	a5,-244(s0)		# tmp169, b
	mv	a3,a5	# tmp168, tmp169
	lw	a5,-236(s0)		# tmp171, d
	mulw	a5,a3,a5	# tmp167, tmp168, tmp170
	sext.w	a5,a5	# _26, tmp167
# problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	remw	a5,a4,a5	# _26, tmp174, tmp173
	sext.w	a5,a5	# _27, tmp174
# problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	bne	a5,zero,.L10	#, _27,,
# problem145.c:32:     if ((a * c) % (b * d) == 0) return 1;
	li	a5,1		# _34,
	j	.L12		#
.L10:
# problem145.c:33:     return 0;
	li	a5,0		# _34,
.L12:
# problem145.c:34: }
	mv	a4,a5	# <retval>, _34
	la	a5,__stack_chk_guard		# tmp176,
	ld	a3, -24(s0)	# tmp179, D.2503
	ld	a5, 0(a5)	# tmp177, __stack_chk_guard
	xor	a5, a3, a5	# tmp177, tmp179
	li	a3, 0	# tmp179
	beq	a5,zero,.L13	#, tmp177,,
# problem145.c:34: }
	call	__stack_chk_fail@plt	#
.L13:
	mv	a0,a4	#, <retval>
	ld	ra,264(sp)		#,
	ld	s0,256(sp)		#,
	addi	sp,sp,272	#,,
	jr	ra		#
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
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem145.c:41:     assert(func0("1/5", "5/1") == 1);
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	func0		#
	mv	a5,a0	# tmp87,
	mv	a4,a5	# tmp88, _1
	li	a5,1		# tmp89,
	beq	a4,a5,.L15	#, tmp88, tmp89,
# problem145.c:41:     assert(func0("1/5", "5/1") == 1);
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
	mv	a5,a0	# tmp90,
	beq	a5,zero,.L16	#, _2,,
# problem145.c:42:     assert(func0("1/6", "2/1") == 0);
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
	mv	a5,a0	# tmp91,
	mv	a4,a5	# tmp92, _3
	li	a5,1		# tmp93,
	beq	a4,a5,.L17	#, tmp92, tmp93,
# problem145.c:43:     assert(func0("5/1", "3/1") == 1);
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
	mv	a5,a0	# tmp94,
	beq	a5,zero,.L18	#, _4,,
# problem145.c:44:     assert(func0("7/10", "10/2") == 0);
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
	mv	a5,a0	# tmp95,
	mv	a4,a5	# tmp96, _5
	li	a5,1		# tmp97,
	beq	a4,a5,.L19	#, tmp96, tmp97,
# problem145.c:45:     assert(func0("2/10", "50/10") == 1);
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
	mv	a5,a0	# tmp98,
	mv	a4,a5	# tmp99, _6
	li	a5,1		# tmp100,
	beq	a4,a5,.L20	#, tmp99, tmp100,
# problem145.c:46:     assert(func0("7/2", "4/2") == 1);
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
	mv	a5,a0	# tmp101,
	mv	a4,a5	# tmp102, _7
	li	a5,1		# tmp103,
	beq	a4,a5,.L21	#, tmp102, tmp103,
# problem145.c:47:     assert(func0("11/6", "6/1") == 1);
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
	mv	a5,a0	# tmp104,
	beq	a5,zero,.L22	#, _8,,
# problem145.c:48:     assert(func0("2/3", "5/2") == 0);
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
	mv	a5,a0	# tmp105,
	beq	a5,zero,.L23	#, _9,,
# problem145.c:49:     assert(func0("5/2", "3/5") == 0);
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
	mv	a5,a0	# tmp106,
	mv	a4,a5	# tmp107, _10
	li	a5,1		# tmp108,
	beq	a4,a5,.L24	#, tmp107, tmp108,
# problem145.c:50:     assert(func0("2/4", "8/4") == 1);
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
	mv	a5,a0	# tmp109,
	mv	a4,a5	# tmp110, _11
	li	a5,1		# tmp111,
	beq	a4,a5,.L25	#, tmp110, tmp111,
# problem145.c:51:     assert(func0("2/4", "4/2") == 1);
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
	mv	a5,a0	# tmp112,
	mv	a4,a5	# tmp113, _12
	li	a5,1		# tmp114,
	beq	a4,a5,.L26	#, tmp113, tmp114,
# problem145.c:52:     assert(func0("1/5", "5/1") == 1);
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
	mv	a5,a0	# tmp115,
	beq	a5,zero,.L27	#, _13,,
# problem145.c:53:     assert(func0("1/5", "1/5") == 0);
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
	ld	s0,0(sp)		#,
	addi	sp,sp,16	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
