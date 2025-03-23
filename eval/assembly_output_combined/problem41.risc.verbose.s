	.file	"problem41.c"
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
	sd	a0,-40(s0)	# l, l
	mv	a5,a1	# tmp150, size
	sw	a5,-44(s0)	# tmp151, size
# problem41.c:5:     for (int i = 0; i < size; i++)
	sw	zero,-28(s0)	#, i
# problem41.c:5:     for (int i = 0; i < size; i++)
	j	.L2		#
.L9:
# problem41.c:6:         for (int j = i + 1; j < size; j++)
	lw	a5,-28(s0)		# tmp154, i
	addiw	a5,a5,1	#, tmp152, tmp153
	sw	a5,-24(s0)	# tmp152, j
# problem41.c:6:         for (int j = i + 1; j < size; j++)
	j	.L3		#
.L8:
# problem41.c:7:             for (int k = j + 1; k < size; k++)
	lw	a5,-24(s0)		# tmp157, j
	addiw	a5,a5,1	#, tmp155, tmp156
	sw	a5,-20(s0)	# tmp155, k
# problem41.c:7:             for (int k = j + 1; k < size; k++)
	j	.L4		#
.L7:
# problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	lw	a5,-28(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp158, l
	add	a5,a4,a5	# _2, _3, tmp158
	lw	a4,0(a5)		# _4, *_3
# problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	lw	a5,-24(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	ld	a3,-40(s0)		# tmp159, l
	add	a5,a3,a5	# _6, _7, tmp159
	lw	a5,0(a5)		# _8, *_7
# problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	addw	a5,a4,a5	# _8, tmp160, _4
	sext.w	a4,a5	# _9, tmp160
# problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	lw	a5,-20(s0)		# _10, k
	slli	a5,a5,2	#, _11, _10
	ld	a3,-40(s0)		# tmp161, l
	add	a5,a3,a5	# _11, _12, tmp161
	lw	a5,0(a5)		# _13, *_12
# problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	addw	a5,a4,a5	# _13, tmp162, _9
	sext.w	a5,a5	# _14, tmp162
# problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	bne	a5,zero,.L5	#, _14,,
# problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	li	a5,1		# _18,
# problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	j	.L6		#
.L5:
# problem41.c:7:             for (int k = j + 1; k < size; k++)
	lw	a5,-20(s0)		# tmp165, k
	addiw	a5,a5,1	#, tmp163, tmp164
	sw	a5,-20(s0)	# tmp163, k
.L4:
# problem41.c:7:             for (int k = j + 1; k < size; k++)
	lw	a5,-20(s0)		# tmp167, k
	mv	a4,a5	# tmp166, tmp167
	lw	a5,-44(s0)		# tmp169, size
	sext.w	a4,a4	# tmp170, tmp166
	sext.w	a5,a5	# tmp171, tmp168
	blt	a4,a5,.L7	#, tmp170, tmp171,
# problem41.c:6:         for (int j = i + 1; j < size; j++)
	lw	a5,-24(s0)		# tmp174, j
	addiw	a5,a5,1	#, tmp172, tmp173
	sw	a5,-24(s0)	# tmp172, j
.L3:
# problem41.c:6:         for (int j = i + 1; j < size; j++)
	lw	a5,-24(s0)		# tmp176, j
	mv	a4,a5	# tmp175, tmp176
	lw	a5,-44(s0)		# tmp178, size
	sext.w	a4,a4	# tmp179, tmp175
	sext.w	a5,a5	# tmp180, tmp177
	blt	a4,a5,.L8	#, tmp179, tmp180,
# problem41.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-28(s0)		# tmp183, i
	addiw	a5,a5,1	#, tmp181, tmp182
	sw	a5,-28(s0)	# tmp181, i
.L2:
# problem41.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-28(s0)		# tmp185, i
	mv	a4,a5	# tmp184, tmp185
	lw	a5,-44(s0)		# tmp187, size
	sext.w	a4,a4	# tmp188, tmp184
	sext.w	a5,a5	# tmp189, tmp186
	blt	a4,a5,.L9	#, tmp188, tmp189,
# problem41.c:9:     return false;
	li	a5,0		# _18,
.L6:
# problem41.c:10: }
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
.LC8:
	.string	"problem41.c"
	.align	3
.LC9:
	.string	"func0(test1, 4) == false"
	.align	3
.LC10:
	.string	"func0(test2, 4) == false"
	.align	3
.LC11:
	.string	"func0(test3, 4) == true"
	.align	3
.LC12:
	.string	"func0(test4, 4) == false"
	.align	3
