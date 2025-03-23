	.file	"problem120.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Yes"
	.align	3
.LC1:
	.string	"No"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-56(s0)	# s1, s1
	sd	a1,-64(s0)	# s2, s2
# problem120.c:5:     int count = 0;
	sw	zero,-36(s0)	#, count
# problem120.c:6:     int len1 = strlen(s1);
	ld	a0,-56(s0)		#, s1
	call	strlen@plt	#
	mv	a5,a0	# _1,
# problem120.c:6:     int len1 = strlen(s1);
	sw	a5,-24(s0)	# _1, len1
# problem120.c:7:     int len2 = strlen(s2);
	ld	a0,-64(s0)		#, s2
	call	strlen@plt	#
	mv	a5,a0	# _2,
# problem120.c:7:     int len2 = strlen(s2);
	sw	a5,-20(s0)	# _2, len2
# problem120.c:9:     int can = 1;
	li	a5,1		# tmp100,
	sw	a5,-28(s0)	# tmp100, can
# problem120.c:11:     for (i = 0; i < len1; i++) {
	sw	zero,-32(s0)	#, i
# problem120.c:11:     for (i = 0; i < len1; i++) {
	j	.L2		#
.L6:
# problem120.c:12:         if (s1[i] == '(') count++;
	lw	a5,-32(s0)		# _3, i
	ld	a4,-56(s0)		# tmp101, s1
	add	a5,a4,a5	# _3, _4, tmp101
	lbu	a5,0(a5)	# _5, *_4
# problem120.c:12:         if (s1[i] == '(') count++;
	mv	a4,a5	# tmp102, _5
	li	a5,40		# tmp103,
	bne	a4,a5,.L3	#, tmp102, tmp103,
# problem120.c:12:         if (s1[i] == '(') count++;
	lw	a5,-36(s0)		# tmp106, count
	addiw	a5,a5,1	#, tmp104, tmp105
	sw	a5,-36(s0)	# tmp104, count
.L3:
# problem120.c:13:         if (s1[i] == ')') count--;
	lw	a5,-32(s0)		# _6, i
	ld	a4,-56(s0)		# tmp107, s1
	add	a5,a4,a5	# _6, _7, tmp107
	lbu	a5,0(a5)	# _8, *_7
# problem120.c:13:         if (s1[i] == ')') count--;
	mv	a4,a5	# tmp108, _8
	li	a5,41		# tmp109,
	bne	a4,a5,.L4	#, tmp108, tmp109,
# problem120.c:13:         if (s1[i] == ')') count--;
	lw	a5,-36(s0)		# tmp112, count
	addiw	a5,a5,-1	#, tmp110, tmp111
	sw	a5,-36(s0)	# tmp110, count
.L4:
# problem120.c:14:         if (count < 0) can = 0;
	lw	a5,-36(s0)		# tmp114, count
	sext.w	a5,a5	# tmp115, tmp113
	bge	a5,zero,.L5	#, tmp115,,
# problem120.c:14:         if (count < 0) can = 0;
	sw	zero,-28(s0)	#, can
.L5:
# problem120.c:11:     for (i = 0; i < len1; i++) {
	lw	a5,-32(s0)		# tmp118, i
	addiw	a5,a5,1	#, tmp116, tmp117
	sw	a5,-32(s0)	# tmp116, i
.L2:
# problem120.c:11:     for (i = 0; i < len1; i++) {
	lw	a5,-32(s0)		# tmp120, i
	mv	a4,a5	# tmp119, tmp120
	lw	a5,-24(s0)		# tmp122, len1
	sext.w	a4,a4	# tmp123, tmp119
	sext.w	a5,a5	# tmp124, tmp121
	blt	a4,a5,.L6	#, tmp123, tmp124,
# problem120.c:16:     for (i = 0; i < len2; i++) {
	sw	zero,-32(s0)	#, i
