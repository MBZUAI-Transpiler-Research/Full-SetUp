	.file	"problem44.c"
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
	mv	a5,a1	# tmp83, size
	sw	a5,-44(s0)	# tmp84, size
# problem44.c:5:     for (int i = 0; i < size; i++)
	sw	zero,-24(s0)	#, i
# problem44.c:5:     for (int i = 0; i < size; i++)
	j	.L2		#
.L7:
# problem44.c:6:         for (int j = i + 1; j < size; j++)
	lw	a5,-24(s0)		# tmp87, i
	addiw	a5,a5,1	#, tmp85, tmp86
	sw	a5,-20(s0)	# tmp85, j
# problem44.c:6:         for (int j = i + 1; j < size; j++)
	j	.L3		#
.L6:
# problem44.c:7:             if (l[i] + l[j] == 0) return true;
	lw	a5,-24(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp88, l
	add	a5,a4,a5	# _2, _3, tmp88
	lw	a4,0(a5)		# _4, *_3
# problem44.c:7:             if (l[i] + l[j] == 0) return true;
	lw	a5,-20(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	ld	a3,-40(s0)		# tmp89, l
	add	a5,a3,a5	# _6, _7, tmp89
	lw	a5,0(a5)		# _8, *_7
# problem44.c:7:             if (l[i] + l[j] == 0) return true;
	addw	a5,a4,a5	# _8, tmp90, _4
	sext.w	a5,a5	# _9, tmp90
# problem44.c:7:             if (l[i] + l[j] == 0) return true;
	bne	a5,zero,.L4	#, _9,,
# problem44.c:7:             if (l[i] + l[j] == 0) return true;
	li	a5,1		# _12,
	j	.L5		#
.L4:
# problem44.c:6:         for (int j = i + 1; j < size; j++)
	lw	a5,-20(s0)		# tmp93, j
	addiw	a5,a5,1	#, tmp91, tmp92
	sw	a5,-20(s0)	# tmp91, j
.L3:
# problem44.c:6:         for (int j = i + 1; j < size; j++)
	lw	a5,-20(s0)		# tmp95, j
	mv	a4,a5	# tmp94, tmp95
	lw	a5,-44(s0)		# tmp97, size
	sext.w	a4,a4	# tmp98, tmp94
	sext.w	a5,a5	# tmp99, tmp96
	blt	a4,a5,.L6	#, tmp98, tmp99,
# problem44.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-24(s0)		# tmp102, i
	addiw	a5,a5,1	#, tmp100, tmp101
	sw	a5,-24(s0)	# tmp100, i
.L2:
# problem44.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-24(s0)		# tmp104, i
	mv	a4,a5	# tmp103, tmp104
	lw	a5,-44(s0)		# tmp106, size
	sext.w	a4,a4	# tmp107, tmp103
	sext.w	a5,a5	# tmp108, tmp105
	blt	a4,a5,.L7	#, tmp107, tmp108,
# problem44.c:8:     return false;
	li	a5,0		# _12,
.L5:
# problem44.c:9: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
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
	addi	sp,sp,-208	#,,
	sd	ra,200(sp)	#,
	sd	s0,192(sp)	#,
	addi	s0,sp,208	#,,
# problem44.c:17: int main() {
	la	a5,__stack_chk_guard		# tmp89,
	ld	a4, 0(a5)	# tmp147, __stack_chk_guard
	sd	a4, -24(s0)	# tmp147, D.1977
	li	a4, 0	# tmp147
# problem44.c:18:     int test1[] = {1, 3, 5, 0};
	lla	a5,.LC0	# tmp90,
	ld	a4,0(a5)		# tmp91,
	sd	a4,-192(s0)	# tmp91, test1
	ld	a5,8(a5)		# tmp92,
	sd	a5,-184(s0)	# tmp92, test1
# problem44.c:19:     assert(func0(test1, 4) == false);
	addi	a5,s0,-192	#, tmp93,
	li	a1,4		#,
	mv	a0,a5	#, tmp93
	call	func0		#
	mv	a5,a0	# tmp94,
	xori	a5,a5,1	#, tmp95, _1
	andi	a5,a5,0xff	# _2, tmp95
	bne	a5,zero,.L9	#, _2,,
# problem44.c:19:     assert(func0(test1, 4) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC8	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L9:
# problem44.c:21:     int test2[] = {1, 3, -2, 1};
	lla	a5,.LC1	# tmp96,
	ld	a4,0(a5)		# tmp97,
	sd	a4,-176(s0)	# tmp97, test2
	ld	a5,8(a5)		# tmp98,
	sd	a5,-168(s0)	# tmp98, test2
# problem44.c:22:     assert(func0(test2, 4) == false);
	addi	a5,s0,-176	#, tmp99,
	li	a1,4		#,
	mv	a0,a5	#, tmp99
	call	func0		#
	mv	a5,a0	# tmp100,
	xori	a5,a5,1	#, tmp101, _3
	andi	a5,a5,0xff	# _4, tmp101
	bne	a5,zero,.L10	#, _4,,
# problem44.c:22:     assert(func0(test2, 4) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC8	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L10:
# problem44.c:24:     int test3[] = {1, 2, 3, 7};
	lla	a5,.LC2	# tmp102,
	ld	a4,0(a5)		# tmp103,
	sd	a4,-160(s0)	# tmp103, test3
	ld	a5,8(a5)		# tmp104,
	sd	a5,-152(s0)	# tmp104, test3
# problem44.c:25:     assert(func0(test3, 4) == false);
	addi	a5,s0,-160	#, tmp105,
	li	a1,4		#,
	mv	a0,a5	#, tmp105
	call	func0		#
	mv	a5,a0	# tmp106,
	xori	a5,a5,1	#, tmp107, _5
	andi	a5,a5,0xff	# _6, tmp107
	bne	a5,zero,.L11	#, _6,,
# problem44.c:25:     assert(func0(test3, 4) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC8	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L11:
# problem44.c:27:     int test4[] = {2, 4, -5, 3, 5, 7};
	lla	a5,.LC3	# tmp108,
	ld	a4,0(a5)		# tmp109,
	sd	a4,-144(s0)	# tmp109, test4
	ld	a4,8(a5)		# tmp110,
	sd	a4,-136(s0)	# tmp110, test4
	ld	a5,16(a5)		# tmp111,
	sd	a5,-128(s0)	# tmp111, test4
# problem44.c:28:     assert(func0(test4, 6) == true);
	addi	a5,s0,-144	#, tmp112,
	li	a1,6		#,
	mv	a0,a5	#, tmp112
	call	func0		#
	mv	a5,a0	# tmp113,
	bne	a5,zero,.L12	#, _7,,
# problem44.c:28:     assert(func0(test4, 6) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC8	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L12:
# problem44.c:30:     int test5[] = {1};
	li	a5,1		# tmp114,
	sw	a5,-200(s0)	# tmp114, test5[0]
# problem44.c:31:     assert(func0(test5, 1) == false);
	addi	a5,s0,-200	#, tmp115,
	li	a1,1		#,
	mv	a0,a5	#, tmp115
	call	func0		#
	mv	a5,a0	# tmp116,
	xori	a5,a5,1	#, tmp117, _8
	andi	a5,a5,0xff	# _9, tmp117
	bne	a5,zero,.L13	#, _9,,
# problem44.c:31:     assert(func0(test5, 1) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC8	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L13:
# problem44.c:33:     int test6[] = {-3, 9, -1, 3, 2, 30};
	lla	a5,.LC4	# tmp118,
	ld	a4,0(a5)		# tmp119,
	sd	a4,-120(s0)	# tmp119, test6
	ld	a4,8(a5)		# tmp120,
	sd	a4,-112(s0)	# tmp120, test6
	ld	a5,16(a5)		# tmp121,
	sd	a5,-104(s0)	# tmp121, test6
# problem44.c:34:     assert(func0(test6, 6) == true);
	addi	a5,s0,-120	#, tmp122,
	li	a1,6		#,
	mv	a0,a5	#, tmp122
	call	func0		#
	mv	a5,a0	# tmp123,
	bne	a5,zero,.L14	#, _10,,
# problem44.c:34:     assert(func0(test6, 6) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC8	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L14:
# problem44.c:36:     int test7[] = {-3, 9, -1, 3, 2, 31};
	lla	a5,.LC5	# tmp124,
	ld	a4,0(a5)		# tmp125,
	sd	a4,-96(s0)	# tmp125, test7
	ld	a4,8(a5)		# tmp126,
	sd	a4,-88(s0)	# tmp126, test7
	ld	a5,16(a5)		# tmp127,
	sd	a5,-80(s0)	# tmp127, test7
# problem44.c:37:     assert(func0(test7, 6) == true);
	addi	a5,s0,-96	#, tmp128,
	li	a1,6		#,
	mv	a0,a5	#, tmp128
	call	func0		#
	mv	a5,a0	# tmp129,
	bne	a5,zero,.L15	#, _11,,
# problem44.c:37:     assert(func0(test7, 6) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC8	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L15:
# problem44.c:39:     int test8[] = {-3, 9, -1, 4, 2, 30};
	lla	a5,.LC6	# tmp130,
	ld	a4,0(a5)		# tmp131,
	sd	a4,-72(s0)	# tmp131, test8
	ld	a4,8(a5)		# tmp132,
	sd	a4,-64(s0)	# tmp132, test8
	ld	a5,16(a5)		# tmp133,
	sd	a5,-56(s0)	# tmp133, test8
# problem44.c:40:     assert(func0(test8, 6) == false);
	addi	a5,s0,-72	#, tmp134,
	li	a1,6		#,
	mv	a0,a5	#, tmp134
	call	func0		#
	mv	a5,a0	# tmp135,
	xori	a5,a5,1	#, tmp136, _12
	andi	a5,a5,0xff	# _13, tmp136
	bne	a5,zero,.L16	#, _13,,
# problem44.c:40:     assert(func0(test8, 6) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC8	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L16:
# problem44.c:42:     int test9[] = {-3, 9, -1, 4, 2, 31};
	lla	a5,.LC7	# tmp137,
	ld	a4,0(a5)		# tmp138,
	sd	a4,-48(s0)	# tmp138, test9
	ld	a4,8(a5)		# tmp139,
	sd	a4,-40(s0)	# tmp139, test9
	ld	a5,16(a5)		# tmp140,
	sd	a5,-32(s0)	# tmp140, test9
# problem44.c:43:     assert(func0(test9, 6) == false);
	addi	a5,s0,-48	#, tmp141,
	li	a1,6		#,
	mv	a0,a5	#, tmp141
	call	func0		#
	mv	a5,a0	# tmp142,
	xori	a5,a5,1	#, tmp143, _14
	andi	a5,a5,0xff	# _15, tmp143
	bne	a5,zero,.L17	#, _15,,
# problem44.c:43:     assert(func0(test9, 6) == false);
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
	la	a5,__stack_chk_guard		# tmp145,
	ld	a3, -24(s0)	# tmp148, D.1977
	ld	a5, 0(a5)	# tmp146, __stack_chk_guard
	xor	a5, a3, a5	# tmp146, tmp148
	li	a3, 0	# tmp148
	beq	a5,zero,.L19	#, tmp146,,
	call	__stack_chk_fail@plt	#
.L19:
	mv	a0,a4	#, <retval>
	ld	ra,200(sp)		#,
	ld	s0,192(sp)		#,
	addi	sp,sp,208	#,,
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
