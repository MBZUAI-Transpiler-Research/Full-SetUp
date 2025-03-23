	.file	"problem101.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp85, n
	sw	a5,-36(s0)	# tmp86, n
# problem101.c:5:     int* out = (int*)malloc(n * sizeof(int));
	lw	a5,-36(s0)		# _1, n
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp87,
	sd	a5,-24(s0)	# tmp87, out
# problem101.c:6:     *out = n;
	ld	a5,-24(s0)		# tmp88, out
	lw	a4,-36(s0)		# tmp89, n
	sw	a4,0(a5)	# tmp89, *out_17
# problem101.c:7:     for (int i = 1; i < n; i++)
	li	a5,1		# tmp90,
	sw	a5,-28(s0)	# tmp90, i
# problem101.c:7:     for (int i = 1; i < n; i++)
	j	.L2		#
.L3:
# problem101.c:8:         *(out + i) = *(out + i - 1) + 2;
	lw	a5,-28(s0)		# _3, i
	slli	a5,a5,2	#, _4, _3
# problem101.c:8:         *(out + i) = *(out + i - 1) + 2;
	addi	a5,a5,-4	#, _5, _4
	ld	a4,-24(s0)		# tmp91, out
	add	a5,a4,a5	# _5, _6, tmp91
# problem101.c:8:         *(out + i) = *(out + i - 1) + 2;
	lw	a4,0(a5)		# _7, *_6
# problem101.c:8:         *(out + i) = *(out + i - 1) + 2;
	lw	a5,-28(s0)		# _8, i
	slli	a5,a5,2	#, _9, _8
	ld	a3,-24(s0)		# tmp92, out
	add	a5,a3,a5	# _9, _10, tmp92
# problem101.c:8:         *(out + i) = *(out + i - 1) + 2;
	addiw	a4,a4,2	#, tmp93, _7
	sext.w	a4,a4	# _11, tmp93
# problem101.c:8:         *(out + i) = *(out + i - 1) + 2;
	sw	a4,0(a5)	# _11, *_10
# problem101.c:7:     for (int i = 1; i < n; i++)
	lw	a5,-28(s0)		# tmp96, i
	addiw	a5,a5,1	#, tmp94, tmp95
	sw	a5,-28(s0)	# tmp94, i
.L2:
# problem101.c:7:     for (int i = 1; i < n; i++)
	lw	a5,-28(s0)		# tmp98, i
	mv	a4,a5	# tmp97, tmp98
	lw	a5,-36(s0)		# tmp100, n
	sext.w	a4,a4	# tmp101, tmp97
	sext.w	a5,a5	# tmp102, tmp99
	blt	a4,a5,.L3	#, tmp101, tmp102,
# problem101.c:9:     return out;
	ld	a5,-24(s0)		# _20, out
# problem101.c:10: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
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
	addi	sp,sp,-176	#,,
	sd	ra,168(sp)	#,
	sd	s0,160(sp)	#,
	addi	s0,sp,176	#,,
# problem101.c:18: int main() {
	la	a5,__stack_chk_guard		# tmp99,
	ld	a4, 0(a5)	# tmp182, __stack_chk_guard
	sd	a4, -24(s0)	# tmp182, D.2491
	li	a4, 0	# tmp182
# problem101.c:20:     int test1[] = {3, 5, 7};
	li	a5,3		# tmp100,
	sw	a5,-136(s0)	# tmp100, test1[0]
	li	a5,5		# tmp101,
	sw	a5,-132(s0)	# tmp101, test1[1]
	li	a5,7		# tmp102,
	sw	a5,-128(s0)	# tmp102, test1[2]
# problem101.c:21:     int test2[] = {4, 6, 8, 10};
	lla	a5,.LC0	# tmp103,
	ld	a4,0(a5)		# tmp104,
	sd	a4,-120(s0)	# tmp104, test2
	ld	a5,8(a5)		# tmp105,
	sd	a5,-112(s0)	# tmp105, test2
# problem101.c:22:     int test3[] = {5, 7, 9, 11, 13};
	lla	a5,.LC1	# tmp106,
	ld	a4,0(a5)		# tmp107,
	sd	a4,-104(s0)	# tmp107, test3
	ld	a4,8(a5)		# tmp108,
	sd	a4,-96(s0)	# tmp108, test3
	lw	a5,16(a5)		# tmp109,
	sw	a5,-88(s0)	# tmp109, test3
# problem101.c:23:     int test4[] = {6, 8, 10, 12, 14, 16};
	lla	a5,.LC2	# tmp110,
	ld	a4,0(a5)		# tmp111,
	sd	a4,-80(s0)	# tmp111, test4
	ld	a4,8(a5)		# tmp112,
	sd	a4,-72(s0)	# tmp112, test4
	ld	a5,16(a5)		# tmp113,
	sd	a5,-64(s0)	# tmp113, test4
# problem101.c:24:     int test5[] = {8, 10, 12, 14, 16, 18, 20, 22};
	lla	a5,.LC3	# tmp114,
	ld	a2,0(a5)		# tmp115,
	ld	a3,8(a5)		# tmp116,
	ld	a4,16(a5)		# tmp117,
	ld	a5,24(a5)		# tmp118,
	sd	a2,-56(s0)	# tmp115, test5
	sd	a3,-48(s0)	# tmp116, test5
	sd	a4,-40(s0)	# tmp117, test5
	sd	a5,-32(s0)	# tmp118, test5
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
	ld	a4,-144(s0)		# tmp119, result
	add	a5,a4,a5	# _2, _3, tmp119
	lw	a4,0(a5)		# _4, *_3
	lw	a5,-164(s0)		# tmp120, i
	slli	a5,a5,2	#, tmp121, tmp120
	addi	a5,a5,-16	#, tmp186, tmp121
	add	a5,a5,s0	#, tmp121, tmp186
	lw	a5,-120(a5)		# _5, test1[i_26]
	beq	a4,a5,.L7	#, tmp122, tmp123,
# problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC4	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L7:
# problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	lw	a5,-164(s0)		# tmp126, i
	addiw	a5,a5,1	#, tmp124, tmp125
	sw	a5,-164(s0)	# tmp124, i
.L6:
# problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	lw	a5,-164(s0)		# tmp128, i
	sext.w	a4,a5	# tmp129, tmp127
	li	a5,2		# tmp130,
	ble	a4,a5,.L8	#, tmp129, tmp130,
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
	ld	a4,-144(s0)		# tmp131, result
	add	a5,a4,a5	# _7, _8, tmp131
	lw	a4,0(a5)		# _9, *_8
	lw	a5,-160(s0)		# tmp132, i
	slli	a5,a5,2	#, tmp133, tmp132
	addi	a5,a5,-16	#, tmp187, tmp133
	add	a5,a5,s0	#, tmp133, tmp187
	lw	a5,-104(a5)		# _10, test2[i_27]
	beq	a4,a5,.L10	#, tmp134, tmp135,
# problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC4	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L10:
# problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	lw	a5,-160(s0)		# tmp138, i
	addiw	a5,a5,1	#, tmp136, tmp137
	sw	a5,-160(s0)	# tmp136, i
.L9:
# problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	lw	a5,-160(s0)		# tmp140, i
	sext.w	a4,a5	# tmp141, tmp139
	li	a5,3		# tmp142,
	ble	a4,a5,.L11	#, tmp141, tmp142,
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
	ld	a4,-144(s0)		# tmp143, result
	add	a5,a4,a5	# _12, _13, tmp143
	lw	a4,0(a5)		# _14, *_13
	lw	a5,-156(s0)		# tmp144, i
	slli	a5,a5,2	#, tmp145, tmp144
	addi	a5,a5,-16	#, tmp188, tmp145
	add	a5,a5,s0	#, tmp145, tmp188
	lw	a5,-88(a5)		# _15, test3[i_28]
	beq	a4,a5,.L13	#, tmp146, tmp147,
# problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC4	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L13:
# problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	lw	a5,-156(s0)		# tmp150, i
	addiw	a5,a5,1	#, tmp148, tmp149
	sw	a5,-156(s0)	# tmp148, i
.L12:
# problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	lw	a5,-156(s0)		# tmp152, i
	sext.w	a4,a5	# tmp153, tmp151
	li	a5,4		# tmp154,
	ble	a4,a5,.L14	#, tmp153, tmp154,
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
	ld	a4,-144(s0)		# tmp155, result
	add	a5,a4,a5	# _17, _18, tmp155
	lw	a4,0(a5)		# _19, *_18
	lw	a5,-152(s0)		# tmp156, i
	slli	a5,a5,2	#, tmp157, tmp156
	addi	a5,a5,-16	#, tmp189, tmp157
	add	a5,a5,s0	#, tmp157, tmp189
	lw	a5,-64(a5)		# _20, test4[i_29]
	beq	a4,a5,.L16	#, tmp158, tmp159,
# problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,39		#,
	lla	a1,.LC4	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L16:
# problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	lw	a5,-152(s0)		# tmp162, i
	addiw	a5,a5,1	#, tmp160, tmp161
	sw	a5,-152(s0)	# tmp160, i
.L15:
# problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	lw	a5,-152(s0)		# tmp164, i
	sext.w	a4,a5	# tmp165, tmp163
	li	a5,5		# tmp166,
	ble	a4,a5,.L17	#, tmp165, tmp166,
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
	ld	a4,-144(s0)		# tmp167, result
	add	a5,a4,a5	# _22, _23, tmp167
	lw	a4,0(a5)		# _24, *_23
	lw	a5,-148(s0)		# tmp168, i
	slli	a5,a5,2	#, tmp169, tmp168
	addi	a5,a5,-16	#, tmp190, tmp169
	add	a5,a5,s0	#, tmp169, tmp190
	lw	a5,-40(a5)		# _25, test5[i_30]
	beq	a4,a5,.L19	#, tmp170, tmp171,
# problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,43		#,
	lla	a1,.LC4	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L19:
# problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	lw	a5,-148(s0)		# tmp174, i
	addiw	a5,a5,1	#, tmp172, tmp173
	sw	a5,-148(s0)	# tmp172, i
.L18:
# problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	lw	a5,-148(s0)		# tmp176, i
	sext.w	a4,a5	# tmp177, tmp175
	li	a5,7		# tmp178,
	ble	a4,a5,.L20	#, tmp177, tmp178,
# problem101.c:44:     free(result);
	ld	a0,-144(s0)		#, result
	call	free@plt	#
# problem101.c:46:     return 0;
	li	a5,0		# _59,
# problem101.c:47: }
	mv	a4,a5	# <retval>, _59
	la	a5,__stack_chk_guard		# tmp180,
	ld	a3, -24(s0)	# tmp183, D.2491
	ld	a5, 0(a5)	# tmp181, __stack_chk_guard
	xor	a5, a3, a5	# tmp181, tmp183
	li	a3, 0	# tmp183
	beq	a5,zero,.L22	#, tmp181,,
	call	__stack_chk_fail@plt	#
.L22:
	mv	a0,a4	#, <retval>
	ld	ra,168(sp)		#,
	ld	s0,160(sp)		#,
	addi	sp,sp,176	#,,
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
