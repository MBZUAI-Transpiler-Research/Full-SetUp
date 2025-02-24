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
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	fsw	fa0,-20(s0)	# a, a
	fsw	fa1,-24(s0)	# b, b
	fsw	fa2,-28(s0)	# c, c
# code.c:5:     if (roundf(a) != a) return 0;
	flw	fa0,-20(s0)	#, a
	call	roundf@plt	#
	fmv.s	fa4,fa0	# _1,
# code.c:5:     if (roundf(a) != a) return 0;
	flw	fa5,-20(s0)	# tmp142, a
	feq.s	a5,fa5,fa4	#, tmp143, tmp142, _1
	bne	a5,zero,.L2	#, tmp143,,
# code.c:5:     if (roundf(a) != a) return 0;
	li	a5,0		# _7,
# code.c:5:     if (roundf(a) != a) return 0;
	j	.L3		#
.L2:
# code.c:6:     if (roundf(b) != b) return 0;
	flw	fa0,-24(s0)	#, b
	call	roundf@plt	#
	fmv.s	fa4,fa0	# _2,
# code.c:6:     if (roundf(b) != b) return 0;
	flw	fa5,-24(s0)	# tmp144, b
	feq.s	a5,fa5,fa4	#, tmp145, tmp144, _2
	bne	a5,zero,.L4	#, tmp145,,
# code.c:6:     if (roundf(b) != b) return 0;
	li	a5,0		# _7,
# code.c:6:     if (roundf(b) != b) return 0;
	j	.L3		#
.L4:
# code.c:7:     if (roundf(c) != c) return 0;
	flw	fa0,-28(s0)	#, c
	call	roundf@plt	#
	fmv.s	fa4,fa0	# _3,
# code.c:7:     if (roundf(c) != c) return 0;
	flw	fa5,-28(s0)	# tmp146, c
	feq.s	a5,fa5,fa4	#, tmp147, tmp146, _3
	bne	a5,zero,.L5	#, tmp147,,
# code.c:7:     if (roundf(c) != c) return 0;
	li	a5,0		# _7,
# code.c:7:     if (roundf(c) != c) return 0;
	j	.L3		#
.L5:
# code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	flw	fa4,-20(s0)	# tmp148, a
	flw	fa5,-24(s0)	# tmp149, b
	fadd.s	fa5,fa4,fa5	# _4, tmp148, tmp149
# code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	flw	fa4,-28(s0)	# tmp150, c
	feq.s	a5,fa4,fa5	#, tmp151, tmp150, _4
	bne	a5,zero,.L6	#, tmp151,,
# code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	flw	fa4,-20(s0)	# tmp152, a
	flw	fa5,-28(s0)	# tmp153, c
	fadd.s	fa5,fa4,fa5	# _5, tmp152, tmp153
# code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	flw	fa4,-24(s0)	# tmp154, b
	feq.s	a5,fa4,fa5	#, tmp155, tmp154, _5
	bne	a5,zero,.L6	#, tmp155,,
# code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	flw	fa4,-24(s0)	# tmp156, b
	flw	fa5,-28(s0)	# tmp157, c
	fadd.s	fa5,fa4,fa5	# _6, tmp156, tmp157
# code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	flw	fa4,-20(s0)	# tmp158, a
	feq.s	a5,fa4,fa5	#, tmp159, tmp158, _6
	beq	a5,zero,.L7	#, tmp159,,
.L6:
# code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	li	a5,1		# _7,
# code.c:8:     if ((a + b == c) || (a + c == b) || (b + c == a)) return 1;
	j	.L3		#
.L7:
# code.c:9:     return 0;
	li	a5,0		# _7,
.L3:
# code.c:10: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	.cfi_restore 1
	ld	s0,16(sp)		#,
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
