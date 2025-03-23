	.file	"problem85.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-80	#,,
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	addi	s0,sp,80	#,,
	mv	a5,a0	# tmp103, N
	sw	a5,-68(s0)	# tmp104, N
# problem85.c:4: char* func0(int N) {
	la	a5,__stack_chk_guard		# tmp105,
	ld	a4, 0(a5)	# tmp179, __stack_chk_guard
	sd	a4, -24(s0)	# tmp179, D.2656
	li	a4, 0	# tmp179
# problem85.c:6:     sprintf(str, "%d", N);
	lw	a4,-68(s0)		# tmp106, N
	addi	a5,s0,-32	#, tmp107,
	mv	a2,a4	#, tmp106
	lla	a1,.LC0	#,
	mv	a0,a5	#, tmp107
	call	sprintf@plt	#
# problem85.c:7:     int sum = 0;
	sw	zero,-56(s0)	#, sum
# problem85.c:8:     for (int i = 0; str[i] != '\0'; i++)
	sw	zero,-52(s0)	#, i
# problem85.c:8:     for (int i = 0; str[i] != '\0'; i++)
	j	.L2		#
.L3:
# problem85.c:9:         sum += str[i] - '0';
	lw	a5,-52(s0)		# tmp108, i
	addi	a5,a5,-16	#, tmp183, tmp108
	add	a5,a5,s0	#, tmp109, tmp183
	lbu	a5,-16(a5)	# _1, str[i_32]
	sext.w	a5,a5	# _2, _1
# problem85.c:9:         sum += str[i] - '0';
	addiw	a5,a5,-48	#, tmp110, _2
	sext.w	a5,a5	# _3, tmp110
# problem85.c:9:         sum += str[i] - '0';
	lw	a4,-56(s0)		# tmp113, sum
	addw	a5,a4,a5	# _3, tmp111, tmp112
	sw	a5,-56(s0)	# tmp111, sum
# problem85.c:8:     for (int i = 0; str[i] != '\0'; i++)
	lw	a5,-52(s0)		# tmp116, i
	addiw	a5,a5,1	#, tmp114, tmp115
	sw	a5,-52(s0)	# tmp114, i
.L2:
# problem85.c:8:     for (int i = 0; str[i] != '\0'; i++)
	lw	a5,-52(s0)		# tmp117, i
	addi	a5,a5,-16	#, tmp184, tmp117
	add	a5,a5,s0	#, tmp118, tmp184
	lbu	a5,-16(a5)	# _4, str[i_32]
# problem85.c:8:     for (int i = 0; str[i] != '\0'; i++)
	bne	a5,zero,.L3	#, _4,,
# problem85.c:11:     char* bi = malloc(33);
	li	a0,33		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp119,
	sd	a5,-40(s0)	# tmp119, bi
# problem85.c:12:     int index = 0;
	sw	zero,-48(s0)	#, index
# problem85.c:13:     if (sum == 0) {
	lw	a5,-56(s0)		# tmp121, sum
	sext.w	a5,a5	# tmp122, tmp120
	bne	a5,zero,.L6	#, tmp122,,
# problem85.c:14:         bi[index++] = '0';
	lw	a5,-48(s0)		# index.0_5, index
	addiw	a4,a5,1	#, tmp123, index.0_5
	sw	a4,-48(s0)	# tmp123, index
	mv	a4,a5	# _6, index.0_5
# problem85.c:14:         bi[index++] = '0';
	ld	a5,-40(s0)		# tmp124, bi
	add	a5,a5,a4	# _6, _7, tmp124
# problem85.c:14:         bi[index++] = '0';
	li	a4,48		# tmp125,
	sb	a4,0(a5)	# tmp125, *_7
	j	.L5		#
.L7:
# problem85.c:17:             bi[index++] = (sum % 2) + '0';
	lw	a5,-56(s0)		# tmp128, sum
	mv	a4,a5	# tmp127, tmp128
	sraiw	a5,a4,31	#, tmp129, tmp127
	srliw	a5,a5,31	#, tmp130, tmp129
	addw	a4,a4,a5	# tmp130, tmp131, tmp127
	andi	a4,a4,1	#, tmp132, tmp131
	subw	a5,a4,a5	# tmp133, tmp132, tmp130
	sext.w	a5,a5	# _8, tmp133
# problem85.c:17:             bi[index++] = (sum % 2) + '0';
	andi	a4,a5,0xff	# _9, _8
# problem85.c:17:             bi[index++] = (sum % 2) + '0';
	lw	a5,-48(s0)		# index.1_10, index
	addiw	a3,a5,1	#, tmp134, index.1_10
	sw	a3,-48(s0)	# tmp134, index
	mv	a3,a5	# _11, index.1_10
