	.file	"problem74.c"
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
	mv	a5,a1	# tmp147, size
	sw	a5,-44(s0)	# tmp148, size
# problem74.c:4:     int out = 0;
	sw	zero,-24(s0)	#, out
# problem74.c:5:     for (int i = 0; i < size / 2; i++) {
	sw	zero,-20(s0)	#, i
# problem74.c:5:     for (int i = 0; i < size / 2; i++) {
	j	.L2		#
.L4:
# problem74.c:6:         if (arr[i] != arr[size - 1 - i]) {
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp149, arr
	add	a5,a4,a5	# _2, _3, tmp149
	lw	a3,0(a5)		# _4, *_3
# problem74.c:6:         if (arr[i] != arr[size - 1 - i]) {
	lw	a5,-44(s0)		# tmp152, size
	addiw	a5,a5,-1	#, tmp150, tmp151
	sext.w	a5,a5	# _5, tmp150
# problem74.c:6:         if (arr[i] != arr[size - 1 - i]) {
	lw	a4,-20(s0)		# tmp155, i
	subw	a5,a5,a4	# tmp153, _5, tmp154
	sext.w	a5,a5	# _6, tmp153
# problem74.c:6:         if (arr[i] != arr[size - 1 - i]) {
	slli	a5,a5,2	#, _8, _7
	ld	a4,-40(s0)		# tmp156, arr
	add	a5,a4,a5	# _8, _9, tmp156
	lw	a5,0(a5)		# _10, *_9
# problem74.c:6:         if (arr[i] != arr[size - 1 - i]) {
	mv	a4,a3	# tmp157, _4
	beq	a4,a5,.L3	#, tmp157, tmp158,
# problem74.c:7:             out++;
	lw	a5,-24(s0)		# tmp161, out
	addiw	a5,a5,1	#, tmp159, tmp160
	sw	a5,-24(s0)	# tmp159, out
.L3:
# problem74.c:5:     for (int i = 0; i < size / 2; i++) {
	lw	a5,-20(s0)		# tmp164, i
	addiw	a5,a5,1	#, tmp162, tmp163
	sw	a5,-20(s0)	# tmp162, i
.L2:
# problem74.c:5:     for (int i = 0; i < size / 2; i++) {
	lw	a5,-44(s0)		# tmp167, size
	srliw	a4,a5,31	#, tmp168, tmp166
	addw	a5,a4,a5	# tmp166, tmp169, tmp168
	sraiw	a5,a5,1	#, tmp170, tmp169
	sext.w	a4,a5	# _11, tmp170
# problem74.c:5:     for (int i = 0; i < size / 2; i++) {
	lw	a5,-20(s0)		# tmp172, i
	sext.w	a5,a5	# tmp173, tmp171
	blt	a5,a4,.L4	#, tmp173, tmp174,
# problem74.c:10:     return out;
	lw	a5,-24(s0)		# _18, out
# problem74.c:11: }
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
	.string	"problem74.c"
	.align	3
.LC6:
	.string	"func0(test1, 8) == 4"
	.align	3
.LC7:
	.string	"func0(test2, 7) == 1"
	.align	3
.LC8:
	.string	"func0(test3, 3) == 1"
	.align	3
.LC9:
	.string	"func0(test4, 4) == 1"
	.align	3
.LC10:
	.string	"func0(test5, 5) == 0"
	.align	3
.LC11:
	.string	"func0(test6, 4) == 0"
	.align	3
.LC12:
	.string	"func0(test7, 1) == 0"
	.align	3
.LC13:
	.string	"func0(test8, 2) == 1"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	5
	.word	4
	.word	7
	.word	9
	.word	6
	.align	3
.LC1:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	3
	.word	2
	.word	2
	.align	3
.LC2:
	.word	1
	.word	4
	.word	4
	.word	2
	.align	3
.LC3:
	.word	1
	.word	2
	.word	3
	.word	2
	.word	1
	.align	3
.LC4:
	.word	3
	.word	1
	.word	1
	.word	3
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
# problem74.c:18: int main() {
	la	a5,__stack_chk_guard		# tmp144,
	ld	a4, 0(a5)	# tmp199, __stack_chk_guard
	sd	a4, -24(s0)	# tmp199, D.2784
	li	a4, 0	# tmp199
# problem74.c:19:     int test1[] = {1, 2, 3, 5, 4, 7, 9, 6};
	lla	a5,.LC0	# tmp145,
	ld	a2,0(a5)		# tmp146,
	ld	a3,8(a5)		# tmp147,
	ld	a4,16(a5)		# tmp148,
	ld	a5,24(a5)		# tmp149,
	sd	a2,-56(s0)	# tmp146, test1
	sd	a3,-48(s0)	# tmp147, test1
	sd	a4,-40(s0)	# tmp148, test1
	sd	a5,-32(s0)	# tmp149, test1
# problem74.c:20:     assert(func0(test1, 8) == 4);
	addi	a5,s0,-56	#, tmp150,
	li	a1,8		#,
	mv	a0,a5	#, tmp150
	call	func0		#
	mv	a5,a0	# tmp151,
# problem74.c:20:     assert(func0(test1, 8) == 4);
	mv	a4,a5	# tmp152, _1
	li	a5,4		# tmp153,
	beq	a4,a5,.L7	#, tmp152, tmp153,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC5	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L7:
# problem74.c:22:     int test2[] = {1, 2, 3, 4, 3, 2, 2};
	lla	a5,.LC1	# tmp154,
	ld	a2,0(a5)		# tmp155,
	ld	a3,8(a5)		# tmp156,
	ld	a4,16(a5)		# tmp157,
	sd	a2,-88(s0)	# tmp155, test2
	sd	a3,-80(s0)	# tmp156, test2
	sd	a4,-72(s0)	# tmp157, test2
	lw	a5,24(a5)		# tmp158,
	sw	a5,-64(s0)	# tmp158, test2
