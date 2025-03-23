	.file	"problem136.c"
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
	mv	a5,a1	# tmp145, size
	sw	a5,-44(s0)	# tmp146, size
# problem136.c:4:     int max = -1;
	li	a5,-1		# tmp147,
	sw	a5,-24(s0)	# tmp147, max
# problem136.c:5:     for (int i = 1; i < size; ++i) {
	li	a5,1		# tmp148,
	sw	a5,-20(s0)	# tmp148, i
# problem136.c:5:     for (int i = 1; i < size; ++i) {
	j	.L2		#
.L4:
# problem136.c:6:         if (arr[i] < arr[i - 1]) max = i;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp149, arr
	add	a5,a4,a5	# _2, _3, tmp149
	lw	a3,0(a5)		# _4, *_3
# problem136.c:6:         if (arr[i] < arr[i - 1]) max = i;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	addi	a5,a5,-4	#, _7, _6
	ld	a4,-40(s0)		# tmp150, arr
	add	a5,a4,a5	# _7, _8, tmp150
	lw	a5,0(a5)		# _9, *_8
# problem136.c:6:         if (arr[i] < arr[i - 1]) max = i;
	mv	a4,a3	# tmp151, _4
	bge	a4,a5,.L3	#, tmp151, tmp152,
# problem136.c:6:         if (arr[i] < arr[i - 1]) max = i;
	lw	a5,-20(s0)		# tmp153, i
	sw	a5,-24(s0)	# tmp153, max
.L3:
# problem136.c:5:     for (int i = 1; i < size; ++i) {
	lw	a5,-20(s0)		# tmp156, i
	addiw	a5,a5,1	#, tmp154, tmp155
	sw	a5,-20(s0)	# tmp154, i
.L2:
# problem136.c:5:     for (int i = 1; i < size; ++i) {
	lw	a5,-20(s0)		# tmp158, i
	mv	a4,a5	# tmp157, tmp158
	lw	a5,-44(s0)		# tmp160, size
	sext.w	a4,a4	# tmp161, tmp157
	sext.w	a5,a5	# tmp162, tmp159
	blt	a4,a5,.L4	#, tmp161, tmp162,
# problem136.c:8:     return max;
	lw	a5,-24(s0)		# _16, max
# problem136.c:9: }
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
	.string	"problem136.c"
	.align	3
.LC5:
	.string	"func0(arr1, 5) == 3"
	.align	3
.LC6:
	.string	"func0(arr2, 4) == -1"
	.align	3
.LC7:
	.string	"func0(arr3, 9) == 2"
	.align	3
.LC8:
	.string	"func0(arr4, 5) == 4"
	.align	3
.LC9:
	.string	"func0(NULL, 0) == -1"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	4
	.word	3
	.word	5
	.align	3
.LC1:
	.word	1
	.word	2
	.word	4
	.word	5
	.align	3
.LC2:
	.word	1
	.word	4
	.word	2
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.align	3
.LC3:
	.word	4
	.word	8
	.word	5
	.word	7
	.word	3
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-128	#,,
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,128	#,,
	.cfi_def_cfa 8, 0
# problem136.c:17: int main() {
	la	a5,__stack_chk_guard		# tmp141,
	ld	a4, 0(a5)	# tmp181, __stack_chk_guard
	sd	a4, -24(s0)	# tmp181, D.2776
	li	a4, 0	# tmp181
# problem136.c:18:     int arr1[] = {1, 2, 4, 3, 5};
	lla	a5,.LC0	# tmp142,
	ld	a4,0(a5)		# tmp143,
	sd	a4,-112(s0)	# tmp143, arr1
	ld	a4,8(a5)		# tmp144,
	sd	a4,-104(s0)	# tmp144, arr1
	lw	a5,16(a5)		# tmp145,
	sw	a5,-96(s0)	# tmp145, arr1
# problem136.c:19:     assert(func0(arr1, 5) == 3);
	addi	a5,s0,-112	#, tmp146,
	li	a1,5		#,
	mv	a0,a5	#, tmp146
	call	func0		#
	mv	a5,a0	# tmp147,
# problem136.c:19:     assert(func0(arr1, 5) == 3);
	mv	a4,a5	# tmp148, _1
	li	a5,3		# tmp149,
	beq	a4,a5,.L7	#, tmp148, tmp149,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC4	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L7:
