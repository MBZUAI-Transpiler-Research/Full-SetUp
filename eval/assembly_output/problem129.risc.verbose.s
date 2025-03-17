	.file	"problem129.c"
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
.LFB6:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# arr, arr
	mv	a5,a1	# tmp149, arr_size
	sw	a5,-44(s0)	# tmp150, arr_size
# problem129.c:5:     if (arr_size == 0) return -32768;
	lw	a5,-44(s0)		# tmp152, arr_size
	sext.w	a5,a5	# tmp153, tmp151
	bne	a5,zero,.L2	#, tmp153,,
# problem129.c:5:     if (arr_size == 0) return -32768;
	li	a5,-32768		# _19,
# problem129.c:5:     if (arr_size == 0) return -32768;
	j	.L3		#
.L2:
# problem129.c:6:     int sum = 0, prods = 1, i;
	sw	zero,-28(s0)	#, sum
# problem129.c:6:     int sum = 0, prods = 1, i;
	li	a5,1		# tmp154,
	sw	a5,-24(s0)	# tmp154, prods
# problem129.c:7:     for (i = 0; i < arr_size; i++) {
	sw	zero,-20(s0)	#, i
# problem129.c:7:     for (i = 0; i < arr_size; i++) {
	j	.L4		#
.L7:
# problem129.c:8:         sum += abs(arr[i]);
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp155, arr
	add	a5,a4,a5	# _2, _3, tmp155
	lw	a4,0(a5)		# _4, *_3
# problem129.c:8:         sum += abs(arr[i]);
	sraiw	a5,a4,31	#, tmp156, _4
	xor	a4,a4,a5	# tmp156, tmp157, _4
	subw	a5,a4,a5	# tmp158, tmp157, tmp156
	sext.w	a5,a5	# _5, tmp158
# problem129.c:8:         sum += abs(arr[i]);
	lw	a4,-28(s0)		# tmp161, sum
	addw	a5,a4,a5	# _5, tmp159, tmp160
	sw	a5,-28(s0)	# tmp159, sum
# problem129.c:9:         if (arr[i] == 0) prods = 0;
	lw	a5,-20(s0)		# _6, i
	slli	a5,a5,2	#, _7, _6
	ld	a4,-40(s0)		# tmp162, arr
	add	a5,a4,a5	# _7, _8, tmp162
	lw	a5,0(a5)		# _9, *_8
# problem129.c:9:         if (arr[i] == 0) prods = 0;
	bne	a5,zero,.L5	#, _9,,
# problem129.c:9:         if (arr[i] == 0) prods = 0;
	sw	zero,-24(s0)	#, prods
.L5:
# problem129.c:10:         if (arr[i] < 0) prods = -prods;
	lw	a5,-20(s0)		# _10, i
	slli	a5,a5,2	#, _11, _10
	ld	a4,-40(s0)		# tmp163, arr
	add	a5,a4,a5	# _11, _12, tmp163
	lw	a5,0(a5)		# _13, *_12
# problem129.c:10:         if (arr[i] < 0) prods = -prods;
	bge	a5,zero,.L6	#, tmp164,,
# problem129.c:10:         if (arr[i] < 0) prods = -prods;
	lw	a5,-24(s0)		# tmp167, prods
	negw	a5,a5	# tmp165, tmp166
	sw	a5,-24(s0)	# tmp165, prods
.L6:
# problem129.c:7:     for (i = 0; i < arr_size; i++) {
	lw	a5,-20(s0)		# tmp170, i
	addiw	a5,a5,1	#, tmp168, tmp169
	sw	a5,-20(s0)	# tmp168, i
.L4:
# problem129.c:7:     for (i = 0; i < arr_size; i++) {
	lw	a5,-20(s0)		# tmp172, i
	mv	a4,a5	# tmp171, tmp172
	lw	a5,-44(s0)		# tmp174, arr_size
	sext.w	a4,a4	# tmp175, tmp171
	sext.w	a5,a5	# tmp176, tmp173
	blt	a4,a5,.L7	#, tmp175, tmp176,
# problem129.c:12:     return sum * prods;
	lw	a5,-28(s0)		# tmp179, sum
	mv	a4,a5	# tmp178, tmp179
	lw	a5,-24(s0)		# tmp181, prods
	mulw	a5,a4,a5	# tmp177, tmp178, tmp180
	sext.w	a5,a5	# _19, tmp177
.L3:
# problem129.c:13: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC6:
	.string	"problem129.c"
	.align	3
