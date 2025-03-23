	.file	"problem53.c"
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
	sd	a0,-40(s0)	# l, l
	mv	a5,a1	# tmp140, size
	mv	a4,a2	# tmp142, t
	sw	a5,-44(s0)	# tmp141, size
	mv	a5,a4	# tmp143, tmp142
	sw	a5,-48(s0)	# tmp143, t
# problem53.c:5:     for (int i = 0; i < size; i++)
	sw	zero,-20(s0)	#, i
# problem53.c:5:     for (int i = 0; i < size; i++)
	j	.L2		#
.L5:
# problem53.c:6:         if (l[i] >= t) return false;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp144, l
	add	a5,a4,a5	# _2, _3, tmp144
	lw	a4,0(a5)		# _4, *_3
# problem53.c:6:         if (l[i] >= t) return false;
	lw	a5,-48(s0)		# tmp146, t
	sext.w	a5,a5	# tmp147, tmp145
	bgt	a5,a4,.L3	#, tmp147, tmp148,
# problem53.c:6:         if (l[i] >= t) return false;
	li	a5,0		# _6,
# problem53.c:6:         if (l[i] >= t) return false;
	j	.L4		#
.L3:
# problem53.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-20(s0)		# tmp151, i
	addiw	a5,a5,1	#, tmp149, tmp150
	sw	a5,-20(s0)	# tmp149, i
.L2:
# problem53.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-20(s0)		# tmp153, i
	mv	a4,a5	# tmp152, tmp153
	lw	a5,-44(s0)		# tmp155, size
	sext.w	a4,a4	# tmp156, tmp152
	sext.w	a5,a5	# tmp157, tmp154
	blt	a4,a5,.L5	#, tmp156, tmp157,
# problem53.c:7:     return true;
	li	a5,1		# _6,
.L4:
# problem53.c:8: }
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
# problem53.c:15: int main() {
	la	a5,__stack_chk_guard		# tmp144,
	ld	a4, 0(a5)	# tmp180, __stack_chk_guard
	sd	a4, -24(s0)	# tmp180, D.2776
	li	a4, 0	# tmp180
# problem53.c:16:     int list1[] = {1, 2, 4, 10};
	lla	a5,.LC0	# tmp145,
	ld	a4,0(a5)		# tmp146,
	sd	a4,-120(s0)	# tmp146, list1
	ld	a5,8(a5)		# tmp147,
	sd	a5,-112(s0)	# tmp147, list1
# problem53.c:17:     assert(func0(list1, 4, 100));
	addi	a5,s0,-120	#, tmp148,
	li	a2,100		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp148
	call	func0		#
	mv	a5,a0	# tmp149,
# problem53.c:17:     assert(func0(list1, 4, 100));
	bne	a5,zero,.L7	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC3	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L7:
# problem53.c:19:     int list2[] = {1, 20, 4, 10};
	lla	a5,.LC1	# tmp150,
	ld	a4,0(a5)		# tmp151,
	sd	a4,-104(s0)	# tmp151, list2
	ld	a5,8(a5)		# tmp152,
	sd	a5,-96(s0)	# tmp152, list2
# problem53.c:20:     assert(!func0(list2, 4, 5));
	addi	a5,s0,-104	#, tmp153,
	li	a2,5		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp153
	call	func0		#
	mv	a5,a0	# tmp154,
# problem53.c:20:     assert(!func0(list2, 4, 5));
	xori	a5,a5,1	#, tmp155, _2
	andi	a5,a5,0xff	# _3, tmp155
	bne	a5,zero,.L8	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC3	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L8:
# problem53.c:22:     int list3[] = {1, 20, 4, 10};
	lla	a5,.LC1	# tmp156,
	ld	a4,0(a5)		# tmp157,
	sd	a4,-88(s0)	# tmp157, list3
	ld	a5,8(a5)		# tmp158,
	sd	a5,-80(s0)	# tmp158, list3
# problem53.c:23:     assert(func0(list3, 4, 21));
	addi	a5,s0,-88	#, tmp159,
	li	a2,21		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp159
	call	func0		#
	mv	a5,a0	# tmp160,
# problem53.c:23:     assert(func0(list3, 4, 21));
	bne	a5,zero,.L9	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC3	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L9:
# problem53.c:25:     int list4[] = {1, 20, 4, 10};
	lla	a5,.LC1	# tmp161,
	ld	a4,0(a5)		# tmp162,
	sd	a4,-72(s0)	# tmp162, list4
	ld	a5,8(a5)		# tmp163,
	sd	a5,-64(s0)	# tmp163, list4
# problem53.c:26:     assert(func0(list4, 4, 22));
	addi	a5,s0,-72	#, tmp164,
	li	a2,22		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp164
	call	func0		#
	mv	a5,a0	# tmp165,
# problem53.c:26:     assert(func0(list4, 4, 22));
	bne	a5,zero,.L10	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC3	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L10:
# problem53.c:28:     int list5[] = {1, 8, 4, 10};
	lla	a5,.LC2	# tmp166,
	ld	a4,0(a5)		# tmp167,
	sd	a4,-56(s0)	# tmp167, list5
	ld	a5,8(a5)		# tmp168,
	sd	a5,-48(s0)	# tmp168, list5
# problem53.c:29:     assert(func0(list5, 4, 11));
	addi	a5,s0,-56	#, tmp169,
	li	a2,11		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp169
	call	func0		#
	mv	a5,a0	# tmp170,
# problem53.c:29:     assert(func0(list5, 4, 11));
	bne	a5,zero,.L11	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC3	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L11:
# problem53.c:31:     int list6[] = {1, 8, 4, 10};
	lla	a5,.LC2	# tmp171,
	ld	a4,0(a5)		# tmp172,
	sd	a4,-40(s0)	# tmp172, list6
	ld	a5,8(a5)		# tmp173,
	sd	a5,-32(s0)	# tmp173, list6
# problem53.c:32:     assert(!func0(list6, 4, 10));
	addi	a5,s0,-40	#, tmp174,
	li	a2,10		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp174
	call	func0		#
	mv	a5,a0	# tmp175,
# problem53.c:32:     assert(!func0(list6, 4, 10));
	xori	a5,a5,1	#, tmp176, _7
	andi	a5,a5,0xff	# _8, tmp176
	bne	a5,zero,.L12	#, _8,,
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
	la	a5,__stack_chk_guard		# tmp178,
	ld	a3, -24(s0)	# tmp181, D.2776
	ld	a5, 0(a5)	# tmp179, __stack_chk_guard
	xor	a5, a3, a5	# tmp179, tmp181
	li	a3, 0	# tmp181
	beq	a5,zero,.L14	#, tmp179,,
	call	__stack_chk_fail@plt	#
.L14:
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
