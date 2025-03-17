	.file	"problem120.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
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
	li	a5,1		# tmp162,
	sw	a5,-28(s0)	# tmp162, can
# problem120.c:11:     for (i = 0; i < len1; i++) {
	sw	zero,-32(s0)	#, i
# problem120.c:11:     for (i = 0; i < len1; i++) {
	j	.L2		#
.L6:
# problem120.c:12:         if (s1[i] == '(') count++;
	lw	a5,-32(s0)		# _3, i
	ld	a4,-56(s0)		# tmp163, s1
	add	a5,a4,a5	# _3, _4, tmp163
	lbu	a5,0(a5)	# _5, *_4
# problem120.c:12:         if (s1[i] == '(') count++;
	mv	a4,a5	# tmp164, _5
	li	a5,40		# tmp165,
	bne	a4,a5,.L3	#, tmp164, tmp165,
# problem120.c:12:         if (s1[i] == '(') count++;
	lw	a5,-36(s0)		# tmp168, count
	addiw	a5,a5,1	#, tmp166, tmp167
	sw	a5,-36(s0)	# tmp166, count
.L3:
# problem120.c:13:         if (s1[i] == ')') count--;
	lw	a5,-32(s0)		# _6, i
	ld	a4,-56(s0)		# tmp169, s1
	add	a5,a4,a5	# _6, _7, tmp169
	lbu	a5,0(a5)	# _8, *_7
# problem120.c:13:         if (s1[i] == ')') count--;
	mv	a4,a5	# tmp170, _8
	li	a5,41		# tmp171,
	bne	a4,a5,.L4	#, tmp170, tmp171,
# problem120.c:13:         if (s1[i] == ')') count--;
	lw	a5,-36(s0)		# tmp174, count
	addiw	a5,a5,-1	#, tmp172, tmp173
	sw	a5,-36(s0)	# tmp172, count
.L4:
# problem120.c:14:         if (count < 0) can = 0;
	lw	a5,-36(s0)		# tmp176, count
	sext.w	a5,a5	# tmp177, tmp175
	bge	a5,zero,.L5	#, tmp177,,
# problem120.c:14:         if (count < 0) can = 0;
	sw	zero,-28(s0)	#, can
.L5:
# problem120.c:11:     for (i = 0; i < len1; i++) {
	lw	a5,-32(s0)		# tmp180, i
	addiw	a5,a5,1	#, tmp178, tmp179
	sw	a5,-32(s0)	# tmp178, i
.L2:
# problem120.c:11:     for (i = 0; i < len1; i++) {
	lw	a5,-32(s0)		# tmp182, i
	mv	a4,a5	# tmp181, tmp182
	lw	a5,-24(s0)		# tmp184, len1
	sext.w	a4,a4	# tmp185, tmp181
	sext.w	a5,a5	# tmp186, tmp183
	blt	a4,a5,.L6	#, tmp185, tmp186,
# problem120.c:16:     for (i = 0; i < len2; i++) {
	sw	zero,-32(s0)	#, i
# problem120.c:16:     for (i = 0; i < len2; i++) {
	j	.L7		#
.L11:
# problem120.c:17:         if (s2[i] == '(') count++;
	lw	a5,-32(s0)		# _9, i
	ld	a4,-64(s0)		# tmp187, s2
	add	a5,a4,a5	# _9, _10, tmp187
	lbu	a5,0(a5)	# _11, *_10
# problem120.c:17:         if (s2[i] == '(') count++;
	mv	a4,a5	# tmp188, _11
	li	a5,40		# tmp189,
	bne	a4,a5,.L8	#, tmp188, tmp189,
# problem120.c:17:         if (s2[i] == '(') count++;
	lw	a5,-36(s0)		# tmp192, count
	addiw	a5,a5,1	#, tmp190, tmp191
	sw	a5,-36(s0)	# tmp190, count
.L8:
# problem120.c:18:         if (s2[i] == ')') count--;
	lw	a5,-32(s0)		# _12, i
	ld	a4,-64(s0)		# tmp193, s2
	add	a5,a4,a5	# _12, _13, tmp193
	lbu	a5,0(a5)	# _14, *_13
