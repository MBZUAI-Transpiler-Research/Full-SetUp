	.file	"problem113.c"
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
	.string	"True"
	.align	3
.LC1:
	.string	"False"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-96	#,,
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)	# s, s
	sd	a1,-80(s0)	# c, c
	sd	a2,-88(s0)	# result, result
	sd	a3,-96(s0)	# palindrome, palindrome
# problem113.c:7:     int len = strlen(s);
	ld	a0,-72(s0)		#, s
	call	strlen@plt	#
	mv	a5,a0	# _1,
# problem113.c:7:     int len = strlen(s);
	sw	a5,-40(s0)	# _1, len
# problem113.c:8:     char *n = malloc((len + 1) * sizeof(char));
	lw	a5,-40(s0)		# tmp167, len
	addiw	a5,a5,1	#, tmp165, tmp166
	sext.w	a5,a5	# _2, tmp165
# problem113.c:8:     char *n = malloc((len + 1) * sizeof(char));
	mv	a0,a5	#, _3
	call	malloc@plt	#
	mv	a5,a0	# tmp168,
	sd	a5,-24(s0)	# tmp168, n
# problem113.c:9:     int ni = 0;
	sw	zero,-52(s0)	#, ni
# problem113.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	sw	zero,-48(s0)	#, i
# problem113.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	j	.L2		#
.L8:
# problem113.c:11:         const char *temp = c;
	ld	a5,-80(s0)		# tmp169, c
	sd	a5,-32(s0)	# tmp169, temp
# problem113.c:12:         bool found = false;
	sb	zero,-54(s0)	#, found
# problem113.c:13:         while (*temp != '\0') {
	j	.L3		#
.L6:
# problem113.c:14:             if (s[i] == *temp) {
	lw	a5,-48(s0)		# _4, i
	ld	a4,-72(s0)		# tmp170, s
	add	a5,a4,a5	# _4, _5, tmp170
	lbu	a4,0(a5)	# _6, *_5
# problem113.c:14:             if (s[i] == *temp) {
	ld	a5,-32(s0)		# tmp171, temp
	lbu	a5,0(a5)	# _7, *temp_34
# problem113.c:14:             if (s[i] == *temp) {
	bne	a4,a5,.L4	#, tmp172, tmp173,
# problem113.c:15:                 found = true;
	li	a5,1		# tmp174,
	sb	a5,-54(s0)	# tmp174, found
# problem113.c:16:                 break;
	j	.L5		#
.L4:
# problem113.c:18:             temp++;
	ld	a5,-32(s0)		# tmp176, temp
	addi	a5,a5,1	#, tmp175, tmp176
	sd	a5,-32(s0)	# tmp175, temp
.L3:
# problem113.c:13:         while (*temp != '\0') {
	ld	a5,-32(s0)		# tmp177, temp
	lbu	a5,0(a5)	# _8, *temp_34
# problem113.c:13:         while (*temp != '\0') {
	bne	a5,zero,.L6	#, _8,,
.L5:
# problem113.c:20:         if (!found) {
	lbu	a5,-54(s0)	# tmp179, found
	xori	a5,a5,1	#, tmp180, tmp178
	andi	a5,a5,0xff	# _9, tmp180
# problem113.c:20:         if (!found) {
	beq	a5,zero,.L7	#, _9,,
# problem113.c:21:             n[ni++] = s[i];
	lw	a5,-48(s0)		# _10, i
	ld	a4,-72(s0)		# tmp181, s
	add	a4,a4,a5	# _10, _11, tmp181
# problem113.c:21:             n[ni++] = s[i];
	lw	a5,-52(s0)		# ni.0_12, ni
	addiw	a3,a5,1	#, tmp182, ni.0_12
	sw	a3,-52(s0)	# tmp182, ni
	mv	a3,a5	# _13, ni.0_12
# problem113.c:21:             n[ni++] = s[i];
	ld	a5,-24(s0)		# tmp183, n
	add	a5,a5,a3	# _13, _14, tmp183
# problem113.c:21:             n[ni++] = s[i];
	lbu	a4,0(a4)	# _15, *_11
# problem113.c:21:             n[ni++] = s[i];
	sb	a4,0(a5)	# _15, *_14
.L7:
# problem113.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	lw	a5,-48(s0)		# tmp186, i
	addiw	a5,a5,1	#, tmp184, tmp185
	sw	a5,-48(s0)	# tmp184, i
.L2:
# problem113.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	lw	a5,-48(s0)		# _16, i
	ld	a4,-72(s0)		# tmp187, s
	add	a5,a4,a5	# _16, _17, tmp187
	lbu	a5,0(a5)	# _18, *_17
