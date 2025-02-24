	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -O0 -fstack-protector-strong
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
# code.c:7:     int len = strlen(s);
	ld	a0,-72(s0)		#, s
	call	strlen@plt	#
	mv	a5,a0	# _1,
# code.c:7:     int len = strlen(s);
	sw	a5,-40(s0)	# _1, len
# code.c:8:     char *n = malloc((len + 1) * sizeof(char));
	lw	a5,-40(s0)		# tmp167, len
	addiw	a5,a5,1	#, tmp165, tmp166
	sext.w	a5,a5	# _2, tmp165
# code.c:8:     char *n = malloc((len + 1) * sizeof(char));
	mv	a0,a5	#, _3
	call	malloc@plt	#
	mv	a5,a0	# tmp168,
	sd	a5,-24(s0)	# tmp168, n
# code.c:9:     int ni = 0;
	sw	zero,-52(s0)	#, ni
# code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	sw	zero,-48(s0)	#, i
# code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	j	.L2		#
.L8:
# code.c:11:         const char *temp = c;
	ld	a5,-80(s0)		# tmp169, c
	sd	a5,-32(s0)	# tmp169, temp
# code.c:12:         bool found = false;
	sb	zero,-54(s0)	#, found
# code.c:13:         while (*temp != '\0') {
	j	.L3		#
.L6:
# code.c:14:             if (s[i] == *temp) {
	lw	a5,-48(s0)		# _4, i
	ld	a4,-72(s0)		# tmp170, s
	add	a5,a4,a5	# _4, _5, tmp170
	lbu	a4,0(a5)	# _6, *_5
# code.c:14:             if (s[i] == *temp) {
	ld	a5,-32(s0)		# tmp171, temp
	lbu	a5,0(a5)	# _7, *temp_34
# code.c:14:             if (s[i] == *temp) {
	bne	a4,a5,.L4	#, tmp172, tmp173,
# code.c:15:                 found = true;
	li	a5,1		# tmp174,
	sb	a5,-54(s0)	# tmp174, found
# code.c:16:                 break;
	j	.L5		#
.L4:
# code.c:18:             temp++;
	ld	a5,-32(s0)		# tmp176, temp
	addi	a5,a5,1	#, tmp175, tmp176
	sd	a5,-32(s0)	# tmp175, temp
.L3:
# code.c:13:         while (*temp != '\0') {
	ld	a5,-32(s0)		# tmp177, temp
	lbu	a5,0(a5)	# _8, *temp_34
# code.c:13:         while (*temp != '\0') {
	bne	a5,zero,.L6	#, _8,,
.L5:
# code.c:20:         if (!found) {
	lbu	a5,-54(s0)	# tmp179, found
	xori	a5,a5,1	#, tmp180, tmp178
	andi	a5,a5,0xff	# _9, tmp180
# code.c:20:         if (!found) {
	beq	a5,zero,.L7	#, _9,,
# code.c:21:             n[ni++] = s[i];
	lw	a5,-48(s0)		# _10, i
	ld	a4,-72(s0)		# tmp181, s
	add	a4,a4,a5	# _10, _11, tmp181
# code.c:21:             n[ni++] = s[i];
	lw	a5,-52(s0)		# ni.0_12, ni
	addiw	a3,a5,1	#, tmp182, ni.0_12
	sw	a3,-52(s0)	# tmp182, ni
	mv	a3,a5	# _13, ni.0_12
# code.c:21:             n[ni++] = s[i];
	ld	a5,-24(s0)		# tmp183, n
	add	a5,a5,a3	# _13, _14, tmp183
# code.c:21:             n[ni++] = s[i];
	lbu	a4,0(a4)	# _15, *_11
# code.c:21:             n[ni++] = s[i];
	sb	a4,0(a5)	# _15, *_14
.L7:
# code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	lw	a5,-48(s0)		# tmp186, i
	addiw	a5,a5,1	#, tmp184, tmp185
	sw	a5,-48(s0)	# tmp184, i
