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
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp138, n
	sw	a5,-20(s0)	# tmp139, n
# eval/problem139//code.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	lw	a5,-20(s0)		# n.0_1, n
	andi	a5,a5,1	#, tmp141, tmp140
	sext.w	a5,a5	# _2, tmp141
# eval/problem139//code.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	bne	a5,zero,.L2	#, _2,,
# eval/problem139//code.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	lw	a5,-20(s0)		# tmp143, n
	sext.w	a4,a5	# tmp144, tmp142
	li	a5,7		# tmp145,
	ble	a4,a5,.L2	#, tmp144, tmp145,
# eval/problem139//code.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	li	a5,1		# _3,
# eval/problem139//code.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	j	.L3		#
.L2:
# eval/problem139//code.c:5:     return 0;
	li	a5,0		# _3,
.L3:
# eval/problem139//code.c:6: }
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
