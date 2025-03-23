	.file	"problem113.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
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
	addi	sp,sp,-96	#,,
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	addi	s0,sp,96	#,,
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
	lw	a5,-40(s0)		# tmp105, len
	addiw	a5,a5,1	#, tmp103, tmp104
	sext.w	a5,a5	# _2, tmp103
# problem113.c:8:     char *n = malloc((len + 1) * sizeof(char));
	mv	a0,a5	#, _3
	call	malloc@plt	#
	mv	a5,a0	# tmp106,
	sd	a5,-24(s0)	# tmp106, n
# problem113.c:9:     int ni = 0;
	sw	zero,-52(s0)	#, ni
# problem113.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	sw	zero,-48(s0)	#, i
# problem113.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	j	.L2		#
.L8:
# problem113.c:11:         const char *temp = c;
	ld	a5,-80(s0)		# tmp107, c
	sd	a5,-32(s0)	# tmp107, temp
# problem113.c:12:         bool found = false;
	sb	zero,-54(s0)	#, found
# problem113.c:13:         while (*temp != '\0') {
	j	.L3		#
.L6:
# problem113.c:14:             if (s[i] == *temp) {
	lw	a5,-48(s0)		# _4, i
	ld	a4,-72(s0)		# tmp108, s
	add	a5,a4,a5	# _4, _5, tmp108
	lbu	a4,0(a5)	# _6, *_5
# problem113.c:14:             if (s[i] == *temp) {
	ld	a5,-32(s0)		# tmp109, temp
	lbu	a5,0(a5)	# _7, *temp_34
# problem113.c:14:             if (s[i] == *temp) {
	bne	a4,a5,.L4	#, tmp110, tmp111,
# problem113.c:15:                 found = true;
	li	a5,1		# tmp112,
	sb	a5,-54(s0)	# tmp112, found
# problem113.c:16:                 break;
	j	.L5		#
.L4:
# problem113.c:18:             temp++;
	ld	a5,-32(s0)		# tmp114, temp
	addi	a5,a5,1	#, tmp113, tmp114
	sd	a5,-32(s0)	# tmp113, temp
.L3:
# problem113.c:13:         while (*temp != '\0') {
	ld	a5,-32(s0)		# tmp115, temp
	lbu	a5,0(a5)	# _8, *temp_34
# problem113.c:13:         while (*temp != '\0') {
	bne	a5,zero,.L6	#, _8,,
.L5:
# problem113.c:20:         if (!found) {
	lbu	a5,-54(s0)	# tmp117, found
	xori	a5,a5,1	#, tmp118, tmp116
	andi	a5,a5,0xff	# _9, tmp118
# problem113.c:20:         if (!found) {
	beq	a5,zero,.L7	#, _9,,
# problem113.c:21:             n[ni++] = s[i];
	lw	a5,-48(s0)		# _10, i
	ld	a4,-72(s0)		# tmp119, s
	add	a4,a4,a5	# _10, _11, tmp119
# problem113.c:21:             n[ni++] = s[i];
	lw	a5,-52(s0)		# ni.0_12, ni
	addiw	a3,a5,1	#, tmp120, ni.0_12
	sw	a3,-52(s0)	# tmp120, ni
	mv	a3,a5	# _13, ni.0_12
# problem113.c:21:             n[ni++] = s[i];
	ld	a5,-24(s0)		# tmp121, n
	add	a5,a5,a3	# _13, _14, tmp121
# problem113.c:21:             n[ni++] = s[i];
	lbu	a4,0(a4)	# _15, *_11
# problem113.c:21:             n[ni++] = s[i];
	sb	a4,0(a5)	# _15, *_14
.L7:
# problem113.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	lw	a5,-48(s0)		# tmp124, i
	addiw	a5,a5,1	#, tmp122, tmp123
	sw	a5,-48(s0)	# tmp122, i
.L2:
# problem113.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	lw	a5,-48(s0)		# _16, i
	ld	a4,-72(s0)		# tmp125, s
	add	a5,a4,a5	# _16, _17, tmp125
	lbu	a5,0(a5)	# _18, *_17
# problem113.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	bne	a5,zero,.L8	#, _18,,
# problem113.c:24:     n[ni] = '\0';
	lw	a5,-52(s0)		# _19, ni
	ld	a4,-24(s0)		# tmp126, n
	add	a5,a4,a5	# _19, _20, tmp126
