	.file	"problem43.c"
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
	mv	a5,a1	# tmp142, size
	sw	a5,-44(s0)	# tmp143, size
# problem43.c:4:     for (int i = 0; i < size; i++)
	sw	zero,-20(s0)	#, i
# problem43.c:4:     for (int i = 0; i < size; i++)
	j	.L2		#
.L3:
# problem43.c:5:         l[i] += 1;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp144, l
	add	a5,a4,a5	# _2, _3, tmp144
	lw	a4,0(a5)		# _4, *_3
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a3,-40(s0)		# tmp145, l
	add	a5,a3,a5	# _6, _7, tmp145
# problem43.c:5:         l[i] += 1;
	addiw	a4,a4,1	#, tmp146, _4
	sext.w	a4,a4	# _8, tmp146
	sw	a4,0(a5)	# _8, *_7
# problem43.c:4:     for (int i = 0; i < size; i++)
	lw	a5,-20(s0)		# tmp149, i
	addiw	a5,a5,1	#, tmp147, tmp148
	sw	a5,-20(s0)	# tmp147, i
.L2:
# problem43.c:4:     for (int i = 0; i < size; i++)
	lw	a5,-20(s0)		# tmp151, i
	mv	a4,a5	# tmp150, tmp151
	lw	a5,-44(s0)		# tmp153, size
	sext.w	a4,a4	# tmp154, tmp150
	sext.w	a5,a5	# tmp155, tmp152
	blt	a4,a5,.L3	#, tmp154, tmp155,
# problem43.c:6: }
	nop	
	nop	
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# a, a
	mv	a5,a1	# tmp144, size_a
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp146, size_b
	sw	a5,-44(s0)	# tmp145, size_a
	mv	a5,a4	# tmp147, tmp146
	sw	a5,-48(s0)	# tmp147, size_b
# problem43.c:14:     if (size_a != size_b) return 0;
	lw	a5,-44(s0)		# tmp149, size_a
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-48(s0)		# tmp151, size_b
	sext.w	a4,a4	# tmp152, tmp148
	sext.w	a5,a5	# tmp153, tmp150
	beq	a4,a5,.L5	#, tmp152, tmp153,
# problem43.c:14:     if (size_a != size_b) return 0;
	li	a5,0		# _10,
# problem43.c:14:     if (size_a != size_b) return 0;
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
	ld	a4,-40(s0)		# tmp154, a
	add	a5,a4,a5	# _2, _3, tmp154
	lw	a3,0(a5)		# _4, *_3
# problem43.c:16:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp155, b
	add	a5,a4,a5	# _6, _7, tmp155
	lw	a5,0(a5)		# _8, *_7
# problem43.c:16:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp156, _4
	beq	a4,a5,.L8	#, tmp156, tmp157,
# problem43.c:16:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
# problem43.c:16:         if (a[i] != b[i]) return 0;
	j	.L6		#
.L8:
# problem43.c:15:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-20(s0)	# tmp158, i
.L7:
# problem43.c:15:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-44(s0)		# tmp164, size_a
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L9	#, tmp165, tmp166,
# problem43.c:18:     return 1;
	li	a5,1		# _10,
