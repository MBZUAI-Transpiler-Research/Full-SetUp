	.file	"problem15.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB20:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
# problem15.c:10: {
	la	a5,__stack_chk_guard		# tmp137,
	ld	a4, 0(a5)	# tmp155, __stack_chk_guard
	sd	a4, -24(s0)	# tmp155, D.4293
	li	a4, 0	# tmp155
# problem15.c:14:   mpz_init(n); mpz_init(m);
	addi	a5,s0,-56	#, tmp138,
	mv	a0,a5	#, tmp138
	call	__gmpz_init@plt	#
# problem15.c:14:   mpz_init(n); mpz_init(m);
	addi	a5,s0,-40	#, tmp139,
	mv	a0,a5	#, tmp139
	call	__gmpz_init@plt	#
# problem15.c:15:   mpz_fac_ui(n, 40); mpz_fac_ui(m, 20);
	addi	a5,s0,-56	#, tmp140,
	li	a1,40		#,
	mv	a0,a5	#, tmp140
	call	__gmpz_fac_ui@plt	#
# problem15.c:15:   mpz_fac_ui(n, 40); mpz_fac_ui(m, 20);
	addi	a5,s0,-40	#, tmp141,
	li	a1,20		#,
	mv	a0,a5	#, tmp141
	call	__gmpz_fac_ui@plt	#
# problem15.c:16:   mpz_mul(m, m, m);
	addi	a3,s0,-40	#, tmp142,
	addi	a4,s0,-40	#, tmp143,
	addi	a5,s0,-40	#, tmp144,
	mv	a2,a3	#, tmp142
	mv	a1,a4	#, tmp143
	mv	a0,a5	#, tmp144
	call	__gmpz_mul@plt	#
# problem15.c:17:   mpz_divexact(n, n, m);
	addi	a3,s0,-40	#, tmp145,
	addi	a4,s0,-56	#, tmp146,
	addi	a5,s0,-56	#, tmp147,
	mv	a2,a3	#, tmp145
	mv	a1,a4	#, tmp146
	mv	a0,a5	#, tmp147
	call	__gmpz_divexact@plt	#
# problem15.c:19:   mpz_out_str(stdout, 10, n);
	la	a5,stdout		# tmp148,
	ld	a5,0(a5)		# stdout.0_1, stdout
	addi	a4,s0,-56	#, tmp149,
	mv	a2,a4	#, tmp149
	li	a1,10		#,
	mv	a0,a5	#, stdout.0_1
	call	__gmpz_out_str@plt	#
# problem15.c:20:   putchar('\n');
	li	a0,10		#,
	call	putchar@plt	#
# problem15.c:22:   mpz_clear(n);
	addi	a5,s0,-56	#, tmp150,
	mv	a0,a5	#, tmp150
	call	__gmpz_clear@plt	#
# problem15.c:23:   mpz_clear(m);
	addi	a5,s0,-40	#, tmp151,
	mv	a0,a5	#, tmp151
	call	__gmpz_clear@plt	#
# problem15.c:25:   return 0;
	li	a5,0		# _13,
# problem15.c:26: }
	mv	a4,a5	# <retval>, _13
	la	a5,__stack_chk_guard		# tmp153,
	ld	a3, -24(s0)	# tmp156, D.4293
	ld	a5, 0(a5)	# tmp154, __stack_chk_guard
	xor	a5, a3, a5	# tmp154, tmp156
	li	a3, 0	# tmp156
	beq	a5,zero,.L3	#, tmp154,,
	call	__stack_chk_fail@plt	#
.L3:
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
.LFE20:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
