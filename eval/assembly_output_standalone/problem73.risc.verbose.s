	.file	"code.c"
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
# eval/problem73//code.c:5:     int sum = 0;
	sw	zero,-24(s0)	#, sum
# eval/problem73//code.c:6:     for (int i = 0; i < size / 2; i++) {
	sw	zero,-20(s0)	#, i
# eval/problem73//code.c:6:     for (int i = 0; i < size / 2; i++) {
	j	.L2		#
.L5:
# eval/problem73//code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp168, q
	add	a5,a4,a5	# _2, _3, tmp168
	lw	a3,0(a5)		# _4, *_3
# eval/problem73//code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	lw	a5,-44(s0)		# tmp171, size
	addiw	a5,a5,-1	#, tmp169, tmp170
	sext.w	a5,a5	# _5, tmp169
# eval/problem73//code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	lw	a4,-20(s0)		# tmp174, i
	subw	a5,a5,a4	# tmp172, _5, tmp173
	sext.w	a5,a5	# _6, tmp172
# eval/problem73//code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	slli	a5,a5,2	#, _8, _7
	ld	a4,-40(s0)		# tmp175, q
	add	a5,a4,a5	# _8, _9, tmp175
	lw	a5,0(a5)		# _10, *_9
# eval/problem73//code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	mv	a4,a3	# tmp176, _4
	beq	a4,a5,.L3	#, tmp176, tmp177,
# eval/problem73//code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	li	a5,0		# _32,
# eval/problem73//code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	j	.L4		#
.L3:
# eval/problem73//code.c:8:         sum += q[i] + q[size - 1 - i];
	lw	a5,-20(s0)		# _11, i
	slli	a5,a5,2	#, _12, _11
	ld	a4,-40(s0)		# tmp178, q
	add	a5,a4,a5	# _12, _13, tmp178
	lw	a4,0(a5)		# _14, *_13
# eval/problem73//code.c:8:         sum += q[i] + q[size - 1 - i];
	lw	a5,-44(s0)		# tmp181, size
	addiw	a5,a5,-1	#, tmp179, tmp180
	sext.w	a5,a5	# _15, tmp179
# eval/problem73//code.c:8:         sum += q[i] + q[size - 1 - i];
	lw	a3,-20(s0)		# tmp184, i
	subw	a5,a5,a3	# tmp182, _15, tmp183
	sext.w	a5,a5	# _16, tmp182
# eval/problem73//code.c:8:         sum += q[i] + q[size - 1 - i];
	slli	a5,a5,2	#, _18, _17
	ld	a3,-40(s0)		# tmp185, q
	add	a5,a3,a5	# _18, _19, tmp185
	lw	a5,0(a5)		# _20, *_19
# eval/problem73//code.c:8:         sum += q[i] + q[size - 1 - i];
	addw	a5,a4,a5	# _20, tmp186, _14
	sext.w	a5,a5	# _21, tmp186
# eval/problem73//code.c:8:         sum += q[i] + q[size - 1 - i];
	lw	a4,-24(s0)		# tmp189, sum
	addw	a5,a4,a5	# _21, tmp187, tmp188
	sw	a5,-24(s0)	# tmp187, sum
# eval/problem73//code.c:6:     for (int i = 0; i < size / 2; i++) {
	lw	a5,-20(s0)		# tmp192, i
	addiw	a5,a5,1	#, tmp190, tmp191
	sw	a5,-20(s0)	# tmp190, i
.L2:
# eval/problem73//code.c:6:     for (int i = 0; i < size / 2; i++) {
	lw	a5,-44(s0)		# tmp195, size
	srliw	a4,a5,31	#, tmp196, tmp194
	addw	a5,a4,a5	# tmp194, tmp197, tmp196
	sraiw	a5,a5,1	#, tmp198, tmp197
	sext.w	a4,a5	# _22, tmp198
# eval/problem73//code.c:6:     for (int i = 0; i < size / 2; i++) {
	lw	a5,-20(s0)		# tmp200, i
	sext.w	a5,a5	# tmp201, tmp199
	blt	a5,a4,.L5	#, tmp201, tmp202,
# eval/problem73//code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	lw	a5,-44(s0)		# tmp205, size
	mv	a4,a5	# tmp204, tmp205
	sraiw	a5,a4,31	#, tmp206, tmp204
	srliw	a5,a5,31	#, tmp207, tmp206
	addw	a4,a4,a5	# tmp207, tmp208, tmp204
	andi	a4,a4,1	#, tmp209, tmp208
	subw	a5,a4,a5	# tmp210, tmp209, tmp207
	sext.w	a5,a5	# _23, tmp210
# eval/problem73//code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	mv	a4,a5	# tmp211, _23
	li	a5,1		# tmp212,
	bne	a4,a5,.L6	#, tmp211, tmp212,
# eval/problem73//code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	lw	a5,-44(s0)		# tmp215, size
	srliw	a4,a5,31	#, tmp216, tmp214
	addw	a5,a4,a5	# tmp214, tmp217, tmp216
	sraiw	a5,a5,1	#, tmp218, tmp217
	sext.w	a5,a5	# _24, tmp218
# eval/problem73//code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	slli	a5,a5,2	#, _26, _25
	ld	a4,-40(s0)		# tmp219, q
	add	a5,a4,a5	# _26, _27, tmp219
	lw	a5,0(a5)		# _28, *_27
# eval/problem73//code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	lw	a4,-24(s0)		# tmp222, sum
	addw	a5,a4,a5	# _28, tmp220, tmp221
	sw	a5,-24(s0)	# tmp220, sum
.L6:
# eval/problem73//code.c:11:     return sum <= w;
	lw	a5,-24(s0)		# tmp225, sum
	mv	a4,a5	# tmp224, tmp225
	lw	a5,-48(s0)		# tmp227, w
	sext.w	a4,a4	# tmp229, tmp224
	sext.w	a5,a5	# tmp230, tmp226
	sgt	a5,a4,a5	# tmp231, tmp229, tmp230
	seqz	a5,a5	# tmp228, tmp231
	andi	a5,a5,0xff	# _32, tmp223
.L4:
# eval/problem73//code.c:12: }
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
