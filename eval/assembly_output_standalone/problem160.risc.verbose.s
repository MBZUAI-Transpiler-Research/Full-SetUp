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
	mv	a5,a0	# tmp139, number
	mv	a4,a2	# tmp143, remaining
	sd	a3,-40(s0)	# result, result
	sw	a5,-20(s0)	# tmp140, number
	mv	a5,a1	# tmp142, tmp141
	sw	a5,-24(s0)	# tmp142, need
	mv	a5,a4	# tmp144, tmp143
	sw	a5,-28(s0)	# tmp144, remaining
# eval/problem160//code.c:4:     if (need > remaining) {
	lw	a5,-24(s0)		# tmp146, need
	mv	a4,a5	# tmp145, tmp146
	lw	a5,-28(s0)		# tmp148, remaining
	sext.w	a4,a4	# tmp149, tmp145
	sext.w	a5,a5	# tmp150, tmp147
	ble	a4,a5,.L2	#, tmp149, tmp150,
# eval/problem160//code.c:5:         result[0] = number + remaining;
	lw	a5,-20(s0)		# tmp153, number
	mv	a4,a5	# tmp152, tmp153
	lw	a5,-28(s0)		# tmp155, remaining
	addw	a5,a4,a5	# tmp154, tmp151, tmp152
	sext.w	a4,a5	# _1, tmp151
# eval/problem160//code.c:5:         result[0] = number + remaining;
	ld	a5,-40(s0)		# tmp156, result
	sw	a4,0(a5)	# _1, *result_11(D)
# eval/problem160//code.c:6:         result[1] = 0;
	ld	a5,-40(s0)		# tmp157, result
	addi	a5,a5,4	#, _2, tmp157
# eval/problem160//code.c:6:         result[1] = 0;
	sw	zero,0(a5)	#, *_2
# eval/problem160//code.c:11: }
	j	.L4		#
.L2:
# eval/problem160//code.c:8:         result[0] = number + need;
	lw	a5,-20(s0)		# tmp160, number
	mv	a4,a5	# tmp159, tmp160
	lw	a5,-24(s0)		# tmp162, need
	addw	a5,a4,a5	# tmp161, tmp158, tmp159
	sext.w	a4,a5	# _3, tmp158
# eval/problem160//code.c:8:         result[0] = number + need;
	ld	a5,-40(s0)		# tmp163, result
	sw	a4,0(a5)	# _3, *result_11(D)
# eval/problem160//code.c:9:         result[1] = remaining - need;
	ld	a5,-40(s0)		# tmp164, result
	addi	a5,a5,4	#, _4, tmp164
# eval/problem160//code.c:9:         result[1] = remaining - need;
	lw	a4,-28(s0)		# tmp167, remaining
	mv	a3,a4	# tmp166, tmp167
	lw	a4,-24(s0)		# tmp169, need
	subw	a4,a3,a4	# tmp165, tmp166, tmp168
	sext.w	a4,a4	# _5, tmp165
# eval/problem160//code.c:9:         result[1] = remaining - need;
	sw	a4,0(a5)	# _5, *_4
.L4:
# eval/problem160//code.c:11: }
	nop	
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
