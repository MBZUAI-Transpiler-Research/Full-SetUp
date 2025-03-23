	.file	"problem162.c"
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
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
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
	ld	a4,0(a5)		# _3, *_2
	lw	a5,-28(s0)		# _4, i
	ld	a3,-56(s0)		# tmp138, s
	add	a5,a3,a5	# _4, _5, tmp138
	lbu	a5,0(a5)	# _6, *_5
	slli	a5,a5,1	#, _8, _7
	add	a5,a4,a5	# _8, _9, _3
	lhu	a5,0(a5)	# _10, *_9
	sext.w	a5,a5	# _11, _10
	andi	a5,a5,1024	#, tmp139, _11
	sext.w	a5,a5	# _12, tmp139
# problem162.c:9:         if (isalpha((unsigned char)s[i])) {
	beq	a5,zero,.L3	#, _12,,
# problem162.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _13,
	ld	a4,0(a5)		# _14, *_13
	lw	a5,-28(s0)		# _15, i
	ld	a3,-56(s0)		# tmp140, s
	add	a5,a3,a5	# _15, _16, tmp140
	lbu	a5,0(a5)	# _17, *_16
	slli	a5,a5,1	#, _19, _18
	add	a5,a4,a5	# _19, _20, _14
	lhu	a5,0(a5)	# _21, *_20
	sext.w	a5,a5	# _22, _21
	andi	a5,a5,256	#, tmp141, _22
	sext.w	a5,a5	# _23, tmp141
# problem162.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	beq	a5,zero,.L4	#, _23,,
# problem162.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	lw	a5,-28(s0)		# _24, i
	ld	a4,-56(s0)		# tmp142, s
	add	a5,a4,a5	# _24, _25, tmp142
	lbu	a5,0(a5)	# _26, *_25
# problem162.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	sext.w	a5,a5	# _27, _26
	mv	a0,a5	#, _27
	call	tolower@plt	#
	mv	a5,a0	# tmp143,
	mv	a3,a5	# _28, tmp143
# problem162.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	lw	a5,-28(s0)		# _29, i
	ld	a4,-56(s0)		# tmp144, s
	add	a5,a4,a5	# _29, _30, tmp144
# problem162.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	andi	a4,a3,0xff	# _31, _28
	sb	a4,0(a5)	# _31, *_30
	j	.L5		#
.L4:
# problem162.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _32,
	ld	a4,0(a5)		# _33, *_32
	lw	a5,-28(s0)		# _34, i
	ld	a3,-56(s0)		# tmp145, s
	add	a5,a3,a5	# _34, _35, tmp145
	lbu	a5,0(a5)	# _36, *_35
	slli	a5,a5,1	#, _38, _37
	add	a5,a4,a5	# _38, _39, _33
	lhu	a5,0(a5)	# _40, *_39
	sext.w	a5,a5	# _41, _40
	andi	a5,a5,512	#, tmp146, _41
	sext.w	a5,a5	# _42, tmp146
# problem162.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	beq	a5,zero,.L5	#, _42,,
# problem162.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	lw	a5,-28(s0)		# _43, i
	ld	a4,-56(s0)		# tmp147, s
	add	a5,a4,a5	# _43, _44, tmp147
	lbu	a5,0(a5)	# _45, *_44
# problem162.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	sext.w	a5,a5	# _46, _45
	mv	a0,a5	#, _46
	call	toupper@plt	#
	mv	a5,a0	# tmp148,
	mv	a3,a5	# _47, tmp148
# problem162.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	lw	a5,-28(s0)		# _48, i
	ld	a4,-56(s0)		# tmp149, s
	add	a5,a4,a5	# _48, _49, tmp149
# problem162.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	andi	a4,a3,0xff	# _50, _47
	sb	a4,0(a5)	# _50, *_49
	j	.L5		#
.L3:
# problem162.c:13:             nletter += 1;
	lw	a5,-32(s0)		# tmp152, nletter
	addiw	a5,a5,1	#, tmp150, tmp151
	sw	a5,-32(s0)	# tmp150, nletter
