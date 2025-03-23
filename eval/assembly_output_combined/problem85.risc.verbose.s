	.file	"problem85.c"
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
	.string	"%d"
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
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp165, N
	sw	a5,-68(s0)	# tmp166, N
# problem85.c:4: char* func0(int N) {
	la	a5,__stack_chk_guard		# tmp167,
	ld	a4, 0(a5)	# tmp241, __stack_chk_guard
	sd	a4, -24(s0)	# tmp241, D.3508
	li	a4, 0	# tmp241
# problem85.c:6:     sprintf(str, "%d", N);
	lw	a4,-68(s0)		# tmp168, N
	addi	a5,s0,-32	#, tmp169,
	mv	a2,a4	#, tmp168
	lla	a1,.LC0	#,
	mv	a0,a5	#, tmp169
	call	sprintf@plt	#
# problem85.c:7:     int sum = 0;
	sw	zero,-56(s0)	#, sum
# problem85.c:8:     for (int i = 0; str[i] != '\0'; i++)
	sw	zero,-52(s0)	#, i
# problem85.c:8:     for (int i = 0; str[i] != '\0'; i++)
	j	.L2		#
.L3:
# problem85.c:9:         sum += str[i] - '0';
	lw	a5,-52(s0)		# tmp170, i
	addi	a5,a5,-16	#, tmp245, tmp170
	add	a5,a5,s0	#, tmp171, tmp245
	lbu	a5,-16(a5)	# _1, str[i_32]
	sext.w	a5,a5	# _2, _1
# problem85.c:9:         sum += str[i] - '0';
	addiw	a5,a5,-48	#, tmp172, _2
	sext.w	a5,a5	# _3, tmp172
# problem85.c:9:         sum += str[i] - '0';
	lw	a4,-56(s0)		# tmp175, sum
	addw	a5,a4,a5	# _3, tmp173, tmp174
	sw	a5,-56(s0)	# tmp173, sum
# problem85.c:8:     for (int i = 0; str[i] != '\0'; i++)
	lw	a5,-52(s0)		# tmp178, i
	addiw	a5,a5,1	#, tmp176, tmp177
	sw	a5,-52(s0)	# tmp176, i
.L2:
# problem85.c:8:     for (int i = 0; str[i] != '\0'; i++)
	lw	a5,-52(s0)		# tmp179, i
	addi	a5,a5,-16	#, tmp246, tmp179
	add	a5,a5,s0	#, tmp180, tmp246
	lbu	a5,-16(a5)	# _4, str[i_32]
# problem85.c:8:     for (int i = 0; str[i] != '\0'; i++)
	bne	a5,zero,.L3	#, _4,,
# problem85.c:11:     char* bi = malloc(33);
	li	a0,33		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp181,
	sd	a5,-40(s0)	# tmp181, bi
# problem85.c:12:     int index = 0;
	sw	zero,-48(s0)	#, index
# problem85.c:13:     if (sum == 0) {
	lw	a5,-56(s0)		# tmp183, sum
	sext.w	a5,a5	# tmp184, tmp182
	bne	a5,zero,.L6	#, tmp184,,
# problem85.c:14:         bi[index++] = '0';
	lw	a5,-48(s0)		# index.0_5, index
	addiw	a4,a5,1	#, tmp185, index.0_5
	sw	a4,-48(s0)	# tmp185, index
	mv	a4,a5	# _6, index.0_5
# problem85.c:14:         bi[index++] = '0';
	ld	a5,-40(s0)		# tmp186, bi
	add	a5,a5,a4	# _6, _7, tmp186
# problem85.c:14:         bi[index++] = '0';
	li	a4,48		# tmp187,
	sb	a4,0(a5)	# tmp187, *_7
	j	.L5		#
.L7:
# problem85.c:17:             bi[index++] = (sum % 2) + '0';
	lw	a5,-56(s0)		# tmp190, sum
	mv	a4,a5	# tmp189, tmp190
	sraiw	a5,a4,31	#, tmp191, tmp189
	srliw	a5,a5,31	#, tmp192, tmp191
	addw	a4,a4,a5	# tmp192, tmp193, tmp189
	andi	a4,a4,1	#, tmp194, tmp193
	subw	a5,a4,a5	# tmp195, tmp194, tmp192
	sext.w	a5,a5	# _8, tmp195
# problem85.c:17:             bi[index++] = (sum % 2) + '0';
	andi	a4,a5,0xff	# _9, _8
# problem85.c:17:             bi[index++] = (sum % 2) + '0';
	lw	a5,-48(s0)		# index.1_10, index
	addiw	a3,a5,1	#, tmp196, index.1_10
	sw	a3,-48(s0)	# tmp196, index
	mv	a3,a5	# _11, index.1_10
# problem85.c:17:             bi[index++] = (sum % 2) + '0';
	ld	a5,-40(s0)		# tmp197, bi
	add	a5,a5,a3	# _11, _12, tmp197
# problem85.c:17:             bi[index++] = (sum % 2) + '0';
	addiw	a4,a4,48	#, tmp198, _9
	andi	a4,a4,0xff	# _13, tmp198
# problem85.c:17:             bi[index++] = (sum % 2) + '0';
	sb	a4,0(a5)	# _13, *_12
# problem85.c:18:             sum /= 2;
	lw	a5,-56(s0)		# tmp201, sum
	srliw	a4,a5,31	#, tmp202, tmp200
	addw	a5,a4,a5	# tmp200, tmp203, tmp202
	sraiw	a5,a5,1	#, tmp204, tmp203
	sw	a5,-56(s0)	# tmp204, sum
.L6:
# problem85.c:16:         while (sum > 0) {
	lw	a5,-56(s0)		# tmp206, sum
	sext.w	a5,a5	# tmp207, tmp205
	bgt	a5,zero,.L7	#, tmp207,,