# problem136.c:21:     int arr2[] = {1, 2, 4, 5};
	lla	a5,.LC1	# tmp150,
	ld	a4,0(a5)		# tmp151,
	sd	a4,-128(s0)	# tmp151, arr2
	ld	a5,8(a5)		# tmp152,
	sd	a5,-120(s0)	# tmp152, arr2
# problem136.c:22:     assert(func0(arr2, 4) == -1);
	addi	a5,s0,-128	#, tmp153,
	li	a1,4		#,
	mv	a0,a5	#, tmp153
	call	func0		#
	mv	a5,a0	# tmp154,
# problem136.c:22:     assert(func0(arr2, 4) == -1);
	mv	a4,a5	# tmp155, _2
	li	a5,-1		# tmp156,
	beq	a4,a5,.L8	#, tmp155, tmp156,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC4	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L8:
# problem136.c:24:     int arr3[] = {1, 4, 2, 5, 6, 7, 8, 9, 10};
	lla	a5,.LC2	# tmp157,
	ld	a1,0(a5)		# tmp158,
	ld	a2,8(a5)		# tmp159,
	ld	a3,16(a5)		# tmp160,
	ld	a4,24(a5)		# tmp161,
	sd	a1,-64(s0)	# tmp158, arr3
	sd	a2,-56(s0)	# tmp159, arr3
	sd	a3,-48(s0)	# tmp160, arr3
	sd	a4,-40(s0)	# tmp161, arr3
	lw	a5,32(a5)		# tmp162,
	sw	a5,-32(s0)	# tmp162, arr3
# problem136.c:25:     assert(func0(arr3, 9) == 2);
	addi	a5,s0,-64	#, tmp163,
	li	a1,9		#,
	mv	a0,a5	#, tmp163
	call	func0		#
	mv	a5,a0	# tmp164,
# problem136.c:25:     assert(func0(arr3, 9) == 2);
	mv	a4,a5	# tmp165, _3
	li	a5,2		# tmp166,
	beq	a4,a5,.L9	#, tmp165, tmp166,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC4	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L9:
# problem136.c:27:     int arr4[] = {4, 8, 5, 7, 3};
	lla	a5,.LC3	# tmp167,
	ld	a4,0(a5)		# tmp168,
	sd	a4,-88(s0)	# tmp168, arr4
	ld	a4,8(a5)		# tmp169,
	sd	a4,-80(s0)	# tmp169, arr4
	lw	a5,16(a5)		# tmp170,
	sw	a5,-72(s0)	# tmp170, arr4
# problem136.c:28:     assert(func0(arr4, 5) == 4);
	addi	a5,s0,-88	#, tmp171,
	li	a1,5		#,
	mv	a0,a5	#, tmp171
	call	func0		#
	mv	a5,a0	# tmp172,
# problem136.c:28:     assert(func0(arr4, 5) == 4);
	mv	a4,a5	# tmp173, _4
	li	a5,4		# tmp174,
	beq	a4,a5,.L10	#, tmp173, tmp174,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC4	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L10:
# problem136.c:30:     assert(func0(NULL, 0) == -1);
	li	a1,0		#,
	li	a0,0		#,
	call	func0		#
	mv	a5,a0	# tmp175,
# problem136.c:30:     assert(func0(NULL, 0) == -1);
	mv	a4,a5	# tmp176, _5
	li	a5,-1		# tmp177,
	beq	a4,a5,.L11	#, tmp176, tmp177,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC4	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L11:
# problem136.c:32:     return 0;
	li	a5,0		# _21,
# problem136.c:33: }
	mv	a4,a5	# <retval>, _21
	la	a5,__stack_chk_guard		# tmp179,
	ld	a3, -24(s0)	# tmp182, D.2776
	ld	a5, 0(a5)	# tmp180, __stack_chk_guard
	xor	a5, a3, a5	# tmp180, tmp182
	li	a3, 0	# tmp182
	beq	a5,zero,.L13	#, tmp180,,
	call	__stack_chk_fail@plt	#
.L13:
	mv	a0,a4	#, <retval>
	ld	ra,120(sp)		#,
	.cfi_restore 1
	ld	s0,112(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128	#,,
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
