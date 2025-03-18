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
	mv	a5,a0	# tmp137, n
	sw	a5,-36(s0)	# tmp138, n
# eval/problem132//code.c:4:     int prod = 1, has_odd = 0, digit;
	li	a5,1		# tmp139,
	sw	a5,-28(s0)	# tmp139, prod
# eval/problem132//code.c:4:     int prod = 1, has_odd = 0, digit;
	sw	zero,-24(s0)	#, has_odd
# eval/problem132//code.c:5:     while (n > 0) {
	j	.L2		#
.L4:
# eval/problem132//code.c:6:         digit = n % 10;
	lw	a5,-36(s0)		# tmp142, n
	mv	a4,a5	# tmp141, tmp142
	li	a5,10		# tmp144,
	remw	a5,a4,a5	# tmp144, tmp143, tmp141
	sw	a5,-20(s0)	# tmp143, digit
# eval/problem132//code.c:7:         if (digit % 2 == 1) {
	lw	a5,-20(s0)		# tmp147, digit
	mv	a4,a5	# tmp146, tmp147
	sraiw	a5,a4,31	#, tmp148, tmp146
	srliw	a5,a5,31	#, tmp149, tmp148
	addw	a4,a4,a5	# tmp149, tmp150, tmp146
	andi	a4,a4,1	#, tmp151, tmp150
	subw	a5,a4,a5	# tmp152, tmp151, tmp149
	sext.w	a5,a5	# _1, tmp152
# eval/problem132//code.c:7:         if (digit % 2 == 1) {
	mv	a4,a5	# tmp153, _1
	li	a5,1		# tmp154,
	bne	a4,a5,.L3	#, tmp153, tmp154,
# eval/problem132//code.c:8:             has_odd = 1;
	li	a5,1		# tmp155,
	sw	a5,-24(s0)	# tmp155, has_odd
# eval/problem132//code.c:9:             prod *= digit;
	lw	a5,-28(s0)		# tmp158, prod
	mv	a4,a5	# tmp157, tmp158
	lw	a5,-20(s0)		# tmp160, digit
	mulw	a5,a4,a5	# tmp156, tmp157, tmp159
	sw	a5,-28(s0)	# tmp156, prod
.L3:
# eval/problem132//code.c:11:         n /= 10;
	lw	a5,-36(s0)		# tmp163, n
	mv	a4,a5	# tmp162, tmp163
	li	a5,10		# tmp165,
	divw	a5,a4,a5	# tmp165, tmp164, tmp162
	sw	a5,-36(s0)	# tmp164, n
.L2:
# eval/problem132//code.c:5:     while (n > 0) {
	lw	a5,-36(s0)		# tmp167, n
	sext.w	a5,a5	# tmp168, tmp166
	bgt	a5,zero,.L4	#, tmp168,,
# eval/problem132//code.c:13:     return has_odd ? prod : 0;
	lw	a5,-24(s0)		# tmp170, has_odd
	sext.w	a5,a5	# tmp171, tmp169
	beq	a5,zero,.L5	#, tmp171,,
# eval/problem132//code.c:13:     return has_odd ? prod : 0;
	lw	a5,-28(s0)		# iftmp.0_7, prod
	j	.L6		#
.L5:
# eval/problem132//code.c:13:     return has_odd ? prod : 0;
	li	a5,0		# iftmp.0_7,
.L6:
# eval/problem132//code.c:14: }
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
