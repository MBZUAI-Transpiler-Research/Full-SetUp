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
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp138, n
	sw	a5,-52(s0)	# tmp139, n
# code.c:4:     int f1 = 1, f2 = 2, m;
	li	a5,1		# tmp140,
	sw	a5,-40(s0)	# tmp140, f1
# code.c:4:     int f1 = 1, f2 = 2, m;
	li	a5,2		# tmp141,
	sw	a5,-36(s0)	# tmp141, f2
# code.c:5:     int count = 0;
	sw	zero,-32(s0)	#, count
# code.c:6:     while (count < n) {
	j	.L2		#
.L9:
# code.c:7:         f1 = f1 + f2;
	lw	a5,-40(s0)		# tmp144, f1
	mv	a4,a5	# tmp143, tmp144
	lw	a5,-36(s0)		# tmp146, f2
	addw	a5,a4,a5	# tmp145, tmp142, tmp143
	sw	a5,-40(s0)	# tmp142, f1
# code.c:8:         m = f1; f1 = f2; f2 = m;
	lw	a5,-40(s0)		# tmp147, f1
	sw	a5,-20(s0)	# tmp147, m
# code.c:8:         m = f1; f1 = f2; f2 = m;
	lw	a5,-36(s0)		# tmp148, f2
	sw	a5,-40(s0)	# tmp148, f1
# code.c:8:         m = f1; f1 = f2; f2 = m;
	lw	a5,-20(s0)		# tmp149, m
	sw	a5,-36(s0)	# tmp149, f2
# code.c:9:         int isprime = 1;
	li	a5,1		# tmp150,
	sw	a5,-28(s0)	# tmp150, isprime
# code.c:10:         for (int w = 2; w * w <= f1; w++) {
	li	a5,2		# tmp151,
	sw	a5,-24(s0)	# tmp151, w
# code.c:10:         for (int w = 2; w * w <= f1; w++) {
	j	.L3		#
.L6:
# code.c:11:             if (f1 % w == 0) {
	lw	a5,-40(s0)		# tmp154, f1
	mv	a4,a5	# tmp153, tmp154
	lw	a5,-24(s0)		# tmp157, w
	remw	a5,a4,a5	# tmp156, tmp155, tmp153
	sext.w	a5,a5	# _1, tmp155
# code.c:11:             if (f1 % w == 0) {
	bne	a5,zero,.L4	#, _1,,
# code.c:12:                 isprime = 0; break;
	sw	zero,-28(s0)	#, isprime
# code.c:12:                 isprime = 0; break;
	j	.L5		#
.L4:
# code.c:10:         for (int w = 2; w * w <= f1; w++) {
	lw	a5,-24(s0)		# tmp160, w
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-24(s0)	# tmp158, w
.L3:
# code.c:10:         for (int w = 2; w * w <= f1; w++) {
	lw	a5,-24(s0)		# tmp163, w
	mulw	a5,a5,a5	# tmp161, tmp162, tmp162
	sext.w	a4,a5	# _2, tmp161
# code.c:10:         for (int w = 2; w * w <= f1; w++) {
	lw	a5,-40(s0)		# tmp165, f1
	sext.w	a5,a5	# tmp166, tmp164
	bge	a5,a4,.L6	#, tmp166, tmp167,
.L5:
# code.c:15:         if (isprime) count += 1;
	lw	a5,-28(s0)		# tmp169, isprime
	sext.w	a5,a5	# tmp170, tmp168
	beq	a5,zero,.L7	#, tmp170,,
# code.c:15:         if (isprime) count += 1;
	lw	a5,-32(s0)		# tmp173, count
	addiw	a5,a5,1	#, tmp171, tmp172
	sw	a5,-32(s0)	# tmp171, count
.L7:
# code.c:16:         if (count == n) return f1;
	lw	a5,-32(s0)		# tmp175, count
	mv	a4,a5	# tmp174, tmp175
	lw	a5,-52(s0)		# tmp177, n
	sext.w	a4,a4	# tmp178, tmp174
	sext.w	a5,a5	# tmp179, tmp176
	bne	a4,a5,.L2	#, tmp178, tmp179,
# code.c:16:         if (count == n) return f1;
	lw	a5,-40(s0)		# _9, f1
# code.c:16:         if (count == n) return f1;
	j	.L8		#
.L2:
# code.c:6:     while (count < n) {
	lw	a5,-32(s0)		# tmp181, count
	mv	a4,a5	# tmp180, tmp181
	lw	a5,-52(s0)		# tmp183, n
	sext.w	a4,a4	# tmp184, tmp180
	sext.w	a5,a5	# tmp185, tmp182
	blt	a4,a5,.L9	#, tmp184, tmp185,
# code.c:18:     return 0;
	li	a5,0		# _9,
.L8:
# code.c:19: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
