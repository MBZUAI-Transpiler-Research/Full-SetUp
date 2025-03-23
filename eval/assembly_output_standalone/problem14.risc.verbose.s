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
	mv	a5,a0	# tmp136, a
	mv	a4,a1	# tmp138, b
	sw	a5,-36(s0)	# tmp137, a
	mv	a5,a4	# tmp139, tmp138
	sw	a5,-40(s0)	# tmp139, b
# eval/problem14//code.c:4:     while (b != 0) {
	j	.L2		#
.L3:
# eval/problem14//code.c:5:         int m = a % b;
	lw	a5,-36(s0)		# tmp142, a
	mv	a4,a5	# tmp141, tmp142
	lw	a5,-40(s0)		# tmp145, b
	remw	a5,a4,a5	# tmp144, tmp143, tmp141
	sw	a5,-20(s0)	# tmp143, m
# eval/problem14//code.c:6:         a = b;
	lw	a5,-40(s0)		# tmp146, b
	sw	a5,-36(s0)	# tmp146, a
# eval/problem14//code.c:7:         b = m;
	lw	a5,-20(s0)		# tmp147, m
	sw	a5,-40(s0)	# tmp147, b
.L2:
# eval/problem14//code.c:4:     while (b != 0) {
	lw	a5,-40(s0)		# tmp149, b
	sext.w	a5,a5	# tmp150, tmp148
	bne	a5,zero,.L3	#, tmp150,,
# eval/problem14//code.c:9:     return a;
	lw	a5,-36(s0)		# _5, a
# eval/problem14//code.c:10: }
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
