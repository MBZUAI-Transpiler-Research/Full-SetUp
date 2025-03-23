	.file	"problem114.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
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
	addi	sp,sp,-80	#,,
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	sd	s1,56(sp)	#,
	addi	s0,sp,80	#,,
	sd	a0,-72(s0)	# lst, lst
	mv	a5,a1	# tmp115, size
	sw	a5,-76(s0)	# tmp116, size
# problem114.c:6:     char **out = malloc(size * sizeof(char *));
	lw	a5,-76(s0)		# _1, size
	slli	a5,a5,3	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp117,
	sd	a5,-40(s0)	# tmp117, out
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
	ld	a4,-72(s0)		# tmp118, lst
	add	a5,a4,a5	# _4, _5, tmp118
	ld	a4,0(a5)		# _6, *_5
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	lw	a5,-44(s0)		# _7, j
	add	a5,a4,a5	# _7, _8, _6
	lbu	a5,0(a5)	# _9, *_8
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	mv	a4,a5	# tmp119, _9
	li	a5,47		# tmp120,
	bleu	a4,a5,.L4	#, tmp119, tmp120,
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	lw	a5,-52(s0)		# _10, i
	slli	a5,a5,3	#, _11, _10
	ld	a4,-72(s0)		# tmp121, lst
	add	a5,a4,a5	# _11, _12, tmp121
	ld	a4,0(a5)		# _13, *_12
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	lw	a5,-44(s0)		# _14, j
	add	a5,a4,a5	# _14, _15, _13
	lbu	a5,0(a5)	# _16, *_15
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	mv	a4,a5	# tmp122, _16
	li	a5,57		# tmp123,
	bgtu	a4,a5,.L4	#, tmp122, tmp123,
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	lw	a5,-52(s0)		# _17, i
	slli	a5,a5,3	#, _18, _17
	ld	a4,-72(s0)		# tmp124, lst
	add	a5,a4,a5	# _18, _19, tmp124
	ld	a4,0(a5)		# _20, *_19
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	lw	a5,-44(s0)		# _21, j
	add	a5,a4,a5	# _21, _22, _20
	lbu	a5,0(a5)	# _23, *_22
	sext.w	a5,a5	# _24, _23
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	addiw	a5,a5,-48	#, tmp125, _24
	sext.w	a5,a5	# _25, tmp125
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	mv	a4,a5	# tmp127, _25
	sraiw	a5,a4,31	#, tmp128, tmp127
	srliw	a5,a5,31	#, tmp129, tmp128
	addw	a4,a4,a5	# tmp129, tmp130, tmp127
	andi	a4,a4,1	#, tmp131, tmp130
	subw	a5,a4,a5	# tmp132, tmp131, tmp129
	sext.w	a5,a5	# _26, tmp132
# problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	mv	a4,a5	# tmp133, _26
	li	a5,1		# tmp134,
	bne	a4,a5,.L4	#, tmp133, tmp134,
# problem114.c:11:                 sum += 1;
	lw	a5,-48(s0)		# tmp137, sum
	addiw	a5,a5,1	#, tmp135, tmp136
	sw	a5,-48(s0)	# tmp135, sum
.L4:
# problem114.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	lw	a5,-44(s0)		# tmp140, j
	addiw	a5,a5,1	#, tmp138, tmp139
	sw	a5,-44(s0)	# tmp138, j
.L3:
# problem114.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	lw	a5,-52(s0)		# _27, i
	slli	a5,a5,3	#, _28, _27
	ld	a4,-72(s0)		# tmp141, lst
	add	a5,a4,a5	# _28, _29, tmp141
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
	ld	a4,-40(s0)		# tmp142, out
	add	s1,a4,a5	# _35, _36, tmp142
# problem114.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	li	a0,100		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp143,
# problem114.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	sd	a5,0(s1)	# _37, *_36
# problem114.c:14:         sprintf(out[i], "the number of odd elements %d in the string %d of the %d input.", sum, sum, sum);
	lw	a5,-52(s0)		# _38, i
	slli	a5,a5,3	#, _39, _38
	ld	a4,-40(s0)		# tmp144, out
	add	a5,a4,a5	# _39, _40, tmp144
# problem114.c:14:         sprintf(out[i], "the number of odd elements %d in the string %d of the %d input.", sum, sum, sum);
	ld	a5,0(a5)		# _41, *_40
	lw	a4,-48(s0)		# tmp145, sum
	lw	a3,-48(s0)		# tmp146, sum
	lw	a2,-48(s0)		# tmp147, sum
	lla	a1,.LC0	#,
	mv	a0,a5	#, _41
	call	sprintf@plt	#
# problem114.c:7:     for (int i = 0; i < size; i++) {
	lw	a5,-52(s0)		# tmp150, i
	addiw	a5,a5,1	#, tmp148, tmp149
	sw	a5,-52(s0)	# tmp148, i
