	.file	"problem11.c"
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
	sd	a0,-56(s0)	# str, str
# problem11.c:6:     int len = strlen(str), i, j;
	ld	a0,-56(s0)		#, str
	call	strlen@plt	#
	mv	a5,a0	# _1,
# problem11.c:6:     int len = strlen(str), i, j;
	sw	a5,-28(s0)	# _1, len
# problem11.c:7:     char *result = (char *)malloc(2 * len + 1);
	lw	a5,-28(s0)		# tmp115, len
	slliw	a5,a5,1	#, tmp113, tmp114
	sext.w	a5,a5	# _2, tmp113
# problem11.c:7:     char *result = (char *)malloc(2 * len + 1);
	addiw	a5,a5,1	#, tmp116, _2
	sext.w	a5,a5	# _3, tmp116
# problem11.c:7:     char *result = (char *)malloc(2 * len + 1);
	mv	a0,a5	#, _4
	call	malloc@plt	#
	mv	a5,a0	# tmp117,
	sd	a5,-24(s0)	# tmp117, result
# problem11.c:8:     if (!result) {
	ld	a5,-24(s0)		# tmp118, result
	bne	a5,zero,.L2	#, tmp118,,
# problem11.c:9:         return NULL; 
	li	a5,0		# _45,
	j	.L3		#
.L2:
# problem11.c:12:     for (i = 0; i < len; i++) {
	sw	zero,-40(s0)	#, i
# problem11.c:12:     for (i = 0; i < len; i++) {
	j	.L4		#
.L12:
# problem11.c:13:         int is_palindrome = 1;
	li	a5,1		# tmp119,
	sw	a5,-32(s0)	# tmp119, is_palindrome
# problem11.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	sw	zero,-36(s0)	#, j
# problem11.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	j	.L5		#
.L8:
# problem11.c:15:             if (str[i + j] != str[len - 1 - j]) {
	lw	a5,-40(s0)		# tmp122, i
	mv	a4,a5	# tmp121, tmp122
	lw	a5,-36(s0)		# tmp124, j
	addw	a5,a4,a5	# tmp123, tmp120, tmp121
	sext.w	a5,a5	# _5, tmp120
	mv	a4,a5	# _6, _5
# problem11.c:15:             if (str[i + j] != str[len - 1 - j]) {
	ld	a5,-56(s0)		# tmp125, str
	add	a5,a5,a4	# _6, _7, tmp125
	lbu	a4,0(a5)	# _8, *_7
# problem11.c:15:             if (str[i + j] != str[len - 1 - j]) {
	lw	a5,-28(s0)		# tmp128, len
	addiw	a5,a5,-1	#, tmp126, tmp127
	sext.w	a5,a5	# _9, tmp126
# problem11.c:15:             if (str[i + j] != str[len - 1 - j]) {
	lw	a3,-36(s0)		# tmp131, j
	subw	a5,a5,a3	# tmp129, _9, tmp130
	sext.w	a5,a5	# _10, tmp129
	mv	a3,a5	# _11, _10
# problem11.c:15:             if (str[i + j] != str[len - 1 - j]) {
	ld	a5,-56(s0)		# tmp132, str
	add	a5,a5,a3	# _11, _12, tmp132
	lbu	a5,0(a5)	# _13, *_12
# problem11.c:15:             if (str[i + j] != str[len - 1 - j]) {
	beq	a4,a5,.L6	#, tmp133, tmp134,
# problem11.c:16:                 is_palindrome = 0;
	sw	zero,-32(s0)	#, is_palindrome
# problem11.c:17:                 break;
	j	.L7		#
.L6:
# problem11.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	lw	a5,-36(s0)		# tmp137, j
	addiw	a5,a5,1	#, tmp135, tmp136
	sw	a5,-36(s0)	# tmp135, j
.L5:
# problem11.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	lw	a5,-28(s0)		# tmp140, len
	mv	a4,a5	# tmp139, tmp140
	lw	a5,-40(s0)		# tmp142, i
	subw	a5,a4,a5	# tmp138, tmp139, tmp141
	sext.w	a5,a5	# _14, tmp138
