	.file	"problem24.c"
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
	sd	a0,-40(s0)	# str, str
# problem24.c:4:     int length = 0;
	sw	zero,-20(s0)	#, length
# problem24.c:5:     while (str[length] != '\0') {
	j	.L2		#
.L3:
# problem24.c:6:         length++;
	lw	a5,-20(s0)		# tmp141, length
	addiw	a5,a5,1	#, tmp139, tmp140
	sw	a5,-20(s0)	# tmp139, length
.L2:
# problem24.c:5:     while (str[length] != '\0') {
	lw	a5,-20(s0)		# _1, length
	ld	a4,-40(s0)		# tmp142, str
	add	a5,a4,a5	# _1, _2, tmp142
	lbu	a5,0(a5)	# _3, *_2
# problem24.c:5:     while (str[length] != '\0') {
	bne	a5,zero,.L3	#, _3,,
# problem24.c:8:     return length;
	lw	a5,-20(s0)		# _8, length
# problem24.c:9: }
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
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.align	3
.LC1:
	.string	"problem24.c"
	.align	3
.LC2:
	.string	"func0(\"\") == 0"
	.align	3
.LC3:
	.string	"x"
	.align	3
.LC4:
	.string	"func0(\"x\") == 1"
	.align	3
.LC5:
	.string	"asdasnakj"
	.align	3
.LC6:
	.string	"func0(\"asdasnakj\") == 9"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
# problem24.c:16:     assert(func0("") == 0);
	lla	a0,.LC0	#,
	call	func0		#
	mv	a5,a0	# tmp139,
# problem24.c:16:     assert(func0("") == 0);
	beq	a5,zero,.L6	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L6:
# problem24.c:17:     assert(func0("x") == 1);
	lla	a0,.LC3	#,
	call	func0		#
	mv	a5,a0	# tmp140,
# problem24.c:17:     assert(func0("x") == 1);
	mv	a4,a5	# tmp141, _2
	li	a5,1		# tmp142,
	beq	a4,a5,.L7	#, tmp141, tmp142,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L7:
# problem24.c:18:     assert(func0("asdasnakj") == 9);
	lla	a0,.LC5	#,
	call	func0		#
	mv	a5,a0	# tmp143,
# problem24.c:18:     assert(func0("asdasnakj") == 9);
	mv	a4,a5	# tmp144, _3
	li	a5,9		# tmp145,
	beq	a4,a5,.L8	#, tmp144, tmp145,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC1	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L8:
# problem24.c:20:     return 0;
	li	a5,0		# _11,
# problem24.c:21: }
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
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
