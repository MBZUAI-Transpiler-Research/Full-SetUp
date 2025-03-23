	.file	"problem21.c"
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
# problem21.c:12:   int i, d, sum = 0;
	sw	zero,-24(s0)	#, sum
# problem21.c:14:   for (i = 2; i < 10000; i++) {
	li	a5,2		# tmp138,
	sw	a5,-28(s0)	# tmp138, i
# problem21.c:14:   for (i = 2; i < 10000; i++) {
	j	.L2		#
.L4:
# problem21.c:15:     d = divisors_sum(i);
	lw	a5,-28(s0)		# tmp139, i
	mv	a0,a5	#, tmp139
	call	divisors_sum		#
	mv	a5,a0	# tmp140,
	sw	a5,-20(s0)	# tmp140, d
# problem21.c:16:     if (i < d && i == divisors_sum(d)) {
	lw	a5,-28(s0)		# tmp142, i
	mv	a4,a5	# tmp141, tmp142
	lw	a5,-20(s0)		# tmp144, d
	sext.w	a4,a4	# tmp145, tmp141
	sext.w	a5,a5	# tmp146, tmp143
	bge	a4,a5,.L3	#, tmp145, tmp146,
# problem21.c:16:     if (i < d && i == divisors_sum(d)) {
	lw	a5,-20(s0)		# tmp147, d
	mv	a0,a5	#, tmp147
	call	divisors_sum		#
	mv	a5,a0	# tmp148,
	mv	a4,a5	# _1, tmp148
# problem21.c:16:     if (i < d && i == divisors_sum(d)) {
	lw	a5,-28(s0)		# tmp150, i
	sext.w	a5,a5	# tmp151, tmp149
	bne	a5,a4,.L3	#, tmp151, tmp152,
# problem21.c:17:       sum += i + d;
	lw	a5,-28(s0)		# tmp155, i
	mv	a4,a5	# tmp154, tmp155
	lw	a5,-20(s0)		# tmp157, d
	addw	a5,a4,a5	# tmp156, tmp153, tmp154
	sext.w	a5,a5	# _2, tmp153
# problem21.c:17:       sum += i + d;
	lw	a4,-24(s0)		# tmp160, sum
	addw	a5,a4,a5	# _2, tmp158, tmp159
	sw	a5,-24(s0)	# tmp158, sum
.L3:
# problem21.c:14:   for (i = 2; i < 10000; i++) {
	lw	a5,-28(s0)		# tmp163, i
	addiw	a5,a5,1	#, tmp161, tmp162
	sw	a5,-28(s0)	# tmp161, i
.L2:
# problem21.c:14:   for (i = 2; i < 10000; i++) {
	lw	a5,-28(s0)		# tmp167, i
	sext.w	a4,a5	# tmp168, tmp166
	li	a5,8192		# tmp170,
	addi	a5,a5,1807	#, tmp169, tmp170
	ble	a4,a5,.L4	#, tmp168, tmp169,
# problem21.c:20:   printf("%d\n", sum);
	lw	a5,-24(s0)		# tmp171, sum
	mv	a1,a5	#, tmp171
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem21.c:22:   return 0;
	li	a5,0		# _12,
# problem21.c:23: }
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
	.type	divisors_sum, @function
divisors_sum:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp141, n
	sw	a5,-36(s0)	# tmp142, n
# problem21.c:27:   int sum= 1;
	li	a5,1		# tmp143,
	sw	a5,-32(s0)	# tmp143, sum
# problem21.c:28:   int i, k = n;
	lw	a5,-36(s0)		# tmp144, n
	sw	a5,-24(s0)	# tmp144, k
# problem21.c:30:   for (i = 2; i <= k; i++) {
	li	a5,2		# tmp145,
	sw	a5,-28(s0)	# tmp145, i
# problem21.c:30:   for (i = 2; i <= k; i++) {
	j	.L7		#
.L10:
# problem21.c:31:     int p = 1;
	li	a5,1		# tmp146,
	sw	a5,-20(s0)	# tmp146, p
# problem21.c:32:     while (k % i == 0) {
	j	.L8		#
.L9:
# problem21.c:33:       p *= i;
	lw	a5,-20(s0)		# tmp149, p
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-28(s0)		# tmp151, i
	mulw	a5,a4,a5	# tmp147, tmp148, tmp150
	sw	a5,-20(s0)	# tmp147, p
# problem21.c:34:       k /= i;
	lw	a5,-24(s0)		# tmp155, k
	mv	a4,a5	# tmp154, tmp155
	lw	a5,-28(s0)		# tmp157, i
	divw	a5,a4,a5	# tmp156, tmp153, tmp154
	sw	a5,-24(s0)	# tmp153, k
.L8:
# problem21.c:32:     while (k % i == 0) {
	lw	a5,-24(s0)		# tmp160, k
	mv	a4,a5	# tmp159, tmp160
	lw	a5,-28(s0)		# tmp163, i
	remw	a5,a4,a5	# tmp162, tmp161, tmp159
	sext.w	a5,a5	# _1, tmp161
# problem21.c:32:     while (k % i == 0) {
	beq	a5,zero,.L9	#, _1,,
# problem21.c:36:     sum *= (p*i - 1)/(i-1);
	lw	a5,-20(s0)		# tmp166, p
	mv	a4,a5	# tmp165, tmp166
	lw	a5,-28(s0)		# tmp168, i
	mulw	a5,a4,a5	# tmp164, tmp165, tmp167
	sext.w	a5,a5	# _2, tmp164
# problem21.c:36:     sum *= (p*i - 1)/(i-1);
	addiw	a5,a5,-1	#, tmp169, _2
	sext.w	a4,a5	# _3, tmp169
# problem21.c:36:     sum *= (p*i - 1)/(i-1);
	lw	a5,-28(s0)		# tmp172, i
	addiw	a5,a5,-1	#, tmp170, tmp171
	sext.w	a5,a5	# _4, tmp170
# problem21.c:36:     sum *= (p*i - 1)/(i-1);
	divw	a5,a4,a5	# _4, tmp174, _3
	sext.w	a5,a5	# _5, tmp174
# problem21.c:36:     sum *= (p*i - 1)/(i-1);
	lw	a4,-32(s0)		# tmp177, sum
	mulw	a5,a4,a5	# tmp175, tmp176, _5
	sw	a5,-32(s0)	# tmp175, sum
# problem21.c:30:   for (i = 2; i <= k; i++) {
	lw	a5,-28(s0)		# tmp180, i
	addiw	a5,a5,1	#, tmp178, tmp179
	sw	a5,-28(s0)	# tmp178, i
.L7:
# problem21.c:30:   for (i = 2; i <= k; i++) {
	lw	a5,-28(s0)		# tmp182, i
	mv	a4,a5	# tmp181, tmp182
	lw	a5,-24(s0)		# tmp184, k
	sext.w	a4,a4	# tmp185, tmp181
	sext.w	a5,a5	# tmp186, tmp183
	ble	a4,a5,.L10	#, tmp185, tmp186,
# problem21.c:38:   return sum - n;
	lw	a5,-32(s0)		# tmp189, sum
	mv	a4,a5	# tmp188, tmp189
	lw	a5,-36(s0)		# tmp191, n
	subw	a5,a4,a5	# tmp187, tmp188, tmp190
	sext.w	a5,a5	# _15, tmp187
# problem21.c:39: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	divisors_sum, .-divisors_sum
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