.LC13:
	.string	"func0(test5, 4) == false"
	.align	3
.LC14:
	.string	"func0(test6, 6) == true"
	.align	3
.LC15:
	.string	"func0(test7, 1) == false"
	.align	3
.LC16:
	.string	"func0(test8, 4) == false"
	.align	3
.LC17:
	.string	"func0(test9, 4) == false"
	.align	3
.LC0:
	.word	1
	.word	3
	.word	5
	.word	0
	.align	3
.LC1:
	.word	1
	.word	3
	.word	5
	.word	-1
	.align	3
.LC2:
	.word	1
	.word	3
	.word	-2
	.word	1
	.align	3
.LC3:
	.word	1
	.word	2
	.word	3
	.word	7
	.align	3
.LC4:
	.word	1
	.word	2
	.word	5
	.word	7
	.align	3
.LC5:
	.word	2
	.word	4
	.word	-5
	.word	3
	.word	9
	.word	7
	.align	3
.LC6:
	.word	1
	.word	3
	.word	5
	.word	-100
	.align	3
.LC7:
	.word	100
	.word	3
	.word	5
	.word	-100
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
# problem41.c:18: int main() {
	la	a5,__stack_chk_guard		# tmp152,
	ld	a4, 0(a5)	# tmp207, __stack_chk_guard
	sd	a4, -24(s0)	# tmp207, D.2800
	li	a4, 0	# tmp207
# problem41.c:19:     int test1[] = {1, 3, 5, 0};
	lla	a5,.LC0	# tmp153,
	ld	a4,0(a5)		# tmp154,
	sd	a4,-160(s0)	# tmp154, test1
	ld	a5,8(a5)		# tmp155,
	sd	a5,-152(s0)	# tmp155, test1
# problem41.c:20:     assert(func0(test1, 4) == false);
	addi	a5,s0,-160	#, tmp156,
	li	a1,4		#,
	mv	a0,a5	#, tmp156
	call	func0		#
	mv	a5,a0	# tmp157,
# problem41.c:20:     assert(func0(test1, 4) == false);
	xori	a5,a5,1	#, tmp158, _1
	andi	a5,a5,0xff	# _2, tmp158
	bne	a5,zero,.L11	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC8	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L11:
# problem41.c:22:     int test2[] = {1, 3, 5, -1};
	lla	a5,.LC1	# tmp159,
	ld	a4,0(a5)		# tmp160,
	sd	a4,-144(s0)	# tmp160, test2
	ld	a5,8(a5)		# tmp161,
	sd	a5,-136(s0)	# tmp161, test2
# problem41.c:23:     assert(func0(test2, 4) == false);
	addi	a5,s0,-144	#, tmp162,
	li	a1,4		#,
	mv	a0,a5	#, tmp162
	call	func0		#
	mv	a5,a0	# tmp163,
# problem41.c:23:     assert(func0(test2, 4) == false);
	xori	a5,a5,1	#, tmp164, _3
	andi	a5,a5,0xff	# _4, tmp164
	bne	a5,zero,.L12	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC8	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L12:
# problem41.c:25:     int test3[] = {1, 3, -2, 1};
	lla	a5,.LC2	# tmp165,
	ld	a4,0(a5)		# tmp166,
	sd	a4,-128(s0)	# tmp166, test3
	ld	a5,8(a5)		# tmp167,
	sd	a5,-120(s0)	# tmp167, test3
# problem41.c:26:     assert(func0(test3, 4) == true);
	addi	a5,s0,-128	#, tmp168,
	li	a1,4		#,
	mv	a0,a5	#, tmp168
	call	func0		#
	mv	a5,a0	# tmp169,
# problem41.c:26:     assert(func0(test3, 4) == true);
	bne	a5,zero,.L13	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC8	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L13:
# problem41.c:28:     int test4[] = {1, 2, 3, 7};
	lla	a5,.LC3	# tmp170,
	ld	a4,0(a5)		# tmp171,
	sd	a4,-112(s0)	# tmp171, test4
	ld	a5,8(a5)		# tmp172,
	sd	a5,-104(s0)	# tmp172, test4
# problem41.c:29:     assert(func0(test4, 4) == false);
	addi	a5,s0,-112	#, tmp173,
	li	a1,4		#,
	mv	a0,a5	#, tmp173
	call	func0		#
	mv	a5,a0	# tmp174,
# problem41.c:29:     assert(func0(test4, 4) == false);
	xori	a5,a5,1	#, tmp175, _6
	andi	a5,a5,0xff	# _7, tmp175
	bne	a5,zero,.L14	#, _7,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC8	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L14:
