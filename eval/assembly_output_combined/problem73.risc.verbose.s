	.file	"problem73.c"
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
	sd	a0,-40(s0)	# q, q
	mv	a5,a1	# tmp164, size
	mv	a4,a2	# tmp166, w
	sw	a5,-44(s0)	# tmp165, size
	mv	a5,a4	# tmp167, tmp166
	sw	a5,-48(s0)	# tmp167, w
# problem73.c:5:     int sum = 0;
	sw	zero,-24(s0)	#, sum
# problem73.c:6:     for (int i = 0; i < size / 2; i++) {
	sw	zero,-20(s0)	#, i
# problem73.c:6:     for (int i = 0; i < size / 2; i++) {
	j	.L2		#
.L5:
# problem73.c:7:         if (q[i] != q[size - 1 - i]) return false;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp168, q
	add	a5,a4,a5	# _2, _3, tmp168
	lw	a3,0(a5)		# _4, *_3
# problem73.c:7:         if (q[i] != q[size - 1 - i]) return false;
	lw	a5,-44(s0)		# tmp171, size
	addiw	a5,a5,-1	#, tmp169, tmp170
	sext.w	a5,a5	# _5, tmp169
# problem73.c:7:         if (q[i] != q[size - 1 - i]) return false;
	lw	a4,-20(s0)		# tmp174, i
	subw	a5,a5,a4	# tmp172, _5, tmp173
	sext.w	a5,a5	# _6, tmp172
# problem73.c:7:         if (q[i] != q[size - 1 - i]) return false;
	slli	a5,a5,2	#, _8, _7
	ld	a4,-40(s0)		# tmp175, q
	add	a5,a4,a5	# _8, _9, tmp175
	lw	a5,0(a5)		# _10, *_9
# problem73.c:7:         if (q[i] != q[size - 1 - i]) return false;
	mv	a4,a3	# tmp176, _4
	beq	a4,a5,.L3	#, tmp176, tmp177,
# problem73.c:7:         if (q[i] != q[size - 1 - i]) return false;
	li	a5,0		# _32,
# problem73.c:7:         if (q[i] != q[size - 1 - i]) return false;
	j	.L4		#
.L3:
# problem73.c:8:         sum += q[i] + q[size - 1 - i];
	lw	a5,-20(s0)		# _11, i
	slli	a5,a5,2	#, _12, _11
	ld	a4,-40(s0)		# tmp178, q
	add	a5,a4,a5	# _12, _13, tmp178
	lw	a4,0(a5)		# _14, *_13
# problem73.c:8:         sum += q[i] + q[size - 1 - i];
	lw	a5,-44(s0)		# tmp181, size
	addiw	a5,a5,-1	#, tmp179, tmp180
	sext.w	a5,a5	# _15, tmp179
# problem73.c:8:         sum += q[i] + q[size - 1 - i];
	lw	a3,-20(s0)		# tmp184, i
	subw	a5,a5,a3	# tmp182, _15, tmp183
	sext.w	a5,a5	# _16, tmp182
# problem73.c:8:         sum += q[i] + q[size - 1 - i];
	slli	a5,a5,2	#, _18, _17
	ld	a3,-40(s0)		# tmp185, q
	add	a5,a3,a5	# _18, _19, tmp185
	lw	a5,0(a5)		# _20, *_19
# problem73.c:8:         sum += q[i] + q[size - 1 - i];
	addw	a5,a4,a5	# _20, tmp186, _14
	sext.w	a5,a5	# _21, tmp186
# problem73.c:8:         sum += q[i] + q[size - 1 - i];
	lw	a4,-24(s0)		# tmp189, sum
	addw	a5,a4,a5	# _21, tmp187, tmp188
	sw	a5,-24(s0)	# tmp187, sum
# problem73.c:6:     for (int i = 0; i < size / 2; i++) {
	lw	a5,-20(s0)		# tmp192, i
	addiw	a5,a5,1	#, tmp190, tmp191
	sw	a5,-20(s0)	# tmp190, i
.L2:
# problem73.c:6:     for (int i = 0; i < size / 2; i++) {
	lw	a5,-44(s0)		# tmp195, size
	srliw	a4,a5,31	#, tmp196, tmp194
	addw	a5,a4,a5	# tmp194, tmp197, tmp196
	sraiw	a5,a5,1	#, tmp198, tmp197
	sext.w	a4,a5	# _22, tmp198
