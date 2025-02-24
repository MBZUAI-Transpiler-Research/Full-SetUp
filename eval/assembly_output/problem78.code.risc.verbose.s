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
.LFB6:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp142, a
	sw	a5,-36(s0)	# tmp143, a
# code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	sw	zero,-20(s0)	#, i
# code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	j	.L2		#
.L5:
# code.c:7:         if (i * i * i == abs(a)) return 1;
	lw	a5,-20(s0)		# tmp146, i
	mulw	a5,a5,a5	# tmp144, tmp145, tmp145
	sext.w	a5,a5	# _1, tmp144
# code.c:7:         if (i * i * i == abs(a)) return 1;
	lw	a4,-20(s0)		# tmp149, i
	mulw	a5,a4,a5	# tmp147, tmp148, _1
	sext.w	a3,a5	# _2, tmp147
# code.c:7:         if (i * i * i == abs(a)) return 1;
	lw	a5,-36(s0)		# tmp152, a
	sraiw	a5,a5,31	#, tmp150, tmp151
	lw	a4,-36(s0)		# tmp154, a
	xor	a4,a5,a4	# tmp153, tmp155, tmp150
	subw	a5,a4,a5	# tmp156, tmp155, tmp150
	sext.w	a5,a5	# _3, tmp156
# code.c:7:         if (i * i * i == abs(a)) return 1;
	mv	a4,a3	# tmp157, _2
	bne	a4,a5,.L3	#, tmp157, tmp158,
# code.c:7:         if (i * i * i == abs(a)) return 1;
	li	a5,1		# _8,
# code.c:7:         if (i * i * i == abs(a)) return 1;
	j	.L4		#
.L3:
# code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	lw	a5,-20(s0)		# tmp161, i
	addiw	a5,a5,1	#, tmp159, tmp160
	sw	a5,-20(s0)	# tmp159, i
.L2:
# code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	lw	a5,-20(s0)		# tmp164, i
	mulw	a5,a5,a5	# tmp162, tmp163, tmp163
	sext.w	a5,a5	# _4, tmp162
# code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	lw	a4,-20(s0)		# tmp167, i
	mulw	a5,a4,a5	# tmp165, tmp166, _4
	sext.w	a3,a5	# _5, tmp165
# code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	lw	a5,-36(s0)		# tmp170, a
	sraiw	a5,a5,31	#, tmp168, tmp169
	lw	a4,-36(s0)		# tmp172, a
	xor	a4,a5,a4	# tmp171, tmp173, tmp168
	subw	a5,a4,a5	# tmp174, tmp173, tmp168
	sext.w	a5,a5	# _6, tmp174
# code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	mv	a4,a3	# tmp175, _5
	ble	a4,a5,.L5	#, tmp175, tmp176,
# code.c:8:     return 0;
	li	a5,0		# _8,
.L4:
# code.c:9: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
