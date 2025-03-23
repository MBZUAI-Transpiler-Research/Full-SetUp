	.file	"problem41.c"
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
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# l, l
	mv	a5,a1	# tmp88, size
	sw	a5,-44(s0)	# tmp89, size
# problem41.c:5:     for (int i = 0; i < size; i++)
	sw	zero,-28(s0)	#, i
# problem41.c:5:     for (int i = 0; i < size; i++)
	j	.L2		#
.L9:
# problem41.c:6:         for (int j = i + 1; j < size; j++)
	lw	a5,-28(s0)		# tmp92, i
	addiw	a5,a5,1	#, tmp90, tmp91
	sw	a5,-24(s0)	# tmp90, j
# problem41.c:6:         for (int j = i + 1; j < size; j++)
	j	.L3		#
.L8:
# problem41.c:7:             for (int k = j + 1; k < size; k++)
	lw	a5,-24(s0)		# tmp95, j
	addiw	a5,a5,1	#, tmp93, tmp94
	sw	a5,-20(s0)	# tmp93, k
# problem41.c:7:             for (int k = j + 1; k < size; k++)
	j	.L4		#
.L7:
# problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	lw	a5,-28(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp96, l
	add	a5,a4,a5	# _2, _3, tmp96
	lw	a4,0(a5)		# _4, *_3
# problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	lw	a5,-24(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	ld	a3,-40(s0)		# tmp97, l
	add	a5,a3,a5	# _6, _7, tmp97
	lw	a5,0(a5)		# _8, *_7
# problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	addw	a5,a4,a5	# _8, tmp98, _4
	sext.w	a4,a5	# _9, tmp98
# problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	lw	a5,-20(s0)		# _10, k
	slli	a5,a5,2	#, _11, _10
	ld	a3,-40(s0)		# tmp99, l
	add	a5,a3,a5	# _11, _12, tmp99
	lw	a5,0(a5)		# _13, *_12
# problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	addw	a5,a4,a5	# _13, tmp100, _9
	sext.w	a5,a5	# _14, tmp100
# problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	bne	a5,zero,.L5	#, _14,,
# problem41.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	li	a5,1		# _18,
	j	.L6		#
.L5:
# problem41.c:7:             for (int k = j + 1; k < size; k++)
	lw	a5,-20(s0)		# tmp103, k
	addiw	a5,a5,1	#, tmp101, tmp102
	sw	a5,-20(s0)	# tmp101, k
.L4:
# problem41.c:7:             for (int k = j + 1; k < size; k++)
	lw	a5,-20(s0)		# tmp105, k
	mv	a4,a5	# tmp104, tmp105
	lw	a5,-44(s0)		# tmp107, size
	sext.w	a4,a4	# tmp108, tmp104
	sext.w	a5,a5	# tmp109, tmp106
	blt	a4,a5,.L7	#, tmp108, tmp109,
# problem41.c:6:         for (int j = i + 1; j < size; j++)
	lw	a5,-24(s0)		# tmp112, j
	addiw	a5,a5,1	#, tmp110, tmp111
	sw	a5,-24(s0)	# tmp110, j
.L3:
# problem41.c:6:         for (int j = i + 1; j < size; j++)
	lw	a5,-24(s0)		# tmp114, j
	mv	a4,a5	# tmp113, tmp114
	lw	a5,-44(s0)		# tmp116, size
	sext.w	a4,a4	# tmp117, tmp113
	sext.w	a5,a5	# tmp118, tmp115
	blt	a4,a5,.L8	#, tmp117, tmp118,
# problem41.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-28(s0)		# tmp121, i
	addiw	a5,a5,1	#, tmp119, tmp120
	sw	a5,-28(s0)	# tmp119, i
.L2:
# problem41.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-28(s0)		# tmp123, i
	mv	a4,a5	# tmp122, tmp123
	lw	a5,-44(s0)		# tmp125, size
	sext.w	a4,a4	# tmp126, tmp122
	sext.w	a5,a5	# tmp127, tmp124
	blt	a4,a5,.L9	#, tmp126, tmp127,
