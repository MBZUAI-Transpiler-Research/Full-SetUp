	.file	"problem15.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
# problem15.c:10: {
	la	a5,__stack_chk_guard		# tmp75,
	ld	a4, 0(a5)	# tmp93, __stack_chk_guard
	sd	a4, -24(s0)	# tmp93, D.3475
	li	a4, 0	# tmp93
# problem15.c:14:   mpz_init(n); mpz_init(m);
	addi	a5,s0,-56	#, tmp76,
	mv	a0,a5	#, tmp76
	call	__gmpz_init@plt	#
# problem15.c:14:   mpz_init(n); mpz_init(m);
	addi	a5,s0,-40	#, tmp77,
	mv	a0,a5	#, tmp77
	call	__gmpz_init@plt	#
# problem15.c:15:   mpz_fac_ui(n, 40); mpz_fac_ui(m, 20);
	addi	a5,s0,-56	#, tmp78,
	li	a1,40		#,
	mv	a0,a5	#, tmp78
	call	__gmpz_fac_ui@plt	#
# problem15.c:15:   mpz_fac_ui(n, 40); mpz_fac_ui(m, 20);
	addi	a5,s0,-40	#, tmp79,
	li	a1,20		#,
	mv	a0,a5	#, tmp79
	call	__gmpz_fac_ui@plt	#
# problem15.c:16:   mpz_mul(m, m, m);
	addi	a3,s0,-40	#, tmp80,
	addi	a4,s0,-40	#, tmp81,
	addi	a5,s0,-40	#, tmp82,
	mv	a2,a3	#, tmp80
	mv	a1,a4	#, tmp81
	mv	a0,a5	#, tmp82
	call	__gmpz_mul@plt	#
# problem15.c:17:   mpz_divexact(n, n, m);
	addi	a3,s0,-40	#, tmp83,
	addi	a4,s0,-56	#, tmp84,
	addi	a5,s0,-56	#, tmp85,
	mv	a2,a3	#, tmp83
	mv	a1,a4	#, tmp84
	mv	a0,a5	#, tmp85
	call	__gmpz_divexact@plt	#
# problem15.c:19:   mpz_out_str(stdout, 10, n);
	la	a5,stdout		# tmp86,
	ld	a5,0(a5)		# stdout.0_1, stdout
	addi	a4,s0,-56	#, tmp87,
	mv	a2,a4	#, tmp87
	li	a1,10		#,
	mv	a0,a5	#, stdout.0_1
	call	__gmpz_out_str@plt	#
# problem15.c:20:   putchar('\n');
	li	a0,10		#,
	call	putchar@plt	#
# problem15.c:22:   mpz_clear(n);
	addi	a5,s0,-56	#, tmp88,
	mv	a0,a5	#, tmp88
	call	__gmpz_clear@plt	#
# problem15.c:23:   mpz_clear(m);
	addi	a5,s0,-40	#, tmp89,
	mv	a0,a5	#, tmp89
	call	__gmpz_clear@plt	#
# problem15.c:25:   return 0;
	li	a5,0		# _13,
# problem15.c:26: }
	mv	a4,a5	# <retval>, _13
	la	a5,__stack_chk_guard		# tmp91,
	ld	a3, -24(s0)	# tmp94, D.3475
	ld	a5, 0(a5)	# tmp92, __stack_chk_guard
	xor	a5, a3, a5	# tmp92, tmp94
	li	a3, 0	# tmp94
	beq	a5,zero,.L3	#, tmp92,,
	call	__stack_chk_fail@plt	#
.L3:
	mv	a0,a4	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
