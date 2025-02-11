	.file	"problem28.c"
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
.LC0:
	.string	"%d\n"
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
# problem28.c:12:   int sum = 1, i;
	li	a5,1		# tmp142,
	sw	a5,-24(s0)	# tmp142, sum
# problem28.c:13:   for (i = 3; i <= N; i += 2) {
	li	a5,3		# tmp143,
	sw	a5,-20(s0)	# tmp143, i
# problem28.c:13:   for (i = 3; i <= N; i += 2) {
	j	.L2		#
.L3:
# problem28.c:14:     sum += 2*(2*i*i - 3*i + 3);
	lw	a5,-20(s0)		# tmp146, i
	mulw	a5,a5,a5	# tmp144, tmp145, tmp145
	sext.w	a5,a5	# _1, tmp144
	slliw	a5,a5,1	#, tmp147, _1
	sext.w	a4,a5	# _2, tmp147
# problem28.c:14:     sum += 2*(2*i*i - 3*i + 3);
	lw	a5,-20(s0)		# tmp149, i
	mv	a3,a5	# tmp148, tmp149
	mv	a5,a3	# tmp150, tmp148
	slliw	a3,a3,2	#, tmp151, tmp148
	subw	a5,a5,a3	# tmp150, tmp150, tmp151
	sext.w	a5,a5	# _3, tmp150
# problem28.c:14:     sum += 2*(2*i*i - 3*i + 3);
	addw	a5,a4,a5	# _3, tmp152, _2
	sext.w	a5,a5	# _4, tmp152
# problem28.c:14:     sum += 2*(2*i*i - 3*i + 3);
	addiw	a5,a5,3	#, tmp153, _4
	sext.w	a5,a5	# _5, tmp153
# problem28.c:14:     sum += 2*(2*i*i - 3*i + 3);
	slliw	a5,a5,1	#, tmp154, _5
	sext.w	a5,a5	# _6, tmp154
# problem28.c:14:     sum += 2*(2*i*i - 3*i + 3);
	lw	a4,-24(s0)		# tmp157, sum
	addw	a5,a4,a5	# _6, tmp155, tmp156
	sw	a5,-24(s0)	# tmp155, sum
# problem28.c:13:   for (i = 3; i <= N; i += 2) {
	lw	a5,-20(s0)		# tmp160, i
	addiw	a5,a5,2	#, tmp158, tmp159
	sw	a5,-20(s0)	# tmp158, i
.L2:
# problem28.c:13:   for (i = 3; i <= N; i += 2) {
	lw	a5,-20(s0)		# tmp162, i
	sext.w	a4,a5	# tmp163, tmp161
	li	a5,1001		# tmp164,
	ble	a4,a5,.L3	#, tmp163, tmp164,
# problem28.c:16:   printf("%d\n", sum);
	lw	a5,-24(s0)		# tmp165, sum
	mv	a1,a5	#, tmp165
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem28.c:17:   return 0;
	li	a5,0		# _13,
# problem28.c:18: }
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
