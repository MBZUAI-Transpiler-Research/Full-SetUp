	.file	"problem119.c"
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
	.string	"AEIOUaeiou"
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
	sd	a0,-56(s0)	# word, word
# problem119.c:6:     const char *vowels = "AEIOUaeiou";
	lla	a5,.LC0	# tmp158,
	sd	a5,-32(s0)	# tmp158, vowels
# problem119.c:7:     size_t len = strlen(word);
	ld	a0,-56(s0)		#, word
	call	strlen@plt	#
	sd	a0,-24(s0)	#, len
# problem119.c:9:     for (int i = len - 2; i >= 1; i--) {
	ld	a5,-24(s0)		# tmp159, len
	sext.w	a5,a5	# _1, tmp159
	addiw	a5,a5,-2	#, tmp160, _1
	sext.w	a5,a5	# _2, tmp160
# problem119.c:9:     for (int i = len - 2; i >= 1; i--) {
	sw	a5,-36(s0)	# _2, i
# problem119.c:9:     for (int i = len - 2; i >= 1; i--) {
	j	.L2		#
.L5:
# problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	lw	a5,-36(s0)		# _3, i
	ld	a4,-56(s0)		# tmp161, word
	add	a5,a4,a5	# _3, _4, tmp161
	lbu	a5,0(a5)	# _5, *_4
# problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	sext.w	a5,a5	# _6, _5
	mv	a1,a5	#, _6
	ld	a0,-32(s0)		#, vowels
	call	strchr@plt	#
	mv	a5,a0	# _7,
# problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	beq	a5,zero,.L3	#, _7,,
# problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	lw	a5,-36(s0)		# _8, i
	addi	a5,a5,1	#, _9, _8
	ld	a4,-56(s0)		# tmp162, word
	add	a5,a4,a5	# _9, _10, tmp162
	lbu	a5,0(a5)	# _11, *_10
# problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	sext.w	a5,a5	# _12, _11
	mv	a1,a5	#, _12
	ld	a0,-32(s0)		#, vowels
	call	strchr@plt	#
	mv	a5,a0	# _13,
# problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	bne	a5,zero,.L3	#, _13,,
# problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	lw	a5,-36(s0)		# _14, i
	addi	a5,a5,-1	#, _15, _14
	ld	a4,-56(s0)		# tmp163, word
	add	a5,a4,a5	# _15, _16, tmp163
	lbu	a5,0(a5)	# _17, *_16
# problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	sext.w	a5,a5	# _18, _17
	mv	a1,a5	#, _18
	ld	a0,-32(s0)		#, vowels
	call	strchr@plt	#
	mv	a5,a0	# _19,
# problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	bne	a5,zero,.L3	#, _19,,
# problem119.c:11:             out[0] = word[i];
	lw	a5,-36(s0)		# _20, i
	ld	a4,-56(s0)		# tmp164, word
	add	a5,a4,a5	# _20, _21, tmp164
	lbu	a4,0(a5)	# _22, *_21
# problem119.c:11:             out[0] = word[i];
	lla	a5,out.1	# tmp165,
	sb	a4,0(a5)	# _22, out[0]
# problem119.c:12:             return out;
	lla	a5,out.1	# _24,
	j	.L4		#
.L3:
# problem119.c:9:     for (int i = len - 2; i >= 1; i--) {
	lw	a5,-36(s0)		# tmp168, i
	addiw	a5,a5,-1	#, tmp166, tmp167
	sw	a5,-36(s0)	# tmp166, i
.L2:
# problem119.c:9:     for (int i = len - 2; i >= 1; i--) {
	lw	a5,-36(s0)		# tmp170, i
	sext.w	a5,a5	# tmp171, tmp169
	bgt	a5,zero,.L5	#, tmp171,,
# problem119.c:15:     out[0] = '\0';
	lla	a5,out.1	# tmp172,
	sb	zero,0(a5)	#, out[0]
# problem119.c:16:     return out;
	lla	a5,out.1	# _24,
.L4:
# problem119.c:17: }
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
.LC1:
	.string	"yogurt"
	.align	3
.LC2:
	.string	"u"
	.align	3
.LC3:
	.string	"problem119.c"
	.align	3
.LC4:
	.string	"strcmp(func0(\"yogurt\"), \"u\") == 0"
	.align	3
.LC5:
	.string	"full"
	.align	3
.LC6:
	.string	"strcmp(func0(\"full\"), \"u\") == 0"
	.align	3
.LC7:
	.string	"easy"
	.align	3
.LC8:
	.string	"strcmp(func0(\"easy\"), \"\") == 0"
	.align	3
.LC9:
	.string	"eAsy"
	.align	3
