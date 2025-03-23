	.file	"problem34.c"
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
	.string	"%u"
	.align	3
.LC1:
	.string	"%u\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
# problem34.c:11: {
	la	a5,__stack_chk_guard		# tmp142,
	ld	a4, 0(a5)	# tmp183, __stack_chk_guard
	sd	a4, -24(s0)	# tmp183, D.2742
	li	a4, 0	# tmp183
# problem34.c:12:   unsigned i, sum = 0;
	sw	zero,-52(s0)	#, sum
# problem34.c:15:   for (i = 3; i < 100000; i++) {
	li	a5,3		# tmp143,
	sw	a5,-56(s0)	# tmp143, i
# problem34.c:15:   for (i = 3; i < 100000; i++) {
	j	.L2		#
.L6:
# problem34.c:16:     unsigned j, s = 0;
	sw	zero,-44(s0)	#, s
# problem34.c:18:     snprintf(buf, sizeof buf, "%u", i);
	lw	a4,-56(s0)		# tmp144, i
	addi	a5,s0,-40	#, tmp145,
	mv	a3,a4	#, tmp144
	lla	a2,.LC0	#,
	li	a1,16		#,
	mv	a0,a5	#, tmp145
	call	snprintf@plt	#
# problem34.c:19:     for (j = 0; buf[j] != 0; j++) {
	sw	zero,-48(s0)	#, j
# problem34.c:19:     for (j = 0; buf[j] != 0; j++) {
	j	.L3		#
.L4:
# problem34.c:20:       s += fact(buf[j]-'0');
	lwu	a5,-48(s0)	# tmp146, j
	addi	a5,a5,-16	#, tmp187, tmp146
	add	a5,a5,s0	#, tmp147, tmp187
	lbu	a5,-24(a5)	# _1, buf[j_9]
	sext.w	a5,a5	# _2, _1
# problem34.c:20:       s += fact(buf[j]-'0');
	addiw	a5,a5,-48	#, tmp148, _2
	sext.w	a5,a5	# _3, tmp148
# problem34.c:20:       s += fact(buf[j]-'0');
	sext.w	a5,a5	# _4, _3
	mv	a0,a5	#, _4
	call	fact		#
	mv	a5,a0	# tmp149,
	sext.w	a5,a5	# _25, tmp149
# problem34.c:20:       s += fact(buf[j]-'0');
	lw	a4,-44(s0)		# tmp152, s
	addw	a5,a4,a5	# _25, tmp150, tmp151
	sw	a5,-44(s0)	# tmp150, s
# problem34.c:19:     for (j = 0; buf[j] != 0; j++) {
	lw	a5,-48(s0)		# tmp155, j
	addiw	a5,a5,1	#, tmp153, tmp154
	sw	a5,-48(s0)	# tmp153, j
.L3:
# problem34.c:19:     for (j = 0; buf[j] != 0; j++) {
	lwu	a5,-48(s0)	# tmp156, j
	addi	a5,a5,-16	#, tmp188, tmp156
	add	a5,a5,s0	#, tmp157, tmp188
	lbu	a5,-24(a5)	# _5, buf[j_9]
# problem34.c:19:     for (j = 0; buf[j] != 0; j++) {
	bne	a5,zero,.L4	#, _5,,
# problem34.c:22:     if (i == s) {
	lw	a5,-56(s0)		# tmp159, i
	mv	a4,a5	# tmp158, tmp159
	lw	a5,-44(s0)		# tmp161, s
	sext.w	a4,a4	# tmp162, tmp158
	sext.w	a5,a5	# tmp163, tmp160
	bne	a4,a5,.L5	#, tmp162, tmp163,
# problem34.c:23:       sum += s;
	lw	a5,-52(s0)		# tmp166, sum
	mv	a4,a5	# tmp165, tmp166
	lw	a5,-44(s0)		# tmp168, s
	addw	a5,a4,a5	# tmp167, tmp164, tmp165
	sw	a5,-52(s0)	# tmp164, sum
.L5:
# problem34.c:15:   for (i = 3; i < 100000; i++) {
	lw	a5,-56(s0)		# tmp171, i
	addiw	a5,a5,1	#, tmp169, tmp170
	sw	a5,-56(s0)	# tmp169, i
.L2:
# problem34.c:15:   for (i = 3; i < 100000; i++) {
	lw	a5,-56(s0)		# tmp175, i
	sext.w	a4,a5	# tmp176, tmp174
	li	a5,98304		# tmp178,
	addi	a5,a5,1695	#, tmp177, tmp178
	bleu	a4,a5,.L6	#, tmp176, tmp177,
# problem34.c:26:   printf("%u\n", sum);
	lw	a5,-52(s0)		# tmp179, sum
	mv	a1,a5	#, tmp179
	lla	a0,.LC1	#,
	call	printf@plt	#
# problem34.c:28:   return 0;
	li	a5,0		# _17,
# problem34.c:29: }
	mv	a4,a5	# <retval>, _17
	la	a5,__stack_chk_guard		# tmp181,
	ld	a3, -24(s0)	# tmp184, D.2742
	ld	a5, 0(a5)	# tmp182, __stack_chk_guard
	xor	a5, a3, a5	# tmp182, tmp184
	li	a3, 0	# tmp184
	beq	a5,zero,.L8	#, tmp182,,
	call	__stack_chk_fail@plt	#
.L8:
	mv	a0,a4	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	1
	.globl	fact
	.type	fact, @function
fact:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp137, n
	sw	a5,-36(s0)	# tmp138, n
# problem34.c:33:   unsigned f = 1;
	li	a5,1		# tmp139,
	sw	a5,-20(s0)	# tmp139, f
# problem34.c:34:   while (n != 0) {
	j	.L10		#
.L11:
# problem34.c:35:     f *= n--;
	lw	a5,-36(s0)		# n.0_1, n
	addiw	a4,a5,-1	#, tmp140, n.0_1
	sw	a4,-36(s0)	# tmp140, n
	sext.w	a5,a5	# n.0_1, n.0_1
# problem34.c:35:     f *= n--;
	lw	a4,-20(s0)		# tmp143, f
	mulw	a5,a4,a5	# tmp141, tmp142, n.0_1
	sw	a5,-20(s0)	# tmp141, f
.L10:
# problem34.c:34:   while (n != 0) {
	lw	a5,-36(s0)		# tmp145, n
	sext.w	a5,a5	# tmp146, tmp144
	bne	a5,zero,.L11	#, tmp146,,
# problem34.c:37:   return f;
	lw	a5,-20(s0)		# _6, f
# problem34.c:38: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	fact, .-fact
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
