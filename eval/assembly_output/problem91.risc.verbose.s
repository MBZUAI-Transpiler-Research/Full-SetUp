	.file	"problem91.c"
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
	sd	a0,-40(s0)	# lst, lst
	mv	a5,a1	# tmp154, size
	sw	a5,-44(s0)	# tmp155, size
# problem91.c:5:     if (size < 2) return -1;
	lw	a5,-44(s0)		# tmp157, size
	sext.w	a4,a5	# tmp158, tmp156
	li	a5,1		# tmp159,
	bgt	a4,a5,.L2	#, tmp158, tmp159,
# problem91.c:5:     if (size < 2) return -1;
	li	a5,-1		# _24,
# problem91.c:5:     if (size < 2) return -1;
	j	.L3		#
.L2:
# problem91.c:7:     int first = INT_MAX, second = INT_MAX;
	li	a5,-2147483648		# tmp161,
	addi	a5,a5,-1	#, tmp160, tmp161
	sw	a5,-28(s0)	# tmp160, first
# problem91.c:7:     int first = INT_MAX, second = INT_MAX;
	li	a5,-2147483648		# tmp163,
	addi	a5,a5,-1	#, tmp162, tmp163
	sw	a5,-24(s0)	# tmp162, second
# problem91.c:8:     for (int i = 0; i < size; ++i) {
	sw	zero,-20(s0)	#, i
# problem91.c:8:     for (int i = 0; i < size; ++i) {
	j	.L4		#
.L7:
# problem91.c:9:         if (lst[i] < first) {
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp164, lst
	add	a5,a4,a5	# _2, _3, tmp164
	lw	a4,0(a5)		# _4, *_3
# problem91.c:9:         if (lst[i] < first) {
	lw	a5,-28(s0)		# tmp166, first
	sext.w	a5,a5	# tmp167, tmp165
	ble	a5,a4,.L5	#, tmp167, tmp168,
# problem91.c:10:             second = first;
	lw	a5,-28(s0)		# tmp169, first
	sw	a5,-24(s0)	# tmp169, second
# problem91.c:11:             first = lst[i];
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp170, lst
	add	a5,a4,a5	# _6, _7, tmp170
# problem91.c:11:             first = lst[i];
	lw	a5,0(a5)		# tmp171, *_7
	sw	a5,-28(s0)	# tmp171, first
	j	.L6		#
.L5:
# problem91.c:12:         } else if (lst[i] < second && lst[i] != first) {
	lw	a5,-20(s0)		# _8, i
	slli	a5,a5,2	#, _9, _8
	ld	a4,-40(s0)		# tmp172, lst
	add	a5,a4,a5	# _9, _10, tmp172
	lw	a4,0(a5)		# _11, *_10
# problem91.c:12:         } else if (lst[i] < second && lst[i] != first) {
	lw	a5,-24(s0)		# tmp174, second
	sext.w	a5,a5	# tmp175, tmp173
	ble	a5,a4,.L6	#, tmp175, tmp176,
