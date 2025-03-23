	.file	"problem110.c"
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
	sd	a0,-40(s0)	# arr, arr
	mv	a5,a1	# tmp89, size
	sw	a5,-44(s0)	# tmp90, size
# problem110.c:5:     int num = 0;
	sw	zero,-24(s0)	#, num
# problem110.c:6:     if (size == 0) return true;
	lw	a5,-44(s0)		# tmp92, size
	sext.w	a5,a5	# tmp93, tmp91
	bne	a5,zero,.L2	#, tmp93,,
# problem110.c:6:     if (size == 0) return true;
	li	a5,1		# _20,
	j	.L3		#
.L2:
# problem110.c:7:     for (int i = 1; i < size; i++)
	li	a5,1		# tmp94,
	sw	a5,-20(s0)	# tmp94, i
# problem110.c:7:     for (int i = 1; i < size; i++)
	j	.L4		#
.L6:
# problem110.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp95, arr
	add	a5,a4,a5	# _2, _3, tmp95
	lw	a3,0(a5)		# _4, *_3
# problem110.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	addi	a5,a5,-4	#, _7, _6
	ld	a4,-40(s0)		# tmp96, arr
	add	a5,a4,a5	# _7, _8, tmp96
	lw	a5,0(a5)		# _9, *_8
# problem110.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	mv	a4,a3	# tmp97, _4
	bge	a4,a5,.L5	#, tmp97, tmp98,
# problem110.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	lw	a5,-24(s0)		# tmp101, num
	addiw	a5,a5,1	#, tmp99, tmp100
	sw	a5,-24(s0)	# tmp99, num
.L5:
# problem110.c:7:     for (int i = 1; i < size; i++)
	lw	a5,-20(s0)		# tmp104, i
	addiw	a5,a5,1	#, tmp102, tmp103
	sw	a5,-20(s0)	# tmp102, i
.L4:
# problem110.c:7:     for (int i = 1; i < size; i++)
	lw	a5,-20(s0)		# tmp106, i
	mv	a4,a5	# tmp105, tmp106
	lw	a5,-44(s0)		# tmp108, size
	sext.w	a4,a4	# tmp109, tmp105
	sext.w	a5,a5	# tmp110, tmp107
	blt	a4,a5,.L6	#, tmp109, tmp110,
# problem110.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	lw	a5,-44(s0)		# _10, size
	slli	a5,a5,2	#, _11, _10
	addi	a5,a5,-4	#, _12, _11
	ld	a4,-40(s0)		# tmp111, arr
	add	a5,a4,a5	# _12, _13, tmp111
	lw	a4,0(a5)		# _14, *_13
# problem110.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	ld	a5,-40(s0)		# tmp112, arr
	lw	a5,0(a5)		# _15, *arr_24(D)
# problem110.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	ble	a4,a5,.L7	#, tmp113, tmp114,
# problem110.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	lw	a5,-24(s0)		# tmp117, num
	addiw	a5,a5,1	#, tmp115, tmp116
	sw	a5,-24(s0)	# tmp115, num
.L7:
# problem110.c:10:     if (num < 2) return true;
	lw	a5,-24(s0)		# tmp119, num
	sext.w	a4,a5	# tmp120, tmp118
	li	a5,1		# tmp121,
	bgt	a4,a5,.L8	#, tmp120, tmp121,
# problem110.c:10:     if (num < 2) return true;
	li	a5,1		# _20,
	j	.L3		#
.L8:
# problem110.c:11:     return false;
	li	a5,0		# _20,
.L3:
# problem110.c:12: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC4:
	.string	"problem110.c"
	.align	3
.LC5:
	.string	"func0((int[]){3, 4, 5, 1, 2}, 5) == true"
	.align	3
.LC6:
	.string	"func0((int[]){3, 5, 10, 1, 2}, 5) == true"
	.align	3
.LC7:
	.string	"func0((int[]){4, 3, 1, 2}, 4) == false"
	.align	3
.LC8:
	.string	"func0((int[]){3, 5, 4, 1, 2}, 5) == false"
	.align	3
.LC9:
	.string	"func0((int[]){}, 0) == true"
	.align	3
.LC0:
	.word	3
	.word	4
	.word	5
	.word	1
	.word	2
	.align	3
.LC1:
	.word	3
	.word	5
	.word	10
	.word	1
	.word	2
	.align	3
.LC2:
	.word	4
	.word	3
	.word	1
	.word	2
	.align	3
.LC3:
	.word	3
	.word	5
	.word	4
	.word	1
	.word	2
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
# problem110.c:19: int main() {
	la	a5,__stack_chk_guard		# tmp81,
	ld	a4, 0(a5)	# tmp112, __stack_chk_guard
	sd	a4, -24(s0)	# tmp112, D.1965
	li	a4, 0	# tmp112
