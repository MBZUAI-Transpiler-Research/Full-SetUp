	.file	"problem3.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"%llu\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
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
# problem3.c:10:   unsigned long long n = 600851475143ULL;
	lla	a5,.LC0	# tmp137,
	ld	a5,0(a5)		# tmp138,
	sd	a5,-32(s0)	# tmp138, n
# problem3.c:13:   for (i = 2ULL; i < n; i++) {
	li	a5,2		# tmp139,
	sd	a5,-24(s0)	# tmp139, i
# problem3.c:13:   for (i = 2ULL; i < n; i++) {
	j	.L2		#
.L4:
# problem3.c:15:       n /= i;
	ld	a4,-32(s0)		# tmp142, n
	ld	a5,-24(s0)		# tmp143, i
	divu	a5,a4,a5	# tmp143, tmp141, tmp142
	sd	a5,-32(s0)	# tmp141, n
.L3:
# problem3.c:14:     while (n % i == 0) {
	ld	a4,-32(s0)		# tmp144, n
	ld	a5,-24(s0)		# tmp145, i
	remu	a5,a4,a5	# tmp145, _1, tmp144
# problem3.c:14:     while (n % i == 0) {
	beq	a5,zero,.L4	#, _1,,
# problem3.c:13:   for (i = 2ULL; i < n; i++) {
	ld	a5,-24(s0)		# tmp147, i
	addi	a5,a5,1	#, tmp146, tmp147
	sd	a5,-24(s0)	# tmp146, i
.L2:
# problem3.c:13:   for (i = 2ULL; i < n; i++) {
	ld	a4,-24(s0)		# tmp148, i
	ld	a5,-32(s0)		# tmp149, n
	bltu	a4,a5,.L3	#, tmp148, tmp149,
# problem3.c:18:   printf("%llu\n", n);
	ld	a1,-32(s0)		#, n
	lla	a0,.LC1	#,
	call	printf@plt	#
# problem3.c:20:   return 0;
	li	a5,0		# _9,
# problem3.c:21: }
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
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.dword	600851475143
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