# problem120.c:18:         if (s2[i] == ')') count--;
	mv	a4,a5	# tmp194, _14
	li	a5,41		# tmp195,
	bne	a4,a5,.L9	#, tmp194, tmp195,
# problem120.c:18:         if (s2[i] == ')') count--;
	lw	a5,-36(s0)		# tmp198, count
	addiw	a5,a5,-1	#, tmp196, tmp197
	sw	a5,-36(s0)	# tmp196, count
.L9:
# problem120.c:19:         if (count < 0) can = 0;
	lw	a5,-36(s0)		# tmp200, count
	sext.w	a5,a5	# tmp201, tmp199
	bge	a5,zero,.L10	#, tmp201,,
# problem120.c:19:         if (count < 0) can = 0;
	sw	zero,-28(s0)	#, can
.L10:
# problem120.c:16:     for (i = 0; i < len2; i++) {
	lw	a5,-32(s0)		# tmp204, i
	addiw	a5,a5,1	#, tmp202, tmp203
	sw	a5,-32(s0)	# tmp202, i
.L7:
# problem120.c:16:     for (i = 0; i < len2; i++) {
	lw	a5,-32(s0)		# tmp206, i
	mv	a4,a5	# tmp205, tmp206
	lw	a5,-20(s0)		# tmp208, len2
	sext.w	a4,a4	# tmp209, tmp205
	sext.w	a5,a5	# tmp210, tmp207
	blt	a4,a5,.L11	#, tmp209, tmp210,
# problem120.c:21:     if (count == 0 && can) return "Yes";
	lw	a5,-36(s0)		# tmp212, count
	sext.w	a5,a5	# tmp213, tmp211
	bne	a5,zero,.L12	#, tmp213,,
# problem120.c:21:     if (count == 0 && can) return "Yes";
	lw	a5,-28(s0)		# tmp215, can
	sext.w	a5,a5	# tmp216, tmp214
	beq	a5,zero,.L12	#, tmp216,,
# problem120.c:21:     if (count == 0 && can) return "Yes";
	lla	a5,.LC0	# _51,
# problem120.c:21:     if (count == 0 && can) return "Yes";
	j	.L13		#
.L12:
# problem120.c:23:     count = 0;
	sw	zero,-36(s0)	#, count
# problem120.c:24:     can = 1;
	li	a5,1		# tmp217,
	sw	a5,-28(s0)	# tmp217, can
# problem120.c:26:     for (i = 0; i < len2; i++) {
	sw	zero,-32(s0)	#, i
# problem120.c:26:     for (i = 0; i < len2; i++) {
	j	.L14		#
.L18:
# problem120.c:27:         if (s2[i] == '(') count++;
	lw	a5,-32(s0)		# _15, i
	ld	a4,-64(s0)		# tmp218, s2
	add	a5,a4,a5	# _15, _16, tmp218
	lbu	a5,0(a5)	# _17, *_16
# problem120.c:27:         if (s2[i] == '(') count++;
	mv	a4,a5	# tmp219, _17
	li	a5,40		# tmp220,
	bne	a4,a5,.L15	#, tmp219, tmp220,
# problem120.c:27:         if (s2[i] == '(') count++;
	lw	a5,-36(s0)		# tmp223, count
	addiw	a5,a5,1	#, tmp221, tmp222
	sw	a5,-36(s0)	# tmp221, count
.L15:
# problem120.c:28:         if (s2[i] == ')') count--;
	lw	a5,-32(s0)		# _18, i
	ld	a4,-64(s0)		# tmp224, s2
	add	a5,a4,a5	# _18, _19, tmp224
	lbu	a5,0(a5)	# _20, *_19
# problem120.c:28:         if (s2[i] == ')') count--;
	mv	a4,a5	# tmp225, _20
	li	a5,41		# tmp226,
	bne	a4,a5,.L16	#, tmp225, tmp226,
# problem120.c:28:         if (s2[i] == ')') count--;
	lw	a5,-36(s0)		# tmp229, count
	addiw	a5,a5,-1	#, tmp227, tmp228
	sw	a5,-36(s0)	# tmp227, count
.L16:
# problem120.c:29:         if (count < 0) can = 0;
	lw	a5,-36(s0)		# tmp231, count
	sext.w	a5,a5	# tmp232, tmp230
	bge	a5,zero,.L17	#, tmp232,,