# problem120.c:16:     for (i = 0; i < len2; i++) {
	j	.L7		#
.L11:
# problem120.c:17:         if (s2[i] == '(') count++;
	lw	a5,-32(s0)		# _9, i
	ld	a4,-64(s0)		# tmp125, s2
	add	a5,a4,a5	# _9, _10, tmp125
	lbu	a5,0(a5)	# _11, *_10
# problem120.c:17:         if (s2[i] == '(') count++;
	mv	a4,a5	# tmp126, _11
	li	a5,40		# tmp127,
	bne	a4,a5,.L8	#, tmp126, tmp127,
# problem120.c:17:         if (s2[i] == '(') count++;
	lw	a5,-36(s0)		# tmp130, count
	addiw	a5,a5,1	#, tmp128, tmp129
	sw	a5,-36(s0)	# tmp128, count
.L8:
# problem120.c:18:         if (s2[i] == ')') count--;
	lw	a5,-32(s0)		# _12, i
	ld	a4,-64(s0)		# tmp131, s2
	add	a5,a4,a5	# _12, _13, tmp131
	lbu	a5,0(a5)	# _14, *_13
# problem120.c:18:         if (s2[i] == ')') count--;
	mv	a4,a5	# tmp132, _14
	li	a5,41		# tmp133,
	bne	a4,a5,.L9	#, tmp132, tmp133,
# problem120.c:18:         if (s2[i] == ')') count--;
	lw	a5,-36(s0)		# tmp136, count
	addiw	a5,a5,-1	#, tmp134, tmp135
	sw	a5,-36(s0)	# tmp134, count
.L9:
# problem120.c:19:         if (count < 0) can = 0;
	lw	a5,-36(s0)		# tmp138, count
	sext.w	a5,a5	# tmp139, tmp137
	bge	a5,zero,.L10	#, tmp139,,
# problem120.c:19:         if (count < 0) can = 0;
	sw	zero,-28(s0)	#, can
.L10:
# problem120.c:16:     for (i = 0; i < len2; i++) {
	lw	a5,-32(s0)		# tmp142, i
	addiw	a5,a5,1	#, tmp140, tmp141
	sw	a5,-32(s0)	# tmp140, i
.L7:
# problem120.c:16:     for (i = 0; i < len2; i++) {
	lw	a5,-32(s0)		# tmp144, i
	mv	a4,a5	# tmp143, tmp144
	lw	a5,-20(s0)		# tmp146, len2
	sext.w	a4,a4	# tmp147, tmp143
	sext.w	a5,a5	# tmp148, tmp145
	blt	a4,a5,.L11	#, tmp147, tmp148,
# problem120.c:21:     if (count == 0 && can) return "Yes";
	lw	a5,-36(s0)		# tmp150, count
	sext.w	a5,a5	# tmp151, tmp149
	bne	a5,zero,.L12	#, tmp151,,
# problem120.c:21:     if (count == 0 && can) return "Yes";
	lw	a5,-28(s0)		# tmp153, can
	sext.w	a5,a5	# tmp154, tmp152
	beq	a5,zero,.L12	#, tmp154,,
# problem120.c:21:     if (count == 0 && can) return "Yes";
	lla	a5,.LC0	# _51,
	j	.L13		#
.L12:
# problem120.c:23:     count = 0;
	sw	zero,-36(s0)	#, count
# problem120.c:24:     can = 1;
	li	a5,1		# tmp155,
	sw	a5,-28(s0)	# tmp155, can
# problem120.c:26:     for (i = 0; i < len2; i++) {
	sw	zero,-32(s0)	#, i
# problem120.c:26:     for (i = 0; i < len2; i++) {
	j	.L14		#
.L18:
# problem120.c:27:         if (s2[i] == '(') count++;
	lw	a5,-32(s0)		# _15, i
	ld	a4,-64(s0)		# tmp156, s2
	add	a5,a4,a5	# _15, _16, tmp156
	lbu	a5,0(a5)	# _17, *_16
