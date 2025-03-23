	.file	"problem160.c"
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
	mv	a5,a0	# tmp77, number
	mv	a4,a2	# tmp81, remaining
	sd	a3,-40(s0)	# result, result
	sw	a5,-20(s0)	# tmp78, number
	mv	a5,a1	# tmp80, tmp79
	sw	a5,-24(s0)	# tmp80, need
	mv	a5,a4	# tmp82, tmp81
	sw	a5,-28(s0)	# tmp82, remaining
# problem160.c:4:     if (need > remaining) {
	lw	a5,-24(s0)		# tmp84, need
	mv	a4,a5	# tmp83, tmp84
	lw	a5,-28(s0)		# tmp86, remaining
	sext.w	a4,a4	# tmp87, tmp83
	sext.w	a5,a5	# tmp88, tmp85
	ble	a4,a5,.L2	#, tmp87, tmp88,
# problem160.c:5:         result[0] = number + remaining;
	lw	a5,-20(s0)		# tmp91, number
	mv	a4,a5	# tmp90, tmp91
	lw	a5,-28(s0)		# tmp93, remaining
	addw	a5,a4,a5	# tmp92, tmp89, tmp90
	sext.w	a4,a5	# _1, tmp89
# problem160.c:5:         result[0] = number + remaining;
	ld	a5,-40(s0)		# tmp94, result
	sw	a4,0(a5)	# _1, *result_11(D)
# problem160.c:6:         result[1] = 0;
	ld	a5,-40(s0)		# tmp95, result
	addi	a5,a5,4	#, _2, tmp95
# problem160.c:6:         result[1] = 0;
	sw	zero,0(a5)	#, *_2
# problem160.c:11: }
	j	.L4		#
.L2:
# problem160.c:8:         result[0] = number + need;
	lw	a5,-20(s0)		# tmp98, number
	mv	a4,a5	# tmp97, tmp98
	lw	a5,-24(s0)		# tmp100, need
	addw	a5,a4,a5	# tmp99, tmp96, tmp97
	sext.w	a4,a5	# _3, tmp96
# problem160.c:8:         result[0] = number + need;
	ld	a5,-40(s0)		# tmp101, result
	sw	a4,0(a5)	# _3, *result_11(D)
# problem160.c:9:         result[1] = remaining - need;
	ld	a5,-40(s0)		# tmp102, result
	addi	a5,a5,4	#, _4, tmp102
# problem160.c:9:         result[1] = remaining - need;
	lw	a4,-28(s0)		# tmp105, remaining
	mv	a3,a4	# tmp104, tmp105
	lw	a4,-24(s0)		# tmp107, need
	subw	a4,a3,a4	# tmp103, tmp104, tmp106
	sext.w	a4,a4	# _5, tmp103
# problem160.c:9:         result[1] = remaining - need;
	sw	a4,0(a5)	# _5, *_4
.L4:
# problem160.c:11: }
	nop	
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
	addi	sp,sp,-32	#,,
	sd	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sd	a0,-24(s0)	# a, a
	sd	a1,-32(s0)	# b, b
# problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	ld	a5,-24(s0)		# tmp80, a
	lw	a4,0(a5)		# _1, *a_9(D)
# problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	ld	a5,-32(s0)		# tmp81, b
	lw	a5,0(a5)		# _2, *b_10(D)
# problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	bne	a4,a5,.L6	#, tmp82, tmp83,
# problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	ld	a5,-24(s0)		# tmp84, a
	addi	a5,a5,4	#, _3, tmp84
	lw	a4,0(a5)		# _4, *_3
# problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	ld	a5,-32(s0)		# tmp85, b
	addi	a5,a5,4	#, _5, tmp85
	lw	a5,0(a5)		# _6, *_5
# problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	bne	a4,a5,.L6	#, tmp86, tmp87,
# problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	li	a5,1		# iftmp.0_7,
	j	.L7		#
.L6:
# problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	li	a5,0		# iftmp.0_7,
.L7:
# problem160.c:19: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC0:
	.string	"problem160.c"
	.align	3
.LC1:
	.string	"issame(result, (int[]){11, 4})"
	.align	3
.LC2:
	.string	"issame(result, (int[]){12, 1})"
	.align	3
.LC3:
	.string	"issame(result, (int[]){11, 0})"
	.align	3
.LC4:
	.string	"issame(result, (int[]){7, 0})"
	.align	3
.LC5:
	.string	"issame(result, (int[]){9, 2})"
	.align	3
.LC6:
	.string	"issame(result, (int[]){5, 0})"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
# problem160.c:21: int main() {
	la	a5,__stack_chk_guard		# tmp80,
	ld	a4, 0(a5)	# tmp117, __stack_chk_guard
	sd	a4, -24(s0)	# tmp117, D.1972
	li	a4, 0	# tmp117
# problem160.c:24:     func0(5, 6, 10, result);
	addi	a5,s0,-40	#, tmp81,
	mv	a3,a5	#, tmp81
	li	a2,10		#,
	li	a1,6		#,
	li	a0,5		#,
	call	func0		#
# problem160.c:25:     assert(issame(result, (int[]){11, 4}));
	li	a5,11		# tmp82,
	sw	a5,-32(s0)	# tmp82, MEM[(int[2] *)_53][0]
	li	a5,4		# tmp83,
	sw	a5,-28(s0)	# tmp83, MEM[(int[2] *)_53][1]
	addi	a4,s0,-32	#, tmp84,
	addi	a5,s0,-40	#, tmp85,
	mv	a1,a4	#, tmp84
	mv	a0,a5	#, tmp85
	call	issame		#
	mv	a5,a0	# tmp86,
	bne	a5,zero,.L10	#, _1,,
