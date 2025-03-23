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
	sd	a0,-40(s0)	# l, l
	mv	a5,a1	# tmp155, size
	sw	a5,-44(s0)	# tmp156, size
# eval/problem58//code.c:6:     incr = decr = 0;
	sw	zero,-24(s0)	#, decr
# eval/problem58//code.c:6:     incr = decr = 0;
	lw	a5,-24(s0)		# tmp157, decr
	sw	a5,-28(s0)	# tmp157, incr
# eval/problem58//code.c:8:     for (int i = 1; i < size; i++) {
	li	a5,1		# tmp158,
	sw	a5,-20(s0)	# tmp158, i
# eval/problem58//code.c:8:     for (int i = 1; i < size; i++) {
	j	.L2		#
.L7:
# eval/problem58//code.c:9:         if (l[i] > l[i - 1]) incr = 1;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp159, l
	add	a5,a4,a5	# _2, _3, tmp159
	flw	fa4,0(a5)	# _4, *_3
# eval/problem58//code.c:9:         if (l[i] > l[i - 1]) incr = 1;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	addi	a5,a5,-4	#, _7, _6
	ld	a4,-40(s0)		# tmp160, l
	add	a5,a4,a5	# _7, _8, tmp160
	flw	fa5,0(a5)	# _9, *_8
# eval/problem58//code.c:9:         if (l[i] > l[i - 1]) incr = 1;
	fgt.s	a5,fa4,fa5	#, tmp161, _4, _9
	beq	a5,zero,.L3	#, tmp161,,
# eval/problem58//code.c:9:         if (l[i] > l[i - 1]) incr = 1;
	li	a5,1		# tmp162,
	sw	a5,-28(s0)	# tmp162, incr
.L3:
# eval/problem58//code.c:10:         if (l[i] < l[i - 1]) decr = 1;
	lw	a5,-20(s0)		# _10, i
	slli	a5,a5,2	#, _11, _10
	ld	a4,-40(s0)		# tmp163, l
	add	a5,a4,a5	# _11, _12, tmp163
	flw	fa4,0(a5)	# _13, *_12
# eval/problem58//code.c:10:         if (l[i] < l[i - 1]) decr = 1;
	lw	a5,-20(s0)		# _14, i
	slli	a5,a5,2	#, _15, _14
	addi	a5,a5,-4	#, _16, _15
	ld	a4,-40(s0)		# tmp164, l
	add	a5,a4,a5	# _16, _17, tmp164
	flw	fa5,0(a5)	# _18, *_17
# eval/problem58//code.c:10:         if (l[i] < l[i - 1]) decr = 1;
	flt.s	a5,fa4,fa5	#, tmp165, _13, _18
	beq	a5,zero,.L5	#, tmp165,,
# eval/problem58//code.c:10:         if (l[i] < l[i - 1]) decr = 1;
	li	a5,1		# tmp166,
	sw	a5,-24(s0)	# tmp166, decr
.L5:
# eval/problem58//code.c:8:     for (int i = 1; i < size; i++) {
	lw	a5,-20(s0)		# tmp169, i
	addiw	a5,a5,1	#, tmp167, tmp168
	sw	a5,-20(s0)	# tmp167, i
.L2:
# eval/problem58//code.c:8:     for (int i = 1; i < size; i++) {
	lw	a5,-20(s0)		# tmp171, i
	mv	a4,a5	# tmp170, tmp171
	lw	a5,-44(s0)		# tmp173, size
	sext.w	a4,a4	# tmp174, tmp170
	sext.w	a5,a5	# tmp175, tmp172
	blt	a4,a5,.L7	#, tmp174, tmp175,
# eval/problem58//code.c:12:     if (incr + decr == 2) return false;
	lw	a5,-28(s0)		# tmp178, incr
	mv	a4,a5	# tmp177, tmp178
	lw	a5,-24(s0)		# tmp180, decr
	addw	a5,a4,a5	# tmp179, tmp176, tmp177
	sext.w	a5,a5	# _19, tmp176
# eval/problem58//code.c:12:     if (incr + decr == 2) return false;
	mv	a4,a5	# tmp181, _19
	li	a5,2		# tmp182,
	bne	a4,a5,.L8	#, tmp181, tmp182,
# eval/problem58//code.c:12:     if (incr + decr == 2) return false;
	li	a5,0		# _25,
# eval/problem58//code.c:12:     if (incr + decr == 2) return false;
	j	.L9		#
.L8:
# eval/problem58//code.c:13:     return true;
	li	a5,1		# _25,
.L9:
# eval/problem58//code.c:14: }
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
