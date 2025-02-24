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
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp137, n
	sw	a5,-52(s0)	# tmp138, n
# code.c:4:     long long fact = 1, bfact = 1;
	li	a5,1		# tmp139,
	sd	a5,-32(s0)	# tmp139, fact
# code.c:4:     long long fact = 1, bfact = 1;
	li	a5,1		# tmp140,
	sd	a5,-24(s0)	# tmp140, bfact
# code.c:5:     for (int i = 1; i <= n; i++) {
	li	a5,1		# tmp141,
	sw	a5,-36(s0)	# tmp141, i
# code.c:5:     for (int i = 1; i <= n; i++) {
	j	.L2		#
.L3:
# code.c:6:         fact = fact * i;
	lw	a5,-36(s0)		# _1, i
# code.c:6:         fact = fact * i;
	ld	a4,-32(s0)		# tmp143, fact
	mul	a5,a4,a5	# tmp142, tmp143, _1
	sd	a5,-32(s0)	# tmp142, fact
# code.c:7:         bfact = bfact * fact;
	ld	a4,-24(s0)		# tmp145, bfact
	ld	a5,-32(s0)		# tmp146, fact
	mul	a5,a4,a5	# tmp144, tmp145, tmp146
	sd	a5,-24(s0)	# tmp144, bfact
# code.c:5:     for (int i = 1; i <= n; i++) {
	lw	a5,-36(s0)		# tmp149, i
	addiw	a5,a5,1	#, tmp147, tmp148
	sw	a5,-36(s0)	# tmp147, i
.L2:
# code.c:5:     for (int i = 1; i <= n; i++) {
	lw	a5,-36(s0)		# tmp151, i
	mv	a4,a5	# tmp150, tmp151
	lw	a5,-52(s0)		# tmp153, n
	sext.w	a4,a4	# tmp154, tmp150
	sext.w	a5,a5	# tmp155, tmp152
	ble	a4,a5,.L3	#, tmp154, tmp155,
# code.c:9:     return bfact;
	ld	a5,-24(s0)		# _9, bfact
# code.c:10: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