# problem120.c:29:         if (count < 0) can = 0;
	sw	zero,-28(s0)	#, can
.L17:
# problem120.c:26:     for (i = 0; i < len2; i++) {
	lw	a5,-32(s0)		# tmp235, i
	addiw	a5,a5,1	#, tmp233, tmp234
	sw	a5,-32(s0)	# tmp233, i
.L14:
# problem120.c:26:     for (i = 0; i < len2; i++) {
	lw	a5,-32(s0)		# tmp237, i
	mv	a4,a5	# tmp236, tmp237
	lw	a5,-20(s0)		# tmp239, len2
	sext.w	a4,a4	# tmp240, tmp236
	sext.w	a5,a5	# tmp241, tmp238
	blt	a4,a5,.L18	#, tmp240, tmp241,
# problem120.c:31:     for (i = 0; i < len1; i++) {
	sw	zero,-32(s0)	#, i
# problem120.c:31:     for (i = 0; i < len1; i++) {
	j	.L19		#
.L23:
# problem120.c:32:         if (s1[i] == '(') count++;
	lw	a5,-32(s0)		# _21, i
	ld	a4,-56(s0)		# tmp242, s1
	add	a5,a4,a5	# _21, _22, tmp242
	lbu	a5,0(a5)	# _23, *_22
# problem120.c:32:         if (s1[i] == '(') count++;
	mv	a4,a5	# tmp243, _23
	li	a5,40		# tmp244,
	bne	a4,a5,.L20	#, tmp243, tmp244,
# problem120.c:32:         if (s1[i] == '(') count++;
	lw	a5,-36(s0)		# tmp247, count
	addiw	a5,a5,1	#, tmp245, tmp246
	sw	a5,-36(s0)	# tmp245, count
.L20:
# problem120.c:33:         if (s1[i] == ')') count--;
	lw	a5,-32(s0)		# _24, i
	ld	a4,-56(s0)		# tmp248, s1
	add	a5,a4,a5	# _24, _25, tmp248
	lbu	a5,0(a5)	# _26, *_25
# problem120.c:33:         if (s1[i] == ')') count--;
	mv	a4,a5	# tmp249, _26
	li	a5,41		# tmp250,
	bne	a4,a5,.L21	#, tmp249, tmp250,
# problem120.c:33:         if (s1[i] == ')') count--;
	lw	a5,-36(s0)		# tmp253, count
	addiw	a5,a5,-1	#, tmp251, tmp252
	sw	a5,-36(s0)	# tmp251, count
.L21:
# problem120.c:34:         if (count < 0) can = 0;
	lw	a5,-36(s0)		# tmp255, count
	sext.w	a5,a5	# tmp256, tmp254
	bge	a5,zero,.L22	#, tmp256,,
# problem120.c:34:         if (count < 0) can = 0;
	sw	zero,-28(s0)	#, can
.L22:
# problem120.c:31:     for (i = 0; i < len1; i++) {
	lw	a5,-32(s0)		# tmp259, i
	addiw	a5,a5,1	#, tmp257, tmp258
	sw	a5,-32(s0)	# tmp257, i
.L19:
# problem120.c:31:     for (i = 0; i < len1; i++) {
	lw	a5,-32(s0)		# tmp261, i
	mv	a4,a5	# tmp260, tmp261
	lw	a5,-24(s0)		# tmp263, len1
	sext.w	a4,a4	# tmp264, tmp260
	sext.w	a5,a5	# tmp265, tmp262
	blt	a4,a5,.L23	#, tmp264, tmp265,
# problem120.c:36:     if (count == 0 && can) return "Yes";
	lw	a5,-36(s0)		# tmp267, count
	sext.w	a5,a5	# tmp268, tmp266
	bne	a5,zero,.L24	#, tmp268,,
# problem120.c:36:     if (count == 0 && can) return "Yes";
	lw	a5,-28(s0)		# tmp270, can
	sext.w	a5,a5	# tmp271, tmp269
	beq	a5,zero,.L24	#, tmp271,,
# problem120.c:36:     if (count == 0 && can) return "Yes";
	lla	a5,.LC0	# _51,