.L5:
# problem162.c:8:     for (int i = 0; i < length; i++) {
	lw	a5,-28(s0)		# tmp155, i
	addiw	a5,a5,1	#, tmp153, tmp154
	sw	a5,-28(s0)	# tmp153, i
.L2:
# problem162.c:8:     for (int i = 0; i < length; i++) {
	lw	a5,-28(s0)		# tmp157, i
	mv	a4,a5	# tmp156, tmp157
	lw	a5,-20(s0)		# tmp159, length
	sext.w	a4,a4	# tmp160, tmp156
	sext.w	a5,a5	# tmp161, tmp158
	blt	a4,a5,.L6	#, tmp160, tmp161,
# problem162.c:16:     if (nletter == length) {
	lw	a5,-32(s0)		# tmp163, nletter
	mv	a4,a5	# tmp162, tmp163
	lw	a5,-20(s0)		# tmp165, length
	sext.w	a4,a4	# tmp166, tmp162
	sext.w	a5,a5	# tmp167, tmp164
	bne	a4,a5,.L7	#, tmp166, tmp167,
# problem162.c:17:         for (int i = 0; i < length / 2; i++) {
	sw	zero,-24(s0)	#, i
# problem162.c:17:         for (int i = 0; i < length / 2; i++) {
	j	.L8		#
.L9:
# problem162.c:18:             char temp = s[i];
	lw	a5,-24(s0)		# _51, i
	ld	a4,-56(s0)		# tmp168, s
	add	a5,a4,a5	# _51, _52, tmp168
# problem162.c:18:             char temp = s[i];
	lbu	a5,0(a5)	# tmp169, *_52
	sb	a5,-33(s0)	# tmp169, temp
# problem162.c:19:             s[i] = s[length - i - 1];
	lw	a5,-20(s0)		# tmp172, length
	mv	a4,a5	# tmp171, tmp172
	lw	a5,-24(s0)		# tmp174, i
	subw	a5,a4,a5	# tmp170, tmp171, tmp173
	sext.w	a5,a5	# _53, tmp170
# problem162.c:19:             s[i] = s[length - i - 1];
	addi	a5,a5,-1	#, _55, _54
	ld	a4,-56(s0)		# tmp175, s
	add	a4,a4,a5	# _55, _56, tmp175
# problem162.c:19:             s[i] = s[length - i - 1];
	lw	a5,-24(s0)		# _57, i
	ld	a3,-56(s0)		# tmp176, s
	add	a5,a3,a5	# _57, _58, tmp176
# problem162.c:19:             s[i] = s[length - i - 1];
	lbu	a4,0(a4)	# _59, *_56
# problem162.c:19:             s[i] = s[length - i - 1];
	sb	a4,0(a5)	# _59, *_58
# problem162.c:20:             s[length - i - 1] = temp;
	lw	a5,-20(s0)		# tmp179, length
	mv	a4,a5	# tmp178, tmp179
	lw	a5,-24(s0)		# tmp181, i
	subw	a5,a4,a5	# tmp177, tmp178, tmp180
	sext.w	a5,a5	# _60, tmp177
# problem162.c:20:             s[length - i - 1] = temp;
	addi	a5,a5,-1	#, _62, _61
	ld	a4,-56(s0)		# tmp182, s
	add	a5,a4,a5	# _62, _63, tmp182
# problem162.c:20:             s[length - i - 1] = temp;
	lbu	a4,-33(s0)	# tmp183, temp
	sb	a4,0(a5)	# tmp183, *_63
# problem162.c:17:         for (int i = 0; i < length / 2; i++) {
	lw	a5,-24(s0)		# tmp186, i
	addiw	a5,a5,1	#, tmp184, tmp185
	sw	a5,-24(s0)	# tmp184, i
.L8:
# problem162.c:17:         for (int i = 0; i < length / 2; i++) {
	lw	a5,-20(s0)		# tmp189, length
	srliw	a4,a5,31	#, tmp190, tmp188
	addw	a5,a4,a5	# tmp188, tmp191, tmp190
	sraiw	a5,a5,1	#, tmp192, tmp191
	sext.w	a4,a5	# _64, tmp192
