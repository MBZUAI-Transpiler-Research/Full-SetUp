	.file	"problem110.c"
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
	sd	a0,-40(s0)	# arr, arr
	mv	a5,a1	# tmp151, size
	sw	a5,-44(s0)	# tmp152, size
# problem110.c:5:     int num = 0;
	sw	zero,-24(s0)	#, num
# problem110.c:6:     if (size == 0) return true;
	lw	a5,-44(s0)		# tmp154, size
	sext.w	a5,a5	# tmp155, tmp153
	bne	a5,zero,.L2	#, tmp155,,
# problem110.c:6:     if (size == 0) return true;
	li	a5,1		# _20,
# problem110.c:6:     if (size == 0) return true;
	j	.L3		#
.L2:
# problem110.c:7:     for (int i = 1; i < size; i++)
	li	a5,1		# tmp156,
	sw	a5,-20(s0)	# tmp156, i
# problem110.c:7:     for (int i = 1; i < size; i++)
	j	.L4		#
.L6:
# problem110.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp157, arr
	add	a5,a4,a5	# _2, _3, tmp157
	lw	a3,0(a5)		# _4, *_3
# problem110.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	addi	a5,a5,-4	#, _7, _6
	ld	a4,-40(s0)		# tmp158, arr
	add	a5,a4,a5	# _7, _8, tmp158
	lw	a5,0(a5)		# _9, *_8
# problem110.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	mv	a4,a3	# tmp159, _4
	bge	a4,a5,.L5	#, tmp159, tmp160,
# problem110.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	lw	a5,-24(s0)		# tmp163, num
	addiw	a5,a5,1	#, tmp161, tmp162
	sw	a5,-24(s0)	# tmp161, num
.L5:
# problem110.c:7:     for (int i = 1; i < size; i++)
	lw	a5,-20(s0)		# tmp166, i
	addiw	a5,a5,1	#, tmp164, tmp165
	sw	a5,-20(s0)	# tmp164, i
.L4:
# problem110.c:7:     for (int i = 1; i < size; i++)
	lw	a5,-20(s0)		# tmp168, i
	mv	a4,a5	# tmp167, tmp168
	lw	a5,-44(s0)		# tmp170, size
	sext.w	a4,a4	# tmp171, tmp167
	sext.w	a5,a5	# tmp172, tmp169
	blt	a4,a5,.L6	#, tmp171, tmp172,
# problem110.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	lw	a5,-44(s0)		# _10, size
	slli	a5,a5,2	#, _11, _10
	addi	a5,a5,-4	#, _12, _11
	ld	a4,-40(s0)		# tmp173, arr
	add	a5,a4,a5	# _12, _13, tmp173
	lw	a4,0(a5)		# _14, *_13
# problem110.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	ld	a5,-40(s0)		# tmp174, arr
	lw	a5,0(a5)		# _15, *arr_24(D)
# problem110.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	ble	a4,a5,.L7	#, tmp175, tmp176,
# problem110.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	lw	a5,-24(s0)		# tmp179, num
	addiw	a5,a5,1	#, tmp177, tmp178
	sw	a5,-24(s0)	# tmp177, num
.L7:
# problem110.c:10:     if (num < 2) return true;
	lw	a5,-24(s0)		# tmp181, num
	sext.w	a4,a5	# tmp182, tmp180
	li	a5,1		# tmp183,
	bgt	a4,a5,.L8	#, tmp182, tmp183,
# problem110.c:10:     if (num < 2) return true;
	li	a5,1		# _20,
# problem110.c:10:     if (num < 2) return true;
	j	.L3		#
.L8:
# problem110.c:11:     return false;
	li	a5,0		# _20,
.L3:
# problem110.c:12: }
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
.LFB1:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
# problem110.c:19: int main() {
	la	a5,__stack_chk_guard		# tmp143,
	ld	a4, 0(a5)	# tmp174, __stack_chk_guard
	sd	a4, -24(s0)	# tmp174, D.2783
	li	a4, 0	# tmp174
# problem110.c:20:     assert(func0((int[]){3, 4, 5, 1, 2}, 5) == true);
	lla	a5,.LC0	# tmp144,
	ld	a4,0(a5)		# tmp145,
	sd	a4,-48(s0)	# tmp145, MEM[(int[5] *)_35]
	ld	a4,8(a5)		# tmp146,
	sd	a4,-40(s0)	# tmp146, MEM[(int[5] *)_35]
	lw	a5,16(a5)		# tmp147,
	sw	a5,-32(s0)	# tmp147, MEM[(int[5] *)_35]
	addi	a5,s0,-48	#, tmp148,
	li	a1,5		#,
	mv	a0,a5	#, tmp148
	call	func0		#
	mv	a5,a0	# tmp149,