# problem120.c:27:         if (s2[i] == '(') count++;
	mv	a4,a5	# tmp157, _17
	li	a5,40		# tmp158,
	bne	a4,a5,.L15	#, tmp157, tmp158,
# problem120.c:27:         if (s2[i] == '(') count++;
	lw	a5,-36(s0)		# tmp161, count
	addiw	a5,a5,1	#, tmp159, tmp160
	sw	a5,-36(s0)	# tmp159, count
.L15:
# problem120.c:28:         if (s2[i] == ')') count--;
	lw	a5,-32(s0)		# _18, i
	ld	a4,-64(s0)		# tmp162, s2
	add	a5,a4,a5	# _18, _19, tmp162
	lbu	a5,0(a5)	# _20, *_19
# problem120.c:28:         if (s2[i] == ')') count--;
	mv	a4,a5	# tmp163, _20
	li	a5,41		# tmp164,
	bne	a4,a5,.L16	#, tmp163, tmp164,
# problem120.c:28:         if (s2[i] == ')') count--;
	lw	a5,-36(s0)		# tmp167, count
	addiw	a5,a5,-1	#, tmp165, tmp166
	sw	a5,-36(s0)	# tmp165, count
.L16:
# problem120.c:29:         if (count < 0) can = 0;
	lw	a5,-36(s0)		# tmp169, count
	sext.w	a5,a5	# tmp170, tmp168
	bge	a5,zero,.L17	#, tmp170,,
# problem120.c:29:         if (count < 0) can = 0;
	sw	zero,-28(s0)	#, can
.L17:
# problem120.c:26:     for (i = 0; i < len2; i++) {
	lw	a5,-32(s0)		# tmp173, i
	addiw	a5,a5,1	#, tmp171, tmp172
	sw	a5,-32(s0)	# tmp171, i
.L14:
# problem120.c:26:     for (i = 0; i < len2; i++) {
	lw	a5,-32(s0)		# tmp175, i
	mv	a4,a5	# tmp174, tmp175
	lw	a5,-20(s0)		# tmp177, len2
	sext.w	a4,a4	# tmp178, tmp174
	sext.w	a5,a5	# tmp179, tmp176
	blt	a4,a5,.L18	#, tmp178, tmp179,
# problem120.c:31:     for (i = 0; i < len1; i++) {
	sw	zero,-32(s0)	#, i
# problem120.c:31:     for (i = 0; i < len1; i++) {
	j	.L19		#
.L23:
# problem120.c:32:         if (s1[i] == '(') count++;
	lw	a5,-32(s0)		# _21, i
	ld	a4,-56(s0)		# tmp180, s1
	add	a5,a4,a5	# _21, _22, tmp180
	lbu	a5,0(a5)	# _23, *_22
# problem120.c:32:         if (s1[i] == '(') count++;
	mv	a4,a5	# tmp181, _23
	li	a5,40		# tmp182,
	bne	a4,a5,.L20	#, tmp181, tmp182,
# problem120.c:32:         if (s1[i] == '(') count++;
	lw	a5,-36(s0)		# tmp185, count
	addiw	a5,a5,1	#, tmp183, tmp184
	sw	a5,-36(s0)	# tmp183, count
.L20:
# problem120.c:33:         if (s1[i] == ')') count--;
	lw	a5,-32(s0)		# _24, i
	ld	a4,-56(s0)		# tmp186, s1
	add	a5,a4,a5	# _24, _25, tmp186
	lbu	a5,0(a5)	# _26, *_25
# problem120.c:33:         if (s1[i] == ')') count--;
	mv	a4,a5	# tmp187, _26
	li	a5,41		# tmp188,
	bne	a4,a5,.L21	#, tmp187, tmp188,
# problem120.c:33:         if (s1[i] == ')') count--;
	lw	a5,-36(s0)		# tmp191, count
	addiw	a5,a5,-1	#, tmp189, tmp190
	sw	a5,-36(s0)	# tmp189, count