# problem120.c:36:     if (count == 0 && can) return "Yes";
	j	.L13		#
.L24:
# problem120.c:38:     return "No";
	lla	a5,.LC1	# _51,
.L13:
# problem120.c:39: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
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
.LFB1:
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
# problem120.c:48:     assert(strcmp(func0("()(", ")"), "Yes") == 0);
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	func0		#
	mv	a5,a0	# _1,
# problem120.c:48:     assert(strcmp(func0("()(", ")"), "Yes") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _1
	call	strcmp@plt	#
	mv	a5,a0	# tmp160,
# problem120.c:48:     assert(strcmp(func0("()(", ")"), "Yes") == 0);
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
# problem120.c:49:     assert(strcmp(func0(")", ")"), "No") == 0);
	lla	a1,.LC1	#,
	mv	a0,a5	#, _3
	call	strcmp@plt	#
	mv	a5,a0	# tmp161,
# problem120.c:49:     assert(strcmp(func0(")", ")"), "No") == 0);
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
# problem120.c:50:     assert(strcmp(func0("(()(())", "())())"), "No") == 0);
	lla	a1,.LC1	#,
	mv	a0,a5	#, _5
	call	strcmp@plt	#
	mv	a5,a0	# tmp162,
# problem120.c:50:     assert(strcmp(func0("(()(())", "())())"), "No") == 0);
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
# problem120.c:51:     assert(strcmp(func0(")())", "(()()("), "Yes") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _7
	call	strcmp@plt	#
	mv	a5,a0	# tmp163,
# problem120.c:51:     assert(strcmp(func0(")())", "(()()("), "Yes") == 0);
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
# problem120.c:52:     assert(strcmp(func0("(())))", "(()())(("), "Yes") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _9
	call	strcmp@plt	#
	mv	a5,a0	# tmp164,
# problem120.c:52:     assert(strcmp(func0("(())))", "(()())(("), "Yes") == 0);
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
# problem120.c:53:     assert(strcmp(func0("()", "())"), "No") == 0);
	lla	a1,.LC1	#,
	mv	a0,a5	#, _11
	call	strcmp@plt	#
	mv	a5,a0	# tmp165,
# problem120.c:53:     assert(strcmp(func0("()", "())"), "No") == 0);
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
# problem120.c:54:     assert(strcmp(func0("(()(", "()))()"), "Yes") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _13
	call	strcmp@plt	#
	mv	a5,a0	# tmp166,
# problem120.c:54:     assert(strcmp(func0("(()(", "()))()"), "Yes") == 0);
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
# problem120.c:55:     assert(strcmp(func0("((((", "((())"), "No") == 0);
	lla	a1,.LC1	#,
	mv	a0,a5	#, _15
	call	strcmp@plt	#
	mv	a5,a0	# tmp167,
# problem120.c:55:     assert(strcmp(func0("((((", "((())"), "No") == 0);
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
# problem120.c:56:     assert(strcmp(func0(")(()", "(()("), "No") == 0);
	lla	a1,.LC1	#,
	mv	a0,a5	#, _17
	call	strcmp@plt	#
	mv	a5,a0	# tmp168,
# problem120.c:56:     assert(strcmp(func0(")(()", "(()("), "No") == 0);
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
# problem120.c:57:     assert(strcmp(func0(")(", ")("), "No") == 0);
	lla	a1,.LC1	#,
	mv	a0,a5	#, _19
	call	strcmp@plt	#
	mv	a5,a0	# tmp169,
# problem120.c:57:     assert(strcmp(func0(")(", ")("), "No") == 0);
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
# problem120.c:58:     assert(strcmp(func0("(", ")"), "Yes") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _21
	call	strcmp@plt	#
	mv	a5,a0	# tmp170,
# problem120.c:58:     assert(strcmp(func0("(", ")"), "Yes") == 0);
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
# problem120.c:59:     assert(strcmp(func0(")", "("), "Yes") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _23
	call	strcmp@plt	#
	mv	a5,a0	# tmp171,
# problem120.c:59:     assert(strcmp(func0(")", "("), "Yes") == 0);
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
	.cfi_restore 1
	ld	s0,0(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