.LC7:
	.string	"func0(arr1, 4) == -9"
	.align	3
.LC8:
	.string	"func0(arr2, 2) == 0"
	.align	3
.LC9:
	.string	"func0(arr3, 7) == -10"
	.align	3
.LC10:
	.string	"func0(NULL, 0) == -32768"
	.align	3
.LC11:
	.string	"func0(arr5, 7) == 20"
	.align	3
.LC12:
	.string	"func0(arr6, 4) == 4"
	.align	3
.LC13:
	.string	"func0(arr7, 4) == -4"
	.align	3
.LC14:
	.string	"func0(arr8, 4) == 0"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	2
	.word	-4
	.align	3
.LC1:
	.word	1
	.word	1
	.word	1
	.word	2
	.word	3
	.word	-1
	.word	1
	.align	3
.LC2:
	.word	2
	.word	4
	.word	1
	.word	2
	.word	-1
	.word	-1
	.word	9
	.align	3
.LC3:
	.word	-1
	.word	1
	.word	-1
	.word	1
	.align	3
.LC4:
	.word	-1
	.word	1
	.word	1
	.word	1
	.align	3
.LC5:
	.word	-1
	.word	1
	.word	1
	.word	0
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-160	#,,
	.cfi_def_cfa_offset 160
	sd	ra,152(sp)	#,
	sd	s0,144(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,160	#,,
	.cfi_def_cfa 8, 0
# problem129.c:20: int main() {
	la	a5,__stack_chk_guard		# tmp144,
	ld	a4, 0(a5)	# tmp198, __stack_chk_guard
	sd	a4, -24(s0)	# tmp198, D.3313
	li	a4, 0	# tmp198
# problem129.c:21:     int arr1[] = {1, 2, 2, -4};
	lla	a5,.LC0	# tmp145,
	ld	a4,0(a5)		# tmp146,
	sd	a4,-152(s0)	# tmp146, arr1
	ld	a5,8(a5)		# tmp147,
	sd	a5,-144(s0)	# tmp147, arr1
# problem129.c:22:     assert(func0(arr1, 4) == -9);
	addi	a5,s0,-152	#, tmp148,
	li	a1,4		#,
	mv	a0,a5	#, tmp148
	call	func0		#
	mv	a5,a0	# tmp149,
# problem129.c:22:     assert(func0(arr1, 4) == -9);
	mv	a4,a5	# tmp150, _1
	li	a5,-9		# tmp151,
	beq	a4,a5,.L9	#, tmp150, tmp151,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC6	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L9:
# problem129.c:24:     int arr2[] = {0, 1};
	sw	zero,-160(s0)	#, arr2[0]
	li	a5,1		# tmp152,
	sw	a5,-156(s0)	# tmp152, arr2[1]
# problem129.c:25:     assert(func0(arr2, 2) == 0);
	addi	a5,s0,-160	#, tmp153,
	li	a1,2		#,
	mv	a0,a5	#, tmp153
	call	func0		#
	mv	a5,a0	# tmp154,
# problem129.c:25:     assert(func0(arr2, 2) == 0);
	beq	a5,zero,.L10	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC6	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L10:
# problem129.c:27:     int arr3[] = {1, 1, 1, 2, 3, -1, 1};
	lla	a5,.LC1	# tmp155,
	ld	a2,0(a5)		# tmp156,
	ld	a3,8(a5)		# tmp157,
	ld	a4,16(a5)		# tmp158,
	sd	a2,-88(s0)	# tmp156, arr3
	sd	a3,-80(s0)	# tmp157, arr3
	sd	a4,-72(s0)	# tmp158, arr3
	lw	a5,24(a5)		# tmp159,
	sw	a5,-64(s0)	# tmp159, arr3
# problem129.c:28:     assert(func0(arr3, 7) == -10);
	addi	a5,s0,-88	#, tmp160,
	li	a1,7		#,
	mv	a0,a5	#, tmp160
	call	func0		#
	mv	a5,a0	# tmp161,
# problem129.c:28:     assert(func0(arr3, 7) == -10);
	mv	a4,a5	# tmp162, _3
	li	a5,-10		# tmp163,
	beq	a4,a5,.L11	#, tmp162, tmp163,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC6	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L11:
# problem129.c:30:     assert(func0(NULL, 0) == -32768);
	li	a1,0		#,
	li	a0,0		#,
	call	func0		#
	mv	a5,a0	# tmp164,
# problem129.c:30:     assert(func0(NULL, 0) == -32768);
	mv	a4,a5	# tmp165, _4
	li	a5,-32768		# tmp166,
	beq	a4,a5,.L12	#, tmp165, tmp166,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC6	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L12:
# problem129.c:32:     int arr5[] = {2, 4, 1, 2, -1, -1, 9};
	lla	a5,.LC2	# tmp167,
	ld	a2,0(a5)		# tmp168,
	ld	a3,8(a5)		# tmp169,
	ld	a4,16(a5)		# tmp170,
	sd	a2,-56(s0)	# tmp168, arr5
	sd	a3,-48(s0)	# tmp169, arr5
	sd	a4,-40(s0)	# tmp170, arr5
	lw	a5,24(a5)		# tmp171,
	sw	a5,-32(s0)	# tmp171, arr5
# problem129.c:33:     assert(func0(arr5, 7) == 20);
	addi	a5,s0,-56	#, tmp172,
	li	a1,7		#,
	mv	a0,a5	#, tmp172
	call	func0		#
	mv	a5,a0	# tmp173,
# problem129.c:33:     assert(func0(arr5, 7) == 20);
	mv	a4,a5	# tmp174, _5
	li	a5,20		# tmp175,
	beq	a4,a5,.L13	#, tmp174, tmp175,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC6	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L13:
# problem129.c:35:     int arr6[] = {-1, 1, -1, 1};
	lla	a5,.LC3	# tmp176,
	ld	a4,0(a5)		# tmp177,
	sd	a4,-136(s0)	# tmp177, arr6
	ld	a5,8(a5)		# tmp178,
	sd	a5,-128(s0)	# tmp178, arr6
# problem129.c:36:     assert(func0(arr6, 4) == 4);
	addi	a5,s0,-136	#, tmp179,
	li	a1,4		#,
	mv	a0,a5	#, tmp179
	call	func0		#
	mv	a5,a0	# tmp180,
# problem129.c:36:     assert(func0(arr6, 4) == 4);
	mv	a4,a5	# tmp181, _6
	li	a5,4		# tmp182,
	beq	a4,a5,.L14	#, tmp181, tmp182,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC6	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L14:
# problem129.c:38:     int arr7[] = {-1, 1, 1, 1};
	lla	a5,.LC4	# tmp183,
	ld	a4,0(a5)		# tmp184,
	sd	a4,-120(s0)	# tmp184, arr7
	ld	a5,8(a5)		# tmp185,
	sd	a5,-112(s0)	# tmp185, arr7
# problem129.c:39:     assert(func0(arr7, 4) == -4);
	addi	a5,s0,-120	#, tmp186,
	li	a1,4		#,
	mv	a0,a5	#, tmp186
	call	func0		#
	mv	a5,a0	# tmp187,
# problem129.c:39:     assert(func0(arr7, 4) == -4);
	mv	a4,a5	# tmp188, _7
	li	a5,-4		# tmp189,
	beq	a4,a5,.L15	#, tmp188, tmp189,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,39		#,
	lla	a1,.LC6	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L15:
# problem129.c:41:     int arr8[] = {-1, 1, 1, 0};
	lla	a5,.LC5	# tmp190,
	ld	a4,0(a5)		# tmp191,
	sd	a4,-104(s0)	# tmp191, arr8
	ld	a5,8(a5)		# tmp192,
	sd	a5,-96(s0)	# tmp192, arr8
# problem129.c:42:     assert(func0(arr8, 4) == 0);
	addi	a5,s0,-104	#, tmp193,
	li	a1,4		#,
	mv	a0,a5	#, tmp193
	call	func0		#
	mv	a5,a0	# tmp194,
# problem129.c:42:     assert(func0(arr8, 4) == 0);
	beq	a5,zero,.L16	#, _8,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,42		#,
	lla	a1,.LC6	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L16:
# problem129.c:44:     return 0;
	li	a5,0		# _34,
# problem129.c:45: }
	mv	a4,a5	# <retval>, _34
	la	a5,__stack_chk_guard		# tmp196,
	ld	a3, -24(s0)	# tmp199, D.3313
	ld	a5, 0(a5)	# tmp197, __stack_chk_guard
	xor	a5, a3, a5	# tmp197, tmp199
	li	a3, 0	# tmp199
	beq	a5,zero,.L18	#, tmp197,,
	call	__stack_chk_fail@plt	#
.L18:
	mv	a0,a4	#, <retval>
	ld	ra,152(sp)		#,
	.cfi_restore 1
	ld	s0,144(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	addi	sp,sp,160	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
