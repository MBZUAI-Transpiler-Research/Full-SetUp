	.file	"problem4.c"
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
	sd	a0,-40(s0)	# operations, operations
	mv	a5,a1	# tmp140, size
	sw	a5,-44(s0)	# tmp141, size
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
	ld	a4,-40(s0)		# tmp142, operations
	add	a5,a4,a5	# _2, _3, tmp142
	lw	a5,0(a5)		# _4, *_3
# problem4.c:6:         num += operations[i];
	lw	a4,-24(s0)		# tmp145, num
	addw	a5,a4,a5	# _4, tmp143, tmp144
	sw	a5,-24(s0)	# tmp143, num
# problem4.c:7:         if (num < 0) return 1;
	lw	a5,-24(s0)		# tmp147, num
	sext.w	a5,a5	# tmp148, tmp146
	bge	a5,zero,.L3	#, tmp148,,
# problem4.c:7:         if (num < 0) return 1;
	li	a5,1		# _7,
# problem4.c:7:         if (num < 0) return 1;
	j	.L4		#
.L3:
# problem4.c:5:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp151, i
	addiw	a5,a5,1	#, tmp149, tmp150
	sw	a5,-20(s0)	# tmp149, i
.L2:
# problem4.c:5:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp153, i
	mv	a4,a5	# tmp152, tmp153
	lw	a5,-44(s0)		# tmp155, size
	sext.w	a4,a4	# tmp156, tmp152
	sext.w	a5,a5	# tmp157, tmp154
	blt	a4,a5,.L5	#, tmp156, tmp157,
# problem4.c:9:     return 0;
	li	a5,0		# _7,