# problem113.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	bne	a5,zero,.L8	#, _18,,
# problem113.c:24:     n[ni] = '\0';
	lw	a5,-52(s0)		# _19, ni
	ld	a4,-24(s0)		# tmp188, n
	add	a5,a4,a5	# _19, _20, tmp188
# problem113.c:24:     n[ni] = '\0';
	sb	zero,0(a5)	#, *_20
# problem113.c:26:     int n_len = strlen(n);
	ld	a0,-24(s0)		#, n
	call	strlen@plt	#
	mv	a5,a0	# _21,
# problem113.c:26:     int n_len = strlen(n);
	sw	a5,-36(s0)	# _21, n_len
# problem113.c:27:     bool is_palindrome = true;
	li	a5,1		# tmp189,
	sb	a5,-53(s0)	# tmp189, is_palindrome
# problem113.c:28:     for (int i = 0; i < n_len / 2; i++) {
	sw	zero,-44(s0)	#, i
# problem113.c:28:     for (int i = 0; i < n_len / 2; i++) {
	j	.L9		#
.L12:
# problem113.c:29:         if (n[i] != n[n_len - 1 - i]) {
	lw	a5,-44(s0)		# _22, i
	ld	a4,-24(s0)		# tmp190, n
	add	a5,a4,a5	# _22, _23, tmp190
	lbu	a4,0(a5)	# _24, *_23
# problem113.c:29:         if (n[i] != n[n_len - 1 - i]) {
	lw	a5,-36(s0)		# tmp193, n_len
	addiw	a5,a5,-1	#, tmp191, tmp192
	sext.w	a5,a5	# _25, tmp191
# problem113.c:29:         if (n[i] != n[n_len - 1 - i]) {
	lw	a3,-44(s0)		# tmp196, i
	subw	a5,a5,a3	# tmp194, _25, tmp195
	sext.w	a5,a5	# _26, tmp194
	mv	a3,a5	# _27, _26
# problem113.c:29:         if (n[i] != n[n_len - 1 - i]) {
	ld	a5,-24(s0)		# tmp197, n
	add	a5,a5,a3	# _27, _28, tmp197
	lbu	a5,0(a5)	# _29, *_28
# problem113.c:29:         if (n[i] != n[n_len - 1 - i]) {
	beq	a4,a5,.L10	#, tmp198, tmp199,
# problem113.c:30:             is_palindrome = false;
	sb	zero,-53(s0)	#, is_palindrome
# problem113.c:31:             break;
	j	.L11		#
.L10:
# problem113.c:28:     for (int i = 0; i < n_len / 2; i++) {
	lw	a5,-44(s0)		# tmp202, i
	addiw	a5,a5,1	#, tmp200, tmp201
	sw	a5,-44(s0)	# tmp200, i
.L9:
# problem113.c:28:     for (int i = 0; i < n_len / 2; i++) {
	lw	a5,-36(s0)		# tmp205, n_len
	srliw	a4,a5,31	#, tmp206, tmp204
	addw	a5,a4,a5	# tmp204, tmp207, tmp206
	sraiw	a5,a5,1	#, tmp208, tmp207
	sext.w	a4,a5	# _30, tmp208
# problem113.c:28:     for (int i = 0; i < n_len / 2; i++) {
	lw	a5,-44(s0)		# tmp210, i
	sext.w	a5,a5	# tmp211, tmp209
	blt	a5,a4,.L12	#, tmp211, tmp212,
.L11:
# problem113.c:35:     strcpy(result, n);
	ld	a1,-24(s0)		#, n
	ld	a0,-88(s0)		#, result
	call	strcpy@plt	#
# problem113.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	lbu	a5,-53(s0)	# tmp214, is_palindrome
	andi	a5,a5,0xff	# tmp215, tmp213
	beq	a5,zero,.L13	#, tmp215,,
# problem113.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	lla	a5,.LC0	# iftmp.1_38,
	j	.L14		#
.L13:
# problem113.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	lla	a5,.LC1	# iftmp.1_38,
.L14:
# problem113.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	mv	a1,a5	#, iftmp.1_38
	ld	a0,-96(s0)		#, palindrome
	call	strcpy@plt	#
# problem113.c:38:     free(n);
	ld	a0,-24(s0)		#, n
	call	free@plt	#
