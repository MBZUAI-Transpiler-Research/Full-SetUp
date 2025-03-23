	.file	"problem16.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%u\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB26:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
# problem16.c:11: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp104
	movq	%rax, -8(%rbp)	# tmp104, D.4457
	xorl	%eax, %eax	# tmp104
# problem16.c:15:   unsigned sum = 0;
	movl	$0, -60(%rbp)	#, sum
# problem16.c:17:   mpz_init(n);
	leaq	-32(%rbp), %rax	#, tmp88
	movq	%rax, %rdi	# tmp88,
	call	__gmpz_init@PLT	#
# problem16.c:18:   mpz_ui_pow_ui(n, 2, 1000);
	leaq	-32(%rbp), %rax	#, tmp89
	movl	$1000, %edx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp89,
	call	__gmpz_ui_pow_ui@PLT	#
# problem16.c:20:   str = mpz_get_str(NULL, 10, n);
	leaq	-32(%rbp), %rax	#, tmp90
	movq	%rax, %rdx	# tmp90,
	movl	$10, %esi	#,
	movl	$0, %edi	#,
	call	__gmpz_get_str@PLT	#
	movq	%rax, -48(%rbp)	# tmp91, str
# problem16.c:21:   len = mpz_sizeinbase(n, 10);
	leaq	-32(%rbp), %rax	#, tmp92
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	__gmpz_sizeinbase@PLT	#
	movq	%rax, -40(%rbp)	# tmp93, len
# problem16.c:22:   for (i = 0; i < len; i++) {
	movq	$0, -56(%rbp)	#, i
# problem16.c:22:   for (i = 0; i < len; i++) {
	jmp	.L2	#
.L3:
# problem16.c:23:     sum += str[i]-'0';
	movq	-48(%rbp), %rdx	# str, tmp94
	movq	-56(%rbp), %rax	# i, tmp95
	addq	%rdx, %rax	# tmp94, _1
	movzbl	(%rax), %eax	# *_1, _2
# problem16.c:23:     sum += str[i]-'0';
	movsbl	%al, %edx	# _2, _3
	movl	-60(%rbp), %eax	# sum, tmp96
	addl	%edx, %eax	# _3, _4
	subl	$48, %eax	#, tmp97
	movl	%eax, -60(%rbp)	# tmp97, sum
# problem16.c:22:   for (i = 0; i < len; i++) {
	addq	$1, -56(%rbp)	#, i
.L2:
# problem16.c:22:   for (i = 0; i < len; i++) {
	movq	-56(%rbp), %rax	# i, tmp98
	cmpq	-40(%rbp), %rax	# len, tmp98
	jb	.L3	#,
# problem16.c:25:   printf("%u\n", sum);
	movl	-60(%rbp), %eax	# sum, tmp99
	movl	%eax, %esi	# tmp99,
	leaq	.LC0(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem16.c:27:   free(str);
	movq	-48(%rbp), %rax	# str, tmp101
	movq	%rax, %rdi	# tmp101,
	call	free@PLT	#
# problem16.c:28:   mpz_clear(n);
	leaq	-32(%rbp), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__gmpz_clear@PLT	#
# problem16.c:30:   return 0;
	movl	$0, %eax	#, _18
# problem16.c:31: }
	movq	-8(%rbp), %rdx	# D.4457, tmp105
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp105
	je	.L5	#,
	call	__stack_chk_fail@PLT	#
.L5:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE26:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
