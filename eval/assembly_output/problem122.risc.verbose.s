	.file	"problem122.c"
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
	sd	a0,-40(s0)	# lst, lst
	mv	a5,a1	# tmp148, size
	sw	a5,-44(s0)	# tmp149, size
# problem122.c:4:     int sum = 0;
	sw	zero,-24(s0)	#, sum
# problem122.c:5:     for (int i = 0; i * 2 < size; i++)
	sw	zero,-20(s0)	#, i
# problem122.c:5:     for (int i = 0; i * 2 < size; i++)
	j	.L2		#
.L4:
# problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	lw	a5,-20(s0)		# tmp152, i
	slliw	a5,a5,1	#, tmp150, tmp151
	sext.w	a5,a5	# _1, tmp150
# problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	slli	a5,a5,2	#, _3, _2
	ld	a4,-40(s0)		# tmp153, lst
	add	a5,a4,a5	# _3, _4, tmp153
	lw	a5,0(a5)		# _5, *_4
# problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	mv	a4,a5	# tmp155, _5
	sraiw	a5,a4,31	#, tmp156, tmp155
	srliw	a5,a5,31	#, tmp157, tmp156
	addw	a4,a4,a5	# tmp157, tmp158, tmp155
	andi	a4,a4,1	#, tmp159, tmp158
	subw	a5,a4,a5	# tmp160, tmp159, tmp157
	sext.w	a5,a5	# _6, tmp160
# problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	mv	a4,a5	# tmp161, _6
	li	a5,1		# tmp162,
	bne	a4,a5,.L3	#, tmp161, tmp162,
# problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	lw	a5,-20(s0)		# tmp165, i
	slliw	a5,a5,1	#, tmp163, tmp164
	sext.w	a5,a5	# _7, tmp163
# problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	slli	a5,a5,2	#, _9, _8
	ld	a4,-40(s0)		# tmp166, lst
	add	a5,a4,a5	# _9, _10, tmp166
	lw	a5,0(a5)		# _11, *_10
# problem122.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	lw	a4,-24(s0)		# tmp169, sum
	addw	a5,a4,a5	# _11, tmp167, tmp168
	sw	a5,-24(s0)	# tmp167, sum
.L3:
# problem122.c:5:     for (int i = 0; i * 2 < size; i++)
	lw	a5,-20(s0)		# tmp172, i
	addiw	a5,a5,1	#, tmp170, tmp171
	sw	a5,-20(s0)	# tmp170, i
.L2:
# problem122.c:5:     for (int i = 0; i * 2 < size; i++)
	lw	a5,-20(s0)		# tmp175, i
	slliw	a5,a5,1	#, tmp173, tmp174
	sext.w	a4,a5	# _12, tmp173
# problem122.c:5:     for (int i = 0; i * 2 < size; i++)
	lw	a5,-44(s0)		# tmp177, size
	sext.w	a5,a5	# tmp178, tmp176
	bgt	a5,a4,.L4	#, tmp178, tmp179,
# problem122.c:7:     return sum;
	lw	a5,-24(s0)		# _19, sum
# problem122.c:8: }
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
.LC5:
	.string	"problem122.c"
	.align	3
.LC6:
	.string	"func0(test1, 4) == 12"
	.align	3
.LC7:
	.string	"func0(test2, 5) == 9"
	.align	3
.LC8:
	.string	"func0(test3, 4) == 0"
	.align	3
.LC9:
	.string	"func0(test4, 2) == 5"
	.align	3
.LC10:
	.string	"func0(test5, 3) == 0"
	.align	3
.LC11:
	.string	"func0(test6, 4) == 23"
	.align	3
.LC12:
	.string	"func0(test7, 4) == 3"
	.align	3
.LC0:
	.word	5
	.word	8
	.word	7
	.word	1
	.align	3
.LC1:
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.align	3
.LC2:
	.word	30
	.word	13
	.word	24
	.word	321
	.align	3
.LC3:
	.word	30
	.word	13
	.word	23
	.word	32
	.align	3
