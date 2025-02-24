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
	sd	a0,-40(s0)	# l, l
	mv	a5,a1	# tmp140, size
	mv	a4,a2	# tmp142, t
	sw	a5,-44(s0)	# tmp141, size
	mv	a5,a4	# tmp143, tmp142
	sw	a5,-48(s0)	# tmp143, t
# code.c:5:     for (int i = 0; i < size; i++)
	sw	zero,-20(s0)	#, i
# code.c:5:     for (int i = 0; i < size; i++)
	j	.L2		#
.L5:
# code.c:6:         if (l[i] >= t) return false;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp144, l
	add	a5,a4,a5	# _2, _3, tmp144
	lw	a4,0(a5)		# _4, *_3
# code.c:6:         if (l[i] >= t) return false;
	lw	a5,-48(s0)		# tmp146, t
	sext.w	a5,a5	# tmp147, tmp145
	bgt	a5,a4,.L3	#, tmp147, tmp148,
# code.c:6:         if (l[i] >= t) return false;
	li	a5,0		# _6,
# code.c:6:         if (l[i] >= t) return false;
	j	.L4		#
.L3:
# code.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-20(s0)		# tmp151, i
	addiw	a5,a5,1	#, tmp149, tmp150
	sw	a5,-20(s0)	# tmp149, i
.L2:
# code.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-20(s0)		# tmp153, i
	mv	a4,a5	# tmp152, tmp153
	lw	a5,-44(s0)		# tmp155, size
	sext.w	a4,a4	# tmp156, tmp152
	sext.w	a5,a5	# tmp157, tmp154
	blt	a4,a5,.L5	#, tmp156, tmp157,
# code.c:7:     return true;
	li	a5,1		# _6,
.L4:
# code.c:8: }
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
