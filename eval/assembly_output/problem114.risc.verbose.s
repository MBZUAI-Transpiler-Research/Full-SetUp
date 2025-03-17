	.file	"problem114.c"
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
	.string	"the number of odd elements %d in the string %d of the %d input."
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	sd	s1,56(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)	# lst, lst
	mv	a5,a1	# tmp177, size
	sw	a5,-76(s0)	# tmp178, size
# problem114.c:6:     char **out = malloc(size * sizeof(char *));
	lw	a5,-76(s0)		# _1, size
	slli	a5,a5,3	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp179,
	sd	a5,-40(s0)	# tmp179, out
# problem114.c:7:     for (int i = 0; i < size; i++) {
	sw	zero,-52(s0)	#, i
# problem114.c:7:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L6:
# problem114.c:8:         int sum = 0;
	sw	zero,-48(s0)	#, sum
# problem114.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	sw	zero,-44(s0)	#, j
# problem114.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	j	.L3		#
.L5:
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	lw	a5,-52(s0)		# _3, i
	slli	a5,a5,3	#, _4, _3
	ld	a4,-72(s0)		# tmp180, lst
	add	a5,a4,a5	# _4, _5, tmp180
	ld	a4,0(a5)		# _6, *_5
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	lw	a5,-44(s0)		# _7, j
	add	a5,a4,a5	# _7, _8, _6
	lbu	a5,0(a5)	# _9, *_8
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	mv	a4,a5	# tmp181, _9
	li	a5,47		# tmp182,
	bleu	a4,a5,.L4	#, tmp181, tmp182,
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	lw	a5,-52(s0)		# _10, i
	slli	a5,a5,3	#, _11, _10
	ld	a4,-72(s0)		# tmp183, lst
	add	a5,a4,a5	# _11, _12, tmp183
	ld	a4,0(a5)		# _13, *_12
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	lw	a5,-44(s0)		# _14, j
	add	a5,a4,a5	# _14, _15, _13
	lbu	a5,0(a5)	# _16, *_15
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	mv	a4,a5	# tmp184, _16
	li	a5,57		# tmp185,
	bgtu	a4,a5,.L4	#, tmp184, tmp185,
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	lw	a5,-52(s0)		# _17, i
	slli	a5,a5,3	#, _18, _17
	ld	a4,-72(s0)		# tmp186, lst
	add	a5,a4,a5	# _18, _19, tmp186
	ld	a4,0(a5)		# _20, *_19
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	lw	a5,-44(s0)		# _21, j
	add	a5,a4,a5	# _21, _22, _20
	lbu	a5,0(a5)	# _23, *_22
	sext.w	a5,a5	# _24, _23
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	addiw	a5,a5,-48	#, tmp187, _24
	sext.w	a5,a5	# _25, tmp187
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	mv	a4,a5	# tmp189, _25
	sraiw	a5,a4,31	#, tmp190, tmp189
	srliw	a5,a5,31	#, tmp191, tmp190
	addw	a4,a4,a5	# tmp191, tmp192, tmp189
	andi	a4,a4,1	#, tmp193, tmp192
	subw	a5,a4,a5	# tmp194, tmp193, tmp191
	sext.w	a5,a5	# _26, tmp194
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	mv	a4,a5	# tmp195, _26
	li	a5,1		# tmp196,
	bne	a4,a5,.L4	#, tmp195, tmp196,
# problem114.c:11:                 sum += 1;
	lw	a5,-48(s0)		# tmp199, sum
	addiw	a5,a5,1	#, tmp197, tmp198
	sw	a5,-48(s0)	# tmp197, sum
.L4:
# problem114.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	lw	a5,-44(s0)		# tmp202, j
	addiw	a5,a5,1	#, tmp200, tmp201
	sw	a5,-44(s0)	# tmp200, j
.L3:
# problem114.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	lw	a5,-52(s0)		# _27, i
	slli	a5,a5,3	#, _28, _27
	ld	a4,-72(s0)		# tmp203, lst
	add	a5,a4,a5	# _28, _29, tmp203
	ld	a4,0(a5)		# _30, *_29
# problem114.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	lw	a5,-44(s0)		# _31, j
	add	a5,a4,a5	# _31, _32, _30
	lbu	a5,0(a5)	# _33, *_32
# problem114.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	bne	a5,zero,.L5	#, _33,,
# problem114.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	lw	a5,-52(s0)		# _34, i
	slli	a5,a5,3	#, _35, _34
	ld	a4,-40(s0)		# tmp204, out
	add	s1,a4,a5	# _35, _36, tmp204
