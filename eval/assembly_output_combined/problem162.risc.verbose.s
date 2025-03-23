	.file	"problem162.c"
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
	sd	a0,-56(s0)	# s, s
# problem162.c:6:     int nletter = 0;
	sw	zero,-32(s0)	#, nletter
# problem162.c:7:     int length = strlen(s);
	ld	a0,-56(s0)		#, s
	call	strlen@plt	#
	mv	a5,a0	# _1,
# problem162.c:7:     int length = strlen(s);
	sw	a5,-20(s0)	# _1, length
# problem162.c:8:     for (int i = 0; i < length; i++) {
	sw	zero,-28(s0)	#, i
# problem162.c:8:     for (int i = 0; i < length; i++) {
	j	.L2		#
.L6:
# problem162.c:9:         if (isalpha((unsigned char)s[i])) {
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _2,
# problem162.c:9:         if (isalpha((unsigned char)s[i])) {
	ld	a4,0(a5)		# _3, *_2
	lw	a5,-28(s0)		# _4, i
	ld	a3,-56(s0)		# tmp200, s
	add	a5,a3,a5	# _4, _5, tmp200
	lbu	a5,0(a5)	# _6, *_5
	slli	a5,a5,1	#, _8, _7
	add	a5,a4,a5	# _8, _9, _3
	lhu	a5,0(a5)	# _10, *_9
	sext.w	a5,a5	# _11, _10
	andi	a5,a5,1024	#, tmp201, _11
	sext.w	a5,a5	# _12, tmp201
# problem162.c:9:         if (isalpha((unsigned char)s[i])) {
	beq	a5,zero,.L3	#, _12,,
# problem162.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _13,
# problem162.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	ld	a4,0(a5)		# _14, *_13
	lw	a5,-28(s0)		# _15, i
	ld	a3,-56(s0)		# tmp202, s
	add	a5,a3,a5	# _15, _16, tmp202
	lbu	a5,0(a5)	# _17, *_16
	slli	a5,a5,1	#, _19, _18
	add	a5,a4,a5	# _19, _20, _14
	lhu	a5,0(a5)	# _21, *_20
	sext.w	a5,a5	# _22, _21
	andi	a5,a5,256	#, tmp203, _22
	sext.w	a5,a5	# _23, tmp203
# problem162.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	beq	a5,zero,.L4	#, _23,,
# problem162.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	lw	a5,-28(s0)		# _24, i
	ld	a4,-56(s0)		# tmp204, s
	add	a5,a4,a5	# _24, _25, tmp204
	lbu	a5,0(a5)	# _26, *_25
# problem162.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	sext.w	a5,a5	# _27, _26
	mv	a0,a5	#, _27
	call	tolower@plt	#
	mv	a5,a0	# tmp205,
	mv	a3,a5	# _28, tmp205
# problem162.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	lw	a5,-28(s0)		# _29, i
	ld	a4,-56(s0)		# tmp206, s
	add	a5,a4,a5	# _29, _30, tmp206
# problem162.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	andi	a4,a3,0xff	# _31, _28
	sb	a4,0(a5)	# _31, *_30
	j	.L5		#
.L4:
# problem162.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _32,
# problem162.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	ld	a4,0(a5)		# _33, *_32
	lw	a5,-28(s0)		# _34, i
	ld	a3,-56(s0)		# tmp207, s
	add	a5,a3,a5	# _34, _35, tmp207
	lbu	a5,0(a5)	# _36, *_35
	slli	a5,a5,1	#, _38, _37
	add	a5,a4,a5	# _38, _39, _33
	lhu	a5,0(a5)	# _40, *_39
	sext.w	a5,a5	# _41, _40
	andi	a5,a5,512	#, tmp208, _41
	sext.w	a5,a5	# _42, tmp208
# problem162.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	beq	a5,zero,.L5	#, _42,,
# problem162.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	lw	a5,-28(s0)		# _43, i
	ld	a4,-56(s0)		# tmp209, s
	add	a5,a4,a5	# _43, _44, tmp209
	lbu	a5,0(a5)	# _45, *_44
