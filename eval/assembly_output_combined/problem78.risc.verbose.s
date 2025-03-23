	.file	"problem78.c"
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
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp142, a
	sw	a5,-36(s0)	# tmp143, a
# problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	sw	zero,-20(s0)	#, i
# problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	j	.L2		#
.L5:
# problem78.c:7:         if (i * i * i == abs(a)) return 1;
	lw	a5,-20(s0)		# tmp146, i
	mulw	a5,a5,a5	# tmp144, tmp145, tmp145
	sext.w	a5,a5	# _1, tmp144
# problem78.c:7:         if (i * i * i == abs(a)) return 1;
	lw	a4,-20(s0)		# tmp149, i
	mulw	a5,a4,a5	# tmp147, tmp148, _1
	sext.w	a3,a5	# _2, tmp147
# problem78.c:7:         if (i * i * i == abs(a)) return 1;
	lw	a5,-36(s0)		# tmp152, a
	sraiw	a5,a5,31	#, tmp150, tmp151
	lw	a4,-36(s0)		# tmp154, a
	xor	a4,a5,a4	# tmp153, tmp155, tmp150
	subw	a5,a4,a5	# tmp156, tmp155, tmp150
	sext.w	a5,a5	# _3, tmp156
# problem78.c:7:         if (i * i * i == abs(a)) return 1;
	mv	a4,a3	# tmp157, _2
	bne	a4,a5,.L3	#, tmp157, tmp158,
# problem78.c:7:         if (i * i * i == abs(a)) return 1;
	li	a5,1		# _8,
# problem78.c:7:         if (i * i * i == abs(a)) return 1;
	j	.L4		#
.L3:
# problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	lw	a5,-20(s0)		# tmp161, i
	addiw	a5,a5,1	#, tmp159, tmp160
	sw	a5,-20(s0)	# tmp159, i
.L2:
# problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	lw	a5,-20(s0)		# tmp164, i
	mulw	a5,a5,a5	# tmp162, tmp163, tmp163
	sext.w	a5,a5	# _4, tmp162
# problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	lw	a4,-20(s0)		# tmp167, i
	mulw	a5,a4,a5	# tmp165, tmp166, _4
	sext.w	a3,a5	# _5, tmp165
# problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	lw	a5,-36(s0)		# tmp170, a
	sraiw	a5,a5,31	#, tmp168, tmp169
	lw	a4,-36(s0)		# tmp172, a
	xor	a4,a5,a4	# tmp171, tmp173, tmp168
	subw	a5,a4,a5	# tmp174, tmp173, tmp168
	sext.w	a5,a5	# _6, tmp174
# problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	mv	a4,a3	# tmp175, _5
	ble	a4,a5,.L5	#, tmp175, tmp176,
# problem78.c:8:     return 0;
	li	a5,0		# _8,
.L4:
# problem78.c:9: }
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
	.section	.rodata
	.align	3
.LC0:
	.string	"problem78.c"
	.align	3
.LC1:
	.string	"func0(1) == 1"
	.align	3
.LC2:
	.string	"func0(2) == 0"
	.align	3
.LC3:
	.string	"func0(-1) == 1"
	.align	3
.LC4:
	.string	"func0(64) == 1"
	.align	3
.LC5:
	.string	"func0(180) == 0"
	.align	3
.LC6:
	.string	"func0(1000) == 1"
	.align	3
.LC7:
	.string	"func0(0) == 1"
	.align	3
.LC8:
	.string	"func0(1729) == 0"
	.align	3
.LC9:
	.string	"All tests passed."
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
# problem78.c:17:     assert(func0(1) == 1);
	li	a0,1		#,
	call	func0		#
	mv	a5,a0	# tmp144,
# problem78.c:17:     assert(func0(1) == 1);
	mv	a4,a5	# tmp145, _1
	li	a5,1		# tmp146,
	beq	a4,a5,.L7	#, tmp145, tmp146,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L7:
# problem78.c:18:     assert(func0(2) == 0);
	li	a0,2		#,
	call	func0		#
	mv	a5,a0	# tmp147,
# problem78.c:18:     assert(func0(2) == 0);
	beq	a5,zero,.L8	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L8:
# problem78.c:19:     assert(func0(-1) == 1);
	li	a0,-1		#,
	call	func0		#
	mv	a5,a0	# tmp148,
# problem78.c:19:     assert(func0(-1) == 1);
	mv	a4,a5	# tmp149, _3
	li	a5,1		# tmp150,
	beq	a4,a5,.L9	#, tmp149, tmp150,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L9:
# problem78.c:20:     assert(func0(64) == 1);
	li	a0,64		#,
	call	func0		#
	mv	a5,a0	# tmp151,
# problem78.c:20:     assert(func0(64) == 1);
	mv	a4,a5	# tmp152, _4
	li	a5,1		# tmp153,
	beq	a4,a5,.L10	#, tmp152, tmp153,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L10:
# problem78.c:21:     assert(func0(180) == 0);
	li	a0,180		#,
	call	func0		#
	mv	a5,a0	# tmp154,
# problem78.c:21:     assert(func0(180) == 0);
	beq	a5,zero,.L11	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L11:
# problem78.c:22:     assert(func0(1000) == 1);
	li	a0,1000		#,
	call	func0		#
	mv	a5,a0	# tmp155,
# problem78.c:22:     assert(func0(1000) == 1);
	mv	a4,a5	# tmp156, _6
	li	a5,1		# tmp157,
	beq	a4,a5,.L12	#, tmp156, tmp157,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L12:
# problem78.c:23:     assert(func0(0) == 1);
	li	a0,0		#,
	call	func0		#
	mv	a5,a0	# tmp158,
# problem78.c:23:     assert(func0(0) == 1);
	mv	a4,a5	# tmp159, _7
	li	a5,1		# tmp160,
	beq	a4,a5,.L13	#, tmp159, tmp160,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC0	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L13:
# problem78.c:24:     assert(func0(1729) == 0);
	li	a0,1729		#,
	call	func0		#
	mv	a5,a0	# tmp161,
# problem78.c:24:     assert(func0(1729) == 0);
	beq	a5,zero,.L14	#, _8,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC0	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L14:
# problem78.c:26:     printf("All tests passed.\n");
	lla	a0,.LC9	#,
	call	puts@plt	#
# problem78.c:27:     return 0;
	li	a5,0		# _27,
# problem78.c:28: }
	mv	a0,a5	#, <retval>
	ld	ra,8(sp)		#,
	.cfi_restore 1
	ld	s0,0(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