.LC10:
	.string	"strcmp(func0(\"eAsy\"), \"\") == 0"
	.align	3
.LC11:
	.string	"ali"
	.align	3
.LC12:
	.string	"strcmp(func0(\"ali\"), \"\") == 0"
	.align	3
.LC13:
	.string	"bad"
	.align	3
.LC14:
	.string	"a"
	.align	3
.LC15:
	.string	"strcmp(func0(\"bad\"), \"a\") == 0"
	.align	3
.LC16:
	.string	"most"
	.align	3
.LC17:
	.string	"o"
	.align	3
.LC18:
	.string	"strcmp(func0(\"most\"), \"o\") == 0"
	.align	3
.LC19:
	.string	"ab"
	.align	3
.LC20:
	.string	"strcmp(func0(\"ab\"), \"\") == 0"
	.align	3
.LC21:
	.string	"ba"
	.align	3
.LC22:
	.string	"strcmp(func0(\"ba\"), \"\") == 0"
	.align	3
.LC23:
	.string	"quick"
	.align	3
.LC24:
	.string	"strcmp(func0(\"quick\"), \"\") == 0"
	.align	3
.LC25:
	.string	"anime"
	.align	3
.LC26:
	.string	"i"
	.align	3
.LC27:
	.string	"strcmp(func0(\"anime\"), \"i\") == 0"
	.align	3
.LC28:
	.string	"Asia"
	.align	3
.LC29:
	.string	"strcmp(func0(\"Asia\"), \"\") == 0"
	.align	3
.LC30:
	.string	"Above"
	.align	3
.LC31:
	.string	"strcmp(func0(\"Above\"), \"o\") == 0"
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
# problem119.c:26:     assert(strcmp(func0("yogurt"), "u") == 0);
	lla	a0,.LC1	#,
	call	func0		#
	mv	a5,a0	# _1,
# problem119.c:26:     assert(strcmp(func0("yogurt"), "u") == 0);
	lla	a1,.LC2	#,
	mv	a0,a5	#, _1
	call	strcmp@plt	#
	mv	a5,a0	# tmp169,
# problem119.c:26:     assert(strcmp(func0("yogurt"), "u") == 0);
	beq	a5,zero,.L7	#, _2,,
# problem119.c:26:     assert(strcmp(func0("yogurt"), "u") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC3	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L7:
# problem119.c:27:     assert(strcmp(func0("full"), "u") == 0);
	lla	a0,.LC5	#,
	call	func0		#
	mv	a5,a0	# _3,
# problem119.c:27:     assert(strcmp(func0("full"), "u") == 0);
	lla	a1,.LC2	#,
	mv	a0,a5	#, _3
	call	strcmp@plt	#
	mv	a5,a0	# tmp170,
# problem119.c:27:     assert(strcmp(func0("full"), "u") == 0);
	beq	a5,zero,.L8	#, _4,,
# problem119.c:27:     assert(strcmp(func0("full"), "u") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC3	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L8:
# problem119.c:28:     assert(strcmp(func0("easy"), "") == 0);
	lla	a0,.LC7	#,
	call	func0		#
	mv	a5,a0	# _5,
# problem119.c:28:     assert(strcmp(func0("easy"), "") == 0);
	lbu	a5,0(a5)	# _33, MEM[(const unsigned char * {ref-all})_5]
	sext.w	a5,a5	# _6, _33
	beq	a5,zero,.L9	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC3	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L9:
# problem119.c:29:     assert(strcmp(func0("eAsy"), "") == 0);
	lla	a0,.LC9	#,
	call	func0		#
	mv	a5,a0	# _7,
# problem119.c:29:     assert(strcmp(func0("eAsy"), "") == 0);
	lbu	a5,0(a5)	# _36, MEM[(const unsigned char * {ref-all})_7]
	sext.w	a5,a5	# _8, _36
	beq	a5,zero,.L10	#, _8,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC3	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L10:
# problem119.c:30:     assert(strcmp(func0("ali"), "") == 0);
	lla	a0,.LC11	#,
	call	func0		#
	mv	a5,a0	# _9,
# problem119.c:30:     assert(strcmp(func0("ali"), "") == 0);
	lbu	a5,0(a5)	# _39, MEM[(const unsigned char * {ref-all})_9]
	sext.w	a5,a5	# _10, _39
	beq	a5,zero,.L11	#, _10,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC3	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L11:
# problem119.c:31:     assert(strcmp(func0("bad"), "a") == 0);
	lla	a0,.LC13	#,
	call	func0		#
	mv	a5,a0	# _11,
# problem119.c:31:     assert(strcmp(func0("bad"), "a") == 0);
	lla	a1,.LC14	#,
	mv	a0,a5	#, _11
	call	strcmp@plt	#
	mv	a5,a0	# tmp171,
