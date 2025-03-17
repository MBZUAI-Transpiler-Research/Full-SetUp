	.file	"problem101.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp147, n
	sw	a5,-36(s0)	# tmp148, n
# problem101.c:5:     int* out = (int*)malloc(n * sizeof(int));
	lw	a5,-36(s0)		# _1, n
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp149,
	sd	a5,-24(s0)	# tmp149, out
# problem101.c:6:     *out = n;
	ld	a5,-24(s0)		# tmp150, out
	lw	a4,-36(s0)		# tmp151, n
	sw	a4,0(a5)	# tmp151, *out_17
# problem101.c:7:     for (int i = 1; i < n; i++)
	li	a5,1		# tmp152,
	sw	a5,-28(s0)	# tmp152, i
# problem101.c:7:     for (int i = 1; i < n; i++)
	j	.L2		#
.L3:
# problem101.c:8:         *(out + i) = *(out + i - 1) + 2;
	lw	a5,-28(s0)		# _3, i
	slli	a5,a5,2	#, _4, _3
# problem101.c:8:         *(out + i) = *(out + i - 1) + 2;
	addi	a5,a5,-4	#, _5, _4
	ld	a4,-24(s0)		# tmp153, out
	add	a5,a4,a5	# _5, _6, tmp153
# problem101.c:8:         *(out + i) = *(out + i - 1) + 2;
	lw	a4,0(a5)		# _7, *_6
# problem101.c:8:         *(out + i) = *(out + i - 1) + 2;
	lw	a5,-28(s0)		# _8, i
	slli	a5,a5,2	#, _9, _8
	ld	a3,-24(s0)		# tmp154, out
	add	a5,a3,a5	# _9, _10, tmp154
# problem101.c:8:         *(out + i) = *(out + i - 1) + 2;
	addiw	a4,a4,2	#, tmp155, _7
	sext.w	a4,a4	# _11, tmp155
# problem101.c:8:         *(out + i) = *(out + i - 1) + 2;
	sw	a4,0(a5)	# _11, *_10
# problem101.c:7:     for (int i = 1; i < n; i++)
	lw	a5,-28(s0)		# tmp158, i
	addiw	a5,a5,1	#, tmp156, tmp157
	sw	a5,-28(s0)	# tmp156, i
.L2:
# problem101.c:7:     for (int i = 1; i < n; i++)
	lw	a5,-28(s0)		# tmp160, i
	mv	a4,a5	# tmp159, tmp160
	lw	a5,-36(s0)		# tmp162, n
	sext.w	a4,a4	# tmp163, tmp159
	sext.w	a5,a5	# tmp164, tmp161
	blt	a4,a5,.L3	#, tmp163, tmp164,
# problem101.c:9:     return out;
	ld	a5,-24(s0)		# _20, out
# problem101.c:10: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC4:
	.string	"problem101.c"
	.align	3
.LC5:
	.string	"result[i] == test1[i]"
	.align	3
.LC6:
	.string	"result[i] == test2[i]"
	.align	3
.LC7:
	.string	"result[i] == test3[i]"
	.align	3
.LC8:
	.string	"result[i] == test4[i]"
	.align	3
.LC9:
	.string	"result[i] == test5[i]"
	.align	3
.LC0:
	.word	4
	.word	6
	.word	8
	.word	10
	.align	3
.LC1:
	.word	5
	.word	7
	.word	9
	.word	11
	.word	13
	.align	3
.LC2:
	.word	6
	.word	8
	.word	10
	.word	12
	.word	14
	.word	16
	.align	3