# problem110.c:20:     assert(func0((int[]){3, 4, 5, 1, 2}, 5) == true);
	lla	a5,.LC0	# tmp82,
	ld	a4,0(a5)		# tmp83,
	sd	a4,-48(s0)	# tmp83, MEM[(int[5] *)_36]
	ld	a4,8(a5)		# tmp84,
	sd	a4,-40(s0)	# tmp84, MEM[(int[5] *)_36]
	lw	a5,16(a5)		# tmp85,
	sw	a5,-32(s0)	# tmp85, MEM[(int[5] *)_36]
	addi	a5,s0,-48	#, tmp86,
	li	a1,5		#,
	mv	a0,a5	#, tmp86
	call	func0		#
	mv	a5,a0	# tmp87,
	bne	a5,zero,.L10	#, _1,,
# problem110.c:20:     assert(func0((int[]){3, 4, 5, 1, 2}, 5) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC4	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L10:
# problem110.c:21:     assert(func0((int[]){3, 5, 10, 1, 2}, 5) == true);
	lla	a5,.LC1	# tmp88,
	ld	a4,0(a5)		# tmp89,
	sd	a4,-48(s0)	# tmp89, MEM[(int[5] *)_36]
	ld	a4,8(a5)		# tmp90,
	sd	a4,-40(s0)	# tmp90, MEM[(int[5] *)_36]
	lw	a5,16(a5)		# tmp91,
	sw	a5,-32(s0)	# tmp91, MEM[(int[5] *)_36]
	addi	a5,s0,-48	#, tmp92,
	li	a1,5		#,
	mv	a0,a5	#, tmp92
	call	func0		#
	mv	a5,a0	# tmp93,
	bne	a5,zero,.L11	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC4	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L11:
# problem110.c:22:     assert(func0((int[]){4, 3, 1, 2}, 4) == false);
	lla	a5,.LC2	# tmp94,
	ld	a4,0(a5)		# tmp95,
	sd	a4,-48(s0)	# tmp95, MEM[(int[4] *)_36]
	ld	a5,8(a5)		# tmp96,
	sd	a5,-40(s0)	# tmp96, MEM[(int[4] *)_36]
	addi	a5,s0,-48	#, tmp97,
	li	a1,4		#,
	mv	a0,a5	#, tmp97
	call	func0		#
	mv	a5,a0	# tmp98,
	xori	a5,a5,1	#, tmp99, _3
	andi	a5,a5,0xff	# _4, tmp99
	bne	a5,zero,.L12	#, _4,,
# problem110.c:22:     assert(func0((int[]){4, 3, 1, 2}, 4) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC4	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L12:
# problem110.c:23:     assert(func0((int[]){3, 5, 4, 1, 2}, 5) == false);
	lla	a5,.LC3	# tmp100,
	ld	a4,0(a5)		# tmp101,
	sd	a4,-48(s0)	# tmp101, MEM[(int[5] *)_36]
	ld	a4,8(a5)		# tmp102,
	sd	a4,-40(s0)	# tmp102, MEM[(int[5] *)_36]
	lw	a5,16(a5)		# tmp103,
	sw	a5,-32(s0)	# tmp103, MEM[(int[5] *)_36]
	addi	a5,s0,-48	#, tmp104,
	li	a1,5		#,
	mv	a0,a5	#, tmp104
	call	func0		#
	mv	a5,a0	# tmp105,
	xori	a5,a5,1	#, tmp106, _5
	andi	a5,a5,0xff	# _6, tmp106
	bne	a5,zero,.L13	#, _6,,
# problem110.c:23:     assert(func0((int[]){3, 5, 4, 1, 2}, 5) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC4	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L13:
# problem110.c:24:     assert(func0((int[]){}, 0) == true);
	addi	a5,s0,-48	#, tmp107,
	li	a1,0		#,
	mv	a0,a5	#, tmp107
	call	func0		#
	mv	a5,a0	# tmp108,
	bne	a5,zero,.L14	#, _7,,
# problem110.c:24:     assert(func0((int[]){}, 0) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC4	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L14:
# problem110.c:26:     return 0;
	li	a5,0		# _29,
# problem110.c:27: }
	mv	a4,a5	# <retval>, _29
	la	a5,__stack_chk_guard		# tmp110,
	ld	a3, -24(s0)	# tmp113, D.1965
	ld	a5, 0(a5)	# tmp111, __stack_chk_guard
	xor	a5, a3, a5	# tmp111, tmp113
	li	a3, 0	# tmp113
	beq	a5,zero,.L16	#, tmp111,,
# problem110.c:27: }
	call	__stack_chk_fail@plt	#
.L16:
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