# problem114.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	li	a0,100		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp205,
# problem114.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	sd	a5,0(s1)	# _37, *_36
# problem114.c:14:         sprintf(out[i], "the number of odd elements %d in the string %d of the %d input.", sum, sum, sum);
	lw	a5,-52(s0)		# _38, i
	slli	a5,a5,3	#, _39, _38
	ld	a4,-40(s0)		# tmp206, out
	add	a5,a4,a5	# _39, _40, tmp206
# problem114.c:14:         sprintf(out[i], "the number of odd elements %d in the string %d of the %d input.", sum, sum, sum);
	ld	a5,0(a5)		# _41, *_40
	lw	a4,-48(s0)		# tmp207, sum
	lw	a3,-48(s0)		# tmp208, sum
	lw	a2,-48(s0)		# tmp209, sum
	lla	a1,.LC0	#,
	mv	a0,a5	#, _41
	call	sprintf@plt	#
# problem114.c:7:     for (int i = 0; i < size; i++) {
	lw	a5,-52(s0)		# tmp212, i
	addiw	a5,a5,1	#, tmp210, tmp211
	sw	a5,-52(s0)	# tmp210, i
.L2:
# problem114.c:7:     for (int i = 0; i < size; i++) {
	lw	a5,-52(s0)		# tmp214, i
	mv	a4,a5	# tmp213, tmp214
	lw	a5,-76(s0)		# tmp216, size
	sext.w	a4,a4	# tmp217, tmp213
	sext.w	a5,a5	# tmp218, tmp215
	blt	a4,a5,.L6	#, tmp217, tmp218,
# problem114.c:16:     return out;
	ld	a5,-40(s0)		# _52, out