# problem11.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	srliw	a4,a5,31	#, tmp145, tmp144
	addw	a5,a4,a5	# tmp144, tmp146, tmp145
	sraiw	a5,a5,1	#, tmp147, tmp146
	sext.w	a4,a5	# _15, tmp147
# problem11.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	lw	a5,-36(s0)		# tmp149, j
	sext.w	a5,a5	# tmp150, tmp148
	blt	a5,a4,.L8	#, tmp150, tmp151,
.L7:
# problem11.c:20:         if (is_palindrome) {
	lw	a5,-32(s0)		# tmp153, is_palindrome
	sext.w	a5,a5	# tmp154, tmp152
	beq	a5,zero,.L9	#, tmp154,,
# problem11.c:21:             strncpy(result, str, len);
	lw	a5,-28(s0)		# _16, len
	mv	a2,a5	#, _16
	ld	a1,-56(s0)		#, str
	ld	a0,-24(s0)		#, result
	call	strncpy@plt	#
# problem11.c:22:             for (j = 0; j < i; j++) {
	sw	zero,-36(s0)	#, j
# problem11.c:22:             for (j = 0; j < i; j++) {
	j	.L10		#
.L11:
# problem11.c:23:                 result[len + j] = str[i - j - 1];
	lw	a5,-40(s0)		# tmp157, i
	mv	a4,a5	# tmp156, tmp157
	lw	a5,-36(s0)		# tmp159, j
	subw	a5,a4,a5	# tmp155, tmp156, tmp158
	sext.w	a5,a5	# _17, tmp155
# problem11.c:23:                 result[len + j] = str[i - j - 1];
	addi	a5,a5,-1	#, _19, _18
	ld	a4,-56(s0)		# tmp160, str
	add	a4,a4,a5	# _19, _20, tmp160
# problem11.c:23:                 result[len + j] = str[i - j - 1];
	lw	a5,-28(s0)		# tmp163, len
	mv	a3,a5	# tmp162, tmp163
	lw	a5,-36(s0)		# tmp165, j
	addw	a5,a3,a5	# tmp164, tmp161, tmp162
	sext.w	a5,a5	# _21, tmp161
	mv	a3,a5	# _22, _21
# problem11.c:23:                 result[len + j] = str[i - j - 1];
	ld	a5,-24(s0)		# tmp166, result
	add	a5,a5,a3	# _22, _23, tmp166
# problem11.c:23:                 result[len + j] = str[i - j - 1];
	lbu	a4,0(a4)	# _24, *_20
# problem11.c:23:                 result[len + j] = str[i - j - 1];
	sb	a4,0(a5)	# _24, *_23
# problem11.c:22:             for (j = 0; j < i; j++) {
	lw	a5,-36(s0)		# tmp169, j
	addiw	a5,a5,1	#, tmp167, tmp168
	sw	a5,-36(s0)	# tmp167, j
.L10:
# problem11.c:22:             for (j = 0; j < i; j++) {
	lw	a5,-36(s0)		# tmp171, j
	mv	a4,a5	# tmp170, tmp171
	lw	a5,-40(s0)		# tmp173, i
	sext.w	a4,a4	# tmp174, tmp170
	sext.w	a5,a5	# tmp175, tmp172
	blt	a4,a5,.L11	#, tmp174, tmp175,
# problem11.c:25:             result[len + i] = '\0';
	lw	a5,-28(s0)		# tmp178, len
	mv	a4,a5	# tmp177, tmp178
	lw	a5,-40(s0)		# tmp180, i
	addw	a5,a4,a5	# tmp179, tmp176, tmp177
	sext.w	a5,a5	# _25, tmp176
	mv	a4,a5	# _26, _25
# problem11.c:25:             result[len + i] = '\0';
	ld	a5,-24(s0)		# tmp181, result
	add	a5,a5,a4	# _26, _27, tmp181
# problem11.c:25:             result[len + i] = '\0';
	sb	zero,0(a5)	#, *_27
# problem11.c:26:             return result;
	ld	a5,-24(s0)		# _45, result
	j	.L3		#
.L9:
# problem11.c:12:     for (i = 0; i < len; i++) {
	lw	a5,-40(s0)		# tmp184, i
	addiw	a5,a5,1	#, tmp182, tmp183
	sw	a5,-40(s0)	# tmp182, i