# problem41.c:9:     return false;
	li	a5,0		# _18,
.L6:
# problem41.c:10: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
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
	addi	sp,sp,-176	#,,
	sd	ra,168(sp)	#,
	sd	s0,160(sp)	#,
	addi	s0,sp,176	#,,
# problem41.c:18: int main() {
	la	a5,__stack_chk_guard		# tmp90,
	ld	a4, 0(a5)	# tmp145, __stack_chk_guard
	sd	a4, -24(s0)	# tmp145, D.1982
	li	a4, 0	# tmp145
# problem41.c:19:     int test1[] = {1, 3, 5, 0};
	lla	a5,.LC0	# tmp91,
	ld	a4,0(a5)		# tmp92,
	sd	a4,-160(s0)	# tmp92, test1
	ld	a5,8(a5)		# tmp93,
	sd	a5,-152(s0)	# tmp93, test1
# problem41.c:20:     assert(func0(test1, 4) == false);
	addi	a5,s0,-160	#, tmp94,
	li	a1,4		#,
	mv	a0,a5	#, tmp94
	call	func0		#
	mv	a5,a0	# tmp95,
	xori	a5,a5,1	#, tmp96, _1
	andi	a5,a5,0xff	# _2, tmp96
	bne	a5,zero,.L11	#, _2,,
# problem41.c:20:     assert(func0(test1, 4) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC8	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L11:
# problem41.c:22:     int test2[] = {1, 3, 5, -1};
	lla	a5,.LC1	# tmp97,
	ld	a4,0(a5)		# tmp98,
	sd	a4,-144(s0)	# tmp98, test2
	ld	a5,8(a5)		# tmp99,
	sd	a5,-136(s0)	# tmp99, test2
# problem41.c:23:     assert(func0(test2, 4) == false);
	addi	a5,s0,-144	#, tmp100,
	li	a1,4		#,
	mv	a0,a5	#, tmp100
	call	func0		#
	mv	a5,a0	# tmp101,
	xori	a5,a5,1	#, tmp102, _3
	andi	a5,a5,0xff	# _4, tmp102
	bne	a5,zero,.L12	#, _4,,
# problem41.c:23:     assert(func0(test2, 4) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC8	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L12:
# problem41.c:25:     int test3[] = {1, 3, -2, 1};
	lla	a5,.LC2	# tmp103,
	ld	a4,0(a5)		# tmp104,
	sd	a4,-128(s0)	# tmp104, test3
	ld	a5,8(a5)		# tmp105,
	sd	a5,-120(s0)	# tmp105, test3
# problem41.c:26:     assert(func0(test3, 4) == true);
	addi	a5,s0,-128	#, tmp106,
	li	a1,4		#,
	mv	a0,a5	#, tmp106
	call	func0		#
	mv	a5,a0	# tmp107,
	bne	a5,zero,.L13	#, _5,,
# problem41.c:26:     assert(func0(test3, 4) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC8	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L13:
# problem41.c:28:     int test4[] = {1, 2, 3, 7};
	lla	a5,.LC3	# tmp108,
	ld	a4,0(a5)		# tmp109,
	sd	a4,-112(s0)	# tmp109, test4
	ld	a5,8(a5)		# tmp110,
	sd	a5,-104(s0)	# tmp110, test4
# problem41.c:29:     assert(func0(test4, 4) == false);
	addi	a5,s0,-112	#, tmp111,
	li	a1,4		#,
	mv	a0,a5	#, tmp111
	call	func0		#
	mv	a5,a0	# tmp112,
	xori	a5,a5,1	#, tmp113, _6
	andi	a5,a5,0xff	# _7, tmp113
	bne	a5,zero,.L14	#, _7,,
# problem41.c:29:     assert(func0(test4, 4) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC8	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L14:
# problem41.c:31:     int test5[] = {1, 2, 5, 7};
	lla	a5,.LC4	# tmp114,
	ld	a4,0(a5)		# tmp115,
	sd	a4,-96(s0)	# tmp115, test5
	ld	a5,8(a5)		# tmp116,
	sd	a5,-88(s0)	# tmp116, test5
