	.file	"problem5.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
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
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
# problem5.c:13:   unsigned long ans = 1;
	li	a5,1		# tmp74,
	sd	a5,-32(s0)	# tmp74, ans
# problem5.c:16:   for (i = 1; i <= 20; i++) {
	li	a5,1		# tmp75,
	sd	a5,-24(s0)	# tmp75, i
# problem5.c:16:   for (i = 1; i <= 20; i++) {
	j	.L2		#
.L3:
# problem5.c:17:     ans = lcm(ans, i);
	ld	a1,-24(s0)		#, i
	ld	a0,-32(s0)		#, ans
	call	lcm		#
	sd	a0,-32(s0)	#, ans
# problem5.c:16:   for (i = 1; i <= 20; i++) {
	ld	a5,-24(s0)		# tmp77, i
	addi	a5,a5,1	#, tmp76, tmp77
	sd	a5,-24(s0)	# tmp76, i
.L2:
# problem5.c:16:   for (i = 1; i <= 20; i++) {
	ld	a4,-24(s0)		# tmp78, i
	li	a5,20		# tmp79,
	bleu	a4,a5,.L3	#, tmp78, tmp79,
# problem5.c:19:   printf("%lu\n", ans);
	ld	a1,-32(s0)		#, ans
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem5.c:20:   return 0;
	li	a5,0		# _8,
# problem5.c:21: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	main, .-main
	.align	1
	.type	gcd, @function
gcd:
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# a, a
	sd	a1,-48(s0)	# b, b
# problem5.c:27:   if (a > b) {
	ld	a4,-40(s0)		# tmp74, a
	ld	a5,-48(s0)		# tmp75, b
	bleu	a4,a5,.L7	#, tmp74, tmp75,
# problem5.c:28:     unsigned long t = a;
	ld	a5,-40(s0)		# tmp76, a
	sd	a5,-32(s0)	# tmp76, t
# problem5.c:29:     a = b;
	ld	a5,-48(s0)		# tmp77, b
	sd	a5,-40(s0)	# tmp77, a
# problem5.c:30:     b = t;
	ld	a5,-32(s0)		# tmp78, t
	sd	a5,-48(s0)	# tmp78, b
# problem5.c:33:   while (r = a%b) {
	j	.L7		#
.L8:
# problem5.c:34:     a = b;
	ld	a5,-48(s0)		# tmp79, b
	sd	a5,-40(s0)	# tmp79, a
# problem5.c:35:     b = r;
	ld	a5,-24(s0)		# tmp80, r
	sd	a5,-48(s0)	# tmp80, b
.L7:
# problem5.c:33:   while (r = a%b) {
	ld	a4,-40(s0)		# tmp82, a
	ld	a5,-48(s0)		# tmp84, b
	remu	a5,a4,a5	# tmp84, tmp83, tmp82
	sd	a5,-24(s0)	# tmp83, r
# problem5.c:33:   while (r = a%b) {
	ld	a5,-24(s0)		# tmp85, r
	bne	a5,zero,.L8	#, tmp85,,
# problem5.c:37:   return b;
	ld	a5,-48(s0)		# _11, b
# problem5.c:38: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	gcd, .-gcd
	.align	1
	.type	lcm, @function
lcm:
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# a, a
	sd	a1,-48(s0)	# b, b
# problem5.c:42:   unsigned long long p = (unsigned long long)a * b;
	ld	a4,-40(s0)		# tmp76, a
	ld	a5,-48(s0)		# tmp77, b
	mul	a5,a4,a5	# tmp75, tmp76, tmp77
	sd	a5,-24(s0)	# tmp75, p
# problem5.c:43:   return p/gcd(a, b);
	ld	a1,-48(s0)		#, b
	ld	a0,-40(s0)		#, a
	call	gcd		#
	mv	a4,a0	# _1,
# problem5.c:43:   return p/gcd(a, b);
	ld	a5,-24(s0)		# tmp78, p
	divu	a5,a5,a4	# _1, _7, tmp78
# problem5.c:44: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	lcm, .-lcm
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
