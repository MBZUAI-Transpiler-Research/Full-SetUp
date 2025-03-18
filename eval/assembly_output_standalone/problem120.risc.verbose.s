	.file	"code.c"
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
# eval/problem120//code.c:5:     int count = 0;
	sw	zero,-36(s0)	#, count
# eval/problem120//code.c:6:     int len1 = strlen(s1);
	ld	a0,-56(s0)		#, s1
	call	strlen@plt	#
	mv	a5,a0	# _1,
# eval/problem120//code.c:6:     int len1 = strlen(s1);
	sw	a5,-24(s0)	# _1, len1
# eval/problem120//code.c:7:     int len2 = strlen(s2);
	ld	a0,-64(s0)		#, s2
	call	strlen@plt	#
	mv	a5,a0	# _2,
# eval/problem120//code.c:7:     int len2 = strlen(s2);
	sw	a5,-20(s0)	# _2, len2
# eval/problem120//code.c:9:     int can = 1;
	li	a5,1		# tmp162,
	sw	a5,-28(s0)	# tmp162, can
# eval/problem120//code.c:11:     for (i = 0; i < len1; i++) {
	sw	zero,-32(s0)	#, i
# eval/problem120//code.c:11:     for (i = 0; i < len1; i++) {
	j	.L2		#
.L6:
# eval/problem120//code.c:12:         if (s1[i] == '(') count++;
	lw	a5,-32(s0)		# _3, i
	ld	a4,-56(s0)		# tmp163, s1
	add	a5,a4,a5	# _3, _4, tmp163
	lbu	a5,0(a5)	# _5, *_4
# eval/problem120//code.c:12:         if (s1[i] == '(') count++;
	mv	a4,a5	# tmp164, _5
	li	a5,40		# tmp165,
	bne	a4,a5,.L3	#, tmp164, tmp165,
# eval/problem120//code.c:12:         if (s1[i] == '(') count++;
	lw	a5,-36(s0)		# tmp168, count
	addiw	a5,a5,1	#, tmp166, tmp167
	sw	a5,-36(s0)	# tmp166, count
.L3:
# eval/problem120//code.c:13:         if (s1[i] == ')') count--;
	lw	a5,-32(s0)		# _6, i
	ld	a4,-56(s0)		# tmp169, s1
	add	a5,a4,a5	# _6, _7, tmp169
	lbu	a5,0(a5)	# _8, *_7
# eval/problem120//code.c:13:         if (s1[i] == ')') count--;
	mv	a4,a5	# tmp170, _8
	li	a5,41		# tmp171,
	bne	a4,a5,.L4	#, tmp170, tmp171,
# eval/problem120//code.c:13:         if (s1[i] == ')') count--;
	lw	a5,-36(s0)		# tmp174, count
	addiw	a5,a5,-1	#, tmp172, tmp173
	sw	a5,-36(s0)	# tmp172, count
.L4:
# eval/problem120//code.c:14:         if (count < 0) can = 0;
	lw	a5,-36(s0)		# tmp176, count
	sext.w	a5,a5	# tmp177, tmp175
	bge	a5,zero,.L5	#, tmp177,,
# eval/problem120//code.c:14:         if (count < 0) can = 0;
	sw	zero,-28(s0)	#, can
.L5:
# eval/problem120//code.c:11:     for (i = 0; i < len1; i++) {
	lw	a5,-32(s0)		# tmp180, i
	addiw	a5,a5,1	#, tmp178, tmp179
	sw	a5,-32(s0)	# tmp178, i
.L2:
# eval/problem120//code.c:11:     for (i = 0; i < len1; i++) {
	lw	a5,-32(s0)		# tmp182, i
	mv	a4,a5	# tmp181, tmp182
	lw	a5,-24(s0)		# tmp184, len1
	sext.w	a4,a4	# tmp185, tmp181
	sext.w	a5,a5	# tmp186, tmp183
	blt	a4,a5,.L6	#, tmp185, tmp186,
# eval/problem120//code.c:16:     for (i = 0; i < len2; i++) {
	sw	zero,-32(s0)	#, i
# eval/problem120//code.c:16:     for (i = 0; i < len2; i++) {
	j	.L7		#
.L11:
# eval/problem120//code.c:17:         if (s2[i] == '(') count++;
	lw	a5,-32(s0)		# _9, i
	ld	a4,-64(s0)		# tmp187, s2
	add	a5,a4,a5	# _9, _10, tmp187
	lbu	a5,0(a5)	# _11, *_10
# eval/problem120//code.c:17:         if (s2[i] == '(') count++;
	mv	a4,a5	# tmp188, _11
	li	a5,40		# tmp189,
	bne	a4,a5,.L8	#, tmp188, tmp189,