.LC4:
	.word	3
	.word	13
	.word	2
	.word	9
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-144	#,,
	.cfi_def_cfa_offset 144
	sd	ra,136(sp)	#,
	sd	s0,128(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,144	#,,
	.cfi_def_cfa 8, 0
# problem122.c:14: int main() {
	la	a5,__stack_chk_guard		# tmp143,
	ld	a4, 0(a5)	# tmp192, __stack_chk_guard
	sd	a4, -24(s0)	# tmp192, D.2780
	li	a4, 0	# tmp192
# problem122.c:15:     int test1[] = {5, 8, 7, 1};
	lla	a5,.LC0	# tmp144,
	ld	a4,0(a5)		# tmp145,
	sd	a4,-112(s0)	# tmp145, test1
	ld	a5,8(a5)		# tmp146,
	sd	a5,-104(s0)	# tmp146, test1
# problem122.c:16:     assert(func0(test1, 4) == 12);
	addi	a5,s0,-112	#, tmp147,
	li	a1,4		#,
	mv	a0,a5	#, tmp147
	call	func0		#
	mv	a5,a0	# tmp148,
# problem122.c:16:     assert(func0(test1, 4) == 12);
	mv	a4,a5	# tmp149, _1
	li	a5,12		# tmp150,
	beq	a4,a5,.L7	#, tmp149, tmp150,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC5	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L7:
# problem122.c:18:     int test2[] = {3, 3, 3, 3, 3};
	lla	a5,.LC1	# tmp151,
	ld	a4,0(a5)		# tmp152,
	sd	a4,-48(s0)	# tmp152, test2
	ld	a4,8(a5)		# tmp153,
	sd	a4,-40(s0)	# tmp153, test2
	lw	a5,16(a5)		# tmp154,
	sw	a5,-32(s0)	# tmp154, test2
# problem122.c:19:     assert(func0(test2, 5) == 9);
	addi	a5,s0,-48	#, tmp155,
	li	a1,5		#,
	mv	a0,a5	#, tmp155
	call	func0		#
	mv	a5,a0	# tmp156,
# problem122.c:19:     assert(func0(test2, 5) == 9);
	mv	a4,a5	# tmp157, _2
	li	a5,9		# tmp158,
	beq	a4,a5,.L8	#, tmp157, tmp158,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC5	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L8:
# problem122.c:21:     int test3[] = {30, 13, 24, 321};
	lla	a5,.LC2	# tmp159,
	ld	a4,0(a5)		# tmp160,
	sd	a4,-96(s0)	# tmp160, test3
	ld	a5,8(a5)		# tmp161,
	sd	a5,-88(s0)	# tmp161, test3
# problem122.c:22:     assert(func0(test3, 4) == 0);
	addi	a5,s0,-96	#, tmp162,
	li	a1,4		#,
	mv	a0,a5	#, tmp162
	call	func0		#
	mv	a5,a0	# tmp163,
# problem122.c:22:     assert(func0(test3, 4) == 0);
	beq	a5,zero,.L9	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC5	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L9:
# problem122.c:24:     int test4[] = {5, 9};
	li	a5,5		# tmp164,
	sw	a5,-136(s0)	# tmp164, test4[0]
	li	a5,9		# tmp165,
	sw	a5,-132(s0)	# tmp165, test4[1]
# problem122.c:25:     assert(func0(test4, 2) == 5);
	addi	a5,s0,-136	#, tmp166,
	li	a1,2		#,
	mv	a0,a5	#, tmp166
	call	func0		#
	mv	a5,a0	# tmp167,
# problem122.c:25:     assert(func0(test4, 2) == 5);
	mv	a4,a5	# tmp168, _4
	li	a5,5		# tmp169,
	beq	a4,a5,.L10	#, tmp168, tmp169,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC5	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L10:
# problem122.c:27:     int test5[] = {2, 4, 8};
	li	a5,2		# tmp170,
	sw	a5,-128(s0)	# tmp170, test5[0]
	li	a5,4		# tmp171,
	sw	a5,-124(s0)	# tmp171, test5[1]
	li	a5,8		# tmp172,
	sw	a5,-120(s0)	# tmp172, test5[2]
# problem122.c:28:     assert(func0(test5, 3) == 0);
	addi	a5,s0,-128	#, tmp173,
	li	a1,3		#,
	mv	a0,a5	#, tmp173
	call	func0		#
	mv	a5,a0	# tmp174,
# problem122.c:28:     assert(func0(test5, 3) == 0);
	beq	a5,zero,.L11	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC5	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L11:
# problem122.c:30:     int test6[] = {30, 13, 23, 32};
	lla	a5,.LC3	# tmp175,
	ld	a4,0(a5)		# tmp176,
	sd	a4,-80(s0)	# tmp176, test6
	ld	a5,8(a5)		# tmp177,
	sd	a5,-72(s0)	# tmp177, test6
# problem122.c:31:     assert(func0(test6, 4) == 23);
	addi	a5,s0,-80	#, tmp178,
	li	a1,4		#,
	mv	a0,a5	#, tmp178
	call	func0		#
	mv	a5,a0	# tmp179,
# problem122.c:31:     assert(func0(test6, 4) == 23);
	mv	a4,a5	# tmp180, _6
	li	a5,23		# tmp181,
	beq	a4,a5,.L12	#, tmp180, tmp181,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC5	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L12:
# problem122.c:33:     int test7[] = {3, 13, 2, 9};
	lla	a5,.LC4	# tmp182,
	ld	a4,0(a5)		# tmp183,
	sd	a4,-64(s0)	# tmp183, test7
	ld	a5,8(a5)		# tmp184,
	sd	a5,-56(s0)	# tmp184, test7
# problem122.c:34:     assert(func0(test7, 4) == 3);
	addi	a5,s0,-64	#, tmp185,
	li	a1,4		#,
	mv	a0,a5	#, tmp185
	call	func0		#
	mv	a5,a0	# tmp186,
# problem122.c:34:     assert(func0(test7, 4) == 3);
	mv	a4,a5	# tmp187, _7
	li	a5,3		# tmp188,
	beq	a4,a5,.L13	#, tmp187, tmp188,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC5	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L13:
# problem122.c:36:     return 0;
	li	a5,0		# _33,
# problem122.c:37: }
	mv	a4,a5	# <retval>, _33
	la	a5,__stack_chk_guard		# tmp190,
	ld	a3, -24(s0)	# tmp193, D.2780
	ld	a5, 0(a5)	# tmp191, __stack_chk_guard
	xor	a5, a3, a5	# tmp191, tmp193
	li	a3, 0	# tmp193
	beq	a5,zero,.L15	#, tmp191,,
	call	__stack_chk_fail@plt	#
.L15:
	mv	a0,a4	#, <retval>
	ld	ra,136(sp)		#,
	.cfi_restore 1
	ld	s0,128(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144	#,,
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