# problem113.c:24:     n[ni] = '\0';
	sb	zero,0(a5)	#, *_20
# problem113.c:26:     int n_len = strlen(n);
	ld	a0,-24(s0)		#, n
	call	strlen@plt	#
	mv	a5,a0	# _21,
# problem113.c:26:     int n_len = strlen(n);
	sw	a5,-36(s0)	# _21, n_len
# problem113.c:27:     bool is_palindrome = true;
	li	a5,1		# tmp127,
	sb	a5,-53(s0)	# tmp127, is_palindrome
# problem113.c:28:     for (int i = 0; i < n_len / 2; i++) {
	sw	zero,-44(s0)	#, i
# problem113.c:28:     for (int i = 0; i < n_len / 2; i++) {
	j	.L9		#
.L12:
# problem113.c:29:         if (n[i] != n[n_len - 1 - i]) {
	lw	a5,-44(s0)		# _22, i
	ld	a4,-24(s0)		# tmp128, n
	add	a5,a4,a5	# _22, _23, tmp128
	lbu	a4,0(a5)	# _24, *_23
# problem113.c:29:         if (n[i] != n[n_len - 1 - i]) {
	lw	a5,-36(s0)		# tmp131, n_len
	addiw	a5,a5,-1	#, tmp129, tmp130
	sext.w	a5,a5	# _25, tmp129
# problem113.c:29:         if (n[i] != n[n_len - 1 - i]) {
	lw	a3,-44(s0)		# tmp134, i
	subw	a5,a5,a3	# tmp132, _25, tmp133
	sext.w	a5,a5	# _26, tmp132
	mv	a3,a5	# _27, _26
# problem113.c:29:         if (n[i] != n[n_len - 1 - i]) {
	ld	a5,-24(s0)		# tmp135, n
	add	a5,a5,a3	# _27, _28, tmp135
	lbu	a5,0(a5)	# _29, *_28
# problem113.c:29:         if (n[i] != n[n_len - 1 - i]) {
	beq	a4,a5,.L10	#, tmp136, tmp137,
# problem113.c:30:             is_palindrome = false;
	sb	zero,-53(s0)	#, is_palindrome
# problem113.c:31:             break;
	j	.L11		#
.L10:
# problem113.c:28:     for (int i = 0; i < n_len / 2; i++) {
	lw	a5,-44(s0)		# tmp140, i
	addiw	a5,a5,1	#, tmp138, tmp139
	sw	a5,-44(s0)	# tmp138, i
.L9:
# problem113.c:28:     for (int i = 0; i < n_len / 2; i++) {
	lw	a5,-36(s0)		# tmp143, n_len
	srliw	a4,a5,31	#, tmp144, tmp142
	addw	a5,a4,a5	# tmp142, tmp145, tmp144
	sraiw	a5,a5,1	#, tmp146, tmp145
	sext.w	a4,a5	# _30, tmp146
# problem113.c:28:     for (int i = 0; i < n_len / 2; i++) {
	lw	a5,-44(s0)		# tmp148, i
	sext.w	a5,a5	# tmp149, tmp147
	blt	a5,a4,.L12	#, tmp149, tmp150,
.L11:
# problem113.c:35:     strcpy(result, n);
	ld	a1,-24(s0)		#, n
	ld	a0,-88(s0)		#, result
	call	strcpy@plt	#
# problem113.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	lbu	a5,-53(s0)	# tmp152, is_palindrome
	andi	a5,a5,0xff	# tmp153, tmp151
	beq	a5,zero,.L13	#, tmp153,,
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
	ld	s0,80(sp)		#,
	addi	sp,sp,96	#,,
	jr	ra		#
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
	addi	sp,sp,-144	#,,
	sd	ra,136(sp)	#,
	sd	s0,128(sp)	#,
	addi	s0,sp,144	#,,
# problem113.c:46: int main() {
	la	a5,__stack_chk_guard		# tmp94,
	ld	a4, 0(a5)	# tmp148, __stack_chk_guard
	sd	a4, -24(s0)	# tmp148, D.2698
	li	a4, 0	# tmp148
