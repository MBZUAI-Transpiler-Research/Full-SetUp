	.file	"problem43.c"
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
	mv	a5,a1	# tmp80, size
	sw	a5,-44(s0)	# tmp81, size
# problem43.c:4:     for (int i = 0; i < size; i++)
	sw	zero,-20(s0)	#, i
# problem43.c:4:     for (int i = 0; i < size; i++)
	j	.L2		#
.L3:
# problem43.c:5:         l[i] += 1;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp82, l
	add	a5,a4,a5	# _2, _3, tmp82
	lw	a4,0(a5)		# _4, *_3
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a3,-40(s0)		# tmp83, l
	add	a5,a3,a5	# _6, _7, tmp83
	addiw	a4,a4,1	#, tmp84, _4
	sext.w	a4,a4	# _8, tmp84
	sw	a4,0(a5)	# _8, *_7
# problem43.c:4:     for (int i = 0; i < size; i++)
	lw	a5,-20(s0)		# tmp87, i
	addiw	a5,a5,1	#, tmp85, tmp86
	sw	a5,-20(s0)	# tmp85, i
.L2:
# problem43.c:4:     for (int i = 0; i < size; i++)
	lw	a5,-20(s0)		# tmp89, i
	mv	a4,a5	# tmp88, tmp89
	lw	a5,-44(s0)		# tmp91, size
	sext.w	a4,a4	# tmp92, tmp88
	sext.w	a5,a5	# tmp93, tmp90
	blt	a4,a5,.L3	#, tmp92, tmp93,
# problem43.c:6: }
	nop	
	nop	
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
	addi	sp,sp,-64	#,,
	sd	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# a, a
	mv	a5,a1	# tmp82, size_a
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp84, size_b
	sw	a5,-44(s0)	# tmp83, size_a
	mv	a5,a4	# tmp85, tmp84
	sw	a5,-48(s0)	# tmp85, size_b
# problem43.c:14:     if (size_a != size_b) return 0;
	lw	a5,-44(s0)		# tmp87, size_a
	mv	a4,a5	# tmp86, tmp87
	lw	a5,-48(s0)		# tmp89, size_b
	sext.w	a4,a4	# tmp90, tmp86
	sext.w	a5,a5	# tmp91, tmp88
	beq	a4,a5,.L5	#, tmp90, tmp91,
# problem43.c:14:     if (size_a != size_b) return 0;
	li	a5,0		# _10,
	j	.L6		#
.L5:
# problem43.c:15:     for (int i = 0; i < size_a; i++) {
	sw	zero,-20(s0)	#, i
# problem43.c:15:     for (int i = 0; i < size_a; i++) {
	j	.L7		#
.L9:
# problem43.c:16:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp92, a
	add	a5,a4,a5	# _2, _3, tmp92
	lw	a3,0(a5)		# _4, *_3
# problem43.c:16:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp93, b
	add	a5,a4,a5	# _6, _7, tmp93
	lw	a5,0(a5)		# _8, *_7
# problem43.c:16:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp94, _4
	beq	a4,a5,.L8	#, tmp94, tmp95,
# problem43.c:16:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
	j	.L6		#
.L8:
# problem43.c:15:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-20(s0)	# tmp96, i
.L7:
# problem43.c:15:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-44(s0)		# tmp102, size_a
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L9	#, tmp103, tmp104,
# problem43.c:18:     return 1;
	li	a5,1		# _10,
.L6:
# problem43.c:19: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC2:
	.string	"problem43.c"
	.align	3
.LC3:
	.string	"issame(list1, 0, result1, 0)"
	.align	3
.LC4:
	.string	"issame(list2, 3, result2, 3)"
	.align	3
.LC5:
	.string	"issame(list3, 9, result3, 9)"
	.align	3
.LC0:
	.word	5
	.word	2
	.word	5
	.word	2
	.word	3
	.word	3
	.word	9
	.word	0
	.word	123
	.align	3
.LC1:
	.word	6
	.word	3
	.word	6
	.word	3
	.word	4
	.word	4
	.word	10
	.word	1
	.word	124
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-160	#,,
	sd	ra,152(sp)	#,
	sd	s0,144(sp)	#,
	addi	s0,sp,160	#,,
# problem43.c:21: int main() {
	la	a5,__stack_chk_guard		# tmp77,
	ld	a4, 0(a5)	# tmp111, __stack_chk_guard
	sd	a4, -24(s0)	# tmp111, D.1959
	li	a4, 0	# tmp111
# problem43.c:24:     func0(list1, 0);
	addi	a5,s0,-152	#, tmp78,
	li	a1,0		#,
	mv	a0,a5	#, tmp78
	call	func0		#
