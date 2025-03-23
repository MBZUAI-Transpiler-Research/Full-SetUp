	.file	"problem4.c"
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
	sd	a0,-40(s0)	# operations, operations
	mv	a5,a1	# tmp78, size
	sw	a5,-44(s0)	# tmp79, size
# problem4.c:4:     int num = 0;
	sw	zero,-24(s0)	#, num
# problem4.c:5:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem4.c:5:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L5:
# problem4.c:6:         num += operations[i];
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp80, operations
	add	a5,a4,a5	# _2, _3, tmp80
	lw	a5,0(a5)		# _4, *_3
# problem4.c:6:         num += operations[i];
	lw	a4,-24(s0)		# tmp83, num
	addw	a5,a4,a5	# _4, tmp81, tmp82
	sw	a5,-24(s0)	# tmp81, num
# problem4.c:7:         if (num < 0) return 1;
	lw	a5,-24(s0)		# tmp85, num
	sext.w	a5,a5	# tmp86, tmp84
	bge	a5,zero,.L3	#, tmp86,,
# problem4.c:7:         if (num < 0) return 1;
	li	a5,1		# _7,
	j	.L4		#
.L3:
# problem4.c:5:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp89, i
	addiw	a5,a5,1	#, tmp87, tmp88
	sw	a5,-20(s0)	# tmp87, i
.L2:
# problem4.c:5:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp91, i
	mv	a4,a5	# tmp90, tmp91
	lw	a5,-44(s0)		# tmp93, size
	sext.w	a4,a4	# tmp94, tmp90
	sext.w	a5,a5	# tmp95, tmp92
	blt	a4,a5,.L5	#, tmp94, tmp95,
# problem4.c:9:     return 0;
	li	a5,0		# _7,
.L4:
# problem4.c:10: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC5:
	.string	"problem4.c"
	.align	3
.LC6:
	.string	"func0(case1, 0) == 0"
	.align	3
.LC7:
	.string	"func0(case2, 6) == 0"
	.align	3
.LC8:
	.string	"func0(case3, 5) == 1"
	.align	3
.LC9:
	.string	"func0(case4, 8) == 0"
	.align	3
.LC10:
	.string	"func0(case5, 8) == 1"
	.align	3
.LC11:
	.string	"func0(case6, 8) == 1"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	-3
	.word	1
	.word	2
	.word	-3
	.align	3
.LC1:
	.word	1
	.word	2
	.word	-4
	.word	5
	.word	6
	.align	3
.LC2:
	.word	1
	.word	-1
	.word	2
	.word	-2
	.word	5
	.word	-5
	.word	4
	.word	-4
	.align	3
.LC3:
	.word	1
	.word	-1
	.word	2
	.word	-2
	.word	5
	.word	-5
	.word	4
	.word	-5
	.align	3
.LC4:
	.word	1
	.word	-2
	.word	2
	.word	-2
	.word	5
	.word	-5
	.word	4
	.word	-4
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-176	#,,
	sd	ra,168(sp)	#,
	sd	s0,160(sp)	#,
	addi	s0,sp,176	#,,
# problem4.c:16: int main() {
	la	a5,__stack_chk_guard		# tmp80,
	ld	a4, 0(a5)	# tmp125, __stack_chk_guard
	sd	a4, -24(s0)	# tmp125, D.1958
	li	a4, 0	# tmp125
# problem4.c:18:     assert(func0(case1, 0) == 0);
	addi	a5,s0,-176	#, tmp81,
	li	a1,0		#,
	mv	a0,a5	#, tmp81
	call	func0		#
	mv	a5,a0	# tmp82,
	beq	a5,zero,.L7	#, _1,,
# problem4.c:18:     assert(func0(case1, 0) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC5	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L7:
# problem4.c:20:     int case2[] = {1, 2, -3, 1, 2, -3};
	lla	a5,.LC0	# tmp83,
	ld	a4,0(a5)		# tmp84,
	sd	a4,-144(s0)	# tmp84, case2
	ld	a4,8(a5)		# tmp85,
	sd	a4,-136(s0)	# tmp85, case2
	ld	a5,16(a5)		# tmp86,
	sd	a5,-128(s0)	# tmp86, case2
# problem4.c:21:     assert(func0(case2, 6) == 0);
	addi	a5,s0,-144	#, tmp87,
	li	a1,6		#,
	mv	a0,a5	#, tmp87
	call	func0		#
	mv	a5,a0	# tmp88,
	beq	a5,zero,.L8	#, _2,,
