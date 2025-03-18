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
	mv	a5,a0	# tmp138, n
	mv	a3,a1	# tmp140, x
	mv	a4,a2	# tmp142, y
	sw	a5,-36(s0)	# tmp139, n
	mv	a5,a3	# tmp141, tmp140
	sw	a5,-40(s0)	# tmp141, x
	mv	a5,a4	# tmp143, tmp142
	sw	a5,-44(s0)	# tmp143, y
# eval/problem151//code.c:4:     int isp = 1;
	li	a5,1		# tmp144,
	sw	a5,-24(s0)	# tmp144, isp
# eval/problem151//code.c:5:     if (n < 2) isp = 0;
	lw	a5,-36(s0)		# tmp146, n
	sext.w	a4,a5	# tmp147, tmp145
	li	a5,1		# tmp148,
	bgt	a4,a5,.L2	#, tmp147, tmp148,
# eval/problem151//code.c:5:     if (n < 2) isp = 0;
	sw	zero,-24(s0)	#, isp
.L2:
# eval/problem151//code.c:6:     for (int i = 2; i * i <= n; i++) {
	li	a5,2		# tmp149,
	sw	a5,-20(s0)	# tmp149, i
# eval/problem151//code.c:6:     for (int i = 2; i * i <= n; i++) {
	j	.L3		#
.L5:
# eval/problem151//code.c:7:         if (n % i == 0) isp = 0;
	lw	a5,-36(s0)		# tmp152, n
	mv	a4,a5	# tmp151, tmp152
	lw	a5,-20(s0)		# tmp155, i
	remw	a5,a4,a5	# tmp154, tmp153, tmp151
	sext.w	a5,a5	# _1, tmp153
# eval/problem151//code.c:7:         if (n % i == 0) isp = 0;
	bne	a5,zero,.L4	#, _1,,
# eval/problem151//code.c:7:         if (n % i == 0) isp = 0;
	sw	zero,-24(s0)	#, isp
.L4:
# eval/problem151//code.c:6:     for (int i = 2; i * i <= n; i++) {
	lw	a5,-20(s0)		# tmp158, i
	addiw	a5,a5,1	#, tmp156, tmp157
	sw	a5,-20(s0)	# tmp156, i
.L3:
# eval/problem151//code.c:6:     for (int i = 2; i * i <= n; i++) {
	lw	a5,-20(s0)		# tmp161, i
	mulw	a5,a5,a5	# tmp159, tmp160, tmp160
	sext.w	a4,a5	# _2, tmp159
# eval/problem151//code.c:6:     for (int i = 2; i * i <= n; i++) {
	lw	a5,-36(s0)		# tmp163, n
	sext.w	a5,a5	# tmp164, tmp162
	bge	a5,a4,.L5	#, tmp164, tmp165,
# eval/problem151//code.c:9:     if (isp) return x;
	lw	a5,-24(s0)		# tmp167, isp
	sext.w	a5,a5	# tmp168, tmp166
	beq	a5,zero,.L6	#, tmp168,,
# eval/problem151//code.c:9:     if (isp) return x;
	lw	a5,-40(s0)		# _7, x
# eval/problem151//code.c:9:     if (isp) return x;
	j	.L7		#
.L6:
# eval/problem151//code.c:10:     return y;
	lw	a5,-44(s0)		# _7, y
.L7:
# eval/problem151//code.c:11: }
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