# problem113.c:50:     func0("abcde", "ae", result, palindrome);
	addi	a4,s0,-136	#, tmp95,
	addi	a5,s0,-128	#, tmp96,
	mv	a3,a4	#, tmp95
	mv	a2,a5	#, tmp96
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	func0		#
# problem113.c:51:     assert(strcmp(result, "bcd") == 0 && strcmp(palindrome, "False") == 0);
	addi	a5,s0,-128	#, tmp97,
	lla	a1,.LC4	#,
	mv	a0,a5	#, tmp97
	call	strcmp@plt	#
	mv	a5,a0	# tmp98,
	bne	a5,zero,.L16	#, _1,,
# problem113.c:51:     assert(strcmp(result, "bcd") == 0 && strcmp(palindrome, "False") == 0);
	addi	a5,s0,-136	#, tmp99,
	lla	a1,.LC1	#,
	mv	a0,a5	#, tmp99
	call	strcmp@plt	#
	mv	a5,a0	# tmp100,
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
	addi	a4,s0,-136	#, tmp101,
	addi	a5,s0,-128	#, tmp102,
	mv	a3,a4	#, tmp101
	mv	a2,a5	#, tmp102
	lla	a1,.LC7	#,
	lla	a0,.LC8	#,
	call	func0		#
# problem113.c:54:     assert(strcmp(result, "acdef") == 0 && strcmp(palindrome, "False") == 0);
	addi	a5,s0,-128	#, tmp103,
	lla	a1,.LC9	#,
	mv	a0,a5	#, tmp103
	call	strcmp@plt	#
	mv	a5,a0	# tmp104,
	bne	a5,zero,.L18	#, _3,,
# problem113.c:54:     assert(strcmp(result, "acdef") == 0 && strcmp(palindrome, "False") == 0);
	addi	a5,s0,-136	#, tmp105,
	lla	a1,.LC1	#,
	mv	a0,a5	#, tmp105
	call	strcmp@plt	#
	mv	a5,a0	# tmp106,
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
	addi	a4,s0,-136	#, tmp107,
	addi	a5,s0,-128	#, tmp108,
	mv	a3,a4	#, tmp107
	mv	a2,a5	#, tmp108
	lla	a1,.LC11	#,
	lla	a0,.LC12	#,
	call	func0		#
# problem113.c:57:     assert(strcmp(result, "cdedc") == 0 && strcmp(palindrome, "True") == 0);
	addi	a5,s0,-128	#, tmp109,
	lla	a1,.LC13	#,
	mv	a0,a5	#, tmp109
	call	strcmp@plt	#
	mv	a5,a0	# tmp110,
	bne	a5,zero,.L20	#, _5,,
# problem113.c:57:     assert(strcmp(result, "cdedc") == 0 && strcmp(palindrome, "True") == 0);
	addi	a5,s0,-136	#, tmp111,
	lla	a1,.LC0	#,
	mv	a0,a5	#, tmp111
	call	strcmp@plt	#
	mv	a5,a0	# tmp112,
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
	addi	a4,s0,-136	#, tmp113,
	addi	a5,s0,-128	#, tmp114,
	mv	a3,a4	#, tmp113
	mv	a2,a5	#, tmp114
	lla	a1,.LC15	#,
	lla	a0,.LC16	#,
	call	func0		#
# problem113.c:60:     assert(strcmp(result, "dik") == 0 && strcmp(palindrome, "False") == 0);
	addi	a5,s0,-128	#, tmp115,
	lla	a1,.LC17	#,
	mv	a0,a5	#, tmp115
	call	strcmp@plt	#
	mv	a5,a0	# tmp116,
	bne	a5,zero,.L22	#, _7,,
# problem113.c:60:     assert(strcmp(result, "dik") == 0 && strcmp(palindrome, "False") == 0);
	addi	a5,s0,-136	#, tmp117,
	lla	a1,.LC1	#,
	mv	a0,a5	#, tmp117
	call	strcmp@plt	#
	mv	a5,a0	# tmp118,
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
	addi	a4,s0,-136	#, tmp119,
	addi	a5,s0,-128	#, tmp120,
	mv	a3,a4	#, tmp119
	mv	a2,a5	#, tmp120
	lla	a1,.LC19	#,
	lla	a0,.LC19	#,
	call	func0		#
# problem113.c:63:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	lbu	a5,-128(s0)	# _25, MEM[(const unsigned char * {ref-all})&result]
	sext.w	a5,a5	# _9, _25
	bne	a5,zero,.L24	#, _9,,