.L21:
# problem120.c:34:         if (count < 0) can = 0;
	lw	a5,-36(s0)		# tmp193, count
	sext.w	a5,a5	# tmp194, tmp192
	bge	a5,zero,.L22	#, tmp194,,
# problem120.c:34:         if (count < 0) can = 0;
	sw	zero,-28(s0)	#, can
.L22:
# problem120.c:31:     for (i = 0; i < len1; i++) {
	lw	a5,-32(s0)		# tmp197, i
	addiw	a5,a5,1	#, tmp195, tmp196
	sw	a5,-32(s0)	# tmp195, i
.L19:
# problem120.c:31:     for (i = 0; i < len1; i++) {
	lw	a5,-32(s0)		# tmp199, i
	mv	a4,a5	# tmp198, tmp199
	lw	a5,-24(s0)		# tmp201, len1
	sext.w	a4,a4	# tmp202, tmp198
	sext.w	a5,a5	# tmp203, tmp200
	blt	a4,a5,.L23	#, tmp202, tmp203,
# problem120.c:36:     if (count == 0 && can) return "Yes";
	lw	a5,-36(s0)		# tmp205, count
	sext.w	a5,a5	# tmp206, tmp204
	bne	a5,zero,.L24	#, tmp206,,
# problem120.c:36:     if (count == 0 && can) return "Yes";
	lw	a5,-28(s0)		# tmp208, can
	sext.w	a5,a5	# tmp209, tmp207
	beq	a5,zero,.L24	#, tmp209,,
# problem120.c:36:     if (count == 0 && can) return "Yes";
	lla	a5,.LC0	# _51,
	j	.L13		#
.L24:
# problem120.c:38:     return "No";
	lla	a5,.LC1	# _51,
.L13:
# problem120.c:39: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC2:
	.string	")"
	.align	3
.LC3:
	.string	"()("
	.align	3
.LC4:
	.string	"problem120.c"
	.align	3
.LC5:
	.string	"strcmp(func0(\"()(\", \")\"), \"Yes\") == 0"
	.align	3
.LC6:
	.string	"strcmp(func0(\")\", \")\"), \"No\") == 0"
	.align	3
.LC7:
	.string	"())())"
	.align	3
.LC8:
	.string	"(()(())"
	.align	3
.LC9:
	.string	"strcmp(func0(\"(()(())\", \"())())\"), \"No\") == 0"
	.align	3
.LC10:
	.string	"(()()("
	.align	3
.LC11:
	.string	")())"
	.align	3
.LC12:
	.string	"strcmp(func0(\")())\", \"(()()(\"), \"Yes\") == 0"
	.align	3
.LC13:
	.string	"(()())(("
	.align	3
.LC14:
	.string	"(())))"
	.align	3
.LC15:
	.string	"strcmp(func0(\"(())))\", \"(()())((\"), \"Yes\") == 0"
	.align	3
.LC16:
	.string	"())"
	.align	3
.LC17:
	.string	"()"
	.align	3
.LC18:
	.string	"strcmp(func0(\"()\", \"())\"), \"No\") == 0"
	.align	3
.LC19:
	.string	"()))()"
	.align	3
.LC20:
	.string	"(()("
	.align	3
.LC21:
	.string	"strcmp(func0(\"(()(\", \"()))()\"), \"Yes\") == 0"
	.align	3
.LC22:
	.string	"((())"
	.align	3
.LC23:
	.string	"(((("
	.align	3
.LC24:
	.string	"strcmp(func0(\"((((\", \"((())\"), \"No\") == 0"
	.align	3
.LC25:
	.string	")(()"
	.align	3
.LC26:
	.string	"strcmp(func0(\")(()\", \"(()(\"), \"No\") == 0"
	.align	3
.LC27:
	.string	")("
	.align	3
