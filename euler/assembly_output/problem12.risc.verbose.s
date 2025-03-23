	.file	"problem12.c"
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
# problem12.c:12:   unsigned long i = 1, n = 1;
	li	a5,1		# tmp138,
	sd	a5,-32(s0)	# tmp138, i
# problem12.c:12:   unsigned long i = 1, n = 1;
	li	a5,1		# tmp139,
	sd	a5,-24(s0)	# tmp139, n
# problem12.c:14:   while (divisor_count(n) < 500) {
	j	.L2		#
.L3:
# problem12.c:15:     n += ++i;
	ld	a5,-32(s0)		# tmp141, i
	addi	a5,a5,1	#, tmp140, tmp141
	sd	a5,-32(s0)	# tmp140, i
	ld	a5,-32(s0)		# i.0_12, i
# problem12.c:15:     n += ++i;
	ld	a4,-24(s0)		# tmp143, n
	add	a5,a4,a5	# i.0_12, tmp142, tmp143
	sd	a5,-24(s0)	# tmp142, n
.L2:
# problem12.c:14:   while (divisor_count(n) < 500) {
	ld	a0,-24(s0)		#, n
	call	divisor_count		#
	mv	a5,a0	# tmp144,
	sext.w	a5,a5	# _1, tmp144
# problem12.c:14:   while (divisor_count(n) < 500) {
	mv	a4,a5	# tmp145, _1
	li	a5,499		# tmp146,
	bleu	a4,a5,.L3	#, tmp145, tmp146,
# problem12.c:17:   printf("%lu\n", n);
	ld	a1,-24(s0)		#, n
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem12.c:18:   return 0;
	li	a5,0		# _10,
# problem12.c:19: }
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
	.type	divisor_count, @function
divisor_count:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# n, n
# problem12.c:23:   unsigned ret = 1;
	li	a5,1		# tmp138,
	sw	a5,-32(s0)	# tmp138, ret
# problem12.c:26:   for (i = 2; i <= n; i++) {
	li	a5,2		# tmp139,
	sd	a5,-24(s0)	# tmp139, i
# problem12.c:26:   for (i = 2; i <= n; i++) {
	j	.L6		#
.L9:
# problem12.c:27:     unsigned c = 0;
	sw	zero,-28(s0)	#, c
# problem12.c:28:     while (n % i == 0) {
	j	.L7		#
.L8:
# problem12.c:29:       c++;
	lw	a5,-28(s0)		# tmp142, c
	addiw	a5,a5,1	#, tmp140, tmp141
	sw	a5,-28(s0)	# tmp140, c
# problem12.c:30:       n /= i;
	ld	a4,-40(s0)		# tmp145, n
	ld	a5,-24(s0)		# tmp146, i
	divu	a5,a4,a5	# tmp146, tmp144, tmp145
	sd	a5,-40(s0)	# tmp144, n
.L7:
# problem12.c:28:     while (n % i == 0) {
	ld	a4,-40(s0)		# tmp147, n
	ld	a5,-24(s0)		# tmp148, i
	remu	a5,a4,a5	# tmp148, _1, tmp147
# problem12.c:28:     while (n % i == 0) {
	beq	a5,zero,.L8	#, _1,,
# problem12.c:32:     ret *= c+1;
	lw	a5,-28(s0)		# tmp151, c
	addiw	a5,a5,1	#, tmp149, tmp150
	sext.w	a5,a5	# _2, tmp149
# problem12.c:32:     ret *= c+1;
	lw	a4,-32(s0)		# tmp154, ret
	mulw	a5,a4,a5	# tmp152, tmp153, _2
	sw	a5,-32(s0)	# tmp152, ret
# problem12.c:26:   for (i = 2; i <= n; i++) {
	ld	a5,-24(s0)		# tmp156, i
	addi	a5,a5,1	#, tmp155, tmp156
	sd	a5,-24(s0)	# tmp155, i
.L6:
# problem12.c:26:   for (i = 2; i <= n; i++) {
	ld	a4,-24(s0)		# tmp157, i
	ld	a5,-40(s0)		# tmp158, n
	bleu	a4,a5,.L9	#, tmp157, tmp158,
# problem12.c:34:   return ret;
	lw	a5,-32(s0)		# _11, ret
# problem12.c:35: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	divisor_count, .-divisor_count
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