# problem113.c:63:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	addi	a5,s0,-136	#, tmp121,
	lla	a1,.LC0	#,
	mv	a0,a5	#, tmp121
	call	strcmp@plt	#
	mv	a5,a0	# tmp122,
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
	addi	a4,s0,-136	#, tmp123,
	addi	a5,s0,-128	#, tmp124,
	mv	a3,a4	#, tmp123
	mv	a2,a5	#, tmp124
	lla	a1,.LC21	#,
	lla	a0,.LC12	#,
	call	func0		#
# problem113.c:66:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	addi	a5,s0,-128	#, tmp125,
	lla	a1,.LC12	#,
	mv	a0,a5	#, tmp125
	call	strcmp@plt	#
	mv	a5,a0	# tmp126,
	bne	a5,zero,.L26	#, _11,,
# problem113.c:66:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	addi	a5,s0,-136	#, tmp127,
	lla	a1,.LC0	#,
	mv	a0,a5	#, tmp127
	call	strcmp@plt	#
	mv	a5,a0	# tmp128,
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
	addi	a4,s0,-136	#, tmp129,
	addi	a5,s0,-128	#, tmp130,
	mv	a3,a4	#, tmp129
	mv	a2,a5	#, tmp130
	lla	a1,.LC23	#,
	lla	a0,.LC12	#,
	call	func0		#
# problem113.c:69:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	addi	a5,s0,-128	#, tmp131,
	lla	a1,.LC12	#,
	mv	a0,a5	#, tmp131
	call	strcmp@plt	#
	mv	a5,a0	# tmp132,
	bne	a5,zero,.L28	#, _13,,
# problem113.c:69:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	addi	a5,s0,-136	#, tmp133,
	lla	a1,.LC0	#,
	mv	a0,a5	#, tmp133
	call	strcmp@plt	#
	mv	a5,a0	# tmp134,
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
	addi	a4,s0,-136	#, tmp135,
	addi	a5,s0,-128	#, tmp136,
	mv	a3,a4	#, tmp135
	mv	a2,a5	#, tmp136
	lla	a1,.LC23	#,
	lla	a0,.LC24	#,
	call	func0		#
# problem113.c:72:     assert(strcmp(result, "abba") == 0 && strcmp(palindrome, "True") == 0);
	addi	a5,s0,-128	#, tmp137,
	lla	a1,.LC25	#,
	mv	a0,a5	#, tmp137
	call	strcmp@plt	#
	mv	a5,a0	# tmp138,
	bne	a5,zero,.L30	#, _15,,
# problem113.c:72:     assert(strcmp(result, "abba") == 0 && strcmp(palindrome, "True") == 0);
	addi	a5,s0,-136	#, tmp139,
	lla	a1,.LC0	#,
	mv	a0,a5	#, tmp139
	call	strcmp@plt	#
	mv	a5,a0	# tmp140,
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
	addi	a4,s0,-136	#, tmp141,
	addi	a5,s0,-128	#, tmp142,
	mv	a3,a4	#, tmp141
	mv	a2,a5	#, tmp142
	lla	a1,.LC27	#,
	lla	a0,.LC28	#,
	call	func0		#
# problem113.c:75:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	lbu	a5,-128(s0)	# _30, MEM[(const unsigned char * {ref-all})&result]
	sext.w	a5,a5	# _17, _30
	bne	a5,zero,.L32	#, _17,,
# problem113.c:75:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	addi	a5,s0,-136	#, tmp143,
	lla	a1,.LC0	#,
	mv	a0,a5	#, tmp143
	call	strcmp@plt	#
	mv	a5,a0	# tmp144,
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
	la	a5,__stack_chk_guard		# tmp146,
	ld	a3, -24(s0)	# tmp149, D.2698
	ld	a5, 0(a5)	# tmp147, __stack_chk_guard
	xor	a5, a3, a5	# tmp147, tmp149
	li	a3, 0	# tmp149
	beq	a5,zero,.L35	#, tmp147,,
	call	__stack_chk_fail@plt	#
.L35:
	mv	a0,a4	#, <retval>
	ld	ra,136(sp)		#,
	ld	s0,128(sp)		#,
	addi	sp,sp,144	#,,
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
