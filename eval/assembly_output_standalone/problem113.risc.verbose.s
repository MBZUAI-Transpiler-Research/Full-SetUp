	.file	"code.c"
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
# eval/problem113//code.c:7:     int len = strlen(s);
	ld	a0,-72(s0)		#, s
	call	strlen@plt	#
	mv	a5,a0	# _1,
# eval/problem113//code.c:7:     int len = strlen(s);
	sw	a5,-40(s0)	# _1, len
# eval/problem113//code.c:8:     char *n = malloc((len + 1) * sizeof(char));
	lw	a5,-40(s0)		# tmp105, len
	addiw	a5,a5,1	#, tmp103, tmp104
	sext.w	a5,a5	# _2, tmp103
# eval/problem113//code.c:8:     char *n = malloc((len + 1) * sizeof(char));
	mv	a0,a5	#, _3
	call	malloc@plt	#
	mv	a5,a0	# tmp106,
	sd	a5,-24(s0)	# tmp106, n
# eval/problem113//code.c:9:     int ni = 0;
	sw	zero,-52(s0)	#, ni
# eval/problem113//code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	sw	zero,-48(s0)	#, i
# eval/problem113//code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	j	.L2		#
.L8:
# eval/problem113//code.c:11:         const char *temp = c;
	ld	a5,-80(s0)		# tmp107, c
	sd	a5,-32(s0)	# tmp107, temp
# eval/problem113//code.c:12:         bool found = false;
	sb	zero,-54(s0)	#, found
# eval/problem113//code.c:13:         while (*temp != '\0') {
	j	.L3		#
.L6:
# eval/problem113//code.c:14:             if (s[i] == *temp) {
	lw	a5,-48(s0)		# _4, i
	ld	a4,-72(s0)		# tmp108, s
	add	a5,a4,a5	# _4, _5, tmp108
	lbu	a4,0(a5)	# _6, *_5
# eval/problem113//code.c:14:             if (s[i] == *temp) {
	ld	a5,-32(s0)		# tmp109, temp
	lbu	a5,0(a5)	# _7, *temp_34
# eval/problem113//code.c:14:             if (s[i] == *temp) {
	bne	a4,a5,.L4	#, tmp110, tmp111,
# eval/problem113//code.c:15:                 found = true;
	li	a5,1		# tmp112,
	sb	a5,-54(s0)	# tmp112, found
# eval/problem113//code.c:16:                 break;
	j	.L5		#
.L4:
# eval/problem113//code.c:18:             temp++;
	ld	a5,-32(s0)		# tmp114, temp
	addi	a5,a5,1	#, tmp113, tmp114
	sd	a5,-32(s0)	# tmp113, temp
.L3:
# eval/problem113//code.c:13:         while (*temp != '\0') {
	ld	a5,-32(s0)		# tmp115, temp
	lbu	a5,0(a5)	# _8, *temp_34
# eval/problem113//code.c:13:         while (*temp != '\0') {
	bne	a5,zero,.L6	#, _8,,
.L5:
# eval/problem113//code.c:20:         if (!found) {
	lbu	a5,-54(s0)	# tmp117, found
	xori	a5,a5,1	#, tmp118, tmp116
	andi	a5,a5,0xff	# _9, tmp118
# eval/problem113//code.c:20:         if (!found) {
	beq	a5,zero,.L7	#, _9,,
# eval/problem113//code.c:21:             n[ni++] = s[i];
	lw	a5,-48(s0)		# _10, i
	ld	a4,-72(s0)		# tmp119, s
	add	a4,a4,a5	# _10, _11, tmp119
# eval/problem113//code.c:21:             n[ni++] = s[i];
	lw	a5,-52(s0)		# ni.0_12, ni
	addiw	a3,a5,1	#, tmp120, ni.0_12
	sw	a3,-52(s0)	# tmp120, ni
	mv	a3,a5	# _13, ni.0_12
# eval/problem113//code.c:21:             n[ni++] = s[i];
	ld	a5,-24(s0)		# tmp121, n
	add	a5,a5,a3	# _13, _14, tmp121
# eval/problem113//code.c:21:             n[ni++] = s[i];
	lbu	a4,0(a4)	# _15, *_11
# eval/problem113//code.c:21:             n[ni++] = s[i];
	sb	a4,0(a5)	# _15, *_14
.L7:
# eval/problem113//code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	lw	a5,-48(s0)		# tmp124, i
	addiw	a5,a5,1	#, tmp122, tmp123
	sw	a5,-48(s0)	# tmp122, i