.L5:
# problem85.c:21:     bi[index] = '\0';
	lw	a5,-48(s0)		# _14, index
	ld	a4,-40(s0)		# tmp208, bi
	add	a5,a4,a5	# _14, _15, tmp208
# problem85.c:21:     bi[index] = '\0';
	sb	zero,0(a5)	#, *_15
# problem85.c:23:     for (int i = 0; i < index / 2; i++) {
	sw	zero,-44(s0)	#, i
# problem85.c:23:     for (int i = 0; i < index / 2; i++) {
	j	.L8		#
.L9:
# problem85.c:24:         char temp = bi[i];
	lw	a5,-44(s0)		# _16, i
	ld	a4,-40(s0)		# tmp209, bi
	add	a5,a4,a5	# _16, _17, tmp209
# problem85.c:24:         char temp = bi[i];
	lbu	a5,0(a5)	# tmp210, *_17
	sb	a5,-57(s0)	# tmp210, temp
# problem85.c:25:         bi[i] = bi[index - i - 1];
	lw	a5,-48(s0)		# tmp213, index
	mv	a4,a5	# tmp212, tmp213
	lw	a5,-44(s0)		# tmp215, i
	subw	a5,a4,a5	# tmp211, tmp212, tmp214
	sext.w	a5,a5	# _18, tmp211
# problem85.c:25:         bi[i] = bi[index - i - 1];
	addi	a5,a5,-1	#, _20, _19
	ld	a4,-40(s0)		# tmp216, bi
	add	a4,a4,a5	# _20, _21, tmp216
# problem85.c:25:         bi[i] = bi[index - i - 1];
	lw	a5,-44(s0)		# _22, i
	ld	a3,-40(s0)		# tmp217, bi
	add	a5,a3,a5	# _22, _23, tmp217
# problem85.c:25:         bi[i] = bi[index - i - 1];
	lbu	a4,0(a4)	# _24, *_21
# problem85.c:25:         bi[i] = bi[index - i - 1];
	sb	a4,0(a5)	# _24, *_23
# problem85.c:26:         bi[index - i - 1] = temp;
	lw	a5,-48(s0)		# tmp220, index
	mv	a4,a5	# tmp219, tmp220
	lw	a5,-44(s0)		# tmp222, i
	subw	a5,a4,a5	# tmp218, tmp219, tmp221
	sext.w	a5,a5	# _25, tmp218
# problem85.c:26:         bi[index - i - 1] = temp;
	addi	a5,a5,-1	#, _27, _26
	ld	a4,-40(s0)		# tmp223, bi
	add	a5,a4,a5	# _27, _28, tmp223
# problem85.c:26:         bi[index - i - 1] = temp;
	lbu	a4,-57(s0)	# tmp224, temp
	sb	a4,0(a5)	# tmp224, *_28
# problem85.c:23:     for (int i = 0; i < index / 2; i++) {
	lw	a5,-44(s0)		# tmp227, i
	addiw	a5,a5,1	#, tmp225, tmp226
	sw	a5,-44(s0)	# tmp225, i
.L8:
# problem85.c:23:     for (int i = 0; i < index / 2; i++) {
	lw	a5,-48(s0)		# tmp230, index
	srliw	a4,a5,31	#, tmp231, tmp229
	addw	a5,a4,a5	# tmp229, tmp232, tmp231
	sraiw	a5,a5,1	#, tmp233, tmp232
	sext.w	a4,a5	# _29, tmp233
# problem85.c:23:     for (int i = 0; i < index / 2; i++) {
	lw	a5,-44(s0)		# tmp235, i
	sext.w	a5,a5	# tmp236, tmp234
	blt	a5,a4,.L9	#, tmp236, tmp237,
# problem85.c:29:     return bi;
	ld	a5,-40(s0)		# _54, bi
	mv	a4,a5	# <retval>, _54
# problem85.c:30: }
	la	a5,__stack_chk_guard		# tmp239,
	ld	a3, -24(s0)	# tmp242, D.3508
	ld	a5, 0(a5)	# tmp240, __stack_chk_guard
	xor	a5, a3, a5	# tmp240, tmp242
	li	a3, 0	# tmp242
	beq	a5,zero,.L11	#, tmp240,,
	call	__stack_chk_fail@plt	#
.L11:
	mv	a0,a4	#, <retval>
	ld	ra,72(sp)		#,
	.cfi_restore 1
	ld	s0,64(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
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
.LFB7:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
# problem85.c:41:     result = func0(1000);
	li	a0,1000		#,
	call	func0		#
	sd	a0,-24(s0)	#, result
# problem85.c:42:     assert(strcmp(result, "1") == 0);
	lla	a1,.LC1	#,
	ld	a0,-24(s0)		#, result
	call	strcmp@plt	#
	mv	a5,a0	# tmp141,
# problem85.c:42:     assert(strcmp(result, "1") == 0);
	beq	a5,zero,.L13	#, _1,,
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
	mv	a5,a0	# tmp142,
# problem85.c:46:     assert(strcmp(result, "110") == 0);
	beq	a5,zero,.L14	#, _2,,
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
	mv	a5,a0	# tmp143,
# problem85.c:50:     assert(strcmp(result, "1100") == 0);
	beq	a5,zero,.L15	#, _3,,
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
	mv	a5,a0	# tmp144,
# problem85.c:54:     assert(strcmp(result, "1001") == 0);
	beq	a5,zero,.L16	#, _4,,
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
	mv	a5,a0	# tmp145,
# problem85.c:58:     assert(strcmp(result, "10010") == 0);
	beq	a5,zero,.L17	#, _5,,
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
	.cfi_restore 1
	ld	s0,16(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
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