# problem162.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	sext.w	a5,a5	# _46, _45
	mv	a0,a5	#, _46
	call	toupper@plt	#
	mv	a5,a0	# tmp210,
	mv	a3,a5	# _47, tmp210
# problem162.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	lw	a5,-28(s0)		# _48, i
	ld	a4,-56(s0)		# tmp211, s
	add	a5,a4,a5	# _48, _49, tmp211
# problem162.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	andi	a4,a3,0xff	# _50, _47
	sb	a4,0(a5)	# _50, *_49
	j	.L5		#
.L3:
# problem162.c:13:             nletter += 1;
	lw	a5,-32(s0)		# tmp214, nletter
	addiw	a5,a5,1	#, tmp212, tmp213
	sw	a5,-32(s0)	# tmp212, nletter
.L5:
# problem162.c:8:     for (int i = 0; i < length; i++) {
	lw	a5,-28(s0)		# tmp217, i
	addiw	a5,a5,1	#, tmp215, tmp216
	sw	a5,-28(s0)	# tmp215, i
.L2:
# problem162.c:8:     for (int i = 0; i < length; i++) {
	lw	a5,-28(s0)		# tmp219, i
	mv	a4,a5	# tmp218, tmp219
	lw	a5,-20(s0)		# tmp221, length
	sext.w	a4,a4	# tmp222, tmp218
	sext.w	a5,a5	# tmp223, tmp220
	blt	a4,a5,.L6	#, tmp222, tmp223,
# problem162.c:16:     if (nletter == length) {
	lw	a5,-32(s0)		# tmp225, nletter
	mv	a4,a5	# tmp224, tmp225
	lw	a5,-20(s0)		# tmp227, length
	sext.w	a4,a4	# tmp228, tmp224
	sext.w	a5,a5	# tmp229, tmp226
	bne	a4,a5,.L7	#, tmp228, tmp229,
# problem162.c:17:         for (int i = 0; i < length / 2; i++) {
	sw	zero,-24(s0)	#, i
# problem162.c:17:         for (int i = 0; i < length / 2; i++) {
	j	.L8		#
.L9:
# problem162.c:18:             char temp = s[i];
	lw	a5,-24(s0)		# _51, i
	ld	a4,-56(s0)		# tmp230, s
	add	a5,a4,a5	# _51, _52, tmp230
# problem162.c:18:             char temp = s[i];
	lbu	a5,0(a5)	# tmp231, *_52
	sb	a5,-33(s0)	# tmp231, temp
# problem162.c:19:             s[i] = s[length - i - 1];
	lw	a5,-20(s0)		# tmp234, length
	mv	a4,a5	# tmp233, tmp234
	lw	a5,-24(s0)		# tmp236, i
	subw	a5,a4,a5	# tmp232, tmp233, tmp235
	sext.w	a5,a5	# _53, tmp232
# problem162.c:19:             s[i] = s[length - i - 1];
	addi	a5,a5,-1	#, _55, _54
	ld	a4,-56(s0)		# tmp237, s
	add	a4,a4,a5	# _55, _56, tmp237
# problem162.c:19:             s[i] = s[length - i - 1];
	lw	a5,-24(s0)		# _57, i
	ld	a3,-56(s0)		# tmp238, s
	add	a5,a3,a5	# _57, _58, tmp238
# problem162.c:19:             s[i] = s[length - i - 1];
	lbu	a4,0(a4)	# _59, *_56
# problem162.c:19:             s[i] = s[length - i - 1];
	sb	a4,0(a5)	# _59, *_58
# problem162.c:20:             s[length - i - 1] = temp;
	lw	a5,-20(s0)		# tmp241, length
	mv	a4,a5	# tmp240, tmp241
	lw	a5,-24(s0)		# tmp243, i
	subw	a5,a4,a5	# tmp239, tmp240, tmp242
	sext.w	a5,a5	# _60, tmp239