.L6:
# problem43.c:19: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
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
.LFB2:
	.cfi_startproc
	addi	sp,sp,-160	#,,
	.cfi_def_cfa_offset 160
	sd	ra,152(sp)	#,
	sd	s0,144(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,160	#,,
	.cfi_def_cfa 8, 0
# problem43.c:21: int main() {
	la	a5,__stack_chk_guard		# tmp139,
	ld	a4, 0(a5)	# tmp173, __stack_chk_guard
	sd	a4, -24(s0)	# tmp173, D.2777
	li	a4, 0	# tmp173
# problem43.c:24:     func0(list1, 0);
	addi	a5,s0,-152	#, tmp140,
	li	a1,0		#,
	mv	a0,a5	#, tmp140
	call	func0		#
# problem43.c:25:     assert(issame(list1, 0, result1, 0));
	addi	a4,s0,-144	#, tmp141,
	addi	a5,s0,-152	#, tmp142,
	li	a3,0		#,
	mv	a2,a4	#, tmp141
	li	a1,0		#,
	mv	a0,a5	#, tmp142
	call	issame		#
	mv	a5,a0	# tmp143,
# problem43.c:25:     assert(issame(list1, 0, result1, 0));
	bne	a5,zero,.L11	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L11:
# problem43.c:27:     int list2[] = {3, 2, 1};
	li	a5,3		# tmp144,
	sw	a5,-136(s0)	# tmp144, list2[0]
	li	a5,2		# tmp145,
	sw	a5,-132(s0)	# tmp145, list2[1]
	li	a5,1		# tmp146,
	sw	a5,-128(s0)	# tmp146, list2[2]
# problem43.c:28:     int result2[] = {4, 3, 2};
	li	a5,4		# tmp147,
	sw	a5,-120(s0)	# tmp147, result2[0]
	li	a5,3		# tmp148,
	sw	a5,-116(s0)	# tmp148, result2[1]
	li	a5,2		# tmp149,
	sw	a5,-112(s0)	# tmp149, result2[2]
# problem43.c:29:     func0(list2, 3);
	addi	a5,s0,-136	#, tmp150,
	li	a1,3		#,
	mv	a0,a5	#, tmp150
	call	func0		#
# problem43.c:30:     assert(issame(list2, 3, result2, 3));
	addi	a4,s0,-120	#, tmp151,
	addi	a5,s0,-136	#, tmp152,
	li	a3,3		#,
	mv	a2,a4	#, tmp151
	li	a1,3		#,
	mv	a0,a5	#, tmp152
	call	issame		#
	mv	a5,a0	# tmp153,
# problem43.c:30:     assert(issame(list2, 3, result2, 3));
	bne	a5,zero,.L12	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC2	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L12:
# problem43.c:32:     int list3[] = {5, 2, 5, 2, 3, 3, 9, 0, 123};
	lla	a5,.LC0	# tmp154,
	ld	a1,0(a5)		# tmp155,
	ld	a2,8(a5)		# tmp156,
	ld	a3,16(a5)		# tmp157,
	ld	a4,24(a5)		# tmp158,
	sd	a1,-104(s0)	# tmp155, list3
	sd	a2,-96(s0)	# tmp156, list3
	sd	a3,-88(s0)	# tmp157, list3
	sd	a4,-80(s0)	# tmp158, list3
	lw	a5,32(a5)		# tmp159,
	sw	a5,-72(s0)	# tmp159, list3
# problem43.c:33:     int result3[] = {6, 3, 6, 3, 4, 4, 10, 1, 124};
	lla	a5,.LC1	# tmp160,
	ld	a1,0(a5)		# tmp161,
	ld	a2,8(a5)		# tmp162,
	ld	a3,16(a5)		# tmp163,
	ld	a4,24(a5)		# tmp164,
	sd	a1,-64(s0)	# tmp161, result3
	sd	a2,-56(s0)	# tmp162, result3
	sd	a3,-48(s0)	# tmp163, result3
	sd	a4,-40(s0)	# tmp164, result3
	lw	a5,32(a5)		# tmp165,
	sw	a5,-32(s0)	# tmp165, result3
# problem43.c:34:     func0(list3, 9);
	addi	a5,s0,-104	#, tmp166,
	li	a1,9		#,
	mv	a0,a5	#, tmp166
	call	func0		#
# problem43.c:35:     assert(issame(list3, 9, result3, 9));
	addi	a4,s0,-64	#, tmp167,
	addi	a5,s0,-104	#, tmp168,
	li	a3,9		#,
	mv	a2,a4	#, tmp167
	li	a1,9		#,
	mv	a0,a5	#, tmp168
	call	issame		#
	mv	a5,a0	# tmp169,
# problem43.c:35:     assert(issame(list3, 9, result3, 9));
	bne	a5,zero,.L13	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC2	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L13:
# problem43.c:37:     return 0;
	li	a5,0		# _22,
# problem43.c:38: }
	mv	a4,a5	# <retval>, _22
	la	a5,__stack_chk_guard		# tmp171,
	ld	a3, -24(s0)	# tmp174, D.2777
	ld	a5, 0(a5)	# tmp172, __stack_chk_guard
	xor	a5, a3, a5	# tmp172, tmp174
	li	a3, 0	# tmp174
	beq	a5,zero,.L15	#, tmp172,,
	call	__stack_chk_fail@plt	#
.L15:
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
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