# problem4.c:21:     assert(func0(case2, 6) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC5	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L8:
# problem4.c:23:     int case3[] = {1, 2, -4, 5, 6};
	lla	a5,.LC1	# tmp89,
	ld	a4,0(a5)		# tmp90,
	sd	a4,-168(s0)	# tmp90, case3
	ld	a4,8(a5)		# tmp91,
	sd	a4,-160(s0)	# tmp91, case3
	lw	a5,16(a5)		# tmp92,
	sw	a5,-152(s0)	# tmp92, case3
# problem4.c:24:     assert(func0(case3, 5) == 1);
	addi	a5,s0,-168	#, tmp93,
	li	a1,5		#,
	mv	a0,a5	#, tmp93
	call	func0		#
	mv	a5,a0	# tmp94,
	mv	a4,a5	# tmp95, _3
	li	a5,1		# tmp96,
	beq	a4,a5,.L9	#, tmp95, tmp96,
# problem4.c:24:     assert(func0(case3, 5) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC5	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L9:
# problem4.c:26:     int case4[] = {1, -1, 2, -2, 5, -5, 4, -4};
	lla	a5,.LC2	# tmp97,
	ld	a2,0(a5)		# tmp98,
	ld	a3,8(a5)		# tmp99,
	ld	a4,16(a5)		# tmp100,
	ld	a5,24(a5)		# tmp101,
	sd	a2,-120(s0)	# tmp98, case4
	sd	a3,-112(s0)	# tmp99, case4
	sd	a4,-104(s0)	# tmp100, case4
	sd	a5,-96(s0)	# tmp101, case4
# problem4.c:27:     assert(func0(case4, 8) == 0);
	addi	a5,s0,-120	#, tmp102,
	li	a1,8		#,
	mv	a0,a5	#, tmp102
	call	func0		#
	mv	a5,a0	# tmp103,
	beq	a5,zero,.L10	#, _4,,
# problem4.c:27:     assert(func0(case4, 8) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC5	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L10:
# problem4.c:29:     int case5[] = {1, -1, 2, -2, 5, -5, 4, -5};
	lla	a5,.LC3	# tmp104,
	ld	a2,0(a5)		# tmp105,
	ld	a3,8(a5)		# tmp106,
	ld	a4,16(a5)		# tmp107,
	ld	a5,24(a5)		# tmp108,
	sd	a2,-88(s0)	# tmp105, case5
	sd	a3,-80(s0)	# tmp106, case5
	sd	a4,-72(s0)	# tmp107, case5
	sd	a5,-64(s0)	# tmp108, case5
# problem4.c:30:     assert(func0(case5, 8) == 1);
	addi	a5,s0,-88	#, tmp109,
	li	a1,8		#,
	mv	a0,a5	#, tmp109
	call	func0		#
	mv	a5,a0	# tmp110,
	mv	a4,a5	# tmp111, _5
	li	a5,1		# tmp112,
	beq	a4,a5,.L11	#, tmp111, tmp112,
# problem4.c:30:     assert(func0(case5, 8) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC5	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L11:
# problem4.c:32:     int case6[] = {1, -2, 2, -2, 5, -5, 4, -4};
	lla	a5,.LC4	# tmp113,
	ld	a2,0(a5)		# tmp114,
	ld	a3,8(a5)		# tmp115,
	ld	a4,16(a5)		# tmp116,
	ld	a5,24(a5)		# tmp117,
	sd	a2,-56(s0)	# tmp114, case6
	sd	a3,-48(s0)	# tmp115, case6
	sd	a4,-40(s0)	# tmp116, case6
	sd	a5,-32(s0)	# tmp117, case6
# problem4.c:33:     assert(func0(case6, 8) == 1);
	addi	a5,s0,-56	#, tmp118,
	li	a1,8		#,
	mv	a0,a5	#, tmp118
	call	func0		#
	mv	a5,a0	# tmp119,
	mv	a4,a5	# tmp120, _6
	li	a5,1		# tmp121,
	beq	a4,a5,.L12	#, tmp120, tmp121,
# problem4.c:33:     assert(func0(case6, 8) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC5	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L12:
# problem4.c:35:     return 0;
	li	a5,0		# _26,
# problem4.c:36: }
	mv	a4,a5	# <retval>, _26
	la	a5,__stack_chk_guard		# tmp123,
	ld	a3, -24(s0)	# tmp126, D.1958
	ld	a5, 0(a5)	# tmp124, __stack_chk_guard
	xor	a5, a3, a5	# tmp124, tmp126
	li	a3, 0	# tmp126
	beq	a5,zero,.L14	#, tmp124,,
	call	__stack_chk_fail@plt	#
.L14:
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
