	.file	"problem34.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
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
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
# problem34.c:11: {
	la	a5,__stack_chk_guard		# tmp80,
	ld	a4, 0(a5)	# tmp121, __stack_chk_guard
	sd	a4, -24(s0)	# tmp121, D.1924
	li	a4, 0	# tmp121
# problem34.c:12:   unsigned i, sum = 0;
	sw	zero,-52(s0)	#, sum
# problem34.c:15:   for (i = 3; i < 100000; i++) {
	li	a5,3		# tmp81,
	sw	a5,-56(s0)	# tmp81, i
# problem34.c:15:   for (i = 3; i < 100000; i++) {
	j	.L2		#
.L6:
# problem34.c:16:     unsigned j, s = 0;
	sw	zero,-44(s0)	#, s
# problem34.c:18:     snprintf(buf, sizeof buf, "%u", i);
	lw	a4,-56(s0)		# tmp82, i
	addi	a5,s0,-40	#, tmp83,
	mv	a3,a4	#, tmp82
	lla	a2,.LC0	#,
	li	a1,16		#,
	mv	a0,a5	#, tmp83
	call	snprintf@plt	#
# problem34.c:19:     for (j = 0; buf[j] != 0; j++) {
	sw	zero,-48(s0)	#, j
# problem34.c:19:     for (j = 0; buf[j] != 0; j++) {
	j	.L3		#
.L4:
# problem34.c:20:       s += fact(buf[j]-'0');
	lwu	a5,-48(s0)	# tmp84, j
	addi	a5,a5,-16	#, tmp125, tmp84
	add	a5,a5,s0	#, tmp85, tmp125
	lbu	a5,-24(a5)	# _1, buf[j_9]
	sext.w	a5,a5	# _2, _1
# problem34.c:20:       s += fact(buf[j]-'0');
	addiw	a5,a5,-48	#, tmp86, _2
	sext.w	a5,a5	# _3, tmp86
# problem34.c:20:       s += fact(buf[j]-'0');
	sext.w	a5,a5	# _4, _3
	mv	a0,a5	#, _4
	call	fact		#
	mv	a5,a0	# tmp87,
	sext.w	a5,a5	# _25, tmp87
# problem34.c:20:       s += fact(buf[j]-'0');
	lw	a4,-44(s0)		# tmp90, s
	addw	a5,a4,a5	# _25, tmp88, tmp89
	sw	a5,-44(s0)	# tmp88, s
# problem34.c:19:     for (j = 0; buf[j] != 0; j++) {
	lw	a5,-48(s0)		# tmp93, j
	addiw	a5,a5,1	#, tmp91, tmp92
	sw	a5,-48(s0)	# tmp91, j
.L3:
# problem34.c:19:     for (j = 0; buf[j] != 0; j++) {
	lwu	a5,-48(s0)	# tmp94, j
	addi	a5,a5,-16	#, tmp126, tmp94
	add	a5,a5,s0	#, tmp95, tmp126
	lbu	a5,-24(a5)	# _5, buf[j_9]
# problem34.c:19:     for (j = 0; buf[j] != 0; j++) {
	bne	a5,zero,.L4	#, _5,,
# problem34.c:22:     if (i == s) {
	lw	a5,-56(s0)		# tmp97, i
	mv	a4,a5	# tmp96, tmp97
	lw	a5,-44(s0)		# tmp99, s
	sext.w	a4,a4	# tmp100, tmp96
	sext.w	a5,a5	# tmp101, tmp98
	bne	a4,a5,.L5	#, tmp100, tmp101,
# problem34.c:23:       sum += s;
	lw	a5,-52(s0)		# tmp104, sum
	mv	a4,a5	# tmp103, tmp104
	lw	a5,-44(s0)		# tmp106, s
	addw	a5,a4,a5	# tmp105, tmp102, tmp103
	sw	a5,-52(s0)	# tmp102, sum
.L5:
# problem34.c:15:   for (i = 3; i < 100000; i++) {
	lw	a5,-56(s0)		# tmp109, i
	addiw	a5,a5,1	#, tmp107, tmp108
	sw	a5,-56(s0)	# tmp107, i
.L2:
# problem34.c:15:   for (i = 3; i < 100000; i++) {
	lw	a5,-56(s0)		# tmp113, i
	sext.w	a4,a5	# tmp114, tmp112
	li	a5,98304		# tmp116,
	addi	a5,a5,1695	#, tmp115, tmp116
	bleu	a4,a5,.L6	#, tmp114, tmp115,
# problem34.c:26:   printf("%u\n", sum);
	lw	a5,-52(s0)		# tmp117, sum
	mv	a1,a5	#, tmp117
	lla	a0,.LC1	#,
	call	printf@plt	#
# problem34.c:28:   return 0;
	li	a5,0		# _17,
# problem34.c:29: }
	mv	a4,a5	# <retval>, _17
	la	a5,__stack_chk_guard		# tmp119,
	ld	a3, -24(s0)	# tmp122, D.1924
	ld	a5, 0(a5)	# tmp120, __stack_chk_guard
	xor	a5, a3, a5	# tmp120, tmp122
	li	a3, 0	# tmp122
	beq	a5,zero,.L8	#, tmp120,,
	call	__stack_chk_fail@plt	#
.L8:
	mv	a0,a4	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	main, .-main
	.align	1
	.globl	fact
	.type	fact, @function
fact:
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp75, n
	sw	a5,-36(s0)	# tmp76, n
# problem34.c:33:   unsigned f = 1;
	li	a5,1		# tmp77,
	sw	a5,-20(s0)	# tmp77, f
# problem34.c:34:   while (n != 0) {
	j	.L10		#
.L11:
# problem34.c:35:     f *= n--;
	lw	a5,-36(s0)		# n.0_1, n
	addiw	a4,a5,-1	#, tmp78, n.0_1
	sw	a4,-36(s0)	# tmp78, n
	sext.w	a5,a5	# n.0_1, n.0_1
# problem34.c:35:     f *= n--;
	lw	a4,-20(s0)		# tmp81, f
	mulw	a5,a4,a5	# tmp79, tmp80, n.0_1
	sw	a5,-20(s0)	# tmp79, f
.L10:
# problem34.c:34:   while (n != 0) {
	lw	a5,-36(s0)		# tmp83, n
	sext.w	a5,a5	# tmp84, tmp82
	bne	a5,zero,.L11	#, tmp84,,
# problem34.c:37:   return f;
	lw	a5,-20(s0)		# _6, f
# problem34.c:38: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	fact, .-fact
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