# problem74.c:23:     assert(func0(test2, 7) == 1);
	addi	a5,s0,-88	#, tmp159,
	li	a1,7		#,
	mv	a0,a5	#, tmp159
	call	func0		#
	mv	a5,a0	# tmp160,
# problem74.c:23:     assert(func0(test2, 7) == 1);
	mv	a4,a5	# tmp161, _2
	li	a5,1		# tmp162,
	beq	a4,a5,.L8	#, tmp161, tmp162,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC5	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L8:
# problem74.c:25:     int test3[] = {1, 4, 2};
	li	a5,1		# tmp163,
	sw	a5,-160(s0)	# tmp163, test3[0]
	li	a5,4		# tmp164,
	sw	a5,-156(s0)	# tmp164, test3[1]
	li	a5,2		# tmp165,
	sw	a5,-152(s0)	# tmp165, test3[2]
# problem74.c:26:     assert(func0(test3, 3) == 1);
	addi	a5,s0,-160	#, tmp166,
	li	a1,3		#,
	mv	a0,a5	#, tmp166
	call	func0		#
	mv	a5,a0	# tmp167,
# problem74.c:26:     assert(func0(test3, 3) == 1);
	mv	a4,a5	# tmp168, _3
	li	a5,1		# tmp169,
	beq	a4,a5,.L9	#, tmp168, tmp169,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC5	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L9:
# problem74.c:28:     int test4[] = {1, 4, 4, 2};
	lla	a5,.LC2	# tmp170,
	ld	a4,0(a5)		# tmp171,
	sd	a4,-144(s0)	# tmp171, test4
	ld	a5,8(a5)		# tmp172,
	sd	a5,-136(s0)	# tmp172, test4
# problem74.c:29:     assert(func0(test4, 4) == 1);
	addi	a5,s0,-144	#, tmp173,
	li	a1,4		#,
	mv	a0,a5	#, tmp173
	call	func0		#
	mv	a5,a0	# tmp174,
# problem74.c:29:     assert(func0(test4, 4) == 1);
	mv	a4,a5	# tmp175, _4
	li	a5,1		# tmp176,
	beq	a4,a5,.L10	#, tmp175, tmp176,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC5	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L10:
# problem74.c:31:     int test5[] = {1, 2, 3, 2, 1};
	lla	a5,.LC3	# tmp177,
	ld	a4,0(a5)		# tmp178,
	sd	a4,-112(s0)	# tmp178, test5
	ld	a4,8(a5)		# tmp179,
	sd	a4,-104(s0)	# tmp179, test5
	lw	a5,16(a5)		# tmp180,
	sw	a5,-96(s0)	# tmp180, test5
# problem74.c:32:     assert(func0(test5, 5) == 0);
	addi	a5,s0,-112	#, tmp181,
	li	a1,5		#,
	mv	a0,a5	#, tmp181
	call	func0		#
	mv	a5,a0	# tmp182,
# problem74.c:32:     assert(func0(test5, 5) == 0);
	beq	a5,zero,.L11	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC5	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L11:
# problem74.c:34:     int test6[] = {3, 1, 1, 3};
	lla	a5,.LC4	# tmp183,
	ld	a4,0(a5)		# tmp184,
	sd	a4,-128(s0)	# tmp184, test6
	ld	a5,8(a5)		# tmp185,
	sd	a5,-120(s0)	# tmp185, test6
# problem74.c:35:     assert(func0(test6, 4) == 0);
	addi	a5,s0,-128	#, tmp186,
	li	a1,4		#,
	mv	a0,a5	#, tmp186
	call	func0		#
	mv	a5,a0	# tmp187,
# problem74.c:35:     assert(func0(test6, 4) == 0);
	beq	a5,zero,.L12	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC5	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L12:
# problem74.c:37:     int test7[] = {1};
	li	a5,1		# tmp188,
	sw	a5,-176(s0)	# tmp188, test7[0]
# problem74.c:38:     assert(func0(test7, 1) == 0);
	addi	a5,s0,-176	#, tmp189,
	li	a1,1		#,
	mv	a0,a5	#, tmp189
	call	func0		#
	mv	a5,a0	# tmp190,
# problem74.c:38:     assert(func0(test7, 1) == 0);
	beq	a5,zero,.L13	#, _7,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC5	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L13:
# problem74.c:40:     int test8[] = {0, 1};
	sw	zero,-168(s0)	#, test8[0]
	li	a5,1		# tmp191,
	sw	a5,-164(s0)	# tmp191, test8[1]
# problem74.c:41:     assert(func0(test8, 2) == 1);
	addi	a5,s0,-168	#, tmp192,
	li	a1,2		#,
	mv	a0,a5	#, tmp192
	call	func0		#
	mv	a5,a0	# tmp193,
# problem74.c:41:     assert(func0(test8, 2) == 1);
	mv	a4,a5	# tmp194, _8
	li	a5,1		# tmp195,
	beq	a4,a5,.L14	#, tmp194, tmp195,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC5	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L14:
# problem74.c:43:     return 0;
	li	a5,0		# _37,
# problem74.c:44: }
	mv	a4,a5	# <retval>, _37
	la	a5,__stack_chk_guard		# tmp197,
	ld	a3, -24(s0)	# tmp200, D.2784
	ld	a5, 0(a5)	# tmp198, __stack_chk_guard
	xor	a5, a3, a5	# tmp198, tmp200
	li	a3, 0	# tmp200
	beq	a5,zero,.L16	#, tmp198,,
	call	__stack_chk_fail@plt	#
.L16:
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