# problem85.c:17:             bi[index++] = (sum % 2) + '0';
	ld	a5,-40(s0)		# tmp135, bi
	add	a5,a5,a3	# _11, _12, tmp135
# problem85.c:17:             bi[index++] = (sum % 2) + '0';
	addiw	a4,a4,48	#, tmp136, _9
	andi	a4,a4,0xff	# _13, tmp136
# problem85.c:17:             bi[index++] = (sum % 2) + '0';
	sb	a4,0(a5)	# _13, *_12
# problem85.c:18:             sum /= 2;
	lw	a5,-56(s0)		# tmp139, sum
	srliw	a4,a5,31	#, tmp140, tmp138
	addw	a5,a4,a5	# tmp138, tmp141, tmp140
	sraiw	a5,a5,1	#, tmp142, tmp141
	sw	a5,-56(s0)	# tmp142, sum
.L6:
# problem85.c:16:         while (sum > 0) {
	lw	a5,-56(s0)		# tmp144, sum
	sext.w	a5,a5	# tmp145, tmp143
	bgt	a5,zero,.L7	#, tmp145,,
.L5:
# problem85.c:21:     bi[index] = '\0';
	lw	a5,-48(s0)		# _14, index
	ld	a4,-40(s0)		# tmp146, bi
	add	a5,a4,a5	# _14, _15, tmp146
# problem85.c:21:     bi[index] = '\0';
	sb	zero,0(a5)	#, *_15
# problem85.c:23:     for (int i = 0; i < index / 2; i++) {
	sw	zero,-44(s0)	#, i
# problem85.c:23:     for (int i = 0; i < index / 2; i++) {
	j	.L8		#
.L9:
# problem85.c:24:         char temp = bi[i];
	lw	a5,-44(s0)		# _16, i
	ld	a4,-40(s0)		# tmp147, bi
	add	a5,a4,a5	# _16, _17, tmp147
# problem85.c:24:         char temp = bi[i];
	lbu	a5,0(a5)	# tmp148, *_17
	sb	a5,-57(s0)	# tmp148, temp
# problem85.c:25:         bi[i] = bi[index - i - 1];
	lw	a5,-48(s0)		# tmp151, index
	mv	a4,a5	# tmp150, tmp151
	lw	a5,-44(s0)		# tmp153, i
	subw	a5,a4,a5	# tmp149, tmp150, tmp152
	sext.w	a5,a5	# _18, tmp149
# problem85.c:25:         bi[i] = bi[index - i - 1];
	addi	a5,a5,-1	#, _20, _19
	ld	a4,-40(s0)		# tmp154, bi
	add	a4,a4,a5	# _20, _21, tmp154
# problem85.c:25:         bi[i] = bi[index - i - 1];
	lw	a5,-44(s0)		# _22, i
	ld	a3,-40(s0)		# tmp155, bi
	add	a5,a3,a5	# _22, _23, tmp155
# problem85.c:25:         bi[i] = bi[index - i - 1];
	lbu	a4,0(a4)	# _24, *_21
# problem85.c:25:         bi[i] = bi[index - i - 1];
	sb	a4,0(a5)	# _24, *_23
# problem85.c:26:         bi[index - i - 1] = temp;
	lw	a5,-48(s0)		# tmp158, index
	mv	a4,a5	# tmp157, tmp158
	lw	a5,-44(s0)		# tmp160, i
	subw	a5,a4,a5	# tmp156, tmp157, tmp159
	sext.w	a5,a5	# _25, tmp156
# problem85.c:26:         bi[index - i - 1] = temp;
	addi	a5,a5,-1	#, _27, _26
	ld	a4,-40(s0)		# tmp161, bi
	add	a5,a4,a5	# _27, _28, tmp161
# problem85.c:26:         bi[index - i - 1] = temp;
	lbu	a4,-57(s0)	# tmp162, temp
	sb	a4,0(a5)	# tmp162, *_28
# problem85.c:23:     for (int i = 0; i < index / 2; i++) {
	lw	a5,-44(s0)		# tmp165, i
	addiw	a5,a5,1	#, tmp163, tmp164
	sw	a5,-44(s0)	# tmp163, i
.L8:
# problem85.c:23:     for (int i = 0; i < index / 2; i++) {
	lw	a5,-48(s0)		# tmp168, index
	srliw	a4,a5,31	#, tmp169, tmp167
	addw	a5,a4,a5	# tmp167, tmp170, tmp169
	sraiw	a5,a5,1	#, tmp171, tmp170
	sext.w	a4,a5	# _29, tmp171
# problem85.c:23:     for (int i = 0; i < index / 2; i++) {
	lw	a5,-44(s0)		# tmp173, i
	sext.w	a5,a5	# tmp174, tmp172
	blt	a5,a4,.L9	#, tmp174, tmp175,