# eval/problem120//code.c:17:         if (s2[i] == '(') count++;
	lw	a5,-36(s0)		# tmp192, count
	addiw	a5,a5,1	#, tmp190, tmp191
	sw	a5,-36(s0)	# tmp190, count
.L8:
# eval/problem120//code.c:18:         if (s2[i] == ')') count--;
	lw	a5,-32(s0)		# _12, i
	ld	a4,-64(s0)		# tmp193, s2
	add	a5,a4,a5	# _12, _13, tmp193
	lbu	a5,0(a5)	# _14, *_13
# eval/problem120//code.c:18:         if (s2[i] == ')') count--;
	mv	a4,a5	# tmp194, _14
	li	a5,41		# tmp195,
	bne	a4,a5,.L9	#, tmp194, tmp195,
# eval/problem120//code.c:18:         if (s2[i] == ')') count--;
	lw	a5,-36(s0)		# tmp198, count
	addiw	a5,a5,-1	#, tmp196, tmp197
	sw	a5,-36(s0)	# tmp196, count
.L9:
# eval/problem120//code.c:19:         if (count < 0) can = 0;
	lw	a5,-36(s0)		# tmp200, count
	sext.w	a5,a5	# tmp201, tmp199
	bge	a5,zero,.L10	#, tmp201,,
# eval/problem120//code.c:19:         if (count < 0) can = 0;
	sw	zero,-28(s0)	#, can
.L10:
# eval/problem120//code.c:16:     for (i = 0; i < len2; i++) {
	lw	a5,-32(s0)		# tmp204, i
	addiw	a5,a5,1	#, tmp202, tmp203
	sw	a5,-32(s0)	# tmp202, i
.L7:
# eval/problem120//code.c:16:     for (i = 0; i < len2; i++) {
	lw	a5,-32(s0)		# tmp206, i
	mv	a4,a5	# tmp205, tmp206
	lw	a5,-20(s0)		# tmp208, len2
	sext.w	a4,a4	# tmp209, tmp205
	sext.w	a5,a5	# tmp210, tmp207
	blt	a4,a5,.L11	#, tmp209, tmp210,
# eval/problem120//code.c:21:     if (count == 0 && can) return "Yes";
	lw	a5,-36(s0)		# tmp212, count
	sext.w	a5,a5	# tmp213, tmp211
	bne	a5,zero,.L12	#, tmp213,,
# eval/problem120//code.c:21:     if (count == 0 && can) return "Yes";
	lw	a5,-28(s0)		# tmp215, can
	sext.w	a5,a5	# tmp216, tmp214
	beq	a5,zero,.L12	#, tmp216,,
# eval/problem120//code.c:21:     if (count == 0 && can) return "Yes";
	lla	a5,.LC0	# _51,
# eval/problem120//code.c:21:     if (count == 0 && can) return "Yes";
	j	.L13		#
.L12:
# eval/problem120//code.c:23:     count = 0;
	sw	zero,-36(s0)	#, count
# eval/problem120//code.c:24:     can = 1;
	li	a5,1		# tmp217,
	sw	a5,-28(s0)	# tmp217, can
# eval/problem120//code.c:26:     for (i = 0; i < len2; i++) {
	sw	zero,-32(s0)	#, i
# eval/problem120//code.c:26:     for (i = 0; i < len2; i++) {
	j	.L14		#
.L18:
# eval/problem120//code.c:27:         if (s2[i] == '(') count++;
	lw	a5,-32(s0)		# _15, i
	ld	a4,-64(s0)		# tmp218, s2
	add	a5,a4,a5	# _15, _16, tmp218
	lbu	a5,0(a5)	# _17, *_16
# eval/problem120//code.c:27:         if (s2[i] == '(') count++;
	mv	a4,a5	# tmp219, _17
	li	a5,40		# tmp220,
	bne	a4,a5,.L15	#, tmp219, tmp220,
# eval/problem120//code.c:27:         if (s2[i] == '(') count++;
	lw	a5,-36(s0)		# tmp223, count
	addiw	a5,a5,1	#, tmp221, tmp222
	sw	a5,-36(s0)	# tmp221, count
.L15:
# eval/problem120//code.c:28:         if (s2[i] == ')') count--;
	lw	a5,-32(s0)		# _18, i
	ld	a4,-64(s0)		# tmp224, s2
	add	a5,a4,a5	# _18, _19, tmp224
	lbu	a5,0(a5)	# _20, *_19
# eval/problem120//code.c:28:         if (s2[i] == ')') count--;
	mv	a4,a5	# tmp225, _20
	li	a5,41		# tmp226,
	bne	a4,a5,.L16	#, tmp225, tmp226,
# eval/problem120//code.c:28:         if (s2[i] == ')') count--;
	lw	a5,-36(s0)		# tmp229, count
	addiw	a5,a5,-1	#, tmp227, tmp228
	sw	a5,-36(s0)	# tmp227, count