# problem162.c:20:             s[length - i - 1] = temp;
	addi	a5,a5,-1	#, _62, _61
	ld	a4,-56(s0)		# tmp244, s
	add	a5,a4,a5	# _62, _63, tmp244
# problem162.c:20:             s[length - i - 1] = temp;
	lbu	a4,-33(s0)	# tmp245, temp
	sb	a4,0(a5)	# tmp245, *_63
# problem162.c:17:         for (int i = 0; i < length / 2; i++) {
	lw	a5,-24(s0)		# tmp248, i
	addiw	a5,a5,1	#, tmp246, tmp247
	sw	a5,-24(s0)	# tmp246, i
.L8:
# problem162.c:17:         for (int i = 0; i < length / 2; i++) {
	lw	a5,-20(s0)		# tmp251, length
	srliw	a4,a5,31	#, tmp252, tmp250
	addw	a5,a4,a5	# tmp250, tmp253, tmp252
	sraiw	a5,a5,1	#, tmp254, tmp253
	sext.w	a4,a5	# _64, tmp254
# problem162.c:17:         for (int i = 0; i < length / 2; i++) {
	lw	a5,-24(s0)		# tmp256, i
	sext.w	a5,a5	# tmp257, tmp255
	blt	a5,a4,.L9	#, tmp257, tmp258,
.L7:
# problem162.c:23:     return s;
	ld	a5,-56(s0)		# _83, s
# problem162.c:24: }
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
.LC0:
	.string	"aSdF"
	.align	3
.LC1:
	.string	"problem162.c"
	.align	3
.LC2:
	.string	"strcmp(func0(test1), \"aSdF\") == 0"
	.align	3
.LC3:
	.string	"4321"
	.align	3
.LC4:
	.string	"strcmp(func0(test2), \"4321\") == 0"
	.align	3
.LC5:
	.string	"AB"
	.align	3
.LC6:
	.string	"strcmp(func0(test3), \"AB\") == 0"
	.align	3
.LC7:
	.string	"#A@c"
	.align	3
.LC8:
	.string	"strcmp(func0(test4), \"#A@c\") == 0"
	.align	3
.LC10:
	.string	"#aSDFw^45"
	.align	3
.LC11:
	.string	"strcmp(func0(test5), \"#aSDFw^45\") == 0"
	.align	3
.LC12:
	.string	"2@6#"
	.align	3
.LC13:
	.string	"strcmp(func0(test6), \"2@6#\") == 0"
	.align	3
.LC14:
	.string	"#$A^d"
	.align	3
.LC15:
	.string	"strcmp(func0(test7), \"#$A^d\") == 0"
	.align	3
.LC16:
	.string	"#CCC"
	.align	3
.LC17:
	.string	"strcmp(func0(test8), \"#CCC\") == 0"
	.align	3
.LC9:
	.string	"#AsdfW^45"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-96	#,,
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96	#,,
	.cfi_def_cfa 8, 0
# problem162.c:31: int main(){
	la	a5,__stack_chk_guard		# tmp152,
	ld	a4, 0(a5)	# tmp190, __stack_chk_guard
	sd	a4, -24(s0)	# tmp190, D.3105
	li	a4, 0	# tmp190
# problem162.c:32:     char test1[] = "AsDf";
	li	a5,1715761152		# tmp154,
	addi	a5,a5,833	#, tmp153, tmp154
	sw	a5,-88(s0)	# tmp153, test1
	sb	zero,-84(s0)	#, test1
# problem162.c:33:     assert(strcmp(func0(test1), "aSdF") == 0);
	addi	a5,s0,-88	#, tmp155,
	mv	a0,a5	#, tmp155
	call	func0		#
	mv	a5,a0	# _1,
# problem162.c:33:     assert(strcmp(func0(test1), "aSdF") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _1
	call	strcmp@plt	#
	mv	a5,a0	# tmp156,
# problem162.c:33:     assert(strcmp(func0(test1), "aSdF") == 0);
	beq	a5,zero,.L12	#, _2,,
