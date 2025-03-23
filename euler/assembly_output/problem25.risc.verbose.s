	.file	"problem25.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
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
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
# problem25.c:12: {
	la	a5,__stack_chk_guard		# tmp75,
	ld	a4, 0(a5)	# tmp91, __stack_chk_guard
	sd	a4, -24(s0)	# tmp91, D.4182
	li	a4, 0	# tmp91
# problem25.c:14:   int i = 1;
	li	a5,1		# tmp76,
	sw	a5,-60(s0)	# tmp76, i
# problem25.c:16:   mpz_init(n);
	addi	a5,s0,-40	#, tmp77,
	mv	a0,a5	#, tmp77
	call	__gmpz_init@plt	#
# problem25.c:18:   for (i = 1;; i++) {
	li	a5,1		# tmp78,
	sw	a5,-60(s0)	# tmp78, i
.L4:
# problem25.c:22:     mpz_fib_ui(n, i);
	lw	a4,-60(s0)		# _1, i
	addi	a5,s0,-40	#, tmp79,
	mv	a1,a4	#, _1
	mv	a0,a5	#, tmp79
	call	__gmpz_fib_ui@plt	#
# problem25.c:23:     str = mpz_get_str(NULL, 10, n);
	addi	a5,s0,-40	#, tmp80,
	mv	a2,a5	#, tmp80
	li	a1,10		#,
	li	a0,0		#,
	call	__gmpz_get_str@plt	#
	sd	a0,-56(s0)	#, str
# problem25.c:24:     len = strlen(str);
	ld	a0,-56(s0)		#, str
	call	strlen@plt	#
	sd	a0,-48(s0)	#, len
# problem25.c:25:     free(str);
	ld	a0,-56(s0)		#, str
	call	free@plt	#
# problem25.c:26:     if (len == 1000) {
	ld	a4,-48(s0)		# tmp81, len
	li	a5,1000		# tmp82,
	bne	a4,a5,.L2	#, tmp81, tmp82,
# problem25.c:27:       printf("%d\n", i);
	lw	a5,-60(s0)		# tmp83, i
	mv	a1,a5	#, tmp83
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem25.c:28:       break;
	nop	
# problem25.c:32:   mpz_clear(n);
	addi	a5,s0,-40	#, tmp87,
	mv	a0,a5	#, tmp87
	call	__gmpz_clear@plt	#
# problem25.c:34:   return 0;
	li	a5,0		# _16,
# problem25.c:35: }
	mv	a4,a5	# <retval>, _16
	la	a5,__stack_chk_guard		# tmp89,
	ld	a3, -24(s0)	# tmp92, D.4182
	ld	a5, 0(a5)	# tmp90, __stack_chk_guard
	xor	a5, a3, a5	# tmp90, tmp92
	li	a3, 0	# tmp92
	beq	a5,zero,.L6	#, tmp90,,
	j	.L7		#
.L2:
# problem25.c:18:   for (i = 1;; i++) {
	lw	a5,-60(s0)		# tmp86, i
	addiw	a5,a5,1	#, tmp84, tmp85
	sw	a5,-60(s0)	# tmp84, i
# problem25.c:18:   for (i = 1;; i++) {
	j	.L4		#
.L7:
# problem25.c:35: }
	call	__stack_chk_fail@plt	#
.L6:
	mv	a0,a4	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
