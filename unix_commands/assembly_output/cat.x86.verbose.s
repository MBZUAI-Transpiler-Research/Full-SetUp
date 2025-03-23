	.file	"cat.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movl	%edi, -132(%rbp)	# argc, argc
	movq	%rsi, -144(%rbp)	# argv, argv
# cat.c:9: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp96
	movq	%rax, -8(%rbp)	# tmp96, D.4582
	xorl	%eax, %eax	# tmp96
# cat.c:14:     fp=open(argv[1], O_RDONLY);
	movq	-144(%rbp), %rax	# argv, tmp88
	addq	$8, %rax	#, _1
# cat.c:14:     fp=open(argv[1], O_RDONLY);
	movq	(%rax), %rax	# *_1, _2
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _2,
	movl	$0, %eax	#,
	call	open@PLT	#
	movl	%eax, -120(%rbp)	# tmp89, fp
# cat.c:17:     while(op=read(fp,ch,99)){
	jmp	.L2	#
.L3:
# cat.c:19:          write(1,ch,op);
	movl	-116(%rbp), %eax	# op, tmp90
	movslq	%eax, %rdx	# tmp90, _3
	leaq	-112(%rbp), %rax	#, tmp91
	movq	%rax, %rsi	# tmp91,
	movl	$1, %edi	#,
	call	write@PLT	#
.L2:
# cat.c:17:     while(op=read(fp,ch,99)){
	leaq	-112(%rbp), %rcx	#, tmp92
	movl	-120(%rbp), %eax	# fp, tmp93
	movl	$99, %edx	#,
	movq	%rcx, %rsi	# tmp92,
	movl	%eax, %edi	# tmp93,
	call	read@PLT	#
# cat.c:17:     while(op=read(fp,ch,99)){
	movl	%eax, -116(%rbp)	# _4, op
# cat.c:17:     while(op=read(fp,ch,99)){
	cmpl	$0, -116(%rbp)	#, op
	jne	.L3	#,
# cat.c:21:     printf("\n");
	movl	$10, %edi	#,
	call	putchar@PLT	#
# cat.c:22:     close(fp);
	movl	-120(%rbp), %eax	# fp, tmp94
	movl	%eax, %edi	# tmp94,
	call	close@PLT	#
# cat.c:24: return 0;
	movl	$0, %eax	#, _14
# cat.c:25: }
	movq	-8(%rbp), %rdx	# D.4582, tmp97
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp97
	je	.L5	#,
	call	__stack_chk_fail@PLT	#
.L5:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
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