# problem162.c:33:     assert(strcmp(func0(test1), "aSdF") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L12:
# problem162.c:35:     char test2[] = "1234";
	li	a5,875769856		# tmp158,
	addi	a5,a5,561	#, tmp157, tmp158
	sw	a5,-80(s0)	# tmp157, test2
	sb	zero,-76(s0)	#, test2
# problem162.c:36:     assert(strcmp(func0(test2), "4321") == 0);
	addi	a5,s0,-80	#, tmp159,
	mv	a0,a5	#, tmp159
	call	func0		#
	mv	a5,a0	# _3,
# problem162.c:36:     assert(strcmp(func0(test2), "4321") == 0);
	lla	a1,.LC3	#,
	mv	a0,a5	#, _3
	call	strcmp@plt	#
	mv	a5,a0	# tmp160,
# problem162.c:36:     assert(strcmp(func0(test2), "4321") == 0);
	beq	a5,zero,.L13	#, _4,,
# problem162.c:36:     assert(strcmp(func0(test2), "4321") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L13:
# problem162.c:38:     char test3[] = "ab";
	li	a5,24576		# tmp162,
	addi	a5,a5,609	#, tmp161, tmp162
	sh	a5,-96(s0)	# tmp161, test3
	sb	zero,-94(s0)	#, test3
# problem162.c:39:     assert(strcmp(func0(test3), "AB") == 0);
	addi	a5,s0,-96	#, tmp163,
	mv	a0,a5	#, tmp163
	call	func0		#
	mv	a5,a0	# _5,
# problem162.c:39:     assert(strcmp(func0(test3), "AB") == 0);
	lla	a1,.LC5	#,
	mv	a0,a5	#, _5
	call	strcmp@plt	#
	mv	a5,a0	# tmp164,
# problem162.c:39:     assert(strcmp(func0(test3), "AB") == 0);
	beq	a5,zero,.L14	#, _6,,
# problem162.c:39:     assert(strcmp(func0(test3), "AB") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,39		#,
	lla	a1,.LC1	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L14:
# problem162.c:41:     char test4[] = "#a@C";
	li	a5,1128292352		# tmp166,
	addi	a5,a5,291	#, tmp165, tmp166
	sw	a5,-72(s0)	# tmp165, test4
	sb	zero,-68(s0)	#, test4
# problem162.c:42:     assert(strcmp(func0(test4), "#A@c") == 0);
	addi	a5,s0,-72	#, tmp167,
	mv	a0,a5	#, tmp167
	call	func0		#
	mv	a5,a0	# _7,
# problem162.c:42:     assert(strcmp(func0(test4), "#A@c") == 0);
	lla	a1,.LC7	#,
	mv	a0,a5	#, _7
	call	strcmp@plt	#
	mv	a5,a0	# tmp168,
# problem162.c:42:     assert(strcmp(func0(test4), "#A@c") == 0);
	beq	a5,zero,.L15	#, _8,,
# problem162.c:42:     assert(strcmp(func0(test4), "#A@c") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,42		#,
	lla	a1,.LC1	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L15:
# problem162.c:44:     char test5[] = "#AsdfW^45";
	lla	a5,.LC9	# tmp169,
	ld	a4,0(a5)		# tmp170,
	sd	a4,-40(s0)	# tmp170, test5
	lhu	a5,8(a5)	# tmp171,
	sh	a5,-32(s0)	# tmp171, test5
# problem162.c:45:     assert(strcmp(func0(test5), "#aSDFw^45") == 0);
	addi	a5,s0,-40	#, tmp172,
	mv	a0,a5	#, tmp172
	call	func0		#
	mv	a5,a0	# _9,
# problem162.c:45:     assert(strcmp(func0(test5), "#aSDFw^45") == 0);
	lla	a1,.LC10	#,
	mv	a0,a5	#, _9
	call	strcmp@plt	#
	mv	a5,a0	# tmp173,
# problem162.c:45:     assert(strcmp(func0(test5), "#aSDFw^45") == 0);
	beq	a5,zero,.L16	#, _10,,
