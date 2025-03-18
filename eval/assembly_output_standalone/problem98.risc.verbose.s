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
.LFB6:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp140, a
	mv	a4,a1	# tmp142, b
	sw	a5,-20(s0)	# tmp141, a
	mv	a5,a4	# tmp143, tmp142
	sw	a5,-24(s0)	# tmp143, b
# eval/problem98//code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	lw	a5,-20(s0)		# tmp146, a
	sraiw	a5,a5,31	#, tmp144, tmp145
	lw	a4,-20(s0)		# tmp148, a
	xor	a4,a5,a4	# tmp147, tmp149, tmp144
	subw	a5,a4,a5	# tmp150, tmp149, tmp144
	sext.w	a5,a5	# _1, tmp150
# eval/problem98//code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	mv	a4,a5	# tmp152, _1
	li	a5,10		# tmp154,
	remw	a5,a4,a5	# tmp154, tmp153, tmp152
	sext.w	a4,a5	# _2, tmp153
# eval/problem98//code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	lw	a5,-24(s0)		# tmp157, b
	sraiw	a5,a5,31	#, tmp155, tmp156
	lw	a3,-24(s0)		# tmp159, b
	xor	a3,a5,a3	# tmp158, tmp160, tmp155
	subw	a5,a3,a5	# tmp161, tmp160, tmp155
	sext.w	a5,a5	# _3, tmp161
# eval/problem98//code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	mv	a3,a5	# tmp163, _3
	li	a5,10		# tmp165,
	remw	a5,a3,a5	# tmp165, tmp164, tmp163
	sext.w	a5,a5	# _4, tmp164
# eval/problem98//code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	mulw	a5,a4,a5	# tmp166, _2, _4
	sext.w	a5,a5	# _7, tmp166
# eval/problem98//code.c:6: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