.LC28:
	.string	"strcmp(func0(\")(\", \")(\"), \"No\") == 0"
	.align	3
.LC29:
	.string	"("
	.align	3
.LC30:
	.string	"strcmp(func0(\"(\", \")\"), \"Yes\") == 0"
	.align	3
.LC31:
	.string	"strcmp(func0(\")\", \"(\"), \"Yes\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem120.c:48:     assert(strcmp(func0("()(", ")"), "Yes") == 0);
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	func0		#
	mv	a5,a0	# _1,
	lla	a1,.LC0	#,
	mv	a0,a5	#, _1
	call	strcmp@plt	#
	mv	a5,a0	# tmp98,
	beq	a5,zero,.L26	#, _2,,
# problem120.c:48:     assert(strcmp(func0("()(", ")"), "Yes") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,48		#,
	lla	a1,.LC4	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L26:
# problem120.c:49:     assert(strcmp(func0(")", ")"), "No") == 0);
	lla	a1,.LC2	#,
	lla	a0,.LC2	#,
	call	func0		#
	mv	a5,a0	# _3,
	lla	a1,.LC1	#,
	mv	a0,a5	#, _3
	call	strcmp@plt	#
	mv	a5,a0	# tmp99,
	beq	a5,zero,.L27	#, _4,,
# problem120.c:49:     assert(strcmp(func0(")", ")"), "No") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,49		#,
	lla	a1,.LC4	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L27:
# problem120.c:50:     assert(strcmp(func0("(()(())", "())())"), "No") == 0);
	lla	a1,.LC7	#,
	lla	a0,.LC8	#,
	call	func0		#
	mv	a5,a0	# _5,
	lla	a1,.LC1	#,
	mv	a0,a5	#, _5
	call	strcmp@plt	#
	mv	a5,a0	# tmp100,
	beq	a5,zero,.L28	#, _6,,
# problem120.c:50:     assert(strcmp(func0("(()(())", "())())"), "No") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,50		#,
	lla	a1,.LC4	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L28:
# problem120.c:51:     assert(strcmp(func0(")())", "(()()("), "Yes") == 0);
	lla	a1,.LC10	#,
	lla	a0,.LC11	#,
	call	func0		#
	mv	a5,a0	# _7,
	lla	a1,.LC0	#,
	mv	a0,a5	#, _7
	call	strcmp@plt	#
	mv	a5,a0	# tmp101,
	beq	a5,zero,.L29	#, _8,,
# problem120.c:51:     assert(strcmp(func0(")())", "(()()("), "Yes") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,51		#,
	lla	a1,.LC4	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L29:
# problem120.c:52:     assert(strcmp(func0("(())))", "(()())(("), "Yes") == 0);
	lla	a1,.LC13	#,
	lla	a0,.LC14	#,
	call	func0		#
	mv	a5,a0	# _9,
	lla	a1,.LC0	#,
	mv	a0,a5	#, _9
	call	strcmp@plt	#
	mv	a5,a0	# tmp102,
	beq	a5,zero,.L30	#, _10,,
# problem120.c:52:     assert(strcmp(func0("(())))", "(()())(("), "Yes") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,52		#,
	lla	a1,.LC4	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L30:
# problem120.c:53:     assert(strcmp(func0("()", "())"), "No") == 0);
	lla	a1,.LC16	#,
	lla	a0,.LC17	#,
	call	func0		#
	mv	a5,a0	# _11,
	lla	a1,.LC1	#,
	mv	a0,a5	#, _11
	call	strcmp@plt	#
	mv	a5,a0	# tmp103,
	beq	a5,zero,.L31	#, _12,,
# problem120.c:53:     assert(strcmp(func0("()", "())"), "No") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,53		#,
	lla	a1,.LC4	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L31:
