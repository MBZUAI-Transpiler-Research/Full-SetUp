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
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp138, n
	sw	a5,-20(s0)	# tmp139, n
# code.c:4:     return n * (n + 1) / 2;
	lw	a5,-20(s0)		# tmp142, n
	addiw	a5,a5,1	#, tmp140, tmp141
	sext.w	a5,a5	# _1, tmp140
# code.c:4:     return n * (n + 1) / 2;
	lw	a4,-20(s0)		# tmp145, n
	mulw	a5,a4,a5	# tmp143, tmp144, _1
	sext.w	a5,a5	# _2, tmp143
# code.c:4:     return n * (n + 1) / 2;
	srliw	a4,a5,31	#, tmp148, tmp147
	addw	a5,a4,a5	# tmp147, tmp149, tmp148
	sraiw	a5,a5,1	#, tmp150, tmp149
	sext.w	a5,a5	# _4, tmp150
# code.c:5: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