.L2:
# problem114.c:7:     for (int i = 0; i < size; i++) {
	lw	a5,-52(s0)		# tmp152, i
	mv	a4,a5	# tmp151, tmp152
	lw	a5,-76(s0)		# tmp154, size
	sext.w	a4,a4	# tmp155, tmp151
	sext.w	a5,a5	# tmp156, tmp153
	blt	a4,a5,.L6	#, tmp155, tmp156,
# problem114.c:16:     return out;
	ld	a5,-40(s0)		# _52, out
# problem114.c:17: }
	mv	a0,a5	#, <retval>
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	ld	s1,56(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# a, a
	sd	a1,-48(s0)	# b, b
	mv	a5,a2	# tmp83, size
	sw	a5,-52(s0)	# tmp84, size
# problem114.c:26:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem114.c:26:     for (int i = 0; i < size; i++) {
	j	.L9		#
.L12:
# problem114.c:27:         if (strcmp(a[i], b[i]) != 0) {
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp85, a
	add	a5,a4,a5	# _2, _3, tmp85
# problem114.c:27:         if (strcmp(a[i], b[i]) != 0) {
	ld	a3,0(a5)		# _4, *_3
# problem114.c:27:         if (strcmp(a[i], b[i]) != 0) {
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-48(s0)		# tmp86, b
	add	a5,a4,a5	# _6, _7, tmp86
# problem114.c:27:         if (strcmp(a[i], b[i]) != 0) {
	ld	a5,0(a5)		# _8, *_7
	mv	a1,a5	#, _8
	mv	a0,a3	#, _4
	call	strcmp@plt	#
	mv	a5,a0	# tmp87,
# problem114.c:27:         if (strcmp(a[i], b[i]) != 0) {
	beq	a5,zero,.L10	#, _9,,
# problem114.c:28:             return 0;
	li	a5,0		# _11,
	j	.L11		#
.L10:
# problem114.c:26:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp90, i
	addiw	a5,a5,1	#, tmp88, tmp89
	sw	a5,-20(s0)	# tmp88, i
.L9:
# problem114.c:26:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp92, i
	mv	a4,a5	# tmp91, tmp92
	lw	a5,-52(s0)		# tmp94, size
	sext.w	a4,a4	# tmp95, tmp91
	sext.w	a5,a5	# tmp96, tmp93
	blt	a4,a5,.L12	#, tmp95, tmp96,
# problem114.c:31:     return 1;
	li	a5,1		# _11,
.L11:
# problem114.c:32: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
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
	addi	sp,sp,-160	#,,
	sd	ra,152(sp)	#,
	sd	s0,144(sp)	#,
	addi	s0,sp,160	#,,
# problem114.c:34: int main() {
	la	a5,__stack_chk_guard		# tmp89,
	ld	a4, 0(a5)	# tmp137, __stack_chk_guard
	sd	a4, -24(s0)	# tmp137, D.2689
	li	a4, 0	# tmp137
# problem114.c:35:     char *input1[] = {"1234567"};
	lla	a5,.LC1	# tmp90,
	sd	a5,-120(s0)	# tmp90, input1[0]
# problem114.c:36:     char *expected1[] = {"the number of odd elements 4 in the string 4 of the 4 input."};
	lla	a5,.LC2	# tmp91,
	sd	a5,-112(s0)	# tmp91, expected1[0]
# problem114.c:37:     char **result1 = func0(input1, 1);
	addi	a5,s0,-120	#, tmp92,
	li	a1,1		#,
	mv	a0,a5	#, tmp92
	call	func0		#
	sd	a0,-144(s0)	#, result1
# problem114.c:38:     assert(issame(result1, expected1, 1));
	addi	a5,s0,-112	#, tmp93,
	li	a2,1		#,
	mv	a1,a5	#, tmp93
	ld	a0,-144(s0)		#, result1
	call	issame		#
	mv	a5,a0	# tmp94,
	bne	a5,zero,.L14	#, _1,,
# problem114.c:38:     assert(issame(result1, expected1, 1));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC3	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L14:
# problem114.c:40:     char *input2[] = {"3", "11111111"};
	lla	a5,.LC5	# tmp95,
	sd	a5,-104(s0)	# tmp95, input2[0]
	lla	a5,.LC6	# tmp96,
	sd	a5,-96(s0)	# tmp96, input2[1]
# problem114.c:41:     char *expected2[] = {
	lla	a5,.LC7	# tmp97,
	sd	a5,-88(s0)	# tmp97, expected2[0]
	lla	a5,.LC8	# tmp98,
	sd	a5,-80(s0)	# tmp98, expected2[1]
# problem114.c:45:     char **result2 = func0(input2, 2);
	addi	a5,s0,-104	#, tmp99,
	li	a1,2		#,
	mv	a0,a5	#, tmp99
	call	func0		#
	sd	a0,-136(s0)	#, result2
# problem114.c:46:     assert(issame(result2, expected2, 2));
	addi	a5,s0,-88	#, tmp100,
	li	a2,2		#,
	mv	a1,a5	#, tmp100
	ld	a0,-136(s0)		#, result2
	call	issame		#
	mv	a5,a0	# tmp101,
	bne	a5,zero,.L15	#, _2,,
# problem114.c:46:     assert(issame(result2, expected2, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,46		#,
	lla	a1,.LC3	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L15:
# problem114.c:48:     char *input3[] = {"271", "137", "314"};
	lla	a5,.LC10	# tmp102,
	sd	a5,-72(s0)	# tmp102, input3[0]
	lla	a5,.LC11	# tmp103,
	sd	a5,-64(s0)	# tmp103, input3[1]
	lla	a5,.LC12	# tmp104,
	sd	a5,-56(s0)	# tmp104, input3[2]
# problem114.c:49:     char *expected3[] = {
	lla	a5,.LC13	# tmp105,
	sd	a5,-48(s0)	# tmp105, expected3[0]
	lla	a5,.LC14	# tmp106,
	sd	a5,-40(s0)	# tmp106, expected3[1]
	lla	a5,.LC13	# tmp107,
	sd	a5,-32(s0)	# tmp107, expected3[2]
# problem114.c:54:     char **result3 = func0(input3, 3);
	addi	a5,s0,-72	#, tmp108,
	li	a1,3		#,
	mv	a0,a5	#, tmp108
	call	func0		#
	sd	a0,-128(s0)	#, result3
# problem114.c:55:     assert(issame(result3, expected3, 3));
	addi	a5,s0,-48	#, tmp109,
	li	a2,3		#,
	mv	a1,a5	#, tmp109
	ld	a0,-128(s0)		#, result3
	call	issame		#
	mv	a5,a0	# tmp110,
	bne	a5,zero,.L16	#, _3,,
# problem114.c:55:     assert(issame(result3, expected3, 3));
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
	ld	a4,-144(s0)		# tmp111, result1
	add	a5,a4,a5	# _5, _6, tmp111
# problem114.c:58:     for (int i = 0; i < 1; i++) free(result1[i]);
	ld	a5,0(a5)		# _7, *_6
	mv	a0,a5	#, _7
	call	free@plt	#
# problem114.c:58:     for (int i = 0; i < 1; i++) free(result1[i]);
	lw	a5,-156(s0)		# tmp114, i
	addiw	a5,a5,1	#, tmp112, tmp113
	sw	a5,-156(s0)	# tmp112, i
.L17:
# problem114.c:58:     for (int i = 0; i < 1; i++) free(result1[i]);
	lw	a5,-156(s0)		# tmp116, i
	sext.w	a5,a5	# tmp117, tmp115
	ble	a5,zero,.L18	#, tmp117,,
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
	ld	a4,-136(s0)		# tmp118, result2
	add	a5,a4,a5	# _9, _10, tmp118
# problem114.c:60:     for (int i = 0; i < 2; i++) free(result2[i]);
	ld	a5,0(a5)		# _11, *_10
	mv	a0,a5	#, _11
	call	free@plt	#
# problem114.c:60:     for (int i = 0; i < 2; i++) free(result2[i]);
	lw	a5,-152(s0)		# tmp121, i
	addiw	a5,a5,1	#, tmp119, tmp120
	sw	a5,-152(s0)	# tmp119, i
.L19:
# problem114.c:60:     for (int i = 0; i < 2; i++) free(result2[i]);
	lw	a5,-152(s0)		# tmp123, i
	sext.w	a4,a5	# tmp124, tmp122
	li	a5,1		# tmp125,
	ble	a4,a5,.L20	#, tmp124, tmp125,
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
	ld	a4,-128(s0)		# tmp126, result3
	add	a5,a4,a5	# _13, _14, tmp126
# problem114.c:62:     for (int i = 0; i < 3; i++) free(result3[i]);
	ld	a5,0(a5)		# _15, *_14
	mv	a0,a5	#, _15
	call	free@plt	#
# problem114.c:62:     for (int i = 0; i < 3; i++) free(result3[i]);
	lw	a5,-148(s0)		# tmp129, i
	addiw	a5,a5,1	#, tmp127, tmp128
	sw	a5,-148(s0)	# tmp127, i
.L21:
# problem114.c:62:     for (int i = 0; i < 3; i++) free(result3[i]);
	lw	a5,-148(s0)		# tmp131, i
	sext.w	a4,a5	# tmp132, tmp130
	li	a5,2		# tmp133,
	ble	a4,a5,.L22	#, tmp132, tmp133,
# problem114.c:63:     free(result3);
	ld	a0,-128(s0)		#, result3
	call	free@plt	#
# problem114.c:65:     return 0;
	li	a5,0		# _53,
# problem114.c:66: }
	mv	a4,a5	# <retval>, _53
	la	a5,__stack_chk_guard		# tmp135,
	ld	a3, -24(s0)	# tmp138, D.2689
	ld	a5, 0(a5)	# tmp136, __stack_chk_guard
	xor	a5, a3, a5	# tmp136, tmp138
	li	a3, 0	# tmp138
	beq	a5,zero,.L24	#, tmp136,,
	call	__stack_chk_fail@plt	#
.L24:
	mv	a0,a4	#, <retval>
	ld	ra,152(sp)		#,
	ld	s0,144(sp)		#,
	addi	sp,sp,160	#,,
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