# problem41.c:32:     assert(func0(test5, 4) == false);
	addi	a5,s0,-96	#, tmp117,
	li	a1,4		#,
	mv	a0,a5	#, tmp117
	call	func0		#
	mv	a5,a0	# tmp118,
	xori	a5,a5,1	#, tmp119, _8
	andi	a5,a5,0xff	# _9, tmp119
	bne	a5,zero,.L15	#, _9,,
# problem41.c:32:     assert(func0(test5, 4) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC8	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L15:
# problem41.c:34:     int test6[] = {2, 4, -5, 3, 9, 7};
	lla	a5,.LC5	# tmp120,
	ld	a4,0(a5)		# tmp121,
	sd	a4,-48(s0)	# tmp121, test6
	ld	a4,8(a5)		# tmp122,
	sd	a4,-40(s0)	# tmp122, test6
	ld	a5,16(a5)		# tmp123,
	sd	a5,-32(s0)	# tmp123, test6
# problem41.c:35:     assert(func0(test6, 6) == true);
	addi	a5,s0,-48	#, tmp124,
	li	a1,6		#,
	mv	a0,a5	#, tmp124
	call	func0		#
	mv	a5,a0	# tmp125,
	bne	a5,zero,.L16	#, _10,,
# problem41.c:35:     assert(func0(test6, 6) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC8	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L16:
# problem41.c:37:     int test7[] = {1};
	li	a5,1		# tmp126,
	sw	a5,-168(s0)	# tmp126, test7[0]
# problem41.c:38:     assert(func0(test7, 1) == false);
	addi	a5,s0,-168	#, tmp127,
	li	a1,1		#,
	mv	a0,a5	#, tmp127
	call	func0		#
	mv	a5,a0	# tmp128,
	xori	a5,a5,1	#, tmp129, _11
	andi	a5,a5,0xff	# _12, tmp129
	bne	a5,zero,.L17	#, _12,,
# problem41.c:38:     assert(func0(test7, 1) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC8	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L17:
# problem41.c:40:     int test8[] = {1, 3, 5, -100};
	lla	a5,.LC6	# tmp130,
	ld	a4,0(a5)		# tmp131,
	sd	a4,-80(s0)	# tmp131, test8
	ld	a5,8(a5)		# tmp132,
	sd	a5,-72(s0)	# tmp132, test8
# problem41.c:41:     assert(func0(test8, 4) == false);
	addi	a5,s0,-80	#, tmp133,
	li	a1,4		#,
	mv	a0,a5	#, tmp133
	call	func0		#
	mv	a5,a0	# tmp134,
	xori	a5,a5,1	#, tmp135, _13
	andi	a5,a5,0xff	# _14, tmp135
	bne	a5,zero,.L18	#, _14,,
# problem41.c:41:     assert(func0(test8, 4) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC8	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L18:
# problem41.c:43:     int test9[] = {100, 3, 5, -100};
	lla	a5,.LC7	# tmp136,
	ld	a4,0(a5)		# tmp137,
	sd	a4,-64(s0)	# tmp137, test9
	ld	a5,8(a5)		# tmp138,
	sd	a5,-56(s0)	# tmp138, test9
# problem41.c:44:     assert(func0(test9, 4) == false);
	addi	a5,s0,-64	#, tmp139,
	li	a1,4		#,
	mv	a0,a5	#, tmp139
	call	func0		#
	mv	a5,a0	# tmp140,
	xori	a5,a5,1	#, tmp141, _15
	andi	a5,a5,0xff	# _16, tmp141
	bne	a5,zero,.L19	#, _16,,
# problem41.c:44:     assert(func0(test9, 4) == false);
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
	la	a5,__stack_chk_guard		# tmp143,
	ld	a3, -24(s0)	# tmp146, D.1982
	ld	a5, 0(a5)	# tmp144, __stack_chk_guard
	xor	a5, a3, a5	# tmp144, tmp146
	li	a3, 0	# tmp146
	beq	a5,zero,.L21	#, tmp144,,
	call	__stack_chk_fail@plt	#
.L21:
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