.L16:
# eval/problem120//code.c:29:         if (count < 0) can = 0;
	lw	a5,-36(s0)		# tmp231, count
	sext.w	a5,a5	# tmp232, tmp230
	bge	a5,zero,.L17	#, tmp232,,
# eval/problem120//code.c:29:         if (count < 0) can = 0;
	sw	zero,-28(s0)	#, can
.L17:
# eval/problem120//code.c:26:     for (i = 0; i < len2; i++) {
	lw	a5,-32(s0)		# tmp235, i
	addiw	a5,a5,1	#, tmp233, tmp234
	sw	a5,-32(s0)	# tmp233, i
.L14:
# eval/problem120//code.c:26:     for (i = 0; i < len2; i++) {
	lw	a5,-32(s0)		# tmp237, i
	mv	a4,a5	# tmp236, tmp237
	lw	a5,-20(s0)		# tmp239, len2
	sext.w	a4,a4	# tmp240, tmp236
	sext.w	a5,a5	# tmp241, tmp238
	blt	a4,a5,.L18	#, tmp240, tmp241,
# eval/problem120//code.c:31:     for (i = 0; i < len1; i++) {
	sw	zero,-32(s0)	#, i
# eval/problem120//code.c:31:     for (i = 0; i < len1; i++) {
	j	.L19		#
.L23:
# eval/problem120//code.c:32:         if (s1[i] == '(') count++;
	lw	a5,-32(s0)		# _21, i
	ld	a4,-56(s0)		# tmp242, s1
	add	a5,a4,a5	# _21, _22, tmp242
	lbu	a5,0(a5)	# _23, *_22
# eval/problem120//code.c:32:         if (s1[i] == '(') count++;
	mv	a4,a5	# tmp243, _23
	li	a5,40		# tmp244,
	bne	a4,a5,.L20	#, tmp243, tmp244,
# eval/problem120//code.c:32:         if (s1[i] == '(') count++;
	lw	a5,-36(s0)		# tmp247, count
	addiw	a5,a5,1	#, tmp245, tmp246
	sw	a5,-36(s0)	# tmp245, count
.L20:
# eval/problem120//code.c:33:         if (s1[i] == ')') count--;
	lw	a5,-32(s0)		# _24, i
	ld	a4,-56(s0)		# tmp248, s1
	add	a5,a4,a5	# _24, _25, tmp248
	lbu	a5,0(a5)	# _26, *_25
# eval/problem120//code.c:33:         if (s1[i] == ')') count--;
	mv	a4,a5	# tmp249, _26
	li	a5,41		# tmp250,
	bne	a4,a5,.L21	#, tmp249, tmp250,
# eval/problem120//code.c:33:         if (s1[i] == ')') count--;
	lw	a5,-36(s0)		# tmp253, count
	addiw	a5,a5,-1	#, tmp251, tmp252
	sw	a5,-36(s0)	# tmp251, count
.L21:
# eval/problem120//code.c:34:         if (count < 0) can = 0;
	lw	a5,-36(s0)		# tmp255, count
	sext.w	a5,a5	# tmp256, tmp254
	bge	a5,zero,.L22	#, tmp256,,
# eval/problem120//code.c:34:         if (count < 0) can = 0;
	sw	zero,-28(s0)	#, can
.L22:
# eval/problem120//code.c:31:     for (i = 0; i < len1; i++) {
	lw	a5,-32(s0)		# tmp259, i
	addiw	a5,a5,1	#, tmp257, tmp258
	sw	a5,-32(s0)	# tmp257, i
.L19:
# eval/problem120//code.c:31:     for (i = 0; i < len1; i++) {
	lw	a5,-32(s0)		# tmp261, i
	mv	a4,a5	# tmp260, tmp261
	lw	a5,-24(s0)		# tmp263, len1
	sext.w	a4,a4	# tmp264, tmp260
	sext.w	a5,a5	# tmp265, tmp262
	blt	a4,a5,.L23	#, tmp264, tmp265,
# eval/problem120//code.c:36:     if (count == 0 && can) return "Yes";
	lw	a5,-36(s0)		# tmp267, count
	sext.w	a5,a5	# tmp268, tmp266
	bne	a5,zero,.L24	#, tmp268,,
# eval/problem120//code.c:36:     if (count == 0 && can) return "Yes";
	lw	a5,-28(s0)		# tmp270, can
	sext.w	a5,a5	# tmp271, tmp269
	beq	a5,zero,.L24	#, tmp271,,
# eval/problem120//code.c:36:     if (count == 0 && can) return "Yes";
	lla	a5,.LC0	# _51,
# eval/problem120//code.c:36:     if (count == 0 && can) return "Yes";
	j	.L13		#
.L24:
# eval/problem120//code.c:38:     return "No";
	lla	a5,.LC1	# _51,
.L13:
# eval/problem120//code.c:39: }
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