# problem85.c:29:     return bi;
	ld	a5,-40(s0)		# _54, bi
	mv	a4,a5	# <retval>, _54
# problem85.c:30: }
	la	a5,__stack_chk_guard		# tmp177,
	ld	a3, -24(s0)	# tmp180, D.2656
	ld	a5, 0(a5)	# tmp178, __stack_chk_guard
	xor	a5, a3, a5	# tmp178, tmp180
	li	a3, 0	# tmp180
	beq	a5,zero,.L11	#, tmp178,,
	call	__stack_chk_fail@plt	#
.L11:
	mv	a0,a4	#, <retval>
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"1"
	.align	3
.LC2:
	.string	"problem85.c"
	.align	3
.LC3:
	.string	"strcmp(result, \"1\") == 0"
	.align	3
.LC4:
	.string	"110"
	.align	3
.LC5:
	.string	"strcmp(result, \"110\") == 0"
	.align	3
.LC6:
	.string	"1100"
	.align	3
.LC7:
	.string	"strcmp(result, \"1100\") == 0"
	.align	3
.LC8:
	.string	"1001"
	.align	3
.LC9:
	.string	"strcmp(result, \"1001\") == 0"
	.align	3
.LC10:
	.string	"10010"
	.align	3
.LC11:
	.string	"strcmp(result, \"10010\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
# problem85.c:41:     result = func0(1000);
	li	a0,1000		#,
	call	func0		#
	sd	a0,-24(s0)	#, result
# problem85.c:42:     assert(strcmp(result, "1") == 0);
	lla	a1,.LC1	#,
	ld	a0,-24(s0)		#, result
	call	strcmp@plt	#
	mv	a5,a0	# tmp79,
	beq	a5,zero,.L13	#, _1,,
# problem85.c:42:     assert(strcmp(result, "1") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,42		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L13:
# problem85.c:43:     free(result);
	ld	a0,-24(s0)		#, result
	call	free@plt	#
# problem85.c:45:     result = func0(150);
	li	a0,150		#,
	call	func0		#
	sd	a0,-24(s0)	#, result
# problem85.c:46:     assert(strcmp(result, "110") == 0);
	lla	a1,.LC4	#,
	ld	a0,-24(s0)		#, result
	call	strcmp@plt	#
	mv	a5,a0	# tmp80,
	beq	a5,zero,.L14	#, _2,,
# problem85.c:46:     assert(strcmp(result, "110") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,46		#,
	lla	a1,.LC2	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L14:
# problem85.c:47:     free(result);
	ld	a0,-24(s0)		#, result
	call	free@plt	#
# problem85.c:49:     result = func0(147);
	li	a0,147		#,
	call	func0		#
	sd	a0,-24(s0)	#, result
# problem85.c:50:     assert(strcmp(result, "1100") == 0);
	lla	a1,.LC6	#,
	ld	a0,-24(s0)		#, result
	call	strcmp@plt	#
	mv	a5,a0	# tmp81,
	beq	a5,zero,.L15	#, _3,,
# problem85.c:50:     assert(strcmp(result, "1100") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,50		#,
	lla	a1,.LC2	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L15:
# problem85.c:51:     free(result);
	ld	a0,-24(s0)		#, result
	call	free@plt	#
# problem85.c:53:     result = func0(333);
	li	a0,333		#,
	call	func0		#
	sd	a0,-24(s0)	#, result
# problem85.c:54:     assert(strcmp(result, "1001") == 0);
	lla	a1,.LC8	#,
	ld	a0,-24(s0)		#, result
	call	strcmp@plt	#
	mv	a5,a0	# tmp82,
	beq	a5,zero,.L16	#, _4,,
# problem85.c:54:     assert(strcmp(result, "1001") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,54		#,
	lla	a1,.LC2	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L16:
# problem85.c:55:     free(result);
	ld	a0,-24(s0)		#, result
	call	free@plt	#
# problem85.c:57:     result = func0(963);
	li	a0,963		#,
	call	func0		#
	sd	a0,-24(s0)	#, result
# problem85.c:58:     assert(strcmp(result, "10010") == 0);
	lla	a1,.LC10	#,
	ld	a0,-24(s0)		#, result
	call	strcmp@plt	#
	mv	a5,a0	# tmp83,
	beq	a5,zero,.L17	#, _5,,
# problem85.c:58:     assert(strcmp(result, "10010") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,58		#,
	lla	a1,.LC2	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L17:
# problem85.c:59:     free(result);
	ld	a0,-24(s0)		#, result
	call	free@plt	#
# problem85.c:61:     return 0;
	li	a5,0		# _27,
# problem85.c:62: }
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