# problem73.c:6:     for (int i = 0; i < size / 2; i++) {
	lw	a5,-20(s0)		# tmp200, i
	sext.w	a5,a5	# tmp201, tmp199
	blt	a5,a4,.L5	#, tmp201, tmp202,
# problem73.c:10:     if (size % 2 == 1) sum += q[size / 2];
	lw	a5,-44(s0)		# tmp205, size
	mv	a4,a5	# tmp204, tmp205
	sraiw	a5,a4,31	#, tmp206, tmp204
	srliw	a5,a5,31	#, tmp207, tmp206
	addw	a4,a4,a5	# tmp207, tmp208, tmp204
	andi	a4,a4,1	#, tmp209, tmp208
	subw	a5,a4,a5	# tmp210, tmp209, tmp207
	sext.w	a5,a5	# _23, tmp210
# problem73.c:10:     if (size % 2 == 1) sum += q[size / 2];
	mv	a4,a5	# tmp211, _23
	li	a5,1		# tmp212,
	bne	a4,a5,.L6	#, tmp211, tmp212,
# problem73.c:10:     if (size % 2 == 1) sum += q[size / 2];
	lw	a5,-44(s0)		# tmp215, size
	srliw	a4,a5,31	#, tmp216, tmp214
	addw	a5,a4,a5	# tmp214, tmp217, tmp216
	sraiw	a5,a5,1	#, tmp218, tmp217
	sext.w	a5,a5	# _24, tmp218
# problem73.c:10:     if (size % 2 == 1) sum += q[size / 2];
	slli	a5,a5,2	#, _26, _25
	ld	a4,-40(s0)		# tmp219, q
	add	a5,a4,a5	# _26, _27, tmp219
	lw	a5,0(a5)		# _28, *_27
# problem73.c:10:     if (size % 2 == 1) sum += q[size / 2];
	lw	a4,-24(s0)		# tmp222, sum
	addw	a5,a4,a5	# _28, tmp220, tmp221
	sw	a5,-24(s0)	# tmp220, sum
.L6:
# problem73.c:11:     return sum <= w;
	lw	a5,-24(s0)		# tmp225, sum
	mv	a4,a5	# tmp224, tmp225
	lw	a5,-48(s0)		# tmp227, w
	sext.w	a4,a4	# tmp229, tmp224
	sext.w	a5,a5	# tmp230, tmp226
	sgt	a5,a4,a5	# tmp231, tmp229, tmp230
	seqz	a5,a5	# tmp228, tmp231
	andi	a5,a5,0xff	# _32, tmp223
.L4:
# problem73.c:12: }
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
.LC0:
	.string	"problem73.c"
	.align	3
.LC1:
	.string	"func0(test1, 3, 9) == true"
	.align	3
.LC2:
	.string	"func0(test2, 2, 5) == false"
	.align	3
.LC3:
	.string	"func0(test3, 1, 5) == true"
	.align	3
.LC4:
	.string	"func0(test4, 3, 1) == false"
	.align	3
.LC5:
	.string	"func0(test5, 3, 6) == false"
	.align	3
.LC6:
	.string	"func0(test6, 1, 5) == true"
	.align	3
.LC7:
	.string	"All tests passed."
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-96	#,,
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96	#,,
	.cfi_def_cfa 8, 0
# problem73.c:20: int main() {
	la	a5,__stack_chk_guard		# tmp145,
	ld	a4, 0(a5)	# tmp177, __stack_chk_guard
	sd	a4, -24(s0)	# tmp177, D.2776
	li	a4, 0	# tmp177
# problem73.c:21:     int test1[] = {3, 2, 3};
	li	a5,3		# tmp146,
	sw	a5,-72(s0)	# tmp146, test1[0]
	li	a5,2		# tmp147,
	sw	a5,-68(s0)	# tmp147, test1[1]
	li	a5,3		# tmp148,
	sw	a5,-64(s0)	# tmp148, test1[2]
# problem73.c:22:     assert(func0(test1, 3, 9) == true);
	addi	a5,s0,-72	#, tmp149,
	li	a2,9		#,
	li	a1,3		#,
	mv	a0,a5	#, tmp149
	call	func0		#
	mv	a5,a0	# tmp150,
# problem73.c:22:     assert(func0(test1, 3, 9) == true);
	bne	a5,zero,.L8	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L8:
