	.file	"problem5.c"
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
	.string	"%lu\n"
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
# problem5.c:13:   unsigned long ans = 1;
	li	a5,1		# tmp136,
	sd	a5,-32(s0)	# tmp136, ans
# problem5.c:16:   for (i = 1; i <= 20; i++) {
	li	a5,1		# tmp137,
	sd	a5,-24(s0)	# tmp137, i
# problem5.c:16:   for (i = 1; i <= 20; i++) {
	j	.L2		#
.L3:
# problem5.c:17:     ans = lcm(ans, i);
	ld	a1,-24(s0)		#, i
	ld	a0,-32(s0)		#, ans
	call	lcm		#
	sd	a0,-32(s0)	#, ans
# problem5.c:16:   for (i = 1; i <= 20; i++) {
	ld	a5,-24(s0)		# tmp139, i
	addi	a5,a5,1	#, tmp138, tmp139
	sd	a5,-24(s0)	# tmp138, i
.L2:
# problem5.c:16:   for (i = 1; i <= 20; i++) {
	ld	a4,-24(s0)		# tmp140, i
	li	a5,20		# tmp141,
	bleu	a4,a5,.L3	#, tmp140, tmp141,
# problem5.c:19:   printf("%lu\n", ans);
	ld	a1,-32(s0)		#, ans
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem5.c:20:   return 0;
	li	a5,0		# _8,
# problem5.c:21: }
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
	.align	1
	.type	gcd, @function
gcd:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# a, a
	sd	a1,-48(s0)	# b, b
# problem5.c:27:   if (a > b) {
	ld	a4,-40(s0)		# tmp136, a
	ld	a5,-48(s0)		# tmp137, b
	bleu	a4,a5,.L7	#, tmp136, tmp137,
# problem5.c:28:     unsigned long t = a;
	ld	a5,-40(s0)		# tmp138, a
	sd	a5,-32(s0)	# tmp138, t
# problem5.c:29:     a = b;
	ld	a5,-48(s0)		# tmp139, b
	sd	a5,-40(s0)	# tmp139, a
# problem5.c:30:     b = t;
	ld	a5,-32(s0)		# tmp140, t
	sd	a5,-48(s0)	# tmp140, b
# problem5.c:33:   while (r = a%b) {
	j	.L7		#
.L8:
# problem5.c:34:     a = b;
	ld	a5,-48(s0)		# tmp141, b
	sd	a5,-40(s0)	# tmp141, a
# problem5.c:35:     b = r;
	ld	a5,-24(s0)		# tmp142, r
	sd	a5,-48(s0)	# tmp142, b
.L7:
# problem5.c:33:   while (r = a%b) {
	ld	a4,-40(s0)		# tmp144, a
	ld	a5,-48(s0)		# tmp146, b
	remu	a5,a4,a5	# tmp146, tmp145, tmp144
	sd	a5,-24(s0)	# tmp145, r
# problem5.c:33:   while (r = a%b) {
	ld	a5,-24(s0)		# tmp147, r
	bne	a5,zero,.L8	#, tmp147,,
# problem5.c:37:   return b;
	ld	a5,-48(s0)		# _11, b
# problem5.c:38: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	gcd, .-gcd
	.align	1
	.type	lcm, @function
lcm:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# a, a
	sd	a1,-48(s0)	# b, b
# problem5.c:42:   unsigned long long p = (unsigned long long)a * b;
	ld	a4,-40(s0)		# tmp138, a
	ld	a5,-48(s0)		# tmp139, b
	mul	a5,a4,a5	# tmp137, tmp138, tmp139
	sd	a5,-24(s0)	# tmp137, p
# problem5.c:43:   return p/gcd(a, b);
	ld	a1,-48(s0)		#, b
	ld	a0,-40(s0)		#, a
	call	gcd		#
	mv	a4,a0	# _1,
# problem5.c:43:   return p/gcd(a, b);
	ld	a5,-24(s0)		# tmp140, p
	divu	a5,a5,a4	# _1, _7, tmp140
# problem5.c:44: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2:
	.size	lcm, .-lcm
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