# problem162.c:17:         for (int i = 0; i < length / 2; i++) {
	lw	a5,-24(s0)		# tmp194, i
	sext.w	a5,a5	# tmp195, tmp193
	blt	a5,a4,.L9	#, tmp195, tmp196,
.L7:
# problem162.c:23:     return s;
	ld	a5,-56(s0)		# _83, s
# problem162.c:24: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
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
	addi	sp,sp,-96	#,,
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	addi	s0,sp,96	#,,
# problem162.c:31: int main(){
	la	a5,__stack_chk_guard		# tmp90,
	ld	a4, 0(a5)	# tmp128, __stack_chk_guard
	sd	a4, -24(s0)	# tmp128, D.2260
	li	a4, 0	# tmp128
# problem162.c:32:     char test1[] = "AsDf";
	li	a5,1715761152		# tmp92,
	addi	a5,a5,833	#, tmp91, tmp92
	sw	a5,-88(s0)	# tmp91, test1
	sb	zero,-84(s0)	#, test1
# problem162.c:33:     assert(strcmp(func0(test1), "aSdF") == 0);
	addi	a5,s0,-88	#, tmp93,
	mv	a0,a5	#, tmp93
	call	func0		#
	mv	a5,a0	# _1,
	lla	a1,.LC0	#,
	mv	a0,a5	#, _1
	call	strcmp@plt	#
	mv	a5,a0	# tmp94,
	beq	a5,zero,.L12	#, _2,,
# problem162.c:33:     assert(strcmp(func0(test1), "aSdF") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L12:
# problem162.c:35:     char test2[] = "1234";
	li	a5,875769856		# tmp96,
	addi	a5,a5,561	#, tmp95, tmp96
	sw	a5,-80(s0)	# tmp95, test2
	sb	zero,-76(s0)	#, test2
# problem162.c:36:     assert(strcmp(func0(test2), "4321") == 0);
	addi	a5,s0,-80	#, tmp97,
	mv	a0,a5	#, tmp97
	call	func0		#
	mv	a5,a0	# _3,
	lla	a1,.LC3	#,
	mv	a0,a5	#, _3
	call	strcmp@plt	#
	mv	a5,a0	# tmp98,
	beq	a5,zero,.L13	#, _4,,
# problem162.c:36:     assert(strcmp(func0(test2), "4321") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L13:
# problem162.c:38:     char test3[] = "ab";
	li	a5,24576		# tmp100,
	addi	a5,a5,609	#, tmp99, tmp100
	sh	a5,-96(s0)	# tmp99, test3
	sb	zero,-94(s0)	#, test3
# problem162.c:39:     assert(strcmp(func0(test3), "AB") == 0);
	addi	a5,s0,-96	#, tmp101,
	mv	a0,a5	#, tmp101
	call	func0		#
	mv	a5,a0	# _5,
	lla	a1,.LC5	#,
	mv	a0,a5	#, _5
	call	strcmp@plt	#
	mv	a5,a0	# tmp102,
	beq	a5,zero,.L14	#, _6,,
# problem162.c:39:     assert(strcmp(func0(test3), "AB") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,39		#,
	lla	a1,.LC1	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L14:
# problem162.c:41:     char test4[] = "#a@C";
	li	a5,1128292352		# tmp104,
	addi	a5,a5,291	#, tmp103, tmp104
	sw	a5,-72(s0)	# tmp103, test4
	sb	zero,-68(s0)	#, test4
# problem162.c:42:     assert(strcmp(func0(test4), "#A@c") == 0);
	addi	a5,s0,-72	#, tmp105,
	mv	a0,a5	#, tmp105
	call	func0		#
	mv	a5,a0	# _7,
	lla	a1,.LC7	#,
	mv	a0,a5	#, _7
	call	strcmp@plt	#
	mv	a5,a0	# tmp106,
	beq	a5,zero,.L15	#, _8,,