# problem73.c:24:     int test2[] = {1, 2};
	li	a5,1		# tmp151,
	sw	a5,-80(s0)	# tmp151, test2[0]
	li	a5,2		# tmp152,
	sw	a5,-76(s0)	# tmp152, test2[1]
# problem73.c:25:     assert(func0(test2, 2, 5) == false);
	addi	a5,s0,-80	#, tmp153,
	li	a2,5		#,
	li	a1,2		#,
	mv	a0,a5	#, tmp153
	call	func0		#
	mv	a5,a0	# tmp154,
# problem73.c:25:     assert(func0(test2, 2, 5) == false);
	xori	a5,a5,1	#, tmp155, _2
	andi	a5,a5,0xff	# _3, tmp155
	bne	a5,zero,.L9	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L9:
# problem73.c:27:     int test3[] = {3};
	li	a5,3		# tmp156,
	sw	a5,-96(s0)	# tmp156, test3[0]
# problem73.c:28:     assert(func0(test3, 1, 5) == true);
	addi	a5,s0,-96	#, tmp157,
	li	a2,5		#,
	li	a1,1		#,
	mv	a0,a5	#, tmp157
	call	func0		#
	mv	a5,a0	# tmp158,
# problem73.c:28:     assert(func0(test3, 1, 5) == true);
	bne	a5,zero,.L10	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L10:
# problem73.c:30:     int test4[] = {3, 2, 3};
	li	a5,3		# tmp159,
	sw	a5,-56(s0)	# tmp159, test4[0]
	li	a5,2		# tmp160,
	sw	a5,-52(s0)	# tmp160, test4[1]
	li	a5,3		# tmp161,
	sw	a5,-48(s0)	# tmp161, test4[2]
# problem73.c:31:     assert(func0(test4, 3, 1) == false);
	addi	a5,s0,-56	#, tmp162,
	li	a2,1		#,
	li	a1,3		#,
	mv	a0,a5	#, tmp162
	call	func0		#
	mv	a5,a0	# tmp163,
# problem73.c:31:     assert(func0(test4, 3, 1) == false);
	xori	a5,a5,1	#, tmp164, _5
	andi	a5,a5,0xff	# _6, tmp164
	bne	a5,zero,.L11	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L11:
# problem73.c:33:     int test5[] = {1, 2, 3};
	li	a5,1		# tmp165,
	sw	a5,-40(s0)	# tmp165, test5[0]
	li	a5,2		# tmp166,
	sw	a5,-36(s0)	# tmp166, test5[1]
	li	a5,3		# tmp167,
	sw	a5,-32(s0)	# tmp167, test5[2]
# problem73.c:34:     assert(func0(test5, 3, 6) == false);
	addi	a5,s0,-40	#, tmp168,
	li	a2,6		#,
	li	a1,3		#,
	mv	a0,a5	#, tmp168
	call	func0		#
	mv	a5,a0	# tmp169,
# problem73.c:34:     assert(func0(test5, 3, 6) == false);
	xori	a5,a5,1	#, tmp170, _7
	andi	a5,a5,0xff	# _8, tmp170
	bne	a5,zero,.L12	#, _8,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L12:
# problem73.c:36:     int test6[] = {5};
	li	a5,5		# tmp171,
	sw	a5,-88(s0)	# tmp171, test6[0]
# problem73.c:37:     assert(func0(test6, 1, 5) == true);
	addi	a5,s0,-88	#, tmp172,
	li	a2,5		#,
	li	a1,1		#,
	mv	a0,a5	#, tmp172
	call	func0		#
	mv	a5,a0	# tmp173,
# problem73.c:37:     assert(func0(test6, 1, 5) == true);
	bne	a5,zero,.L13	#, _9,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L13:
# problem73.c:39:     printf("All tests passed.\n");
	lla	a0,.LC7	#,
	call	puts@plt	#
# problem73.c:40:     return 0;
	li	a5,0		# _37,
# problem73.c:41: }
	mv	a4,a5	# <retval>, _37
	la	a5,__stack_chk_guard		# tmp175,
	ld	a3, -24(s0)	# tmp178, D.2776
	ld	a5, 0(a5)	# tmp176, __stack_chk_guard
	xor	a5, a3, a5	# tmp176, tmp178
	li	a3, 0	# tmp178
	beq	a5,zero,.L15	#, tmp176,,
	call	__stack_chk_fail@plt	#
.L15:
	mv	a0,a4	#, <retval>
	ld	ra,88(sp)		#,
	.cfi_restore 1
	ld	s0,80(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96	#,,
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