.L4:
# problem11.c:12:     for (i = 0; i < len; i++) {
	lw	a5,-40(s0)		# tmp186, i
	mv	a4,a5	# tmp185, tmp186
	lw	a5,-28(s0)		# tmp188, len
	sext.w	a4,a4	# tmp189, tmp185
	sext.w	a5,a5	# tmp190, tmp187
	blt	a4,a5,.L12	#, tmp189, tmp190,
# problem11.c:30:     strncpy(result, str, len);
	lw	a5,-28(s0)		# _28, len
	mv	a2,a5	#, _28
	ld	a1,-56(s0)		#, str
	ld	a0,-24(s0)		#, result
	call	strncpy@plt	#
# problem11.c:31:     for (j = 0; j < len; j++) {
	sw	zero,-36(s0)	#, j
# problem11.c:31:     for (j = 0; j < len; j++) {
	j	.L13		#
.L14:
# problem11.c:32:         result[len + j] = str[len - j - 1];
	lw	a5,-28(s0)		# tmp193, len
	mv	a4,a5	# tmp192, tmp193
	lw	a5,-36(s0)		# tmp195, j
	subw	a5,a4,a5	# tmp191, tmp192, tmp194
	sext.w	a5,a5	# _29, tmp191
# problem11.c:32:         result[len + j] = str[len - j - 1];
	addi	a5,a5,-1	#, _31, _30
	ld	a4,-56(s0)		# tmp196, str
	add	a4,a4,a5	# _31, _32, tmp196
# problem11.c:32:         result[len + j] = str[len - j - 1];
	lw	a5,-28(s0)		# tmp199, len
	mv	a3,a5	# tmp198, tmp199
	lw	a5,-36(s0)		# tmp201, j
	addw	a5,a3,a5	# tmp200, tmp197, tmp198
	sext.w	a5,a5	# _33, tmp197
	mv	a3,a5	# _34, _33
# problem11.c:32:         result[len + j] = str[len - j - 1];
	ld	a5,-24(s0)		# tmp202, result
	add	a5,a5,a3	# _34, _35, tmp202
# problem11.c:32:         result[len + j] = str[len - j - 1];
	lbu	a4,0(a4)	# _36, *_32
# problem11.c:32:         result[len + j] = str[len - j - 1];
	sb	a4,0(a5)	# _36, *_35
# problem11.c:31:     for (j = 0; j < len; j++) {
	lw	a5,-36(s0)		# tmp205, j
	addiw	a5,a5,1	#, tmp203, tmp204
	sw	a5,-36(s0)	# tmp203, j
.L13:
# problem11.c:31:     for (j = 0; j < len; j++) {
	lw	a5,-36(s0)		# tmp207, j
	mv	a4,a5	# tmp206, tmp207
	lw	a5,-28(s0)		# tmp209, len
	sext.w	a4,a4	# tmp210, tmp206
	sext.w	a5,a5	# tmp211, tmp208
	blt	a4,a5,.L14	#, tmp210, tmp211,
# problem11.c:34:     result[2 * len] = '\0';
	lw	a5,-28(s0)		# tmp214, len
	slliw	a5,a5,1	#, tmp212, tmp213
	sext.w	a5,a5	# _37, tmp212
	mv	a4,a5	# _38, _37
# problem11.c:34:     result[2 * len] = '\0';
	ld	a5,-24(s0)		# tmp215, result
	add	a5,a5,a4	# _38, _39, tmp215
# problem11.c:34:     result[2 * len] = '\0';
	sb	zero,0(a5)	#, *_39
# problem11.c:35:     return result;
	ld	a5,-24(s0)		# _45, result
.L3:
# problem11.c:36: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.align	3
.LC1:
	.string	"problem11.c"
	.align	3
.LC2:
	.string	"strcmp(palindrome, \"\") == 0"
	.align	3
.LC3:
	.string	"x"
	.align	3
.LC4:
	.string	"strcmp(palindrome, \"x\") == 0"
	.align	3
.LC5:
	.string	"xyz"
	.align	3
.LC6:
	.string	"xyzyx"
	.align	3