# problem119.c:31:     assert(strcmp(func0("bad"), "a") == 0);
	beq	a5,zero,.L12	#, _12,,
# problem119.c:31:     assert(strcmp(func0("bad"), "a") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC3	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L12:
# problem119.c:32:     assert(strcmp(func0("most"), "o") == 0);
	lla	a0,.LC16	#,
	call	func0		#
	mv	a5,a0	# _13,
# problem119.c:32:     assert(strcmp(func0("most"), "o") == 0);
	lla	a1,.LC17	#,
	mv	a0,a5	#, _13
	call	strcmp@plt	#
	mv	a5,a0	# tmp172,
# problem119.c:32:     assert(strcmp(func0("most"), "o") == 0);
	beq	a5,zero,.L13	#, _14,,
# problem119.c:32:     assert(strcmp(func0("most"), "o") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC3	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L13:
# problem119.c:33:     assert(strcmp(func0("ab"), "") == 0);
	lla	a0,.LC19	#,
	call	func0		#
	mv	a5,a0	# _15,
# problem119.c:33:     assert(strcmp(func0("ab"), "") == 0);
	lbu	a5,0(a5)	# _46, MEM[(const unsigned char * {ref-all})_15]
	sext.w	a5,a5	# _16, _46
	beq	a5,zero,.L14	#, _16,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC3	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L14:
# problem119.c:34:     assert(strcmp(func0("ba"), "") == 0);
	lla	a0,.LC21	#,
	call	func0		#
	mv	a5,a0	# _17,
# problem119.c:34:     assert(strcmp(func0("ba"), "") == 0);
	lbu	a5,0(a5)	# _49, MEM[(const unsigned char * {ref-all})_17]
	sext.w	a5,a5	# _18, _49
	beq	a5,zero,.L15	#, _18,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC3	#,
	lla	a0,.LC22	#,
	call	__assert_fail@plt	#
.L15:
# problem119.c:35:     assert(strcmp(func0("quick"), "") == 0);
	lla	a0,.LC23	#,
	call	func0		#
	mv	a5,a0	# _19,
# problem119.c:35:     assert(strcmp(func0("quick"), "") == 0);
	lbu	a5,0(a5)	# _52, MEM[(const unsigned char * {ref-all})_19]
	sext.w	a5,a5	# _20, _52
	beq	a5,zero,.L16	#, _20,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC3	#,
	lla	a0,.LC24	#,
	call	__assert_fail@plt	#
.L16:
# problem119.c:36:     assert(strcmp(func0("anime"), "i") == 0);
	lla	a0,.LC25	#,
	call	func0		#
	mv	a5,a0	# _21,
# problem119.c:36:     assert(strcmp(func0("anime"), "i") == 0);
	lla	a1,.LC26	#,
	mv	a0,a5	#, _21
	call	strcmp@plt	#
	mv	a5,a0	# tmp173,
# problem119.c:36:     assert(strcmp(func0("anime"), "i") == 0);
	beq	a5,zero,.L17	#, _22,,
# problem119.c:36:     assert(strcmp(func0("anime"), "i") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC3	#,
	lla	a0,.LC27	#,
	call	__assert_fail@plt	#
.L17:
# problem119.c:37:     assert(strcmp(func0("Asia"), "") == 0);
	lla	a0,.LC28	#,
	call	func0		#
	mv	a5,a0	# _23,
# problem119.c:37:     assert(strcmp(func0("Asia"), "") == 0);
	lbu	a5,0(a5)	# _57, MEM[(const unsigned char * {ref-all})_23]
	sext.w	a5,a5	# _24, _57
	beq	a5,zero,.L18	#, _24,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC3	#,
	lla	a0,.LC29	#,
	call	__assert_fail@plt	#
.L18:
# problem119.c:38:     assert(strcmp(func0("Above"), "o") == 0);
	lla	a0,.LC30	#,
	call	func0		#
	mv	a5,a0	# _25,
# problem119.c:38:     assert(strcmp(func0("Above"), "o") == 0);
	lla	a1,.LC17	#,
	mv	a0,a5	#, _25
	call	strcmp@plt	#
	mv	a5,a0	# tmp174,
# problem119.c:38:     assert(strcmp(func0("Above"), "o") == 0);
	beq	a5,zero,.L19	#, _26,,
# problem119.c:38:     assert(strcmp(func0("Above"), "o") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC3	#,
	lla	a0,.LC31	#,
	call	__assert_fail@plt	#
.L19:
# problem119.c:40:     return 0;
	li	a5,0		# _61,
# problem119.c:41: }
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
	.local	out.1
	.comm	out.1,2,8
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