# problem160.c:25:     assert(issame(result, (int[]){11, 4}));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L10:
# problem160.c:27:     func0(4, 8, 9, result);
	addi	a5,s0,-40	#, tmp87,
	mv	a3,a5	#, tmp87
	li	a2,9		#,
	li	a1,8		#,
	li	a0,4		#,
	call	func0		#
# problem160.c:28:     assert(issame(result, (int[]){12, 1}));
	li	a5,12		# tmp88,
	sw	a5,-32(s0)	# tmp88, MEM[(int[2] *)_53][0]
	li	a5,1		# tmp89,
	sw	a5,-28(s0)	# tmp89, MEM[(int[2] *)_53][1]
	addi	a4,s0,-32	#, tmp90,
	addi	a5,s0,-40	#, tmp91,
	mv	a1,a4	#, tmp90
	mv	a0,a5	#, tmp91
	call	issame		#
	mv	a5,a0	# tmp92,
	bne	a5,zero,.L11	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L11:
# problem160.c:30:     func0(1, 10, 10, result);
	addi	a5,s0,-40	#, tmp93,
	mv	a3,a5	#, tmp93
	li	a2,10		#,
	li	a1,10		#,
	li	a0,1		#,
	call	func0		#
# problem160.c:31:     assert(issame(result, (int[]){11, 0}));
	li	a5,11		# tmp94,
	sw	a5,-32(s0)	# tmp94, MEM[(int[2] *)_53][0]
	sw	zero,-28(s0)	#, MEM[(int[2] *)_53][1]
	addi	a4,s0,-32	#, tmp95,
	addi	a5,s0,-40	#, tmp96,
	mv	a1,a4	#, tmp95
	mv	a0,a5	#, tmp96
	call	issame		#
	mv	a5,a0	# tmp97,
	bne	a5,zero,.L12	#, _3,,
# problem160.c:31:     assert(issame(result, (int[]){11, 0}));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L12:
# problem160.c:33:     func0(2, 11, 5, result);
	addi	a5,s0,-40	#, tmp98,
	mv	a3,a5	#, tmp98
	li	a2,5		#,
	li	a1,11		#,
	li	a0,2		#,
	call	func0		#
# problem160.c:34:     assert(issame(result, (int[]){7, 0}));
	li	a5,7		# tmp99,
	sw	a5,-32(s0)	# tmp99, MEM[(int[2] *)_53][0]
	sw	zero,-28(s0)	#, MEM[(int[2] *)_53][1]
	addi	a4,s0,-32	#, tmp100,
	addi	a5,s0,-40	#, tmp101,
	mv	a1,a4	#, tmp100
	mv	a0,a5	#, tmp101
	call	issame		#
	mv	a5,a0	# tmp102,
	bne	a5,zero,.L13	#, _4,,
# problem160.c:34:     assert(issame(result, (int[]){7, 0}));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L13:
# problem160.c:36:     func0(4, 5, 7, result);
	addi	a5,s0,-40	#, tmp103,
	mv	a3,a5	#, tmp103
	li	a2,7		#,
	li	a1,5		#,
	li	a0,4		#,
	call	func0		#
# problem160.c:37:     assert(issame(result, (int[]){9, 2}));
	li	a5,9		# tmp104,
	sw	a5,-32(s0)	# tmp104, MEM[(int[2] *)_53][0]
	li	a5,2		# tmp105,
	sw	a5,-28(s0)	# tmp105, MEM[(int[2] *)_53][1]
	addi	a4,s0,-32	#, tmp106,
	addi	a5,s0,-40	#, tmp107,
	mv	a1,a4	#, tmp106
	mv	a0,a5	#, tmp107
	call	issame		#
	mv	a5,a0	# tmp108,
	bne	a5,zero,.L14	#, _5,,
# problem160.c:37:     assert(issame(result, (int[]){9, 2}));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L14:
# problem160.c:39:     func0(4, 5, 1, result);
	addi	a5,s0,-40	#, tmp109,
	mv	a3,a5	#, tmp109
	li	a2,1		#,
	li	a1,5		#,
	li	a0,4		#,
	call	func0		#
# problem160.c:40:     assert(issame(result, (int[]){5, 0}));
	li	a5,5		# tmp110,
	sw	a5,-32(s0)	# tmp110, MEM[(int[2] *)_53][0]
	sw	zero,-28(s0)	#, MEM[(int[2] *)_53][1]
	addi	a4,s0,-32	#, tmp111,
	addi	a5,s0,-40	#, tmp112,
	mv	a1,a4	#, tmp111
	mv	a0,a5	#, tmp112
	call	issame		#
	mv	a5,a0	# tmp113,
	bne	a5,zero,.L15	#, _6,,
# problem160.c:40:     assert(issame(result, (int[]){5, 0}));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L15:
# problem160.c:42:     return 0;
	li	a5,0		# _44,
# problem160.c:43: }
	mv	a4,a5	# <retval>, _44
	la	a5,__stack_chk_guard		# tmp115,
	ld	a3, -24(s0)	# tmp118, D.1972
	ld	a5, 0(a5)	# tmp116, __stack_chk_guard
	xor	a5, a3, a5	# tmp116, tmp118
	li	a3, 0	# tmp118
	beq	a5,zero,.L17	#, tmp116,,
# problem160.c:43: }
	call	__stack_chk_fail@plt	#
.L17:
	mv	a0,a4	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
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
