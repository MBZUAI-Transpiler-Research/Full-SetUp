	.file	"problem25.c"
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
.LFB26:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
# problem25.c:12: {
	la	a5,__stack_chk_guard		# tmp137,
	ld	a4, 0(a5)	# tmp153, __stack_chk_guard
	sd	a4, -24(s0)	# tmp153, D.5034
	li	a4, 0	# tmp153
# problem25.c:14:   int i = 1;
	li	a5,1		# tmp138,
	sw	a5,-60(s0)	# tmp138, i
# problem25.c:16:   mpz_init(n);
	addi	a5,s0,-40	#, tmp139,
	mv	a0,a5	#, tmp139
	call	__gmpz_init@plt	#
# problem25.c:18:   for (i = 1;; i++) {
	li	a5,1		# tmp140,
	sw	a5,-60(s0)	# tmp140, i
.L4:
# problem25.c:22:     mpz_fib_ui(n, i);
	lw	a4,-60(s0)		# _1, i
	addi	a5,s0,-40	#, tmp141,
	mv	a1,a4	#, _1
	mv	a0,a5	#, tmp141
	call	__gmpz_fib_ui@plt	#
# problem25.c:23:     str = mpz_get_str(NULL, 10, n);
	addi	a5,s0,-40	#, tmp142,
	mv	a2,a5	#, tmp142
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
	ld	a4,-48(s0)		# tmp143, len
	li	a5,1000		# tmp144,
	bne	a4,a5,.L2	#, tmp143, tmp144,
# problem25.c:27:       printf("%d\n", i);
	lw	a5,-60(s0)		# tmp145, i
	mv	a1,a5	#, tmp145
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem25.c:28:       break;
	nop	
# problem25.c:32:   mpz_clear(n);
	addi	a5,s0,-40	#, tmp149,
	mv	a0,a5	#, tmp149
	call	__gmpz_clear@plt	#
# problem25.c:34:   return 0;
	li	a5,0		# _16,
# problem25.c:35: }
	mv	a4,a5	# <retval>, _16
	la	a5,__stack_chk_guard		# tmp151,
	ld	a3, -24(s0)	# tmp154, D.5034
	ld	a5, 0(a5)	# tmp152, __stack_chk_guard
	xor	a5, a3, a5	# tmp152, tmp154
	li	a3, 0	# tmp154
	beq	a5,zero,.L6	#, tmp152,,
	j	.L7		#
.L2:
# problem25.c:18:   for (i = 1;; i++) {
	lw	a5,-60(s0)		# tmp148, i
	addiw	a5,a5,1	#, tmp146, tmp147
	sw	a5,-60(s0)	# tmp146, i
# problem25.c:18:   for (i = 1;; i++) {
	j	.L4		#
.L7:
# problem25.c:35: }
	call	__stack_chk_fail@plt	#
.L6:
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
.LFE26:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