# problem120.c:54:     assert(strcmp(func0("(()(", "()))()"), "Yes") == 0);
	lla	a1,.LC19	#,
	lla	a0,.LC20	#,
	call	func0		#
	mv	a5,a0	# _13,
	lla	a1,.LC0	#,
	mv	a0,a5	#, _13
	call	strcmp@plt	#
	mv	a5,a0	# tmp104,
	beq	a5,zero,.L32	#, _14,,
# problem120.c:54:     assert(strcmp(func0("(()(", "()))()"), "Yes") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,54		#,
	lla	a1,.LC4	#,
	lla	a0,.LC21	#,
	call	__assert_fail@plt	#
.L32:
# problem120.c:55:     assert(strcmp(func0("((((", "((())"), "No") == 0);
	lla	a1,.LC22	#,
	lla	a0,.LC23	#,
	call	func0		#
	mv	a5,a0	# _15,
	lla	a1,.LC1	#,
	mv	a0,a5	#, _15
	call	strcmp@plt	#
	mv	a5,a0	# tmp105,
	beq	a5,zero,.L33	#, _16,,
# problem120.c:55:     assert(strcmp(func0("((((", "((())"), "No") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,55		#,
	lla	a1,.LC4	#,
	lla	a0,.LC24	#,
	call	__assert_fail@plt	#
.L33:
# problem120.c:56:     assert(strcmp(func0(")(()", "(()("), "No") == 0);
	lla	a1,.LC20	#,
	lla	a0,.LC25	#,
	call	func0		#
	mv	a5,a0	# _17,
	lla	a1,.LC1	#,
	mv	a0,a5	#, _17
	call	strcmp@plt	#
	mv	a5,a0	# tmp106,
	beq	a5,zero,.L34	#, _18,,
# problem120.c:56:     assert(strcmp(func0(")(()", "(()("), "No") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,56		#,
	lla	a1,.LC4	#,
	lla	a0,.LC26	#,
	call	__assert_fail@plt	#
.L34:
# problem120.c:57:     assert(strcmp(func0(")(", ")("), "No") == 0);
	lla	a1,.LC27	#,
	lla	a0,.LC27	#,
	call	func0		#
	mv	a5,a0	# _19,
	lla	a1,.LC1	#,
	mv	a0,a5	#, _19
	call	strcmp@plt	#
	mv	a5,a0	# tmp107,
	beq	a5,zero,.L35	#, _20,,
# problem120.c:57:     assert(strcmp(func0(")(", ")("), "No") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,57		#,
	lla	a1,.LC4	#,
	lla	a0,.LC28	#,
	call	__assert_fail@plt	#
.L35:
# problem120.c:58:     assert(strcmp(func0("(", ")"), "Yes") == 0);
	lla	a1,.LC2	#,
	lla	a0,.LC29	#,
	call	func0		#
	mv	a5,a0	# _21,
	lla	a1,.LC0	#,
	mv	a0,a5	#, _21
	call	strcmp@plt	#
	mv	a5,a0	# tmp108,
	beq	a5,zero,.L36	#, _22,,
# problem120.c:58:     assert(strcmp(func0("(", ")"), "Yes") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,58		#,
	lla	a1,.LC4	#,
	lla	a0,.LC30	#,
	call	__assert_fail@plt	#
.L36:
# problem120.c:59:     assert(strcmp(func0(")", "("), "Yes") == 0);
	lla	a1,.LC29	#,
	lla	a0,.LC2	#,
	call	func0		#
	mv	a5,a0	# _23,
	lla	a1,.LC0	#,
	mv	a0,a5	#, _23
	call	strcmp@plt	#
	mv	a5,a0	# tmp109,
	beq	a5,zero,.L37	#, _24,,
# problem120.c:59:     assert(strcmp(func0(")", "("), "Yes") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,59		#,
	lla	a1,.LC4	#,
	lla	a0,.LC31	#,
	call	__assert_fail@plt	#
.L37:
# problem120.c:61:     return 0;
	li	a5,0		# _50,
# problem120.c:62: }
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
