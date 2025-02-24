	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -O0 -fstack-protector-strong
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
	mv	a5,a0	# tmp139, n
	sw	a5,-36(s0)	# tmp140, n
# code.c:4:     int count = 0;
	sw	zero,-28(s0)	#, count
# code.c:5:     for (int i = 0; i < n; i++)
	sw	zero,-24(s0)	#, i
# code.c:5:     for (int i = 0; i < n; i++)
	j	.L2		#
.L8:
# code.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	lw	a5,-24(s0)		# tmp143, i
	mv	a4,a5	# tmp142, tmp143
	li	a5,11		# tmp145,
	remw	a5,a4,a5	# tmp145, tmp144, tmp142
	sext.w	a5,a5	# _1, tmp144
# code.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	beq	a5,zero,.L3	#, _1,,
# code.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	lw	a5,-24(s0)		# tmp148, i
	mv	a4,a5	# tmp147, tmp148
	li	a5,13		# tmp150,
	remw	a5,a4,a5	# tmp150, tmp149, tmp147
	sext.w	a5,a5	# _2, tmp149
# code.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	bne	a5,zero,.L4	#, _2,,
.L3:
# code.c:7:             int q = i;
	lw	a5,-24(s0)		# tmp151, i
	sw	a5,-20(s0)	# tmp151, q
# code.c:8:             while (q > 0) {
	j	.L5		#
.L7:
# code.c:9:                 if (q % 10 == 7) count += 1;
	lw	a5,-20(s0)		# tmp154, q
	mv	a4,a5	# tmp153, tmp154
	li	a5,10		# tmp156,
	remw	a5,a4,a5	# tmp156, tmp155, tmp153
	sext.w	a5,a5	# _3, tmp155
# code.c:9:                 if (q % 10 == 7) count += 1;
	mv	a4,a5	# tmp157, _3
	li	a5,7		# tmp158,
	bne	a4,a5,.L6	#, tmp157, tmp158,
# code.c:9:                 if (q % 10 == 7) count += 1;
	lw	a5,-28(s0)		# tmp161, count
	addiw	a5,a5,1	#, tmp159, tmp160
	sw	a5,-28(s0)	# tmp159, count
.L6:
# code.c:10:                 q = q / 10;
	lw	a5,-20(s0)		# tmp164, q
	mv	a4,a5	# tmp163, tmp164
	li	a5,10		# tmp166,
	divw	a5,a4,a5	# tmp166, tmp165, tmp163
	sw	a5,-20(s0)	# tmp165, q
.L5:
# code.c:8:             while (q > 0) {
	lw	a5,-20(s0)		# tmp168, q
	sext.w	a5,a5	# tmp169, tmp167
	bgt	a5,zero,.L7	#, tmp169,,
.L4:
# code.c:5:     for (int i = 0; i < n; i++)
	lw	a5,-24(s0)		# tmp172, i
	addiw	a5,a5,1	#, tmp170, tmp171
	sw	a5,-24(s0)	# tmp170, i
.L2:
# code.c:5:     for (int i = 0; i < n; i++)
	lw	a5,-24(s0)		# tmp174, i
	mv	a4,a5	# tmp173, tmp174
	lw	a5,-36(s0)		# tmp176, n
	sext.w	a4,a4	# tmp177, tmp173
	sext.w	a5,a5	# tmp178, tmp175
	blt	a4,a5,.L8	#, tmp177, tmp178,
# code.c:13:     return count;
	lw	a5,-28(s0)		# _13, count
# code.c:14: }
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
