	.file	"problem53.c"
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
	mv	a5,a1	# tmp78, size
	mv	a4,a2	# tmp80, t
	sw	a5,-44(s0)	# tmp79, size
	mv	a5,a4	# tmp81, tmp80
	sw	a5,-48(s0)	# tmp81, t
# problem53.c:5:     for (int i = 0; i < size; i++)
	sw	zero,-20(s0)	#, i
# problem53.c:5:     for (int i = 0; i < size; i++)
	j	.L2		#
.L5:
# problem53.c:6:         if (l[i] >= t) return false;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp82, l
	add	a5,a4,a5	# _2, _3, tmp82
	lw	a4,0(a5)		# _4, *_3
# problem53.c:6:         if (l[i] >= t) return false;
	lw	a5,-48(s0)		# tmp84, t
	sext.w	a5,a5	# tmp85, tmp83
	bgt	a5,a4,.L3	#, tmp85, tmp86,
# problem53.c:6:         if (l[i] >= t) return false;
	li	a5,0		# _6,
	j	.L4		#
.L3:
# problem53.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-20(s0)		# tmp89, i
	addiw	a5,a5,1	#, tmp87, tmp88
	sw	a5,-20(s0)	# tmp87, i
.L2:
# problem53.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-20(s0)		# tmp91, i
	mv	a4,a5	# tmp90, tmp91
	lw	a5,-44(s0)		# tmp93, size
	sext.w	a4,a4	# tmp94, tmp90
	sext.w	a5,a5	# tmp95, tmp92
	blt	a4,a5,.L5	#, tmp94, tmp95,
# problem53.c:7:     return true;
	li	a5,1		# _6,
.L4:
# problem53.c:8: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC3:
	.string	"problem53.c"
	.align	3
.LC4:
	.string	"func0(list1, 4, 100)"
	.align	3
.LC5:
	.string	"!func0(list2, 4, 5)"
	.align	3
.LC6:
	.string	"func0(list3, 4, 21)"
	.align	3
.LC7:
	.string	"func0(list4, 4, 22)"
	.align	3
.LC8:
	.string	"func0(list5, 4, 11)"
	.align	3
.LC9:
	.string	"!func0(list6, 4, 10)"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	4
	.word	10
	.align	3
.LC1:
	.word	1
	.word	20
	.word	4
	.word	10
	.align	3
.LC2:
	.word	1
	.word	8
	.word	4
	.word	10
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-128	#,,
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	addi	s0,sp,128	#,,
# problem53.c:15: int main() {
	la	a5,__stack_chk_guard		# tmp82,
	ld	a4, 0(a5)	# tmp118, __stack_chk_guard
	sd	a4, -24(s0)	# tmp118, D.1958
	li	a4, 0	# tmp118
# problem53.c:16:     int list1[] = {1, 2, 4, 10};
	lla	a5,.LC0	# tmp83,
	ld	a4,0(a5)		# tmp84,
	sd	a4,-120(s0)	# tmp84, list1
	ld	a5,8(a5)		# tmp85,
	sd	a5,-112(s0)	# tmp85, list1
# problem53.c:17:     assert(func0(list1, 4, 100));
	addi	a5,s0,-120	#, tmp86,
	li	a2,100		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp86
	call	func0		#
	mv	a5,a0	# tmp87,
	bne	a5,zero,.L7	#, _1,,
# problem53.c:17:     assert(func0(list1, 4, 100));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC3	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L7:
# problem53.c:19:     int list2[] = {1, 20, 4, 10};
	lla	a5,.LC1	# tmp88,
	ld	a4,0(a5)		# tmp89,
	sd	a4,-104(s0)	# tmp89, list2
	ld	a5,8(a5)		# tmp90,
	sd	a5,-96(s0)	# tmp90, list2
