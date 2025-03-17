	.file	"problem123.c"
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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# arr, arr
	mv	a5,a1	# tmp148, k
	sw	a5,-44(s0)	# tmp149, k
# problem123.c:4:     int sum = 0;
	sw	zero,-24(s0)	#, sum
# problem123.c:5:     for (int i = 0; i < k; i++)
	sw	zero,-20(s0)	#, i
# problem123.c:5:     for (int i = 0; i < k; i++)
	j	.L2		#
.L4:
# problem123.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp150, arr
	add	a5,a4,a5	# _2, _3, tmp150
	lw	a5,0(a5)		# _4, *_3
# problem123.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	mv	a4,a5	# tmp151, _4
	li	a5,-99		# tmp152,
	blt	a4,a5,.L3	#, tmp151, tmp152,
# problem123.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp153, arr
	add	a5,a4,a5	# _6, _7, tmp153
	lw	a5,0(a5)		# _8, *_7
# problem123.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	mv	a4,a5	# tmp154, _8
	li	a5,99		# tmp155,
	bgt	a4,a5,.L3	#, tmp154, tmp155,
# problem123.c:7:             sum += arr[i];
	lw	a5,-20(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	ld	a4,-40(s0)		# tmp156, arr
	add	a5,a4,a5	# _10, _11, tmp156
	lw	a5,0(a5)		# _12, *_11
# problem123.c:7:             sum += arr[i];
	lw	a4,-24(s0)		# tmp159, sum
	addw	a5,a4,a5	# _12, tmp157, tmp158
	sw	a5,-24(s0)	# tmp157, sum
.L3:
# problem123.c:5:     for (int i = 0; i < k; i++)
	lw	a5,-20(s0)		# tmp162, i
	addiw	a5,a5,1	#, tmp160, tmp161
	sw	a5,-20(s0)	# tmp160, i
.L2:
# problem123.c:5:     for (int i = 0; i < k; i++)
	lw	a5,-20(s0)		# tmp164, i
	mv	a4,a5	# tmp163, tmp164
	lw	a5,-44(s0)		# tmp166, k
	sext.w	a4,a4	# tmp167, tmp163
	sext.w	a5,a5	# tmp168, tmp165
	blt	a4,a5,.L4	#, tmp167, tmp168,
# problem123.c:8:     return sum;
	lw	a5,-24(s0)		# _19, sum
# problem123.c:9: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC4:
	.string	"problem123.c"
	.align	3
.LC5:
	.string	"func0(test1, 3) == -4"
	.align	3
.LC6:
	.string	"func0(test2, 2) == 0"
	.align	3
.LC7:
	.string	"func0(test3, 4) == 125"
	.align	3
.LC8:
	.string	"func0(test4, 4) == 24"
	.align	3
.LC9:
	.string	"func0(test5, 1) == 1"
	.align	3
.LC0:
	.word	1
	.word	-2
	.word	-3
	.word	41
	.word	57
	.word	76
	.word	87
	.word	88
	.word	99
	.align	3
.LC1:
	.word	111
	.word	121
	.word	3
	.word	4000
	.word	5
	.word	6
	.align	3
.LC2:
	.word	11
	.word	21
	.word	3
	.word	90
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.align	3
.LC3:
	.word	111
	.word	21
	.word	3
	.word	4000
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-176	#,,
	.cfi_def_cfa_offset 176
	sd	ra,168(sp)	#,
	sd	s0,160(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,176	#,,
	.cfi_def_cfa 8, 0
# problem123.c:15: int main() {
	la	a5,__stack_chk_guard		# tmp141,
	ld	a4, 0(a5)	# tmp186, __stack_chk_guard
	sd	a4, -24(s0)	# tmp186, D.2773
	li	a4, 0	# tmp186
# problem123.c:16:     int test1[] = {1, -2, -3, 41, 57, 76, 87, 88, 99};
	lla	a5,.LC0	# tmp142,
	ld	a1,0(a5)		# tmp143,
	ld	a2,8(a5)		# tmp144,
	ld	a3,16(a5)		# tmp145,
	ld	a4,24(a5)		# tmp146,
	sd	a1,-144(s0)	# tmp143, test1
	sd	a2,-136(s0)	# tmp144, test1
	sd	a3,-128(s0)	# tmp145, test1
	sd	a4,-120(s0)	# tmp146, test1
	lw	a5,32(a5)		# tmp147,
	sw	a5,-112(s0)	# tmp147, test1
# problem123.c:17:     assert(func0(test1, 3) == -4);
	addi	a5,s0,-144	#, tmp148,
	li	a1,3		#,
	mv	a0,a5	#, tmp148
	call	func0		#
	mv	a5,a0	# tmp149,
# problem123.c:17:     assert(func0(test1, 3) == -4);
	mv	a4,a5	# tmp150, _1
	li	a5,-4		# tmp151,
	beq	a4,a5,.L7	#, tmp150, tmp151,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC4	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L7:
# problem123.c:19:     int test2[] = {111, 121, 3, 4000, 5, 6};
	lla	a5,.LC1	# tmp152,
	ld	a4,0(a5)		# tmp153,
	sd	a4,-168(s0)	# tmp153, test2
	ld	a4,8(a5)		# tmp154,
	sd	a4,-160(s0)	# tmp154, test2
	ld	a5,16(a5)		# tmp155,
	sd	a5,-152(s0)	# tmp155, test2
# problem123.c:20:     assert(func0(test2, 2) == 0);
	addi	a5,s0,-168	#, tmp156,
	li	a1,2		#,
	mv	a0,a5	#, tmp156
	call	func0		#
	mv	a5,a0	# tmp157,
# problem123.c:20:     assert(func0(test2, 2) == 0);
	beq	a5,zero,.L8	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC4	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L8:
# problem123.c:22:     int test3[] = {11, 21, 3, 90, 5, 6, 7, 8, 9};
	lla	a5,.LC2	# tmp158,
	ld	a1,0(a5)		# tmp159,
	ld	a2,8(a5)		# tmp160,
	ld	a3,16(a5)		# tmp161,
	ld	a4,24(a5)		# tmp162,
	sd	a1,-104(s0)	# tmp159, test3
	sd	a2,-96(s0)	# tmp160, test3
	sd	a3,-88(s0)	# tmp161, test3
	sd	a4,-80(s0)	# tmp162, test3
	lw	a5,32(a5)		# tmp163,
	sw	a5,-72(s0)	# tmp163, test3
# problem123.c:23:     assert(func0(test3, 4) == 125);
	addi	a5,s0,-104	#, tmp164,
	li	a1,4		#,
	mv	a0,a5	#, tmp164
	call	func0		#
	mv	a5,a0	# tmp165,
# problem123.c:23:     assert(func0(test3, 4) == 125);
	mv	a4,a5	# tmp166, _3
	li	a5,125		# tmp167,
	beq	a4,a5,.L9	#, tmp166, tmp167,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC4	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L9:
# problem123.c:25:     int test4[] = {111, 21, 3, 4000, 5, 6, 7, 8, 9};
	lla	a5,.LC3	# tmp168,
	ld	a1,0(a5)		# tmp169,
	ld	a2,8(a5)		# tmp170,
	ld	a3,16(a5)		# tmp171,
	ld	a4,24(a5)		# tmp172,
	sd	a1,-64(s0)	# tmp169, test4
	sd	a2,-56(s0)	# tmp170, test4
	sd	a3,-48(s0)	# tmp171, test4
	sd	a4,-40(s0)	# tmp172, test4
	lw	a5,32(a5)		# tmp173,
	sw	a5,-32(s0)	# tmp173, test4
# problem123.c:26:     assert(func0(test4, 4) == 24);
	addi	a5,s0,-64	#, tmp174,
	li	a1,4		#,
	mv	a0,a5	#, tmp174
	call	func0		#
	mv	a5,a0	# tmp175,
# problem123.c:26:     assert(func0(test4, 4) == 24);
	mv	a4,a5	# tmp176, _4
	li	a5,24		# tmp177,
	beq	a4,a5,.L10	#, tmp176, tmp177,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC4	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L10:
# problem123.c:28:     int test5[] = {1};
	li	a5,1		# tmp178,
	sw	a5,-176(s0)	# tmp178, test5[0]
# problem123.c:29:     assert(func0(test5, 1) == 1);
	addi	a5,s0,-176	#, tmp179,
	li	a1,1		#,
	mv	a0,a5	#, tmp179
	call	func0		#
	mv	a5,a0	# tmp180,
# problem123.c:29:     assert(func0(test5, 1) == 1);
	mv	a4,a5	# tmp181, _5
	li	a5,1		# tmp182,
	beq	a4,a5,.L11	#, tmp181, tmp182,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC4	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L11:
# problem123.c:31:     return 0;
	li	a5,0		# _22,
# problem123.c:32: }
	mv	a4,a5	# <retval>, _22
	la	a5,__stack_chk_guard		# tmp184,
	ld	a3, -24(s0)	# tmp187, D.2773
	ld	a5, 0(a5)	# tmp185, __stack_chk_guard
	xor	a5, a3, a5	# tmp185, tmp187
	li	a3, 0	# tmp187
	beq	a5,zero,.L13	#, tmp185,,
	call	__stack_chk_fail@plt	#
.L13:
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
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
