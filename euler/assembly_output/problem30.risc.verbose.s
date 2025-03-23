	.file	"problem30.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC2:
	.string	"%d\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
# problem30.c:13: {
	la	a5,__stack_chk_guard		# tmp82,
	ld	a4, 0(a5)	# tmp124, __stack_chk_guard
	sd	a4, -24(s0)	# tmp124, D.2949
	li	a4, 0	# tmp124
# problem30.c:16:   int ttl = 0;
	sw	zero,-52(s0)	#, ttl
# problem30.c:17:   for (i = 10; i < M; i++) {
	li	a5,10		# tmp83,
	sw	a5,-56(s0)	# tmp83, i
# problem30.c:17:   for (i = 10; i < M; i++) {
	j	.L2		#
.L6:
# problem30.c:18:     int sum = 0, j;
	sw	zero,-48(s0)	#, sum
# problem30.c:20:     snprintf(buf, sizeof buf, "%d", i);
	lw	a4,-56(s0)		# tmp84, i
	addi	a5,s0,-40	#, tmp85,
	mv	a3,a4	#, tmp84
	lla	a2,.LC0	#,
	li	a1,16		#,
	mv	a0,a5	#, tmp85
	call	snprintf@plt	#
# problem30.c:21:     for (j = 0; buf[j]; j++) {
	sw	zero,-44(s0)	#, j
# problem30.c:21:     for (j = 0; buf[j]; j++) {
	j	.L3		#
.L4:
# problem30.c:22:       sum += pow(buf[j]-'0', E);
	lw	a5,-44(s0)		# tmp86, j
	addi	a5,a5,-16	#, tmp128, tmp86
	add	a5,a5,s0	#, tmp87, tmp128
	lbu	a5,-24(a5)	# _1, buf[j_12]
	sext.w	a5,a5	# _2, _1
# problem30.c:22:       sum += pow(buf[j]-'0', E);
	addiw	a5,a5,-48	#, tmp88, _2
	sext.w	a5,a5	# _3, tmp88
# problem30.c:22:       sum += pow(buf[j]-'0', E);
	fcvt.d.w	fa5,a5	# _4, _3
	lla	a5,.LC1	# tmp90,
	fld	fa4,0(a5)	# tmp89,
	fmv.d	fa1,fa4	#, tmp89
	fmv.d	fa0,fa5	#, _4
	call	pow@plt	#
	fmv.d	fa4,fa0	# _27,
# problem30.c:22:       sum += pow(buf[j]-'0', E);
	lw	a5,-48(s0)		# tmp92, sum
	fcvt.d.w	fa5,a5	# _5, tmp91
	fadd.d	fa5,fa4,fa5	# _6, _27, _5
	fcvt.w.d a5,fa5,rtz	# tmp93, _6
	sw	a5,-48(s0)	# tmp93, sum
# problem30.c:21:     for (j = 0; buf[j]; j++) {
	lw	a5,-44(s0)		# tmp96, j
	addiw	a5,a5,1	#, tmp94, tmp95
	sw	a5,-44(s0)	# tmp94, j
.L3:
# problem30.c:21:     for (j = 0; buf[j]; j++) {
	lw	a5,-44(s0)		# tmp97, j
	addi	a5,a5,-16	#, tmp129, tmp97
	add	a5,a5,s0	#, tmp98, tmp129
	lbu	a5,-24(a5)	# _7, buf[j_12]
# problem30.c:21:     for (j = 0; buf[j]; j++) {
	bne	a5,zero,.L4	#, _7,,
# problem30.c:24:     if (i == sum) {
	lw	a5,-56(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-48(s0)		# tmp102, sum
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	bne	a4,a5,.L5	#, tmp103, tmp104,
# problem30.c:25:       ttl += i;
	lw	a5,-52(s0)		# tmp107, ttl
	mv	a4,a5	# tmp106, tmp107
	lw	a5,-56(s0)		# tmp109, i
	addw	a5,a4,a5	# tmp108, tmp105, tmp106
	sw	a5,-52(s0)	# tmp105, ttl
.L5:
# problem30.c:17:   for (i = 10; i < M; i++) {
	lw	a5,-56(s0)		# tmp112, i
	addiw	a5,a5,1	#, tmp110, tmp111
	sw	a5,-56(s0)	# tmp110, i
.L2:
# problem30.c:17:   for (i = 10; i < M; i++) {
	lw	a5,-56(s0)		# tmp116, i
	sext.w	a4,a5	# tmp117, tmp115
	li	a5,999424		# tmp119,
	addi	a5,a5,575	#, tmp118, tmp119
	ble	a4,a5,.L6	#, tmp117, tmp118,
# problem30.c:28:   printf("%d\n", ttl);
	lw	a5,-52(s0)		# tmp120, ttl
	mv	a1,a5	#, tmp120
	lla	a0,.LC2	#,
	call	printf@plt	#
# problem30.c:29:   return 0;
	li	a5,0		# _19,
# problem30.c:30: }
	mv	a4,a5	# <retval>, _19
	la	a5,__stack_chk_guard		# tmp122,
	ld	a3, -24(s0)	# tmp125, D.2949
	ld	a5, 0(a5)	# tmp123, __stack_chk_guard
	xor	a5, a3, a5	# tmp123, tmp125
	li	a3, 0	# tmp125
	beq	a5,zero,.L8	#, tmp123,,
	call	__stack_chk_fail@plt	#
.L8:
	mv	a0,a4	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	3
.LC1:
	.word	0
	.word	1075052544
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