# problem114.c:17: }
	mv	a0,a5	#, <retval>
	ld	ra,72(sp)		#,
	.cfi_restore 1
	ld	s0,64(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	ld	s1,56(sp)		#,
	.cfi_restore 9
	addi	sp,sp,80	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# a, a
	sd	a1,-48(s0)	# b, b
	mv	a5,a2	# tmp145, size
	sw	a5,-52(s0)	# tmp146, size
# problem114.c:26:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem114.c:26:     for (int i = 0; i < size; i++) {
	j	.L9		#
.L12:
# problem114.c:27:         if (strcmp(a[i], b[i]) != 0) {
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp147, a
	add	a5,a4,a5	# _2, _3, tmp147
# problem114.c:27:         if (strcmp(a[i], b[i]) != 0) {
	ld	a3,0(a5)		# _4, *_3
# problem114.c:27:         if (strcmp(a[i], b[i]) != 0) {
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-48(s0)		# tmp148, b
	add	a5,a4,a5	# _6, _7, tmp148
# problem114.c:27:         if (strcmp(a[i], b[i]) != 0) {
	ld	a5,0(a5)		# _8, *_7
	mv	a1,a5	#, _8
	mv	a0,a3	#, _4
	call	strcmp@plt	#
	mv	a5,a0	# tmp149,
# problem114.c:27:         if (strcmp(a[i], b[i]) != 0) {
	beq	a5,zero,.L10	#, _9,,
# problem114.c:28:             return 0;
	li	a5,0		# _11,
	j	.L11		#
.L10:
# problem114.c:26:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp152, i
	addiw	a5,a5,1	#, tmp150, tmp151
	sw	a5,-20(s0)	# tmp150, i
.L9:
# problem114.c:26:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp154, i
	mv	a4,a5	# tmp153, tmp154
	lw	a5,-52(s0)		# tmp156, size
	sext.w	a4,a4	# tmp157, tmp153
	sext.w	a5,a5	# tmp158, tmp155
	blt	a4,a5,.L12	#, tmp157, tmp158,
# problem114.c:31:     return 1;
	li	a5,1		# _11,
.L11:
# problem114.c:32: }
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
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC1:
	.string	"1234567"
	.align	3
.LC2:
	.string	"the number of odd elements 4 in the string 4 of the 4 input."
	.align	3
.LC3:
	.string	"problem114.c"
	.align	3
.LC4:
	.string	"issame(result1, expected1, 1)"
	.align	3
.LC5:
	.string	"3"
	.align	3
.LC6:
	.string	"11111111"
	.align	3
.LC7:
	.string	"the number of odd elements 1 in the string 1 of the 1 input."
	.align	3
.LC8:
	.string	"the number of odd elements 8 in the string 8 of the 8 input."
	.align	3
.LC9:
	.string	"issame(result2, expected2, 2)"
	.align	3
.LC10:
	.string	"271"
	.align	3
.LC11:
	.string	"137"
	.align	3
.LC12:
	.string	"314"
	.align	3
.LC13:
	.string	"the number of odd elements 2 in the string 2 of the 2 input."
	.align	3
.LC14:
	.string	"the number of odd elements 3 in the string 3 of the 3 input."
	.align	3
.LC15:
	.string	"issame(result3, expected3, 3)"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-160	#,,
	.cfi_def_cfa_offset 160
	sd	ra,152(sp)	#,
	sd	s0,144(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,160	#,,
	.cfi_def_cfa 8, 0
# problem114.c:34: int main() {
	la	a5,__stack_chk_guard		# tmp151,
	ld	a4, 0(a5)	# tmp199, __stack_chk_guard
	sd	a4, -24(s0)	# tmp199, D.3541
	li	a4, 0	# tmp199
# problem114.c:35:     char *input1[] = {"1234567"};
	lla	a5,.LC1	# tmp152,
	sd	a5,-120(s0)	# tmp152, input1[0]
# problem114.c:36:     char *expected1[] = {"the number of odd elements 4 in the string 4 of the 4 input."};
	lla	a5,.LC2	# tmp153,
	sd	a5,-112(s0)	# tmp153, expected1[0]
# problem114.c:37:     char **result1 = func0(input1, 1);
	addi	a5,s0,-120	#, tmp154,
	li	a1,1		#,
	mv	a0,a5	#, tmp154
	call	func0		#
	sd	a0,-144(s0)	#, result1
# problem114.c:38:     assert(issame(result1, expected1, 1));
	addi	a5,s0,-112	#, tmp155,
	li	a2,1		#,
	mv	a1,a5	#, tmp155
	ld	a0,-144(s0)		#, result1
	call	issame		#
	mv	a5,a0	# tmp156,
# problem114.c:38:     assert(issame(result1, expected1, 1));
	bne	a5,zero,.L14	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC3	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L14:
# problem114.c:40:     char *input2[] = {"3", "11111111"};
	lla	a5,.LC5	# tmp157,
	sd	a5,-104(s0)	# tmp157, input2[0]
	lla	a5,.LC6	# tmp158,
	sd	a5,-96(s0)	# tmp158, input2[1]
# problem114.c:41:     char *expected2[] = {
	lla	a5,.LC7	# tmp159,
	sd	a5,-88(s0)	# tmp159, expected2[0]
	lla	a5,.LC8	# tmp160,
	sd	a5,-80(s0)	# tmp160, expected2[1]
# problem114.c:45:     char **result2 = func0(input2, 2);
	addi	a5,s0,-104	#, tmp161,
	li	a1,2		#,
	mv	a0,a5	#, tmp161
	call	func0		#
	sd	a0,-136(s0)	#, result2
# problem114.c:46:     assert(issame(result2, expected2, 2));
	addi	a5,s0,-88	#, tmp162,
	li	a2,2		#,
	mv	a1,a5	#, tmp162
	ld	a0,-136(s0)		#, result2
	call	issame		#
	mv	a5,a0	# tmp163,
# problem114.c:46:     assert(issame(result2, expected2, 2));
	bne	a5,zero,.L15	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,46		#,
	lla	a1,.LC3	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L15:
# problem114.c:48:     char *input3[] = {"271", "137", "314"};
	lla	a5,.LC10	# tmp164,
	sd	a5,-72(s0)	# tmp164, input3[0]
	lla	a5,.LC11	# tmp165,
	sd	a5,-64(s0)	# tmp165, input3[1]
	lla	a5,.LC12	# tmp166,
	sd	a5,-56(s0)	# tmp166, input3[2]
# problem114.c:49:     char *expected3[] = {
	lla	a5,.LC13	# tmp167,
	sd	a5,-48(s0)	# tmp167, expected3[0]
	lla	a5,.LC14	# tmp168,
	sd	a5,-40(s0)	# tmp168, expected3[1]
	lla	a5,.LC13	# tmp169,
	sd	a5,-32(s0)	# tmp169, expected3[2]
# problem114.c:54:     char **result3 = func0(input3, 3);
	addi	a5,s0,-72	#, tmp170,
	li	a1,3		#,
	mv	a0,a5	#, tmp170
	call	func0		#
	sd	a0,-128(s0)	#, result3
# problem114.c:55:     assert(issame(result3, expected3, 3));
	addi	a5,s0,-48	#, tmp171,
	li	a2,3		#,
	mv	a1,a5	#, tmp171
	ld	a0,-128(s0)		#, result3
	call	issame		#
	mv	a5,a0	# tmp172,
# problem114.c:55:     assert(issame(result3, expected3, 3));
	bne	a5,zero,.L16	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,55		#,
	lla	a1,.LC3	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L16:
# problem114.c:58:     for (int i = 0; i < 1; i++) free(result1[i]);
	sw	zero,-156(s0)	#, i
# problem114.c:58:     for (int i = 0; i < 1; i++) free(result1[i]);
	j	.L17		#
.L18:
# problem114.c:58:     for (int i = 0; i < 1; i++) free(result1[i]);
	lw	a5,-156(s0)		# _4, i
	slli	a5,a5,3	#, _5, _4
	ld	a4,-144(s0)		# tmp173, result1
	add	a5,a4,a5	# _5, _6, tmp173
# problem114.c:58:     for (int i = 0; i < 1; i++) free(result1[i]);
	ld	a5,0(a5)		# _7, *_6
	mv	a0,a5	#, _7
	call	free@plt	#
# problem114.c:58:     for (int i = 0; i < 1; i++) free(result1[i]);
	lw	a5,-156(s0)		# tmp176, i
	addiw	a5,a5,1	#, tmp174, tmp175
	sw	a5,-156(s0)	# tmp174, i
.L17:
# problem114.c:58:     for (int i = 0; i < 1; i++) free(result1[i]);
	lw	a5,-156(s0)		# tmp178, i
	sext.w	a5,a5	# tmp179, tmp177
	ble	a5,zero,.L18	#, tmp179,,
# problem114.c:59:     free(result1);
	ld	a0,-144(s0)		#, result1
	call	free@plt	#
# problem114.c:60:     for (int i = 0; i < 2; i++) free(result2[i]);
	sw	zero,-152(s0)	#, i
# problem114.c:60:     for (int i = 0; i < 2; i++) free(result2[i]);
	j	.L19		#
.L20:
# problem114.c:60:     for (int i = 0; i < 2; i++) free(result2[i]);
	lw	a5,-152(s0)		# _8, i
	slli	a5,a5,3	#, _9, _8
	ld	a4,-136(s0)		# tmp180, result2
	add	a5,a4,a5	# _9, _10, tmp180
# problem114.c:60:     for (int i = 0; i < 2; i++) free(result2[i]);
	ld	a5,0(a5)		# _11, *_10
	mv	a0,a5	#, _11
	call	free@plt	#
# problem114.c:60:     for (int i = 0; i < 2; i++) free(result2[i]);
	lw	a5,-152(s0)		# tmp183, i
	addiw	a5,a5,1	#, tmp181, tmp182
	sw	a5,-152(s0)	# tmp181, i
.L19:
# problem114.c:60:     for (int i = 0; i < 2; i++) free(result2[i]);
	lw	a5,-152(s0)		# tmp185, i
	sext.w	a4,a5	# tmp186, tmp184
	li	a5,1		# tmp187,
	ble	a4,a5,.L20	#, tmp186, tmp187,
# problem114.c:61:     free(result2);
	ld	a0,-136(s0)		#, result2
	call	free@plt	#
# problem114.c:62:     for (int i = 0; i < 3; i++) free(result3[i]);
	sw	zero,-148(s0)	#, i
# problem114.c:62:     for (int i = 0; i < 3; i++) free(result3[i]);
	j	.L21		#
.L22:
# problem114.c:62:     for (int i = 0; i < 3; i++) free(result3[i]);
	lw	a5,-148(s0)		# _12, i
	slli	a5,a5,3	#, _13, _12
	ld	a4,-128(s0)		# tmp188, result3
	add	a5,a4,a5	# _13, _14, tmp188
# problem114.c:62:     for (int i = 0; i < 3; i++) free(result3[i]);
	ld	a5,0(a5)		# _15, *_14
	mv	a0,a5	#, _15
	call	free@plt	#
# problem114.c:62:     for (int i = 0; i < 3; i++) free(result3[i]);
	lw	a5,-148(s0)		# tmp191, i
	addiw	a5,a5,1	#, tmp189, tmp190
	sw	a5,-148(s0)	# tmp189, i
.L21:
# problem114.c:62:     for (int i = 0; i < 3; i++) free(result3[i]);
	lw	a5,-148(s0)		# tmp193, i
	sext.w	a4,a5	# tmp194, tmp192
	li	a5,2		# tmp195,
	ble	a4,a5,.L22	#, tmp194, tmp195,
# problem114.c:63:     free(result3);
	ld	a0,-128(s0)		#, result3
	call	free@plt	#
# problem114.c:65:     return 0;
	li	a5,0		# _53,
# problem114.c:66: }
	mv	a4,a5	# <retval>, _53
	la	a5,__stack_chk_guard		# tmp197,
	ld	a3, -24(s0)	# tmp200, D.3541
	ld	a5, 0(a5)	# tmp198, __stack_chk_guard
	xor	a5, a3, a5	# tmp198, tmp200
	li	a3, 0	# tmp200
	beq	a5,zero,.L24	#, tmp198,,
	call	__stack_chk_fail@plt	#
.L24:
	mv	a0,a4	#, <retval>
	ld	ra,152(sp)		#,
	.cfi_restore 1
	ld	s0,144(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	addi	sp,sp,160	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