.LC7:
	.string	"strcmp(palindrome, \"xyzyx\") == 0"
	.align	3
.LC8:
	.string	"xyx"
	.align	3
.LC9:
	.string	"strcmp(palindrome, \"xyx\") == 0"
	.align	3
.LC10:
	.string	"jerry"
	.align	3
.LC11:
	.string	"jerryrrej"
	.align	3
.LC12:
	.string	"strcmp(palindrome, \"jerryrrej\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
# problem11.c:48:     palindrome = func0("");
	lla	a0,.LC0	#,
	call	func0		#
	sd	a0,-24(s0)	#, palindrome
# problem11.c:49:     assert(strcmp(palindrome, "") == 0);
	ld	a5,-24(s0)		# tmp80, palindrome
	lbu	a5,0(a5)	# _9, MEM[(const unsigned char * {ref-all})palindrome_8]
	sext.w	a5,a5	# _1, _9
	beq	a5,zero,.L16	#, _1,,
# problem11.c:49:     assert(strcmp(palindrome, "") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,49		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L16:
# problem11.c:50:     free(palindrome);
	ld	a0,-24(s0)		#, palindrome
	call	free@plt	#
# problem11.c:53:     palindrome = func0("x");
	lla	a0,.LC3	#,
	call	func0		#
	sd	a0,-24(s0)	#, palindrome
# problem11.c:54:     assert(strcmp(palindrome, "x") == 0);
	lla	a1,.LC3	#,
	ld	a0,-24(s0)		#, palindrome
	call	strcmp@plt	#
	mv	a5,a0	# tmp81,
	beq	a5,zero,.L17	#, _2,,
# problem11.c:54:     assert(strcmp(palindrome, "x") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,54		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L17:
# problem11.c:55:     free(palindrome);
	ld	a0,-24(s0)		#, palindrome
	call	free@plt	#
# problem11.c:58:     palindrome = func0("xyz");
	lla	a0,.LC5	#,
	call	func0		#
	sd	a0,-24(s0)	#, palindrome
# problem11.c:59:     assert(strcmp(palindrome, "xyzyx") == 0);
	lla	a1,.LC6	#,
	ld	a0,-24(s0)		#, palindrome
	call	strcmp@plt	#
	mv	a5,a0	# tmp82,
	beq	a5,zero,.L18	#, _3,,
# problem11.c:59:     assert(strcmp(palindrome, "xyzyx") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,59		#,
	lla	a1,.LC1	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L18:
# problem11.c:60:     free(palindrome);
	ld	a0,-24(s0)		#, palindrome
	call	free@plt	#
# problem11.c:63:     palindrome = func0("xyx");
	lla	a0,.LC8	#,
	call	func0		#
	sd	a0,-24(s0)	#, palindrome
# problem11.c:64:     assert(strcmp(palindrome, "xyx") == 0);
	lla	a1,.LC8	#,
	ld	a0,-24(s0)		#, palindrome
	call	strcmp@plt	#
	mv	a5,a0	# tmp83,
	beq	a5,zero,.L19	#, _4,,
# problem11.c:64:     assert(strcmp(palindrome, "xyx") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,64		#,
	lla	a1,.LC1	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L19:
# problem11.c:65:     free(palindrome);
	ld	a0,-24(s0)		#, palindrome
	call	free@plt	#
# problem11.c:68:     palindrome = func0("jerry");
	lla	a0,.LC10	#,
	call	func0		#
	sd	a0,-24(s0)	#, palindrome
# problem11.c:69:     assert(strcmp(palindrome, "jerryrrej") == 0);
	lla	a1,.LC11	#,
	ld	a0,-24(s0)		#, palindrome
	call	strcmp@plt	#
	mv	a5,a0	# tmp84,
	beq	a5,zero,.L20	#, _5,,
# problem11.c:69:     assert(strcmp(palindrome, "jerryrrej") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,69		#,
	lla	a1,.LC1	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L20:
# problem11.c:70:     free(palindrome);
	ld	a0,-24(s0)		#, palindrome
	call	free@plt	#
# problem11.c:72:     return 0;
	li	a5,0		# _28,
# problem11.c:73: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
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