# problem110.c:20:     assert(func0((int[]){3, 4, 5, 1, 2}, 5) == true);
	bne	a5,zero,.L10	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC4	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L10:
# problem110.c:21:     assert(func0((int[]){3, 5, 10, 1, 2}, 5) == true);
	lla	a5,.LC1	# tmp150,
	ld	a4,0(a5)		# tmp151,
	sd	a4,-48(s0)	# tmp151, MEM[(int[5] *)_35]
	ld	a4,8(a5)		# tmp152,
	sd	a4,-40(s0)	# tmp152, MEM[(int[5] *)_35]
	lw	a5,16(a5)		# tmp153,
	sw	a5,-32(s0)	# tmp153, MEM[(int[5] *)_35]
	addi	a5,s0,-48	#, tmp154,
	li	a1,5		#,
	mv	a0,a5	#, tmp154
	call	func0		#
	mv	a5,a0	# tmp155,
# problem110.c:21:     assert(func0((int[]){3, 5, 10, 1, 2}, 5) == true);
	bne	a5,zero,.L11	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC4	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L11:
# problem110.c:22:     assert(func0((int[]){4, 3, 1, 2}, 4) == false);
	lla	a5,.LC2	# tmp156,
	ld	a4,0(a5)		# tmp157,
	sd	a4,-48(s0)	# tmp157, MEM[(int[4] *)_35]
	ld	a5,8(a5)		# tmp158,
	sd	a5,-40(s0)	# tmp158, MEM[(int[4] *)_35]
	addi	a5,s0,-48	#, tmp159,
	li	a1,4		#,
	mv	a0,a5	#, tmp159
	call	func0		#
	mv	a5,a0	# tmp160,
# problem110.c:22:     assert(func0((int[]){4, 3, 1, 2}, 4) == false);
	xori	a5,a5,1	#, tmp161, _3
	andi	a5,a5,0xff	# _4, tmp161
	bne	a5,zero,.L12	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC4	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L12:
# problem110.c:23:     assert(func0((int[]){3, 5, 4, 1, 2}, 5) == false);
	lla	a5,.LC3	# tmp162,
	ld	a4,0(a5)		# tmp163,
	sd	a4,-48(s0)	# tmp163, MEM[(int[5] *)_35]
	ld	a4,8(a5)		# tmp164,
	sd	a4,-40(s0)	# tmp164, MEM[(int[5] *)_35]
	lw	a5,16(a5)		# tmp165,
	sw	a5,-32(s0)	# tmp165, MEM[(int[5] *)_35]
	addi	a5,s0,-48	#, tmp166,
	li	a1,5		#,
	mv	a0,a5	#, tmp166
	call	func0		#
	mv	a5,a0	# tmp167,
# problem110.c:23:     assert(func0((int[]){3, 5, 4, 1, 2}, 5) == false);
	xori	a5,a5,1	#, tmp168, _5
	andi	a5,a5,0xff	# _6, tmp168
	bne	a5,zero,.L13	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC4	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L13:
# problem110.c:24:     assert(func0((int[]){}, 0) == true);
	addi	a5,s0,-48	#, tmp169,
	li	a1,0		#,
	mv	a0,a5	#, tmp169
	call	func0		#
	mv	a5,a0	# tmp170,
# problem110.c:24:     assert(func0((int[]){}, 0) == true);
	bne	a5,zero,.L14	#, _7,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC4	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L14:
# problem110.c:26:     return 0;
	li	a5,0		# _28,
# problem110.c:27: }
	mv	a4,a5	# <retval>, _28
	la	a5,__stack_chk_guard		# tmp172,
	ld	a3, -24(s0)	# tmp175, D.2783
	ld	a5, 0(a5)	# tmp173, __stack_chk_guard
	xor	a5, a3, a5	# tmp173, tmp175
	li	a3, 0	# tmp175
	beq	a5,zero,.L16	#, tmp173,,
	call	__stack_chk_fail@plt	#
.L16:
	mv	a0,a4	#, <retval>
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
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
