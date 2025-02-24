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
	mv	a5,a0	# tmp136, x
	mv	a4,a1	# tmp138, n
	sw	a5,-36(s0)	# tmp137, x
	mv	a5,a4	# tmp139, tmp138
	sw	a5,-40(s0)	# tmp139, n
# code.c:4:     int p = 1, count = 0;
	li	a5,1		# tmp140,
	sw	a5,-24(s0)	# tmp140, p
# code.c:4:     int p = 1, count = 0;
	sw	zero,-20(s0)	#, count
# code.c:5:     while (p <= x && count < 100) {
	j	.L2		#
.L6:
# code.c:6:         if (p == x) return 1;
	lw	a5,-24(s0)		# tmp142, p
	mv	a4,a5	# tmp141, tmp142
	lw	a5,-36(s0)		# tmp144, x
	sext.w	a4,a4	# tmp145, tmp141
	sext.w	a5,a5	# tmp146, tmp143
	bne	a4,a5,.L3	#, tmp145, tmp146,
# code.c:6:         if (p == x) return 1;
	li	a5,1		# _3,
# code.c:6:         if (p == x) return 1;
	j	.L4		#
.L3:
# code.c:7:         p = p * n; count += 1;
	lw	a5,-24(s0)		# tmp149, p
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-40(s0)		# tmp151, n
	mulw	a5,a4,a5	# tmp147, tmp148, tmp150
	sw	a5,-24(s0)	# tmp147, p
# code.c:7:         p = p * n; count += 1;
	lw	a5,-20(s0)		# tmp154, count
	addiw	a5,a5,1	#, tmp152, tmp153
	sw	a5,-20(s0)	# tmp152, count
.L2:
# code.c:5:     while (p <= x && count < 100) {
	lw	a5,-24(s0)		# tmp156, p
	mv	a4,a5	# tmp155, tmp156
	lw	a5,-36(s0)		# tmp158, x
	sext.w	a4,a4	# tmp159, tmp155
	sext.w	a5,a5	# tmp160, tmp157
	bgt	a4,a5,.L5	#, tmp159, tmp160,
# code.c:5:     while (p <= x && count < 100) {
	lw	a5,-20(s0)		# tmp162, count
	sext.w	a4,a5	# tmp163, tmp161
	li	a5,99		# tmp164,
	ble	a4,a5,.L6	#, tmp163, tmp164,
.L5:
# code.c:9:     return 0;
	li	a5,0		# _3,
.L4:
# code.c:10: }
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