.LC3:
	.word	8
	.word	10
	.word	12
	.word	14
	.word	16
	.word	18
	.word	20
	.word	22
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-176	#,,
	.cfi_def_cfa_offset 176
	sd	ra,168(sp)	#,
	sd	s0,160(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,176	#,,
	.cfi_def_cfa 8, 0
# problem101.c:18: int main() {
	la	a5,__stack_chk_guard		# tmp161,
	ld	a4, 0(a5)	# tmp244, __stack_chk_guard
	sd	a4, -24(s0)	# tmp244, D.3316
	li	a4, 0	# tmp244
# problem101.c:20:     int test1[] = {3, 5, 7};
	li	a5,3		# tmp162,
	sw	a5,-136(s0)	# tmp162, test1[0]
	li	a5,5		# tmp163,
	sw	a5,-132(s0)	# tmp163, test1[1]
	li	a5,7		# tmp164,
	sw	a5,-128(s0)	# tmp164, test1[2]
# problem101.c:21:     int test2[] = {4, 6, 8, 10};
	lla	a5,.LC0	# tmp165,
	ld	a4,0(a5)		# tmp166,
	sd	a4,-120(s0)	# tmp166, test2
	ld	a5,8(a5)		# tmp167,
	sd	a5,-112(s0)	# tmp167, test2
# problem101.c:22:     int test3[] = {5, 7, 9, 11, 13};
	lla	a5,.LC1	# tmp168,
	ld	a4,0(a5)		# tmp169,
	sd	a4,-104(s0)	# tmp169, test3
	ld	a4,8(a5)		# tmp170,
	sd	a4,-96(s0)	# tmp170, test3
	lw	a5,16(a5)		# tmp171,
	sw	a5,-88(s0)	# tmp171, test3
# problem101.c:23:     int test4[] = {6, 8, 10, 12, 14, 16};
	lla	a5,.LC2	# tmp172,
	ld	a4,0(a5)		# tmp173,
	sd	a4,-80(s0)	# tmp173, test4
	ld	a4,8(a5)		# tmp174,
	sd	a4,-72(s0)	# tmp174, test4
	ld	a5,16(a5)		# tmp175,
	sd	a5,-64(s0)	# tmp175, test4
# problem101.c:24:     int test5[] = {8, 10, 12, 14, 16, 18, 20, 22};
	lla	a5,.LC3	# tmp176,
	ld	a2,0(a5)		# tmp177,
	ld	a3,8(a5)		# tmp178,
	ld	a4,16(a5)		# tmp179,
	ld	a5,24(a5)		# tmp180,
	sd	a2,-56(s0)	# tmp177, test5
	sd	a3,-48(s0)	# tmp178, test5
	sd	a4,-40(s0)	# tmp179, test5
	sd	a5,-32(s0)	# tmp180, test5
# problem101.c:26:     result = func0(3);
	li	a0,3		#,
	call	func0		#
	sd	a0,-144(s0)	#, result
# problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	sw	zero,-164(s0)	#, i
# problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	j	.L6		#
.L8:
# problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	lw	a5,-164(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-144(s0)		# tmp181, result
	add	a5,a4,a5	# _2, _3, tmp181
	lw	a4,0(a5)		# _4, *_3
	lw	a5,-164(s0)		# tmp182, i
	slli	a5,a5,2	#, tmp183, tmp182
	addi	a5,a5,-16	#, tmp248, tmp183
	add	a5,a5,s0	#, tmp183, tmp248
	lw	a5,-120(a5)		# _5, test1[i_26]
	beq	a4,a5,.L7	#, tmp184, tmp185,
# problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC4	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L7:
# problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	lw	a5,-164(s0)		# tmp188, i
	addiw	a5,a5,1	#, tmp186, tmp187
	sw	a5,-164(s0)	# tmp186, i
.L6:
# problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	lw	a5,-164(s0)		# tmp190, i
	sext.w	a4,a5	# tmp191, tmp189
	li	a5,2		# tmp192,
	ble	a4,a5,.L8	#, tmp191, tmp192,
# problem101.c:28:     free(result);
	ld	a0,-144(s0)		#, result
	call	free@plt	#
# problem101.c:30:     result = func0(4);
	li	a0,4		#,
	call	func0		#
	sd	a0,-144(s0)	#, result
# problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	sw	zero,-160(s0)	#, i
# problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	j	.L9		#
.L11:
# problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	lw	a5,-160(s0)		# _6, i
	slli	a5,a5,2	#, _7, _6
	ld	a4,-144(s0)		# tmp193, result
	add	a5,a4,a5	# _7, _8, tmp193
	lw	a4,0(a5)		# _9, *_8
	lw	a5,-160(s0)		# tmp194, i
	slli	a5,a5,2	#, tmp195, tmp194
	addi	a5,a5,-16	#, tmp249, tmp195
	add	a5,a5,s0	#, tmp195, tmp249
	lw	a5,-104(a5)		# _10, test2[i_27]
	beq	a4,a5,.L10	#, tmp196, tmp197,
# problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC4	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L10:
# problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	lw	a5,-160(s0)		# tmp200, i
	addiw	a5,a5,1	#, tmp198, tmp199
	sw	a5,-160(s0)	# tmp198, i
.L9:
# problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	lw	a5,-160(s0)		# tmp202, i
	sext.w	a4,a5	# tmp203, tmp201
	li	a5,3		# tmp204,
	ble	a4,a5,.L11	#, tmp203, tmp204,
# problem101.c:32:     free(result);
	ld	a0,-144(s0)		#, result
	call	free@plt	#
# problem101.c:34:     result = func0(5);
	li	a0,5		#,
	call	func0		#
	sd	a0,-144(s0)	#, result
# problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	sw	zero,-156(s0)	#, i
# problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	j	.L12		#
.L14:
# problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	lw	a5,-156(s0)		# _11, i
	slli	a5,a5,2	#, _12, _11
	ld	a4,-144(s0)		# tmp205, result
	add	a5,a4,a5	# _12, _13, tmp205
	lw	a4,0(a5)		# _14, *_13
	lw	a5,-156(s0)		# tmp206, i
	slli	a5,a5,2	#, tmp207, tmp206
	addi	a5,a5,-16	#, tmp250, tmp207
	add	a5,a5,s0	#, tmp207, tmp250
	lw	a5,-88(a5)		# _15, test3[i_28]
	beq	a4,a5,.L13	#, tmp208, tmp209,
# problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC4	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L13:
# problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	lw	a5,-156(s0)		# tmp212, i
	addiw	a5,a5,1	#, tmp210, tmp211
	sw	a5,-156(s0)	# tmp210, i
.L12:
# problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	lw	a5,-156(s0)		# tmp214, i
	sext.w	a4,a5	# tmp215, tmp213
	li	a5,4		# tmp216,
	ble	a4,a5,.L14	#, tmp215, tmp216,
# problem101.c:36:     free(result);
	ld	a0,-144(s0)		#, result
	call	free@plt	#
# problem101.c:38:     result = func0(6);
	li	a0,6		#,
	call	func0		#
	sd	a0,-144(s0)	#, result
# problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	sw	zero,-152(s0)	#, i
# problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	j	.L15		#
.L17:
# problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	lw	a5,-152(s0)		# _16, i
	slli	a5,a5,2	#, _17, _16
	ld	a4,-144(s0)		# tmp217, result
	add	a5,a4,a5	# _17, _18, tmp217
	lw	a4,0(a5)		# _19, *_18
	lw	a5,-152(s0)		# tmp218, i
	slli	a5,a5,2	#, tmp219, tmp218
	addi	a5,a5,-16	#, tmp251, tmp219
	add	a5,a5,s0	#, tmp219, tmp251
	lw	a5,-64(a5)		# _20, test4[i_29]
	beq	a4,a5,.L16	#, tmp220, tmp221,
# problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,39		#,
	lla	a1,.LC4	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L16:
# problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	lw	a5,-152(s0)		# tmp224, i
	addiw	a5,a5,1	#, tmp222, tmp223
	sw	a5,-152(s0)	# tmp222, i
.L15:
# problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	lw	a5,-152(s0)		# tmp226, i
	sext.w	a4,a5	# tmp227, tmp225
	li	a5,5		# tmp228,
	ble	a4,a5,.L17	#, tmp227, tmp228,
# problem101.c:40:     free(result);
	ld	a0,-144(s0)		#, result
	call	free@plt	#
# problem101.c:42:     result = func0(8);
	li	a0,8		#,
	call	func0		#
	sd	a0,-144(s0)	#, result
# problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	sw	zero,-148(s0)	#, i
# problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	j	.L18		#
.L20:
# problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	lw	a5,-148(s0)		# _21, i
	slli	a5,a5,2	#, _22, _21
	ld	a4,-144(s0)		# tmp229, result
	add	a5,a4,a5	# _22, _23, tmp229
	lw	a4,0(a5)		# _24, *_23
	lw	a5,-148(s0)		# tmp230, i
	slli	a5,a5,2	#, tmp231, tmp230
	addi	a5,a5,-16	#, tmp252, tmp231
	add	a5,a5,s0	#, tmp231, tmp252
	lw	a5,-40(a5)		# _25, test5[i_30]
	beq	a4,a5,.L19	#, tmp232, tmp233,
# problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,43		#,
	lla	a1,.LC4	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L19:
# problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	lw	a5,-148(s0)		# tmp236, i
	addiw	a5,a5,1	#, tmp234, tmp235
	sw	a5,-148(s0)	# tmp234, i
.L18:
# problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	lw	a5,-148(s0)		# tmp238, i
	sext.w	a4,a5	# tmp239, tmp237
	li	a5,7		# tmp240,
	ble	a4,a5,.L20	#, tmp239, tmp240,
# problem101.c:44:     free(result);
	ld	a0,-144(s0)		#, result
	call	free@plt	#
# problem101.c:46:     return 0;
	li	a5,0		# _59,
# problem101.c:47: }
	mv	a4,a5	# <retval>, _59
	la	a5,__stack_chk_guard		# tmp242,
	ld	a3, -24(s0)	# tmp245, D.3316
	ld	a5, 0(a5)	# tmp243, __stack_chk_guard
	xor	a5, a3, a5	# tmp243, tmp245
	li	a3, 0	# tmp245
	beq	a5,zero,.L22	#, tmp243,,
	call	__stack_chk_fail@plt	#
.L22:
	mv	a0,a4	#, <retval>
	ld	ra,168(sp)		#,
	.cfi_restore 1
	ld	s0,160(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 176
	addi	sp,sp,176	#,,
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