# problem162.c:42:     assert(strcmp(func0(test4), "#A@c") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,42		#,
	lla	a1,.LC1	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L15:
# problem162.c:44:     char test5[] = "#AsdfW^45";
	lla	a5,.LC9	# tmp107,
	ld	a4,0(a5)		# tmp108,
	sd	a4,-40(s0)	# tmp108, test5
	lhu	a5,8(a5)	# tmp109,
	sh	a5,-32(s0)	# tmp109, test5
# problem162.c:45:     assert(strcmp(func0(test5), "#aSDFw^45") == 0);
	addi	a5,s0,-40	#, tmp110,
	mv	a0,a5	#, tmp110
	call	func0		#
	mv	a5,a0	# _9,
	lla	a1,.LC10	#,
	mv	a0,a5	#, _9
	call	strcmp@plt	#
	mv	a5,a0	# tmp111,
	beq	a5,zero,.L16	#, _10,,
# problem162.c:45:     assert(strcmp(func0(test5), "#aSDFw^45") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC1	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L16:
# problem162.c:47:     char test6[] = "#6@2";
	li	a5,843067392		# tmp113,
	addi	a5,a5,1571	#, tmp112, tmp113
	sw	a5,-64(s0)	# tmp112, test6
	sb	zero,-60(s0)	#, test6
# problem162.c:48:     assert(strcmp(func0(test6), "2@6#") == 0);
	addi	a5,s0,-64	#, tmp114,
	mv	a0,a5	#, tmp114
	call	func0		#
	mv	a5,a0	# _11,
	lla	a1,.LC12	#,
	mv	a0,a5	#, _11
	call	strcmp@plt	#
	mv	a5,a0	# tmp115,
	beq	a5,zero,.L17	#, _12,,
# problem162.c:48:     assert(strcmp(func0(test6), "2@6#") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,48		#,
	lla	a1,.LC1	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L17:
# problem162.c:50:     char test7[] = "#$a^D";
	li	a5,1583423488		# tmp117,
	addi	a5,a5,1059	#, tmp116, tmp117
	sw	a5,-48(s0)	# tmp116, test7
	li	a5,68		# tmp118,
	sh	a5,-44(s0)	# tmp118, test7
# problem162.c:51:     assert(strcmp(func0(test7), "#$A^d") == 0);
	addi	a5,s0,-48	#, tmp119,
	mv	a0,a5	#, tmp119
	call	func0		#
	mv	a5,a0	# _13,
	lla	a1,.LC14	#,
	mv	a0,a5	#, _13
	call	strcmp@plt	#
	mv	a5,a0	# tmp120,
	beq	a5,zero,.L18	#, _14,,
# problem162.c:51:     assert(strcmp(func0(test7), "#$A^d") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,51		#,
	lla	a1,.LC1	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L18:
# problem162.c:53:     char test8[] = "#ccc";
	li	a5,1667457024		# tmp122,
	addi	a5,a5,803	#, tmp121, tmp122
	sw	a5,-56(s0)	# tmp121, test8
	sb	zero,-52(s0)	#, test8
# problem162.c:54:     assert(strcmp(func0(test8), "#CCC") == 0);
	addi	a5,s0,-56	#, tmp123,
	mv	a0,a5	#, tmp123
	call	func0		#
	mv	a5,a0	# _15,
	lla	a1,.LC16	#,
	mv	a0,a5	#, _15
	call	strcmp@plt	#
	mv	a5,a0	# tmp124,
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
	la	a5,__stack_chk_guard		# tmp126,
	ld	a3, -24(s0)	# tmp129, D.2260
	ld	a5, 0(a5)	# tmp127, __stack_chk_guard
	xor	a5, a3, a5	# tmp127, tmp129
	li	a3, 0	# tmp129
	beq	a5,zero,.L21	#, tmp127,,
	call	__stack_chk_fail@plt	#
.L21:
	mv	a0,a4	#, <retval>
	ld	ra,88(sp)		#,
	ld	s0,80(sp)		#,
	addi	sp,sp,96	#,,
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
