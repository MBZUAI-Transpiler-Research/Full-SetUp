	.file	"problem44.c"
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
	mv	a5,a1	# tmp145, size
	sw	a5,-44(s0)	# tmp146, size
# problem44.c:5:     for (int i = 0; i < size; i++)
	sw	zero,-24(s0)	#, i
# problem44.c:5:     for (int i = 0; i < size; i++)
	j	.L2		#
.L7:
# problem44.c:6:         for (int j = i + 1; j < size; j++)
	lw	a5,-24(s0)		# tmp149, i
	addiw	a5,a5,1	#, tmp147, tmp148
	sw	a5,-20(s0)	# tmp147, j
# problem44.c:6:         for (int j = i + 1; j < size; j++)
	j	.L3		#
.L6:
# problem44.c:7:             if (l[i] + l[j] == 0) return true;
	lw	a5,-24(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp150, l
	add	a5,a4,a5	# _2, _3, tmp150
	lw	a4,0(a5)		# _4, *_3
# problem44.c:7:             if (l[i] + l[j] == 0) return true;
	lw	a5,-20(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	ld	a3,-40(s0)		# tmp151, l
	add	a5,a3,a5	# _6, _7, tmp151
	lw	a5,0(a5)		# _8, *_7
# problem44.c:7:             if (l[i] + l[j] == 0) return true;
	addw	a5,a4,a5	# _8, tmp152, _4
	sext.w	a5,a5	# _9, tmp152
# problem44.c:7:             if (l[i] + l[j] == 0) return true;
	bne	a5,zero,.L4	#, _9,,
# problem44.c:7:             if (l[i] + l[j] == 0) return true;
	li	a5,1		# _12,
# problem44.c:7:             if (l[i] + l[j] == 0) return true;
	j	.L5		#
.L4:
# problem44.c:6:         for (int j = i + 1; j < size; j++)
	lw	a5,-20(s0)		# tmp155, j
	addiw	a5,a5,1	#, tmp153, tmp154
	sw	a5,-20(s0)	# tmp153, j
.L3:
# problem44.c:6:         for (int j = i + 1; j < size; j++)
	lw	a5,-20(s0)		# tmp157, j
	mv	a4,a5	# tmp156, tmp157
	lw	a5,-44(s0)		# tmp159, size
	sext.w	a4,a4	# tmp160, tmp156
	sext.w	a5,a5	# tmp161, tmp158
	blt	a4,a5,.L6	#, tmp160, tmp161,
# problem44.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-24(s0)		# tmp164, i
	addiw	a5,a5,1	#, tmp162, tmp163
	sw	a5,-24(s0)	# tmp162, i
.L2:
# problem44.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-24(s0)		# tmp166, i
	mv	a4,a5	# tmp165, tmp166
	lw	a5,-44(s0)		# tmp168, size
	sext.w	a4,a4	# tmp169, tmp165
	sext.w	a5,a5	# tmp170, tmp167
	blt	a4,a5,.L7	#, tmp169, tmp170,
# problem44.c:8:     return false;
	li	a5,0		# _12,
.L5:
# problem44.c:9: }
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
	.string	"problem44.c"
	.align	3
.LC9:
	.string	"func0(test1, 4) == false"
	.align	3
.LC10:
	.string	"func0(test2, 4) == false"
	.align	3
.LC11:
	.string	"func0(test3, 4) == false"
	.align	3
.LC12:
	.string	"func0(test4, 6) == true"
	.align	3
.LC13:
	.string	"func0(test5, 1) == false"
	.align	3
.LC14:
	.string	"func0(test6, 6) == true"
	.align	3
.LC15:
	.string	"func0(test7, 6) == true"
	.align	3
.LC16:
	.string	"func0(test8, 6) == false"
	.align	3
.LC17:
	.string	"func0(test9, 6) == false"
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
	.word	-2
	.word	1
	.align	3
.LC2:
	.word	1
	.word	2
	.word	3
	.word	7
	.align	3
.LC3:
	.word	2
	.word	4
	.word	-5
	.word	3
	.word	5
	.word	7
	.align	3
.LC4:
	.word	-3
	.word	9
	.word	-1
	.word	3
	.word	2
	.word	30
	.align	3
.LC5:
	.word	-3
	.word	9
	.word	-1
	.word	3
	.word	2
	.word	31
	.align	3
.LC6:
	.word	-3
	.word	9
	.word	-1
	.word	4
	.word	2
	.word	30
	.align	3
.LC7:
	.word	-3
	.word	9
	.word	-1
	.word	4
	.word	2
	.word	31
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-208	#,,
	.cfi_def_cfa_offset 208
	sd	ra,200(sp)	#,
	sd	s0,192(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,208	#,,
	.cfi_def_cfa 8, 0
# problem44.c:17: int main() {
	la	a5,__stack_chk_guard		# tmp151,
	ld	a4, 0(a5)	# tmp209, __stack_chk_guard
	sd	a4, -24(s0)	# tmp209, D.2795
	li	a4, 0	# tmp209
# problem44.c:18:     int test1[] = {1, 3, 5, 0};
	lla	a5,.LC0	# tmp152,
	ld	a4,0(a5)		# tmp153,
	sd	a4,-192(s0)	# tmp153, test1
	ld	a5,8(a5)		# tmp154,
	sd	a5,-184(s0)	# tmp154, test1
# problem44.c:19:     assert(func0(test1, 4) == false);
	addi	a5,s0,-192	#, tmp155,
	li	a1,4		#,
	mv	a0,a5	#, tmp155
	call	func0		#
	mv	a5,a0	# tmp156,
# problem44.c:19:     assert(func0(test1, 4) == false);
	xori	a5,a5,1	#, tmp157, _1
	andi	a5,a5,0xff	# _2, tmp157
	bne	a5,zero,.L9	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC8	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L9:
# problem44.c:21:     int test2[] = {1, 3, -2, 1};
	lla	a5,.LC1	# tmp158,
	ld	a4,0(a5)		# tmp159,
	sd	a4,-176(s0)	# tmp159, test2
	ld	a5,8(a5)		# tmp160,
	sd	a5,-168(s0)	# tmp160, test2
# problem44.c:22:     assert(func0(test2, 4) == false);
	addi	a5,s0,-176	#, tmp161,
	li	a1,4		#,
	mv	a0,a5	#, tmp161
	call	func0		#
	mv	a5,a0	# tmp162,
# problem44.c:22:     assert(func0(test2, 4) == false);
	xori	a5,a5,1	#, tmp163, _3
	andi	a5,a5,0xff	# _4, tmp163
	bne	a5,zero,.L10	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC8	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L10:
# problem44.c:24:     int test3[] = {1, 2, 3, 7};
	lla	a5,.LC2	# tmp164,
	ld	a4,0(a5)		# tmp165,
	sd	a4,-160(s0)	# tmp165, test3
	ld	a5,8(a5)		# tmp166,
	sd	a5,-152(s0)	# tmp166, test3
# problem44.c:25:     assert(func0(test3, 4) == false);
	addi	a5,s0,-160	#, tmp167,
	li	a1,4		#,
	mv	a0,a5	#, tmp167
	call	func0		#
	mv	a5,a0	# tmp168,
# problem44.c:25:     assert(func0(test3, 4) == false);
	xori	a5,a5,1	#, tmp169, _5
	andi	a5,a5,0xff	# _6, tmp169
	bne	a5,zero,.L11	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC8	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L11:
# problem44.c:27:     int test4[] = {2, 4, -5, 3, 5, 7};
	lla	a5,.LC3	# tmp170,
	ld	a4,0(a5)		# tmp171,
	sd	a4,-144(s0)	# tmp171, test4
	ld	a4,8(a5)		# tmp172,
	sd	a4,-136(s0)	# tmp172, test4
	ld	a5,16(a5)		# tmp173,
	sd	a5,-128(s0)	# tmp173, test4
# problem44.c:28:     assert(func0(test4, 6) == true);
	addi	a5,s0,-144	#, tmp174,
	li	a1,6		#,
	mv	a0,a5	#, tmp174
	call	func0		#
	mv	a5,a0	# tmp175,
# problem44.c:28:     assert(func0(test4, 6) == true);
	bne	a5,zero,.L12	#, _7,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC8	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L12:
# problem44.c:30:     int test5[] = {1};
	li	a5,1		# tmp176,
	sw	a5,-200(s0)	# tmp176, test5[0]
# problem44.c:31:     assert(func0(test5, 1) == false);
	addi	a5,s0,-200	#, tmp177,
	li	a1,1		#,
	mv	a0,a5	#, tmp177
	call	func0		#
	mv	a5,a0	# tmp178,
# problem44.c:31:     assert(func0(test5, 1) == false);
	xori	a5,a5,1	#, tmp179, _8
	andi	a5,a5,0xff	# _9, tmp179
	bne	a5,zero,.L13	#, _9,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC8	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L13:
# problem44.c:33:     int test6[] = {-3, 9, -1, 3, 2, 30};
	lla	a5,.LC4	# tmp180,
	ld	a4,0(a5)		# tmp181,
	sd	a4,-120(s0)	# tmp181, test6
	ld	a4,8(a5)		# tmp182,
	sd	a4,-112(s0)	# tmp182, test6
	ld	a5,16(a5)		# tmp183,
	sd	a5,-104(s0)	# tmp183, test6
# problem44.c:34:     assert(func0(test6, 6) == true);
	addi	a5,s0,-120	#, tmp184,
	li	a1,6		#,
	mv	a0,a5	#, tmp184
	call	func0		#
	mv	a5,a0	# tmp185,
# problem44.c:34:     assert(func0(test6, 6) == true);
	bne	a5,zero,.L14	#, _10,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC8	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L14:
# problem44.c:36:     int test7[] = {-3, 9, -1, 3, 2, 31};
	lla	a5,.LC5	# tmp186,
	ld	a4,0(a5)		# tmp187,
	sd	a4,-96(s0)	# tmp187, test7
	ld	a4,8(a5)		# tmp188,
	sd	a4,-88(s0)	# tmp188, test7
	ld	a5,16(a5)		# tmp189,
	sd	a5,-80(s0)	# tmp189, test7
# problem44.c:37:     assert(func0(test7, 6) == true);
	addi	a5,s0,-96	#, tmp190,
	li	a1,6		#,
	mv	a0,a5	#, tmp190
	call	func0		#
	mv	a5,a0	# tmp191,
# problem44.c:37:     assert(func0(test7, 6) == true);
	bne	a5,zero,.L15	#, _11,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC8	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L15:
# problem44.c:39:     int test8[] = {-3, 9, -1, 4, 2, 30};
	lla	a5,.LC6	# tmp192,
	ld	a4,0(a5)		# tmp193,
	sd	a4,-72(s0)	# tmp193, test8
	ld	a4,8(a5)		# tmp194,
	sd	a4,-64(s0)	# tmp194, test8
	ld	a5,16(a5)		# tmp195,
	sd	a5,-56(s0)	# tmp195, test8
# problem44.c:40:     assert(func0(test8, 6) == false);
	addi	a5,s0,-72	#, tmp196,
	li	a1,6		#,
	mv	a0,a5	#, tmp196
	call	func0		#
	mv	a5,a0	# tmp197,
# problem44.c:40:     assert(func0(test8, 6) == false);
	xori	a5,a5,1	#, tmp198, _12
	andi	a5,a5,0xff	# _13, tmp198
	bne	a5,zero,.L16	#, _13,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC8	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L16:
# problem44.c:42:     int test9[] = {-3, 9, -1, 4, 2, 31};
	lla	a5,.LC7	# tmp199,
	ld	a4,0(a5)		# tmp200,
	sd	a4,-48(s0)	# tmp200, test9
	ld	a4,8(a5)		# tmp201,
	sd	a4,-40(s0)	# tmp201, test9
	ld	a5,16(a5)		# tmp202,
	sd	a5,-32(s0)	# tmp202, test9
# problem44.c:43:     assert(func0(test9, 6) == false);
	addi	a5,s0,-48	#, tmp203,
	li	a1,6		#,
	mv	a0,a5	#, tmp203
	call	func0		#
	mv	a5,a0	# tmp204,
# problem44.c:43:     assert(func0(test9, 6) == false);
	xori	a5,a5,1	#, tmp205, _14
	andi	a5,a5,0xff	# _15, tmp205
	bne	a5,zero,.L17	#, _15,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,43		#,
	lla	a1,.LC8	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L17:
# problem44.c:45:     return 0;
	li	a5,0		# _44,
# problem44.c:46: }
	mv	a4,a5	# <retval>, _44
	la	a5,__stack_chk_guard		# tmp207,
	ld	a3, -24(s0)	# tmp210, D.2795
	ld	a5, 0(a5)	# tmp208, __stack_chk_guard
	xor	a5, a3, a5	# tmp208, tmp210
	li	a3, 0	# tmp210
	beq	a5,zero,.L19	#, tmp208,,
	call	__stack_chk_fail@plt	#
.L19:
	mv	a0,a4	#, <retval>
	ld	ra,200(sp)		#,
	.cfi_restore 1
	ld	s0,192(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 208
	addi	sp,sp,208	#,,
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