# problem113.c:39: }
	nop	
	ld	ra,88(sp)		#,
	.cfi_restore 1
	ld	s0,80(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC2:
	.string	"ae"
	.align	3
.LC3:
	.string	"abcde"
	.align	3
.LC4:
	.string	"bcd"
	.align	3
.LC5:
	.string	"problem113.c"
	.align	3
.LC6:
	.string	"strcmp(result, \"bcd\") == 0 && strcmp(palindrome, \"False\") == 0"
	.align	3
.LC7:
	.string	"b"
	.align	3
.LC8:
	.string	"abcdef"
	.align	3
.LC9:
	.string	"acdef"
	.align	3
.LC10:
	.string	"strcmp(result, \"acdef\") == 0 && strcmp(palindrome, \"False\") == 0"
	.align	3
.LC11:
	.string	"ab"
	.align	3
.LC12:
	.string	"abcdedcba"
	.align	3
.LC13:
	.string	"cdedc"
	.align	3
.LC14:
	.string	"strcmp(result, \"cdedc\") == 0 && strcmp(palindrome, \"True\") == 0"
	.align	3
.LC15:
	.string	"w"
	.align	3
.LC16:
	.string	"dwik"
	.align	3
.LC17:
	.string	"dik"
	.align	3
.LC18:
	.string	"strcmp(result, \"dik\") == 0 && strcmp(palindrome, \"False\") == 0"
	.align	3
.LC19:
	.string	"a"
	.align	3
.LC20:
	.string	"strcmp(result, \"\") == 0 && strcmp(palindrome, \"True\") == 0"
	.align	3
.LC21:
	.string	""
	.align	3
.LC22:
	.string	"strcmp(result, \"abcdedcba\") == 0 && strcmp(palindrome, \"True\") == 0"
	.align	3
.LC23:
	.string	"v"
	.align	3
.LC24:
	.string	"vabba"
	.align	3
.LC25:
	.string	"abba"
	.align	3
.LC26:
	.string	"strcmp(result, \"abba\") == 0 && strcmp(palindrome, \"True\") == 0"
	.align	3
.LC27:
	.string	"mia"
	.align	3
.LC28:
	.string	"mamma"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-144	#,,
	.cfi_def_cfa_offset 144
	sd	ra,136(sp)	#,
	sd	s0,128(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,144	#,,
	.cfi_def_cfa 8, 0
# problem113.c:46: int main() {
	la	a5,__stack_chk_guard		# tmp156,
	ld	a4, 0(a5)	# tmp210, __stack_chk_guard
	sd	a4, -24(s0)	# tmp210, D.3550
	li	a4, 0	# tmp210
# problem113.c:50:     func0("abcde", "ae", result, palindrome);
	addi	a4,s0,-136	#, tmp157,
	addi	a5,s0,-128	#, tmp158,
	mv	a3,a4	#, tmp157
	mv	a2,a5	#, tmp158
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	func0		#
# problem113.c:51:     assert(strcmp(result, "bcd") == 0 && strcmp(palindrome, "False") == 0);
	addi	a5,s0,-128	#, tmp159,
	lla	a1,.LC4	#,
	mv	a0,a5	#, tmp159
	call	strcmp@plt	#
	mv	a5,a0	# tmp160,
# problem113.c:51:     assert(strcmp(result, "bcd") == 0 && strcmp(palindrome, "False") == 0);
	bne	a5,zero,.L16	#, _1,,
	addi	a5,s0,-136	#, tmp161,
	lla	a1,.LC1	#,
	mv	a0,a5	#, tmp161
	call	strcmp@plt	#
	mv	a5,a0	# tmp162,
	beq	a5,zero,.L36	#, _2,,
.L16:
# problem113.c:51:     assert(strcmp(result, "bcd") == 0 && strcmp(palindrome, "False") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,51		#,
	lla	a1,.LC5	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L36:
# problem113.c:53:     func0("abcdef", "b", result, palindrome);
	addi	a4,s0,-136	#, tmp163,
	addi	a5,s0,-128	#, tmp164,
	mv	a3,a4	#, tmp163
	mv	a2,a5	#, tmp164
	lla	a1,.LC7	#,
	lla	a0,.LC8	#,
	call	func0		#
# problem113.c:54:     assert(strcmp(result, "acdef") == 0 && strcmp(palindrome, "False") == 0);
	addi	a5,s0,-128	#, tmp165,
	lla	a1,.LC9	#,
	mv	a0,a5	#, tmp165
	call	strcmp@plt	#
	mv	a5,a0	# tmp166,
# problem113.c:54:     assert(strcmp(result, "acdef") == 0 && strcmp(palindrome, "False") == 0);
	bne	a5,zero,.L18	#, _3,,
	addi	a5,s0,-136	#, tmp167,
	lla	a1,.LC1	#,
	mv	a0,a5	#, tmp167
	call	strcmp@plt	#
	mv	a5,a0	# tmp168,
	beq	a5,zero,.L37	#, _4,,
.L18:
# problem113.c:54:     assert(strcmp(result, "acdef") == 0 && strcmp(palindrome, "False") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,54		#,
	lla	a1,.LC5	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L37:
# problem113.c:56:     func0("abcdedcba", "ab", result, palindrome);
	addi	a4,s0,-136	#, tmp169,
	addi	a5,s0,-128	#, tmp170,
	mv	a3,a4	#, tmp169
	mv	a2,a5	#, tmp170
	lla	a1,.LC11	#,
	lla	a0,.LC12	#,
	call	func0		#
# problem113.c:57:     assert(strcmp(result, "cdedc") == 0 && strcmp(palindrome, "True") == 0);
	addi	a5,s0,-128	#, tmp171,
	lla	a1,.LC13	#,
	mv	a0,a5	#, tmp171
	call	strcmp@plt	#
	mv	a5,a0	# tmp172,
# problem113.c:57:     assert(strcmp(result, "cdedc") == 0 && strcmp(palindrome, "True") == 0);
	bne	a5,zero,.L20	#, _5,,
	addi	a5,s0,-136	#, tmp173,
	lla	a1,.LC0	#,
	mv	a0,a5	#, tmp173
	call	strcmp@plt	#
	mv	a5,a0	# tmp174,
	beq	a5,zero,.L38	#, _6,,
.L20:
# problem113.c:57:     assert(strcmp(result, "cdedc") == 0 && strcmp(palindrome, "True") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,57		#,
	lla	a1,.LC5	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L38:
# problem113.c:59:     func0("dwik", "w", result, palindrome);
	addi	a4,s0,-136	#, tmp175,
	addi	a5,s0,-128	#, tmp176,
	mv	a3,a4	#, tmp175
	mv	a2,a5	#, tmp176
	lla	a1,.LC15	#,
	lla	a0,.LC16	#,
	call	func0		#
# problem113.c:60:     assert(strcmp(result, "dik") == 0 && strcmp(palindrome, "False") == 0);
	addi	a5,s0,-128	#, tmp177,
	lla	a1,.LC17	#,
	mv	a0,a5	#, tmp177
	call	strcmp@plt	#
	mv	a5,a0	# tmp178,
# problem113.c:60:     assert(strcmp(result, "dik") == 0 && strcmp(palindrome, "False") == 0);
	bne	a5,zero,.L22	#, _7,,
	addi	a5,s0,-136	#, tmp179,
	lla	a1,.LC1	#,
	mv	a0,a5	#, tmp179
	call	strcmp@plt	#
	mv	a5,a0	# tmp180,
	beq	a5,zero,.L39	#, _8,,
.L22:
# problem113.c:60:     assert(strcmp(result, "dik") == 0 && strcmp(palindrome, "False") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,60		#,
	lla	a1,.LC5	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L39:
# problem113.c:62:     func0("a", "a", result, palindrome);
	addi	a4,s0,-136	#, tmp181,
	addi	a5,s0,-128	#, tmp182,
	mv	a3,a4	#, tmp181
	mv	a2,a5	#, tmp182
	lla	a1,.LC19	#,
	lla	a0,.LC19	#,
	call	func0		#
# problem113.c:63:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	lbu	a5,-128(s0)	# _25, MEM[(const unsigned char * {ref-all})&result]
	sext.w	a5,a5	# _9, _25
	bne	a5,zero,.L24	#, _9,,
# problem113.c:63:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	addi	a5,s0,-136	#, tmp183,
	lla	a1,.LC0	#,
	mv	a0,a5	#, tmp183
	call	strcmp@plt	#
	mv	a5,a0	# tmp184,
	beq	a5,zero,.L40	#, _10,,
.L24:
# problem113.c:63:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,63		#,
	lla	a1,.LC5	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L40:
# problem113.c:65:     func0("abcdedcba", "", result, palindrome);
	addi	a4,s0,-136	#, tmp185,
	addi	a5,s0,-128	#, tmp186,
	mv	a3,a4	#, tmp185
	mv	a2,a5	#, tmp186
	lla	a1,.LC21	#,
	lla	a0,.LC12	#,
	call	func0		#
# problem113.c:66:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	addi	a5,s0,-128	#, tmp187,
	lla	a1,.LC12	#,
	mv	a0,a5	#, tmp187
	call	strcmp@plt	#
	mv	a5,a0	# tmp188,
# problem113.c:66:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	bne	a5,zero,.L26	#, _11,,
	addi	a5,s0,-136	#, tmp189,
	lla	a1,.LC0	#,
	mv	a0,a5	#, tmp189
	call	strcmp@plt	#
	mv	a5,a0	# tmp190,
	beq	a5,zero,.L41	#, _12,,
.L26:
# problem113.c:66:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,66		#,
	lla	a1,.LC5	#,
	lla	a0,.LC22	#,
	call	__assert_fail@plt	#
.L41:
# problem113.c:68:     func0("abcdedcba", "v", result, palindrome);
	addi	a4,s0,-136	#, tmp191,
	addi	a5,s0,-128	#, tmp192,
	mv	a3,a4	#, tmp191
	mv	a2,a5	#, tmp192
	lla	a1,.LC23	#,
	lla	a0,.LC12	#,
	call	func0		#
# problem113.c:69:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	addi	a5,s0,-128	#, tmp193,
	lla	a1,.LC12	#,
	mv	a0,a5	#, tmp193
	call	strcmp@plt	#
	mv	a5,a0	# tmp194,
# problem113.c:69:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	bne	a5,zero,.L28	#, _13,,
	addi	a5,s0,-136	#, tmp195,
	lla	a1,.LC0	#,
	mv	a0,a5	#, tmp195
	call	strcmp@plt	#
	mv	a5,a0	# tmp196,
	beq	a5,zero,.L42	#, _14,,
.L28:
# problem113.c:69:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,69		#,
	lla	a1,.LC5	#,
	lla	a0,.LC22	#,
	call	__assert_fail@plt	#
.L42:
# problem113.c:71:     func0("vabba", "v", result, palindrome);
	addi	a4,s0,-136	#, tmp197,
	addi	a5,s0,-128	#, tmp198,
	mv	a3,a4	#, tmp197
	mv	a2,a5	#, tmp198
	lla	a1,.LC23	#,
	lla	a0,.LC24	#,
	call	func0		#
# problem113.c:72:     assert(strcmp(result, "abba") == 0 && strcmp(palindrome, "True") == 0);
	addi	a5,s0,-128	#, tmp199,
	lla	a1,.LC25	#,
	mv	a0,a5	#, tmp199
	call	strcmp@plt	#
	mv	a5,a0	# tmp200,
# problem113.c:72:     assert(strcmp(result, "abba") == 0 && strcmp(palindrome, "True") == 0);
	bne	a5,zero,.L30	#, _15,,
	addi	a5,s0,-136	#, tmp201,
	lla	a1,.LC0	#,
	mv	a0,a5	#, tmp201
	call	strcmp@plt	#
	mv	a5,a0	# tmp202,
	beq	a5,zero,.L43	#, _16,,
.L30:
# problem113.c:72:     assert(strcmp(result, "abba") == 0 && strcmp(palindrome, "True") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,72		#,
	lla	a1,.LC5	#,
	lla	a0,.LC26	#,
	call	__assert_fail@plt	#
.L43:
# problem113.c:74:     func0("mamma", "mia", result, palindrome);
	addi	a4,s0,-136	#, tmp203,
	addi	a5,s0,-128	#, tmp204,
	mv	a3,a4	#, tmp203
	mv	a2,a5	#, tmp204
	lla	a1,.LC27	#,
	lla	a0,.LC28	#,
	call	func0		#
# problem113.c:75:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	lbu	a5,-128(s0)	# _30, MEM[(const unsigned char * {ref-all})&result]
	sext.w	a5,a5	# _17, _30
	bne	a5,zero,.L32	#, _17,,
# problem113.c:75:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	addi	a5,s0,-136	#, tmp205,
	lla	a1,.LC0	#,
	mv	a0,a5	#, tmp205
	call	strcmp@plt	#
	mv	a5,a0	# tmp206,
	beq	a5,zero,.L44	#, _18,,
.L32:
# problem113.c:75:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,75		#,
	lla	a1,.LC5	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L44:
# problem113.c:77:     return 0;
	li	a5,0		# _31,
# problem113.c:78: }
	mv	a4,a5	# <retval>, _31
	la	a5,__stack_chk_guard		# tmp208,
	ld	a3, -24(s0)	# tmp211, D.3550
	ld	a5, 0(a5)	# tmp209, __stack_chk_guard
	xor	a5, a3, a5	# tmp209, tmp211
	li	a3, 0	# tmp211
	beq	a5,zero,.L35	#, tmp209,,
	call	__stack_chk_fail@plt	#
.L35:
	mv	a0,a4	#, <retval>
	ld	ra,136(sp)		#,
	.cfi_restore 1
	ld	s0,128(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144	#,,
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