# problem53.c:20:     assert(!func0(list2, 4, 5));
	addi	a5,s0,-104	#, tmp91,
	li	a2,5		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp91
	call	func0		#
	mv	a5,a0	# tmp92,
	xori	a5,a5,1	#, tmp93, _2
	andi	a5,a5,0xff	# _3, tmp93
	bne	a5,zero,.L8	#, _3,,
# problem53.c:20:     assert(!func0(list2, 4, 5));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC3	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L8:
# problem53.c:22:     int list3[] = {1, 20, 4, 10};
	lla	a5,.LC1	# tmp94,
	ld	a4,0(a5)		# tmp95,
	sd	a4,-88(s0)	# tmp95, list3
	ld	a5,8(a5)		# tmp96,
	sd	a5,-80(s0)	# tmp96, list3
# problem53.c:23:     assert(func0(list3, 4, 21));
	addi	a5,s0,-88	#, tmp97,
	li	a2,21		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp97
	call	func0		#
	mv	a5,a0	# tmp98,
	bne	a5,zero,.L9	#, _4,,
# problem53.c:23:     assert(func0(list3, 4, 21));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC3	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L9:
# problem53.c:25:     int list4[] = {1, 20, 4, 10};
	lla	a5,.LC1	# tmp99,
	ld	a4,0(a5)		# tmp100,
	sd	a4,-72(s0)	# tmp100, list4
	ld	a5,8(a5)		# tmp101,
	sd	a5,-64(s0)	# tmp101, list4
# problem53.c:26:     assert(func0(list4, 4, 22));
	addi	a5,s0,-72	#, tmp102,
	li	a2,22		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp102
	call	func0		#
	mv	a5,a0	# tmp103,
	bne	a5,zero,.L10	#, _5,,
# problem53.c:26:     assert(func0(list4, 4, 22));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC3	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L10:
# problem53.c:28:     int list5[] = {1, 8, 4, 10};
	lla	a5,.LC2	# tmp104,
	ld	a4,0(a5)		# tmp105,
	sd	a4,-56(s0)	# tmp105, list5
	ld	a5,8(a5)		# tmp106,
	sd	a5,-48(s0)	# tmp106, list5
# problem53.c:29:     assert(func0(list5, 4, 11));
	addi	a5,s0,-56	#, tmp107,
	li	a2,11		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp107
	call	func0		#
	mv	a5,a0	# tmp108,
	bne	a5,zero,.L11	#, _6,,
# problem53.c:29:     assert(func0(list5, 4, 11));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC3	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L11:
# problem53.c:31:     int list6[] = {1, 8, 4, 10};
	lla	a5,.LC2	# tmp109,
	ld	a4,0(a5)		# tmp110,
	sd	a4,-40(s0)	# tmp110, list6
	ld	a5,8(a5)		# tmp111,
	sd	a5,-32(s0)	# tmp111, list6
# problem53.c:32:     assert(!func0(list6, 4, 10));
	addi	a5,s0,-40	#, tmp112,
	li	a2,10		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp112
	call	func0		#
	mv	a5,a0	# tmp113,
	xori	a5,a5,1	#, tmp114, _7
	andi	a5,a5,0xff	# _8, tmp114
	bne	a5,zero,.L12	#, _8,,
# problem53.c:32:     assert(!func0(list6, 4, 10));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC3	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L12:
# problem53.c:34:     return 0;
	li	a5,0		# _28,
# problem53.c:35: }
	mv	a4,a5	# <retval>, _28
	la	a5,__stack_chk_guard		# tmp116,
	ld	a3, -24(s0)	# tmp119, D.1958
	ld	a5, 0(a5)	# tmp117, __stack_chk_guard
	xor	a5, a3, a5	# tmp117, tmp119
	li	a3, 0	# tmp119
	beq	a5,zero,.L14	#, tmp117,,
	call	__stack_chk_fail@plt	#
.L14:
	mv	a0,a4	#, <retval>
	ld	ra,120(sp)		#,
	ld	s0,112(sp)		#,
	addi	sp,sp,128	#,,
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