.L4:
# problem4.c:10: }
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
.LFB1:
	.cfi_startproc
	addi	sp,sp,-176	#,,
	.cfi_def_cfa_offset 176
	sd	ra,168(sp)	#,
	sd	s0,160(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,176	#,,
	.cfi_def_cfa 8, 0
# problem4.c:16: int main() {
	la	a5,__stack_chk_guard		# tmp142,
	ld	a4, 0(a5)	# tmp187, __stack_chk_guard
	sd	a4, -24(s0)	# tmp187, D.2776
	li	a4, 0	# tmp187
# problem4.c:18:     assert(func0(case1, 0) == 0);
	addi	a5,s0,-176	#, tmp143,
	li	a1,0		#,
	mv	a0,a5	#, tmp143
	call	func0		#
	mv	a5,a0	# tmp144,
# problem4.c:18:     assert(func0(case1, 0) == 0);
	beq	a5,zero,.L7	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC5	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L7:
# problem4.c:20:     int case2[] = {1, 2, -3, 1, 2, -3};
	lla	a5,.LC0	# tmp145,
	ld	a4,0(a5)		# tmp146,
	sd	a4,-144(s0)	# tmp146, case2
	ld	a4,8(a5)		# tmp147,
	sd	a4,-136(s0)	# tmp147, case2
	ld	a5,16(a5)		# tmp148,
	sd	a5,-128(s0)	# tmp148, case2
# problem4.c:21:     assert(func0(case2, 6) == 0);
	addi	a5,s0,-144	#, tmp149,
	li	a1,6		#,
	mv	a0,a5	#, tmp149
	call	func0		#
	mv	a5,a0	# tmp150,
# problem4.c:21:     assert(func0(case2, 6) == 0);
	beq	a5,zero,.L8	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC5	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L8:
# problem4.c:23:     int case3[] = {1, 2, -4, 5, 6};
	lla	a5,.LC1	# tmp151,
	ld	a4,0(a5)		# tmp152,
	sd	a4,-168(s0)	# tmp152, case3
	ld	a4,8(a5)		# tmp153,
	sd	a4,-160(s0)	# tmp153, case3
	lw	a5,16(a5)		# tmp154,
	sw	a5,-152(s0)	# tmp154, case3
# problem4.c:24:     assert(func0(case3, 5) == 1);
	addi	a5,s0,-168	#, tmp155,
	li	a1,5		#,
	mv	a0,a5	#, tmp155
	call	func0		#
	mv	a5,a0	# tmp156,
# problem4.c:24:     assert(func0(case3, 5) == 1);
	mv	a4,a5	# tmp157, _3
	li	a5,1		# tmp158,
	beq	a4,a5,.L9	#, tmp157, tmp158,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC5	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L9:
# problem4.c:26:     int case4[] = {1, -1, 2, -2, 5, -5, 4, -4};
	lla	a5,.LC2	# tmp159,
	ld	a2,0(a5)		# tmp160,
	ld	a3,8(a5)		# tmp161,
	ld	a4,16(a5)		# tmp162,
	ld	a5,24(a5)		# tmp163,
	sd	a2,-120(s0)	# tmp160, case4
	sd	a3,-112(s0)	# tmp161, case4
	sd	a4,-104(s0)	# tmp162, case4
	sd	a5,-96(s0)	# tmp163, case4
# problem4.c:27:     assert(func0(case4, 8) == 0);
	addi	a5,s0,-120	#, tmp164,
	li	a1,8		#,
	mv	a0,a5	#, tmp164
	call	func0		#
	mv	a5,a0	# tmp165,
# problem4.c:27:     assert(func0(case4, 8) == 0);
	beq	a5,zero,.L10	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC5	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L10:
# problem4.c:29:     int case5[] = {1, -1, 2, -2, 5, -5, 4, -5};
	lla	a5,.LC3	# tmp166,
	ld	a2,0(a5)		# tmp167,
	ld	a3,8(a5)		# tmp168,
	ld	a4,16(a5)		# tmp169,
	ld	a5,24(a5)		# tmp170,
	sd	a2,-88(s0)	# tmp167, case5
	sd	a3,-80(s0)	# tmp168, case5
	sd	a4,-72(s0)	# tmp169, case5
	sd	a5,-64(s0)	# tmp170, case5
# problem4.c:30:     assert(func0(case5, 8) == 1);
	addi	a5,s0,-88	#, tmp171,
	li	a1,8		#,
	mv	a0,a5	#, tmp171
	call	func0		#
	mv	a5,a0	# tmp172,
# problem4.c:30:     assert(func0(case5, 8) == 1);
	mv	a4,a5	# tmp173, _5
	li	a5,1		# tmp174,
	beq	a4,a5,.L11	#, tmp173, tmp174,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC5	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L11:
# problem4.c:32:     int case6[] = {1, -2, 2, -2, 5, -5, 4, -4};
	lla	a5,.LC4	# tmp175,
	ld	a2,0(a5)		# tmp176,
	ld	a3,8(a5)		# tmp177,
	ld	a4,16(a5)		# tmp178,
	ld	a5,24(a5)		# tmp179,
	sd	a2,-56(s0)	# tmp176, case6
	sd	a3,-48(s0)	# tmp177, case6
	sd	a4,-40(s0)	# tmp178, case6
	sd	a5,-32(s0)	# tmp179, case6
# problem4.c:33:     assert(func0(case6, 8) == 1);
	addi	a5,s0,-56	#, tmp180,
	li	a1,8		#,
	mv	a0,a5	#, tmp180
	call	func0		#
	mv	a5,a0	# tmp181,
# problem4.c:33:     assert(func0(case6, 8) == 1);
	mv	a4,a5	# tmp182, _6
	li	a5,1		# tmp183,
	beq	a4,a5,.L12	#, tmp182, tmp183,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC5	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L12:
# problem4.c:35:     return 0;
	li	a5,0		# _25,
# problem4.c:36: }
	mv	a4,a5	# <retval>, _25
	la	a5,__stack_chk_guard		# tmp185,
	ld	a3, -24(s0)	# tmp188, D.2776
	ld	a5, 0(a5)	# tmp186, __stack_chk_guard
	xor	a5, a3, a5	# tmp186, tmp188
	li	a3, 0	# tmp188
	beq	a5,zero,.L14	#, tmp186,,
	call	__stack_chk_fail@plt	#
.L14:
	mv	a0,a4	#, <retval>
	ld	ra,168(sp)		#,
	.cfi_restore 1
	ld	s0,160(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 176
	addi	sp,sp,176	#,,
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