.L2:
# eval/problem113//code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	lw	a5,-48(s0)		# _16, i
	ld	a4,-72(s0)		# tmp125, s
	add	a5,a4,a5	# _16, _17, tmp125
	lbu	a5,0(a5)	# _18, *_17
# eval/problem113//code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	bne	a5,zero,.L8	#, _18,,
# eval/problem113//code.c:24:     n[ni] = '\0';
	lw	a5,-52(s0)		# _19, ni
	ld	a4,-24(s0)		# tmp126, n
	add	a5,a4,a5	# _19, _20, tmp126
# eval/problem113//code.c:24:     n[ni] = '\0';
	sb	zero,0(a5)	#, *_20
# eval/problem113//code.c:26:     int n_len = strlen(n);
	ld	a0,-24(s0)		#, n
	call	strlen@plt	#
	mv	a5,a0	# _21,
# eval/problem113//code.c:26:     int n_len = strlen(n);
	sw	a5,-36(s0)	# _21, n_len
# eval/problem113//code.c:27:     bool is_palindrome = true;
	li	a5,1		# tmp127,
	sb	a5,-53(s0)	# tmp127, is_palindrome
# eval/problem113//code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	sw	zero,-44(s0)	#, i
# eval/problem113//code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	j	.L9		#
.L12:
# eval/problem113//code.c:29:         if (n[i] != n[n_len - 1 - i]) {
	lw	a5,-44(s0)		# _22, i
	ld	a4,-24(s0)		# tmp128, n
	add	a5,a4,a5	# _22, _23, tmp128
	lbu	a4,0(a5)	# _24, *_23
# eval/problem113//code.c:29:         if (n[i] != n[n_len - 1 - i]) {
	lw	a5,-36(s0)		# tmp131, n_len
	addiw	a5,a5,-1	#, tmp129, tmp130
	sext.w	a5,a5	# _25, tmp129
# eval/problem113//code.c:29:         if (n[i] != n[n_len - 1 - i]) {
	lw	a3,-44(s0)		# tmp134, i
	subw	a5,a5,a3	# tmp132, _25, tmp133
	sext.w	a5,a5	# _26, tmp132
	mv	a3,a5	# _27, _26
# eval/problem113//code.c:29:         if (n[i] != n[n_len - 1 - i]) {
	ld	a5,-24(s0)		# tmp135, n
	add	a5,a5,a3	# _27, _28, tmp135
	lbu	a5,0(a5)	# _29, *_28
# eval/problem113//code.c:29:         if (n[i] != n[n_len - 1 - i]) {
	beq	a4,a5,.L10	#, tmp136, tmp137,
# eval/problem113//code.c:30:             is_palindrome = false;
	sb	zero,-53(s0)	#, is_palindrome
# eval/problem113//code.c:31:             break;
	j	.L11		#
.L10:
# eval/problem113//code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	lw	a5,-44(s0)		# tmp140, i
	addiw	a5,a5,1	#, tmp138, tmp139
	sw	a5,-44(s0)	# tmp138, i
.L9:
# eval/problem113//code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	lw	a5,-36(s0)		# tmp143, n_len
	srliw	a4,a5,31	#, tmp144, tmp142
	addw	a5,a4,a5	# tmp142, tmp145, tmp144
	sraiw	a5,a5,1	#, tmp146, tmp145
	sext.w	a4,a5	# _30, tmp146
# eval/problem113//code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	lw	a5,-44(s0)		# tmp148, i
	sext.w	a5,a5	# tmp149, tmp147
	blt	a5,a4,.L12	#, tmp149, tmp150,
.L11:
# eval/problem113//code.c:35:     strcpy(result, n);
	ld	a1,-24(s0)		#, n
	ld	a0,-88(s0)		#, result
	call	strcpy@plt	#
# eval/problem113//code.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	lbu	a5,-53(s0)	# tmp152, is_palindrome
	andi	a5,a5,0xff	# tmp153, tmp151
	beq	a5,zero,.L13	#, tmp153,,
# eval/problem113//code.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	lla	a5,.LC0	# iftmp.1_38,
	j	.L14		#
.L13:
# eval/problem113//code.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	lla	a5,.LC1	# iftmp.1_38,
.L14:
# eval/problem113//code.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	mv	a1,a5	#, iftmp.1_38
	ld	a0,-96(s0)		#, palindrome
	call	strcpy@plt	#
# eval/problem113//code.c:38:     free(n);
	ld	a0,-24(s0)		#, n
	call	free@plt	#
# eval/problem113//code.c:39: }
	nop	
	ld	ra,88(sp)		#,
	ld	s0,80(sp)		#,
	addi	sp,sp,96	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
