	.file	"problem2.c"
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
	.string	"%u\n"
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
# problem2.c:10:   unsigned int a1 = 1, a2 = 1, a3 = 2, sum = 0;
	li	a5,1		# tmp140,
	sw	a5,-32(s0)	# tmp140, a1
# problem2.c:10:   unsigned int a1 = 1, a2 = 1, a3 = 2, sum = 0;
	li	a5,1		# tmp141,
	sw	a5,-28(s0)	# tmp141, a2
# problem2.c:10:   unsigned int a1 = 1, a2 = 1, a3 = 2, sum = 0;
	li	a5,2		# tmp142,
	sw	a5,-24(s0)	# tmp142, a3
# problem2.c:10:   unsigned int a1 = 1, a2 = 1, a3 = 2, sum = 0;
	sw	zero,-20(s0)	#, sum
# problem2.c:12:   while (a3 < 4000000) {
	j	.L2		#
.L3:
# problem2.c:13:     a3 = a1 + a2;
	lw	a5,-32(s0)		# tmp145, a1
	mv	a4,a5	# tmp144, tmp145
	lw	a5,-28(s0)		# tmp147, a2
	addw	a5,a4,a5	# tmp146, tmp143, tmp144
	sw	a5,-24(s0)	# tmp143, a3
# problem2.c:14:     sum += a3 * !(a3%2);
	lw	a5,-24(s0)		# tmp149, a3
	andi	a5,a5,1	#, tmp150, tmp148
	sext.w	a5,a5	# _1, tmp150
# problem2.c:14:     sum += a3 * !(a3%2);
	seqz	a5,a5	# tmp152, tmp153
	andi	a5,a5,0xff	# _2, tmp151
	sext.w	a5,a5	# _3, _2
# problem2.c:14:     sum += a3 * !(a3%2);
	lw	a4,-24(s0)		# tmp156, a3
	mulw	a5,a4,a5	# tmp154, tmp155, _3
	sext.w	a5,a5	# _4, tmp154
# problem2.c:14:     sum += a3 * !(a3%2);
	lw	a4,-20(s0)		# tmp159, sum
	addw	a5,a4,a5	# _4, tmp157, tmp158
	sw	a5,-20(s0)	# tmp157, sum
# problem2.c:15:     a1 = a2;
	lw	a5,-28(s0)		# tmp160, a2
	sw	a5,-32(s0)	# tmp160, a1
# problem2.c:16:     a2 = a3;
	lw	a5,-24(s0)		# tmp161, a3
	sw	a5,-28(s0)	# tmp161, a2
.L2:
# problem2.c:12:   while (a3 < 4000000) {
	lw	a5,-24(s0)		# tmp165, a3
	sext.w	a4,a5	# tmp166, tmp164
	li	a5,4001792		# tmp168,
	addi	a5,a5,-1793	#, tmp167, tmp168
	bleu	a4,a5,.L3	#, tmp166, tmp167,
# problem2.c:19:   printf("%u\n", sum);
	lw	a5,-20(s0)		# tmp169, sum
	mv	a1,a5	#, tmp169
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem2.c:21:   return 0;
	li	a5,0		# _15,
# problem2.c:22: }
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