# problem91.c:12:         } else if (lst[i] < second && lst[i] != first) {
	lw	a5,-20(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	ld	a4,-40(s0)		# tmp177, lst
	add	a5,a4,a5	# _13, _14, tmp177
	lw	a4,0(a5)		# _15, *_14
# problem91.c:12:         } else if (lst[i] < second && lst[i] != first) {
	lw	a5,-28(s0)		# tmp179, first
	sext.w	a5,a5	# tmp180, tmp178
	beq	a5,a4,.L6	#, tmp180, tmp181,
# problem91.c:13:             second = lst[i];
	lw	a5,-20(s0)		# _16, i
	slli	a5,a5,2	#, _17, _16
	ld	a4,-40(s0)		# tmp182, lst
	add	a5,a4,a5	# _17, _18, tmp182
# problem91.c:13:             second = lst[i];
	lw	a5,0(a5)		# tmp183, *_18
	sw	a5,-24(s0)	# tmp183, second
.L6:
# problem91.c:8:     for (int i = 0; i < size; ++i) {
	lw	a5,-20(s0)		# tmp186, i
	addiw	a5,a5,1	#, tmp184, tmp185
	sw	a5,-20(s0)	# tmp184, i
.L4:
# problem91.c:8:     for (int i = 0; i < size; ++i) {
	lw	a5,-20(s0)		# tmp188, i
	mv	a4,a5	# tmp187, tmp188
	lw	a5,-44(s0)		# tmp190, size
	sext.w	a4,a4	# tmp191, tmp187
	sext.w	a5,a5	# tmp192, tmp189
	blt	a4,a5,.L7	#, tmp191, tmp192,
# problem91.c:17:     if (second == INT_MAX) return -1;
	lw	a5,-24(s0)		# tmp194, second
	sext.w	a4,a5	# tmp195, tmp193
	li	a5,-2147483648		# tmp197,
	xori	a5,a5,-1	#, tmp196, tmp197
	bne	a4,a5,.L8	#, tmp195, tmp196,
# problem91.c:17:     if (second == INT_MAX) return -1;
	li	a5,-1		# _24,
# problem91.c:17:     if (second == INT_MAX) return -1;
	j	.L3		#
.L8:
# problem91.c:18:     return second;
	lw	a5,-24(s0)		# _24, second
.L3:
# problem91.c:19: }
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
	.string	"problem91.c"
	.align	3
.LC5:
	.string	"func0(test1, 5) == 2"
	.align	3
.LC6:
	.string	"func0(test2, 5) == 2"
	.align	3
.LC7:
	.string	"func0((int[]){}, 0) == -1"
	.align	3
.LC8:
	.string	"func0(test4, 2) == -1"
	.align	3
.LC9:
	.string	"func0(test5, 5) == 1"
	.align	3
.LC10:
	.string	"func0(test6, 4) == -35"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.align	3
.LC1:
	.word	5
	.word	1
	.word	4
	.word	3
	.word	2
	.align	3
.LC2:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	0
	.align	3
.LC3:
	.word	-35
	.word	34
	.word	12
	.word	-45
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
# problem91.c:25: int main() {
	la	a5,__stack_chk_guard		# tmp142,
	ld	a4, 0(a5)	# tmp187, __stack_chk_guard
	sd	a4, -24(s0)	# tmp187, D.2787
	li	a4, 0	# tmp187
# problem91.c:26:     int test1[] = {1, 2, 3, 4, 5};
	lla	a5,.LC0	# tmp143,
	ld	a4,0(a5)		# tmp144,
	sd	a4,-96(s0)	# tmp144, test1
	ld	a4,8(a5)		# tmp145,
	sd	a4,-88(s0)	# tmp145, test1
	lw	a5,16(a5)		# tmp146,
	sw	a5,-80(s0)	# tmp146, test1
# problem91.c:27:     assert(func0(test1, 5) == 2);
	addi	a5,s0,-96	#, tmp147,
	li	a1,5		#,
	mv	a0,a5	#, tmp147
	call	func0		#
	mv	a5,a0	# tmp148,
# problem91.c:27:     assert(func0(test1, 5) == 2);
	mv	a4,a5	# tmp149, _1
	li	a5,2		# tmp150,
	beq	a4,a5,.L10	#, tmp149, tmp150,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC4	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L10:
# problem91.c:29:     int test2[] = {5, 1, 4, 3, 2};
	lla	a5,.LC1	# tmp151,
	ld	a4,0(a5)		# tmp152,
	sd	a4,-72(s0)	# tmp152, test2
	ld	a4,8(a5)		# tmp153,
	sd	a4,-64(s0)	# tmp153, test2
	lw	a5,16(a5)		# tmp154,
	sw	a5,-56(s0)	# tmp154, test2
# problem91.c:30:     assert(func0(test2, 5) == 2);
	addi	a5,s0,-72	#, tmp155,
	li	a1,5		#,
	mv	a0,a5	#, tmp155
	call	func0		#
	mv	a5,a0	# tmp156,
# problem91.c:30:     assert(func0(test2, 5) == 2);
	mv	a4,a5	# tmp157, _2
	li	a5,2		# tmp158,
	beq	a4,a5,.L11	#, tmp157, tmp158,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC4	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L11:
# problem91.c:32:     assert(func0((int[]){}, 0) == -1);
	addi	a5,s0,-48	#, tmp159,
	li	a1,0		#,
	mv	a0,a5	#, tmp159
	call	func0		#
	mv	a5,a0	# tmp160,
# problem91.c:32:     assert(func0((int[]){}, 0) == -1);
	mv	a4,a5	# tmp161, _3
	li	a5,-1		# tmp162,
	beq	a4,a5,.L12	#, tmp161, tmp162,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC4	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L12:
# problem91.c:34:     int test4[] = {1, 1};
	li	a5,1		# tmp163,
	sw	a5,-120(s0)	# tmp163, test4[0]
	li	a5,1		# tmp164,
	sw	a5,-116(s0)	# tmp164, test4[1]
# problem91.c:35:     assert(func0(test4, 2) == -1);
	addi	a5,s0,-120	#, tmp165,
	li	a1,2		#,
	mv	a0,a5	#, tmp165
	call	func0		#
	mv	a5,a0	# tmp166,
# problem91.c:35:     assert(func0(test4, 2) == -1);
	mv	a4,a5	# tmp167, _4
	li	a5,-1		# tmp168,
	beq	a4,a5,.L13	#, tmp167, tmp168,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC4	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L13:
# problem91.c:37:     int test5[] = {1, 1, 1, 1, 0};
	lla	a5,.LC2	# tmp169,
	ld	a4,0(a5)		# tmp170,
	sd	a4,-48(s0)	# tmp170, MEM[(int[5] *)_35]
	ld	a4,8(a5)		# tmp171,
	sd	a4,-40(s0)	# tmp171, MEM[(int[5] *)_35]
	lw	a5,16(a5)		# tmp172,
	sw	a5,-32(s0)	# tmp172, MEM[(int[5] *)_35]
# problem91.c:38:     assert(func0(test5, 5) == 1);
	addi	a5,s0,-48	#, tmp173,
	li	a1,5		#,
	mv	a0,a5	#, tmp173
	call	func0		#
	mv	a5,a0	# tmp174,
# problem91.c:38:     assert(func0(test5, 5) == 1);
	mv	a4,a5	# tmp175, _5
	li	a5,1		# tmp176,
	beq	a4,a5,.L14	#, tmp175, tmp176,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC4	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L14:
# problem91.c:40:     int test6[] = {-35, 34, 12, -45};
	lla	a5,.LC3	# tmp177,
	ld	a4,0(a5)		# tmp178,
	sd	a4,-112(s0)	# tmp178, test6
	ld	a5,8(a5)		# tmp179,
	sd	a5,-104(s0)	# tmp179, test6
# problem91.c:41:     assert(func0(test6, 4) == -35);
	addi	a5,s0,-112	#, tmp180,
	li	a1,4		#,
	mv	a0,a5	#, tmp180
	call	func0		#
	mv	a5,a0	# tmp181,
# problem91.c:41:     assert(func0(test6, 4) == -35);
	mv	a4,a5	# tmp182, _6
	li	a5,-35		# tmp183,
	beq	a4,a5,.L15	#, tmp182, tmp183,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC4	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L15:
# problem91.c:43:     return 0;
	li	a5,0		# _27,
# problem91.c:44: }
	mv	a4,a5	# <retval>, _27
	la	a5,__stack_chk_guard		# tmp185,
	ld	a3, -24(s0)	# tmp188, D.2787
	ld	a5, 0(a5)	# tmp186, __stack_chk_guard
	xor	a5, a3, a5	# tmp186, tmp188
	li	a3, 0	# tmp188
	beq	a5,zero,.L17	#, tmp186,,
	call	__stack_chk_fail@plt	#
.L17:
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
