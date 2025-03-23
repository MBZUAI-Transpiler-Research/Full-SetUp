	.file	"problem159.c"
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
.LC18:
	.string	""
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-336	#,,
	.cfi_def_cfa_offset 336
	sd	ra,328(sp)	#,
	sd	s0,320(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,336	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-328(s0)	# words, words
	mv	a5,a1	# tmp169, count
	sw	a5,-332(s0)	# tmp170, count
# problem159.c:4: char *func0(char *words[], int count) {
	la	a5,__stack_chk_guard		# tmp171,
	ld	a4, 0(a5)	# tmp223, __stack_chk_guard
	sd	a4, -24(s0)	# tmp223, D.3029
	li	a4, 0	# tmp223
# problem159.c:5:     char *max = "";
	lla	a5,.LC18	# tmp172,
	sd	a5,-288(s0)	# tmp172, max
# problem159.c:6:     int maxu = 0;
	sw	zero,-308(s0)	#, maxu
# problem159.c:7:     for (int i = 0; i < count; i++) {
	sw	zero,-304(s0)	#, i
# problem159.c:7:     for (int i = 0; i < count; i++) {
	j	.L2		#
.L8:
# problem159.c:8:         char unique[256] = {0};
	addi	a5,s0,-280	#, tmp173,
	li	a4,256		# tmp174,
	mv	a2,a4	#, tmp174
	li	a1,0		#,
	mv	a0,a5	#, tmp173
	call	memset@plt	#
# problem159.c:9:         int unique_count = 0;
	sw	zero,-300(s0)	#, unique_count
# problem159.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	sw	zero,-296(s0)	#, j
# problem159.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	j	.L3		#
.L5:
# problem159.c:11:             if (!strchr(unique, words[i][j])) {
	lw	a5,-304(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-328(s0)		# tmp176, words
	add	a5,a4,a5	# _2, _3, tmp176
	ld	a4,0(a5)		# _4, *_3
# problem159.c:11:             if (!strchr(unique, words[i][j])) {
	lw	a5,-296(s0)		# _5, j
	add	a5,a4,a5	# _5, _6, _4
	lbu	a5,0(a5)	# _7, *_6
# problem159.c:11:             if (!strchr(unique, words[i][j])) {
	sext.w	a4,a5	# _8, _7
	addi	a5,s0,-280	#, tmp177,
	mv	a1,a4	#, _8
	mv	a0,a5	#, tmp177
	call	strchr@plt	#
	mv	a5,a0	# _9,
# problem159.c:11:             if (!strchr(unique, words[i][j])) {
	bne	a5,zero,.L4	#, _9,,
# problem159.c:12:                 int len = strlen(unique);
	addi	a5,s0,-280	#, tmp178,
	mv	a0,a5	#, tmp178
	call	strlen@plt	#
	mv	a5,a0	# _10,
# problem159.c:12:                 int len = strlen(unique);
	sw	a5,-292(s0)	# _10, len
# problem159.c:13:                 unique[len] = words[i][j];
	lw	a5,-304(s0)		# _11, i
	slli	a5,a5,3	#, _12, _11
	ld	a4,-328(s0)		# tmp179, words
	add	a5,a4,a5	# _12, _13, tmp179
	ld	a4,0(a5)		# _14, *_13
# problem159.c:13:                 unique[len] = words[i][j];
	lw	a5,-296(s0)		# _15, j
	add	a5,a4,a5	# _15, _16, _14
	lbu	a4,0(a5)	# _17, *_16
# problem159.c:13:                 unique[len] = words[i][j];
	lw	a5,-292(s0)		# tmp180, len
	addi	a5,a5,-16	#, tmp227, tmp180
	add	a5,a5,s0	#, tmp181, tmp227
	sb	a4,-264(a5)	# _17, unique[len_59]
# problem159.c:14:                 unique[len + 1] = '\0';
	lw	a5,-292(s0)		# tmp184, len
	addiw	a5,a5,1	#, tmp182, tmp183
	sext.w	a5,a5	# _18, tmp182
# problem159.c:14:                 unique[len + 1] = '\0';
	addi	a5,a5,-16	#, tmp228, _18
	add	a5,a5,s0	#, tmp185, tmp228
	sb	zero,-264(a5)	#, unique[_18]
# problem159.c:15:                 unique_count++;
	lw	a5,-300(s0)		# tmp188, unique_count
	addiw	a5,a5,1	#, tmp186, tmp187
	sw	a5,-300(s0)	# tmp186, unique_count
.L4:
# problem159.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	lw	a5,-296(s0)		# tmp191, j
	addiw	a5,a5,1	#, tmp189, tmp190
	sw	a5,-296(s0)	# tmp189, j
.L3:
# problem159.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	lw	a5,-304(s0)		# _19, i
	slli	a5,a5,3	#, _20, _19
	ld	a4,-328(s0)		# tmp192, words
	add	a5,a4,a5	# _20, _21, tmp192
	ld	a4,0(a5)		# _22, *_21
# problem159.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	lw	a5,-296(s0)		# _23, j
	add	a5,a4,a5	# _23, _24, _22
	lbu	a5,0(a5)	# _25, *_24
# problem159.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	bne	a5,zero,.L5	#, _25,,
# problem159.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	lw	a5,-300(s0)		# tmp194, unique_count
	mv	a4,a5	# tmp193, tmp194
	lw	a5,-308(s0)		# tmp196, maxu
	sext.w	a4,a4	# tmp197, tmp193
	sext.w	a5,a5	# tmp198, tmp195
	bgt	a4,a5,.L6	#, tmp197, tmp198,
# problem159.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	lw	a5,-300(s0)		# tmp200, unique_count
	mv	a4,a5	# tmp199, tmp200
	lw	a5,-308(s0)		# tmp202, maxu
	sext.w	a4,a4	# tmp203, tmp199
	sext.w	a5,a5	# tmp204, tmp201
	bne	a4,a5,.L7	#, tmp203, tmp204,
# problem159.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	lw	a5,-304(s0)		# _26, i
	slli	a5,a5,3	#, _27, _26
	ld	a4,-328(s0)		# tmp205, words
	add	a5,a4,a5	# _27, _28, tmp205
# problem159.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	ld	a5,0(a5)		# _29, *_28
	ld	a1,-288(s0)		#, max
	mv	a0,a5	#, _29
	call	strcmp@plt	#
	mv	a5,a0	# tmp206,
# problem159.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	bge	a5,zero,.L7	#, tmp207,,
.L6:
# problem159.c:19:             max = words[i];
	lw	a5,-304(s0)		# _31, i
	slli	a5,a5,3	#, _32, _31
	ld	a4,-328(s0)		# tmp208, words
	add	a5,a4,a5	# _32, _33, tmp208
# problem159.c:19:             max = words[i];
	ld	a5,0(a5)		# tmp209, *_33
	sd	a5,-288(s0)	# tmp209, max
# problem159.c:20:             maxu = unique_count;
	lw	a5,-300(s0)		# tmp210, unique_count
	sw	a5,-308(s0)	# tmp210, maxu
.L7:
# problem159.c:7:     for (int i = 0; i < count; i++) {
	lw	a5,-304(s0)		# tmp213, i
	addiw	a5,a5,1	#, tmp211, tmp212
	sw	a5,-304(s0)	# tmp211, i
.L2:
# problem159.c:7:     for (int i = 0; i < count; i++) {
	lw	a5,-304(s0)		# tmp215, i
	mv	a4,a5	# tmp214, tmp215
	lw	a5,-332(s0)		# tmp217, count
	sext.w	a4,a4	# tmp218, tmp214
	sext.w	a5,a5	# tmp219, tmp216
	blt	a4,a5,.L8	#, tmp218, tmp219,
# problem159.c:23:     return max;
	ld	a5,-288(s0)		# _50, max
# problem159.c:23:     return max;
	mv	a4,a5	# <retval>, _50
# problem159.c:24: }
	la	a5,__stack_chk_guard		# tmp221,
	ld	a3, -24(s0)	# tmp224, D.3029
	ld	a5, 0(a5)	# tmp222, __stack_chk_guard
	xor	a5, a3, a5	# tmp222, tmp224
	li	a3, 0	# tmp224
	beq	a5,zero,.L10	#, tmp222,,
	call	__stack_chk_fail@plt	#
.L10:
	mv	a0,a4	#, <retval>
	ld	ra,328(sp)		#,
	.cfi_restore 1
	ld	s0,320(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 336
	addi	sp,sp,336	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC19:
	.string	"name"
	.align	3
.LC3:
	.string	"of"
	.align	3
.LC20:
	.string	"string"
	.align	3
.LC21:
	.string	"problem159.c"
	.align	3
.LC22:
	.string	"strcmp(func0(words1, 3), \"string\") == 0"
	.align	3
.LC23:
	.string	"enam"
	.align	3
.LC2:
	.string	"game"
	.align	3
.LC24:
	.string	"strcmp(func0(words2, 3), \"enam\") == 0"
	.align	3
.LC25:
	.string	"aaaaaaa"
	.align	3
.LC26:
	.string	"bb"
	.align	3
.LC27:
	.string	"cc"
	.align	3
.LC28:
	.string	"strcmp(func0(words3, 3), \"aaaaaaa\") == 0"
	.align	3
.LC29:
	.string	"abc"
	.align	3
.LC30:
	.string	"cba"
	.align	3
.LC31:
	.string	"strcmp(func0(words4, 2), \"abc\") == 0"
	.align	3
.LC4:
	.string	"footbott"
	.align	3
.LC33:
	.string	"strcmp(func0(words5, 5), \"footbott\") == 0"
	.align	3
.LC8:
	.string	"gonna"
	.align	3
.LC35:
	.string	"strcmp(func0(words6, 4), \"gonna\") == 0"
	.align	3
.LC13:
	.string	"nation"
	.align	3
.LC37:
	.string	"strcmp(func0(words7, 5), \"nation\") == 0"
	.align	3
.LC1:
	.string	"this"
	.align	3
.LC39:
	.string	"strcmp(func0(words8, 4), \"this\") == 0"
	.align	3
.LC40:
	.string	"b"
	.align	3
.LC41:
	.string	"strcmp(func0(words9, 1), \"b\") == 0"
	.align	3
.LC0:
	.string	"play"
	.align	3
.LC42:
	.string	"strcmp(func0(words10, 3), \"play\") == 0"
	.data
	.align	3
.LC32:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.section	.rodata
	.align	3
.LC6:
	.string	"we"
	.align	3
.LC7:
	.string	"are"
	.align	3
.LC9:
	.string	"rock"
	.data
	.align	3
.LC34:
	.dword	.LC6
	.dword	.LC7
	.dword	.LC8
	.dword	.LC9
	.section	.rodata
	.align	3
.LC11:
	.string	"a"
	.align	3
.LC12:
	.string	"mad"
	.data
	.align	3
.LC36:
	.dword	.LC6
	.dword	.LC7
	.dword	.LC11
	.dword	.LC12
	.dword	.LC13
	.section	.rodata
	.align	3
.LC15:
	.string	"is"
	.align	3
.LC16:
	.string	"prrk"
	.data
	.align	3
.LC38:
	.dword	.LC1
	.dword	.LC15
	.dword	.LC11
	.dword	.LC16
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-288	#,,
	.cfi_def_cfa_offset 288
	sd	ra,280(sp)	#,
	sd	s0,272(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,288	#,,
	.cfi_def_cfa 8, 0
# problem159.c:31: int main() {
	la	a5,__stack_chk_guard		# tmp156,
	ld	a4, 0(a5)	# tmp217, __stack_chk_guard
	sd	a4, -24(s0)	# tmp217, D.3035
	li	a4, 0	# tmp217
# problem159.c:32:     char *words1[] = {"name", "of", "string"};
	lla	a5,.LC19	# tmp157,
	sd	a5,-264(s0)	# tmp157, words1[0]
	lla	a5,.LC3	# tmp158,
	sd	a5,-256(s0)	# tmp158, words1[1]
	lla	a5,.LC20	# tmp159,
	sd	a5,-248(s0)	# tmp159, words1[2]
# problem159.c:33:     assert(strcmp(func0(words1, 3), "string") == 0);
	addi	a5,s0,-264	#, tmp160,
	li	a1,3		#,
	mv	a0,a5	#, tmp160
	call	func0		#
	mv	a5,a0	# _1,
# problem159.c:33:     assert(strcmp(func0(words1, 3), "string") == 0);
	lla	a1,.LC20	#,
	mv	a0,a5	#, _1
	call	strcmp@plt	#
	mv	a5,a0	# tmp161,
# problem159.c:33:     assert(strcmp(func0(words1, 3), "string") == 0);
	beq	a5,zero,.L12	#, _2,,
# problem159.c:33:     assert(strcmp(func0(words1, 3), "string") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC21	#,
	lla	a0,.LC22	#,
	call	__assert_fail@plt	#
.L12:
# problem159.c:35:     char *words2[] = {"name", "enam", "game"};
	lla	a5,.LC19	# tmp162,
	sd	a5,-240(s0)	# tmp162, words2[0]
	lla	a5,.LC23	# tmp163,
	sd	a5,-232(s0)	# tmp163, words2[1]
	lla	a5,.LC2	# tmp164,
	sd	a5,-224(s0)	# tmp164, words2[2]
# problem159.c:36:     assert(strcmp(func0(words2, 3), "enam") == 0);
	addi	a5,s0,-240	#, tmp165,
	li	a1,3		#,
	mv	a0,a5	#, tmp165
	call	func0		#
	mv	a5,a0	# _3,
# problem159.c:36:     assert(strcmp(func0(words2, 3), "enam") == 0);
	lla	a1,.LC23	#,
	mv	a0,a5	#, _3
	call	strcmp@plt	#
	mv	a5,a0	# tmp166,
# problem159.c:36:     assert(strcmp(func0(words2, 3), "enam") == 0);
	beq	a5,zero,.L13	#, _4,,
# problem159.c:36:     assert(strcmp(func0(words2, 3), "enam") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC21	#,
	lla	a0,.LC24	#,
	call	__assert_fail@plt	#
.L13:
# problem159.c:38:     char *words3[] = {"aaaaaaa", "bb", "cc"};
	lla	a5,.LC25	# tmp167,
	sd	a5,-216(s0)	# tmp167, words3[0]
	lla	a5,.LC26	# tmp168,
	sd	a5,-208(s0)	# tmp168, words3[1]
	lla	a5,.LC27	# tmp169,
	sd	a5,-200(s0)	# tmp169, words3[2]
# problem159.c:39:     assert(strcmp(func0(words3, 3), "aaaaaaa") == 0);
	addi	a5,s0,-216	#, tmp170,
	li	a1,3		#,
	mv	a0,a5	#, tmp170
	call	func0		#
	mv	a5,a0	# _5,
# problem159.c:39:     assert(strcmp(func0(words3, 3), "aaaaaaa") == 0);
	lla	a1,.LC25	#,
	mv	a0,a5	#, _5
	call	strcmp@plt	#
	mv	a5,a0	# tmp171,
# problem159.c:39:     assert(strcmp(func0(words3, 3), "aaaaaaa") == 0);
	beq	a5,zero,.L14	#, _6,,
# problem159.c:39:     assert(strcmp(func0(words3, 3), "aaaaaaa") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,39		#,
	lla	a1,.LC21	#,
	lla	a0,.LC28	#,
	call	__assert_fail@plt	#
.L14:
# problem159.c:41:     char *words4[] = {"abc", "cba"};
	lla	a5,.LC29	# tmp172,
	sd	a5,-280(s0)	# tmp172, words4[0]
	lla	a5,.LC30	# tmp173,
	sd	a5,-272(s0)	# tmp173, words4[1]
# problem159.c:42:     assert(strcmp(func0(words4, 2), "abc") == 0);
	addi	a5,s0,-280	#, tmp174,
	li	a1,2		#,
	mv	a0,a5	#, tmp174
	call	func0		#
	mv	a5,a0	# _7,
# problem159.c:42:     assert(strcmp(func0(words4, 2), "abc") == 0);
	lla	a1,.LC29	#,
	mv	a0,a5	#, _7
	call	strcmp@plt	#
	mv	a5,a0	# tmp175,
# problem159.c:42:     assert(strcmp(func0(words4, 2), "abc") == 0);
	beq	a5,zero,.L15	#, _8,,
# problem159.c:42:     assert(strcmp(func0(words4, 2), "abc") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,42		#,
	lla	a1,.LC21	#,
	lla	a0,.LC31	#,
	call	__assert_fail@plt	#
.L15:
# problem159.c:44:     char *words5[] = {"play", "this", "game", "of", "footbott"};
	lla	a5,.LC32	# tmp176,
	ld	a1,0(a5)		# tmp177,
	ld	a2,8(a5)		# tmp178,
	ld	a3,16(a5)		# tmp179,
	ld	a4,24(a5)		# tmp180,
	ld	a5,32(a5)		# tmp181,
	sd	a1,-104(s0)	# tmp177, words5
	sd	a2,-96(s0)	# tmp178, words5
	sd	a3,-88(s0)	# tmp179, words5
	sd	a4,-80(s0)	# tmp180, words5
	sd	a5,-72(s0)	# tmp181, words5
# problem159.c:45:     assert(strcmp(func0(words5, 5), "footbott") == 0);
	addi	a5,s0,-104	#, tmp182,
	li	a1,5		#,
	mv	a0,a5	#, tmp182
	call	func0		#
	mv	a5,a0	# _9,
# problem159.c:45:     assert(strcmp(func0(words5, 5), "footbott") == 0);
	lla	a1,.LC4	#,
	mv	a0,a5	#, _9
	call	strcmp@plt	#
	mv	a5,a0	# tmp183,
# problem159.c:45:     assert(strcmp(func0(words5, 5), "footbott") == 0);
	beq	a5,zero,.L16	#, _10,,
# problem159.c:45:     assert(strcmp(func0(words5, 5), "footbott") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC21	#,
	lla	a0,.LC33	#,
	call	__assert_fail@plt	#
.L16:
# problem159.c:47:     char *words6[] = {"we", "are", "gonna", "rock"};
	lla	a5,.LC34	# tmp184,
	ld	a2,0(a5)		# tmp185,
	ld	a3,8(a5)		# tmp186,
	ld	a4,16(a5)		# tmp187,
	ld	a5,24(a5)		# tmp188,
	sd	a2,-168(s0)	# tmp185, words6
	sd	a3,-160(s0)	# tmp186, words6
	sd	a4,-152(s0)	# tmp187, words6
	sd	a5,-144(s0)	# tmp188, words6
# problem159.c:48:     assert(strcmp(func0(words6, 4), "gonna") == 0);
	addi	a5,s0,-168	#, tmp189,
	li	a1,4		#,
	mv	a0,a5	#, tmp189
	call	func0		#
	mv	a5,a0	# _11,
# problem159.c:48:     assert(strcmp(func0(words6, 4), "gonna") == 0);
	lla	a1,.LC8	#,
	mv	a0,a5	#, _11
	call	strcmp@plt	#
	mv	a5,a0	# tmp190,
# problem159.c:48:     assert(strcmp(func0(words6, 4), "gonna") == 0);
	beq	a5,zero,.L17	#, _12,,
# problem159.c:48:     assert(strcmp(func0(words6, 4), "gonna") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,48		#,
	lla	a1,.LC21	#,
	lla	a0,.LC35	#,
	call	__assert_fail@plt	#
.L17:
# problem159.c:50:     char *words7[] = {"we", "are", "a", "mad", "nation"};
	lla	a5,.LC36	# tmp191,
	ld	a1,0(a5)		# tmp192,
	ld	a2,8(a5)		# tmp193,
	ld	a3,16(a5)		# tmp194,
	ld	a4,24(a5)		# tmp195,
	ld	a5,32(a5)		# tmp196,
	sd	a1,-64(s0)	# tmp192, words7
	sd	a2,-56(s0)	# tmp193, words7
	sd	a3,-48(s0)	# tmp194, words7
	sd	a4,-40(s0)	# tmp195, words7
	sd	a5,-32(s0)	# tmp196, words7
# problem159.c:51:     assert(strcmp(func0(words7, 5), "nation") == 0);
	addi	a5,s0,-64	#, tmp197,
	li	a1,5		#,
	mv	a0,a5	#, tmp197
	call	func0		#
	mv	a5,a0	# _13,
# problem159.c:51:     assert(strcmp(func0(words7, 5), "nation") == 0);
	lla	a1,.LC13	#,
	mv	a0,a5	#, _13
	call	strcmp@plt	#
	mv	a5,a0	# tmp198,
# problem159.c:51:     assert(strcmp(func0(words7, 5), "nation") == 0);
	beq	a5,zero,.L18	#, _14,,
# problem159.c:51:     assert(strcmp(func0(words7, 5), "nation") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,51		#,
	lla	a1,.LC21	#,
	lla	a0,.LC37	#,
	call	__assert_fail@plt	#
.L18:
# problem159.c:53:     char *words8[] = {"this", "is", "a", "prrk"};
	lla	a5,.LC38	# tmp199,
	ld	a2,0(a5)		# tmp200,
	ld	a3,8(a5)		# tmp201,
	ld	a4,16(a5)		# tmp202,
	ld	a5,24(a5)		# tmp203,
	sd	a2,-136(s0)	# tmp200, words8
	sd	a3,-128(s0)	# tmp201, words8
	sd	a4,-120(s0)	# tmp202, words8
	sd	a5,-112(s0)	# tmp203, words8
# problem159.c:54:     assert(strcmp(func0(words8, 4), "this") == 0);
	addi	a5,s0,-136	#, tmp204,
	li	a1,4		#,
	mv	a0,a5	#, tmp204
	call	func0		#
	mv	a5,a0	# _15,
# problem159.c:54:     assert(strcmp(func0(words8, 4), "this") == 0);
	lla	a1,.LC1	#,
	mv	a0,a5	#, _15
	call	strcmp@plt	#
	mv	a5,a0	# tmp205,
# problem159.c:54:     assert(strcmp(func0(words8, 4), "this") == 0);
	beq	a5,zero,.L19	#, _16,,
# problem159.c:54:     assert(strcmp(func0(words8, 4), "this") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,54		#,
	lla	a1,.LC21	#,
	lla	a0,.LC39	#,
	call	__assert_fail@plt	#
.L19:
# problem159.c:56:     char *words9[] = {"b"};
	lla	a5,.LC40	# tmp206,
	sd	a5,-288(s0)	# tmp206, words9[0]
# problem159.c:57:     assert(strcmp(func0(words9, 1), "b") == 0);
	addi	a5,s0,-288	#, tmp207,
	li	a1,1		#,
	mv	a0,a5	#, tmp207
	call	func0		#
	mv	a5,a0	# _17,
# problem159.c:57:     assert(strcmp(func0(words9, 1), "b") == 0);
	lla	a1,.LC40	#,
	mv	a0,a5	#, _17
	call	strcmp@plt	#
	mv	a5,a0	# tmp208,
# problem159.c:57:     assert(strcmp(func0(words9, 1), "b") == 0);
	beq	a5,zero,.L20	#, _18,,
# problem159.c:57:     assert(strcmp(func0(words9, 1), "b") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,57		#,
	lla	a1,.LC21	#,
	lla	a0,.LC41	#,
	call	__assert_fail@plt	#
.L20:
# problem159.c:59:     char *words10[] = {"play", "play", "play"};
	lla	a5,.LC0	# tmp209,
	sd	a5,-192(s0)	# tmp209, words10[0]
	lla	a5,.LC0	# tmp210,
	sd	a5,-184(s0)	# tmp210, words10[1]
	lla	a5,.LC0	# tmp211,
	sd	a5,-176(s0)	# tmp211, words10[2]
# problem159.c:60:     assert(strcmp(func0(words10, 3), "play") == 0);
	addi	a5,s0,-192	#, tmp212,
	li	a1,3		#,
	mv	a0,a5	#, tmp212
	call	func0		#
	mv	a5,a0	# _19,
# problem159.c:60:     assert(strcmp(func0(words10, 3), "play") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _19
	call	strcmp@plt	#
	mv	a5,a0	# tmp213,
# problem159.c:60:     assert(strcmp(func0(words10, 3), "play") == 0);
	beq	a5,zero,.L21	#, _20,,
# problem159.c:60:     assert(strcmp(func0(words10, 3), "play") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,60		#,
	lla	a1,.LC21	#,
	lla	a0,.LC42	#,
	call	__assert_fail@plt	#
.L21:
# problem159.c:62:     return 0;
	li	a5,0		# _61,
# problem159.c:63: }
	mv	a4,a5	# <retval>, _61
	la	a5,__stack_chk_guard		# tmp215,
	ld	a3, -24(s0)	# tmp218, D.3035
	ld	a5, 0(a5)	# tmp216, __stack_chk_guard
	xor	a5, a3, a5	# tmp216, tmp218
	li	a3, 0	# tmp218
	beq	a5,zero,.L23	#, tmp216,,
	call	__stack_chk_fail@plt	#
.L23:
	mv	a0,a4	#, <retval>
	ld	ra,280(sp)		#,
	.cfi_restore 1
	ld	s0,272(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 288
	addi	sp,sp,288	#,,
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