# problem162.c:45:     assert(strcmp(func0(test5), "#aSDFw^45") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC1	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L16:
# problem162.c:47:     char test6[] = "#6@2";
	li	a5,843067392		# tmp175,
	addi	a5,a5,1571	#, tmp174, tmp175
	sw	a5,-64(s0)	# tmp174, test6
	sb	zero,-60(s0)	#, test6
# problem162.c:48:     assert(strcmp(func0(test6), "2@6#") == 0);
	addi	a5,s0,-64	#, tmp176,
	mv	a0,a5	#, tmp176
	call	func0		#
	mv	a5,a0	# _11,
# problem162.c:48:     assert(strcmp(func0(test6), "2@6#") == 0);
	lla	a1,.LC12	#,
	mv	a0,a5	#, _11
	call	strcmp@plt	#
	mv	a5,a0	# tmp177,
# problem162.c:48:     assert(strcmp(func0(test6), "2@6#") == 0);
	beq	a5,zero,.L17	#, _12,,
# problem162.c:48:     assert(strcmp(func0(test6), "2@6#") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,48		#,
	lla	a1,.LC1	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L17:
# problem162.c:50:     char test7[] = "#$a^D";
	li	a5,1583423488		# tmp179,
	addi	a5,a5,1059	#, tmp178, tmp179
	sw	a5,-48(s0)	# tmp178, test7
	li	a5,68		# tmp180,
	sh	a5,-44(s0)	# tmp180, test7
# problem162.c:51:     assert(strcmp(func0(test7), "#$A^d") == 0);
	addi	a5,s0,-48	#, tmp181,
	mv	a0,a5	#, tmp181
	call	func0		#
	mv	a5,a0	# _13,
# problem162.c:51:     assert(strcmp(func0(test7), "#$A^d") == 0);
	lla	a1,.LC14	#,
	mv	a0,a5	#, _13
	call	strcmp@plt	#
	mv	a5,a0	# tmp182,
# problem162.c:51:     assert(strcmp(func0(test7), "#$A^d") == 0);
	beq	a5,zero,.L18	#, _14,,
# problem162.c:51:     assert(strcmp(func0(test7), "#$A^d") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,51		#,
	lla	a1,.LC1	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L18:
# problem162.c:53:     char test8[] = "#ccc";
	li	a5,1667457024		# tmp184,
	addi	a5,a5,803	#, tmp183, tmp184
	sw	a5,-56(s0)	# tmp183, test8
	sb	zero,-52(s0)	#, test8
# problem162.c:54:     assert(strcmp(func0(test8), "#CCC") == 0);
	addi	a5,s0,-56	#, tmp185,
	mv	a0,a5	#, tmp185
	call	func0		#
	mv	a5,a0	# _15,
# problem162.c:54:     assert(strcmp(func0(test8), "#CCC") == 0);
	lla	a1,.LC16	#,
	mv	a0,a5	#, _15
	call	strcmp@plt	#
	mv	a5,a0	# tmp186,
# problem162.c:54:     assert(strcmp(func0(test8), "#CCC") == 0);
	beq	a5,zero,.L19	#, _16,,
# problem162.c:54:     assert(strcmp(func0(test8), "#CCC") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,54		#,
	lla	a1,.LC1	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L19:
# problem162.c:56:     return 0;
	li	a5,0		# _42,
# problem162.c:57: }
	mv	a4,a5	# <retval>, _42
	la	a5,__stack_chk_guard		# tmp188,
	ld	a3, -24(s0)	# tmp191, D.3105
	ld	a5, 0(a5)	# tmp189, __stack_chk_guard
	xor	a5, a3, a5	# tmp189, tmp191
	li	a3, 0	# tmp191
	beq	a5,zero,.L21	#, tmp189,,
	call	__stack_chk_fail@plt	#
.L21:
	mv	a0,a4	#, <retval>
	ld	ra,88(sp)		#,
	.cfi_restore 1
	ld	s0,80(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96	#,,
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