# problem41.c:31:     int test5[] = {1, 2, 5, 7};
	lla	a5,.LC4	# tmp176,
	ld	a4,0(a5)		# tmp177,
	sd	a4,-96(s0)	# tmp177, test5
	ld	a5,8(a5)		# tmp178,
	sd	a5,-88(s0)	# tmp178, test5
# problem41.c:32:     assert(func0(test5, 4) == false);
	addi	a5,s0,-96	#, tmp179,
	li	a1,4		#,
	mv	a0,a5	#, tmp179
	call	func0		#
	mv	a5,a0	# tmp180,
# problem41.c:32:     assert(func0(test5, 4) == false);
	xori	a5,a5,1	#, tmp181, _8
	andi	a5,a5,0xff	# _9, tmp181
	bne	a5,zero,.L15	#, _9,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC8	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L15:
# problem41.c:34:     int test6[] = {2, 4, -5, 3, 9, 7};
	lla	a5,.LC5	# tmp182,
	ld	a4,0(a5)		# tmp183,
	sd	a4,-48(s0)	# tmp183, test6
	ld	a4,8(a5)		# tmp184,
	sd	a4,-40(s0)	# tmp184, test6
	ld	a5,16(a5)		# tmp185,
	sd	a5,-32(s0)	# tmp185, test6
# problem41.c:35:     assert(func0(test6, 6) == true);
	addi	a5,s0,-48	#, tmp186,
	li	a1,6		#,
	mv	a0,a5	#, tmp186
	call	func0		#
	mv	a5,a0	# tmp187,
# problem41.c:35:     assert(func0(test6, 6) == true);
	bne	a5,zero,.L16	#, _10,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC8	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L16:
# problem41.c:37:     int test7[] = {1};
	li	a5,1		# tmp188,
	sw	a5,-168(s0)	# tmp188, test7[0]
# problem41.c:38:     assert(func0(test7, 1) == false);
	addi	a5,s0,-168	#, tmp189,
	li	a1,1		#,
	mv	a0,a5	#, tmp189
	call	func0		#
	mv	a5,a0	# tmp190,
# problem41.c:38:     assert(func0(test7, 1) == false);
	xori	a5,a5,1	#, tmp191, _11
	andi	a5,a5,0xff	# _12, tmp191
	bne	a5,zero,.L17	#, _12,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC8	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L17:
# problem41.c:40:     int test8[] = {1, 3, 5, -100};
	lla	a5,.LC6	# tmp192,
	ld	a4,0(a5)		# tmp193,
	sd	a4,-80(s0)	# tmp193, test8
	ld	a5,8(a5)		# tmp194,
	sd	a5,-72(s0)	# tmp194, test8
# problem41.c:41:     assert(func0(test8, 4) == false);
	addi	a5,s0,-80	#, tmp195,
	li	a1,4		#,
	mv	a0,a5	#, tmp195
	call	func0		#
	mv	a5,a0	# tmp196,
# problem41.c:41:     assert(func0(test8, 4) == false);
	xori	a5,a5,1	#, tmp197, _13
	andi	a5,a5,0xff	# _14, tmp197
	bne	a5,zero,.L18	#, _14,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC8	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L18:
# problem41.c:43:     int test9[] = {100, 3, 5, -100};
	lla	a5,.LC7	# tmp198,
	ld	a4,0(a5)		# tmp199,
	sd	a4,-64(s0)	# tmp199, test9
	ld	a5,8(a5)		# tmp200,
	sd	a5,-56(s0)	# tmp200, test9
# problem41.c:44:     assert(func0(test9, 4) == false);
	addi	a5,s0,-64	#, tmp201,
	li	a1,4		#,
	mv	a0,a5	#, tmp201
	call	func0		#
	mv	a5,a0	# tmp202,
# problem41.c:44:     assert(func0(test9, 4) == false);
	xori	a5,a5,1	#, tmp203, _15
	andi	a5,a5,0xff	# _16, tmp203
	bne	a5,zero,.L19	#, _16,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,44		#,
	lla	a1,.LC8	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L19:
# problem41.c:46:     return 0;
	li	a5,0		# _45,
# problem41.c:47: }
	mv	a4,a5	# <retval>, _45
	la	a5,__stack_chk_guard		# tmp205,
	ld	a3, -24(s0)	# tmp208, D.2800
	ld	a5, 0(a5)	# tmp206, __stack_chk_guard
	xor	a5, a3, a5	# tmp206, tmp208
	li	a3, 0	# tmp208
	beq	a5,zero,.L21	#, tmp206,,
	call	__stack_chk_fail@plt	#
.L21:
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