.L2:
# code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	lw	a5,-48(s0)		# _16, i
	ld	a4,-72(s0)		# tmp187, s
	add	a5,a4,a5	# _16, _17, tmp187
	lbu	a5,0(a5)	# _18, *_17
# code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	bne	a5,zero,.L8	#, _18,,
# code.c:24:     n[ni] = '\0';
	lw	a5,-52(s0)		# _19, ni
	ld	a4,-24(s0)		# tmp188, n
	add	a5,a4,a5	# _19, _20, tmp188
# code.c:24:     n[ni] = '\0';
	sb	zero,0(a5)	#, *_20
# code.c:26:     int n_len = strlen(n);
	ld	a0,-24(s0)		#, n
	call	strlen@plt	#
	mv	a5,a0	# _21,
# code.c:26:     int n_len = strlen(n);
	sw	a5,-36(s0)	# _21, n_len
# code.c:27:     bool is_palindrome = true;
	li	a5,1		# tmp189,
	sb	a5,-53(s0)	# tmp189, is_palindrome
# code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	sw	zero,-44(s0)	#, i
# code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	j	.L9		#
.L12:
# code.c:29:         if (n[i] != n[n_len - 1 - i]) {
	lw	a5,-44(s0)		# _22, i
	ld	a4,-24(s0)		# tmp190, n
	add	a5,a4,a5	# _22, _23, tmp190
	lbu	a4,0(a5)	# _24, *_23
# code.c:29:         if (n[i] != n[n_len - 1 - i]) {
	lw	a5,-36(s0)		# tmp193, n_len
	addiw	a5,a5,-1	#, tmp191, tmp192
	sext.w	a5,a5	# _25, tmp191
# code.c:29:         if (n[i] != n[n_len - 1 - i]) {
	lw	a3,-44(s0)		# tmp196, i
	subw	a5,a5,a3	# tmp194, _25, tmp195
	sext.w	a5,a5	# _26, tmp194
	mv	a3,a5	# _27, _26
# code.c:29:         if (n[i] != n[n_len - 1 - i]) {
	ld	a5,-24(s0)		# tmp197, n
	add	a5,a5,a3	# _27, _28, tmp197
	lbu	a5,0(a5)	# _29, *_28
# code.c:29:         if (n[i] != n[n_len - 1 - i]) {
	beq	a4,a5,.L10	#, tmp198, tmp199,
# code.c:30:             is_palindrome = false;
	sb	zero,-53(s0)	#, is_palindrome
# code.c:31:             break;
	j	.L11		#
.L10:
# code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	lw	a5,-44(s0)		# tmp202, i
	addiw	a5,a5,1	#, tmp200, tmp201
	sw	a5,-44(s0)	# tmp200, i
.L9:
# code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	lw	a5,-36(s0)		# tmp205, n_len
	srliw	a4,a5,31	#, tmp206, tmp204
	addw	a5,a4,a5	# tmp204, tmp207, tmp206
	sraiw	a5,a5,1	#, tmp208, tmp207
	sext.w	a4,a5	# _30, tmp208
# code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	lw	a5,-44(s0)		# tmp210, i
	sext.w	a5,a5	# tmp211, tmp209
	blt	a5,a4,.L12	#, tmp211, tmp212,
.L11:
# code.c:35:     strcpy(result, n);
	ld	a1,-24(s0)		#, n
	ld	a0,-88(s0)		#, result
	call	strcpy@plt	#
# code.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	lbu	a5,-53(s0)	# tmp214, is_palindrome
	andi	a5,a5,0xff	# tmp215, tmp213
	beq	a5,zero,.L13	#, tmp215,,
# code.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	lla	a5,.LC0	# iftmp.1_38,
	j	.L14		#
.L13:
# code.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	lla	a5,.LC1	# iftmp.1_38,
.L14:
# code.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	mv	a1,a5	#, iftmp.1_38
	ld	a0,-96(s0)		#, palindrome
	call	strcpy@plt	#
# code.c:38:     free(n);
	ld	a0,-24(s0)		#, n
	call	free@plt	#
# code.c:39: }
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