# problem43.c:25:     assert(issame(list1, 0, result1, 0));
	addi	a4,s0,-144	#, tmp79,
	addi	a5,s0,-152	#, tmp80,
	li	a3,0		#,
	mv	a2,a4	#, tmp79
	li	a1,0		#,
	mv	a0,a5	#, tmp80
	call	issame		#
	mv	a5,a0	# tmp81,
	bne	a5,zero,.L11	#, _1,,
# problem43.c:25:     assert(issame(list1, 0, result1, 0));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L11:
# problem43.c:27:     int list2[] = {3, 2, 1};
	li	a5,3		# tmp82,
	sw	a5,-136(s0)	# tmp82, list2[0]
	li	a5,2		# tmp83,
	sw	a5,-132(s0)	# tmp83, list2[1]
	li	a5,1		# tmp84,
	sw	a5,-128(s0)	# tmp84, list2[2]
# problem43.c:28:     int result2[] = {4, 3, 2};
	li	a5,4		# tmp85,
	sw	a5,-120(s0)	# tmp85, result2[0]
	li	a5,3		# tmp86,
	sw	a5,-116(s0)	# tmp86, result2[1]
	li	a5,2		# tmp87,
	sw	a5,-112(s0)	# tmp87, result2[2]
# problem43.c:29:     func0(list2, 3);
	addi	a5,s0,-136	#, tmp88,
	li	a1,3		#,
	mv	a0,a5	#, tmp88
	call	func0		#
# problem43.c:30:     assert(issame(list2, 3, result2, 3));
	addi	a4,s0,-120	#, tmp89,
	addi	a5,s0,-136	#, tmp90,
	li	a3,3		#,
	mv	a2,a4	#, tmp89
	li	a1,3		#,
	mv	a0,a5	#, tmp90
	call	issame		#
	mv	a5,a0	# tmp91,
	bne	a5,zero,.L12	#, _2,,
# problem43.c:30:     assert(issame(list2, 3, result2, 3));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC2	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L12:
# problem43.c:32:     int list3[] = {5, 2, 5, 2, 3, 3, 9, 0, 123};
	lla	a5,.LC0	# tmp92,
	ld	a1,0(a5)		# tmp93,
	ld	a2,8(a5)		# tmp94,
	ld	a3,16(a5)		# tmp95,
	ld	a4,24(a5)		# tmp96,
	sd	a1,-104(s0)	# tmp93, list3
	sd	a2,-96(s0)	# tmp94, list3
	sd	a3,-88(s0)	# tmp95, list3
	sd	a4,-80(s0)	# tmp96, list3
	lw	a5,32(a5)		# tmp97,
	sw	a5,-72(s0)	# tmp97, list3
# problem43.c:33:     int result3[] = {6, 3, 6, 3, 4, 4, 10, 1, 124};
	lla	a5,.LC1	# tmp98,
	ld	a1,0(a5)		# tmp99,
	ld	a2,8(a5)		# tmp100,
	ld	a3,16(a5)		# tmp101,
	ld	a4,24(a5)		# tmp102,
	sd	a1,-64(s0)	# tmp99, result3
	sd	a2,-56(s0)	# tmp100, result3
	sd	a3,-48(s0)	# tmp101, result3
	sd	a4,-40(s0)	# tmp102, result3
	lw	a5,32(a5)		# tmp103,
	sw	a5,-32(s0)	# tmp103, result3
# problem43.c:34:     func0(list3, 9);
	addi	a5,s0,-104	#, tmp104,
	li	a1,9		#,
	mv	a0,a5	#, tmp104
	call	func0		#
# problem43.c:35:     assert(issame(list3, 9, result3, 9));
	addi	a4,s0,-64	#, tmp105,
	addi	a5,s0,-104	#, tmp106,
	li	a3,9		#,
	mv	a2,a4	#, tmp105
	li	a1,9		#,
	mv	a0,a5	#, tmp106
	call	issame		#
	mv	a5,a0	# tmp107,
	bne	a5,zero,.L13	#, _3,,
# problem43.c:35:     assert(issame(list3, 9, result3, 9));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC2	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L13:
# problem43.c:37:     return 0;
	li	a5,0		# _24,
# problem43.c:38: }
	mv	a4,a5	# <retval>, _24
	la	a5,__stack_chk_guard		# tmp109,
	ld	a3, -24(s0)	# tmp112, D.1959
	ld	a5, 0(a5)	# tmp110, __stack_chk_guard
	xor	a5, a3, a5	# tmp110, tmp112
	li	a3, 0	# tmp112
	beq	a5,zero,.L15	#, tmp110,,
	call	__stack_chk_fail@plt	#
.L15:
	mv	a0,a4	#, <retval>
	ld	ra,152(sp)		#,
	ld	s0,144(sp)		#,
	addi	sp,sp,160	#,,
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
