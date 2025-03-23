	.file	"cd.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"Usage:: cd Directory"
.LC1:
	.string	"chdir"
.LC2:
	.string	"Current working dir: %s\n"
.LC3:
	.string	"getcwd() error"
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
	subq	$1072, %rsp	#,
	movl	%edi, -1060(%rbp)	# argc, argc
	movq	%rsi, -1072(%rbp)	# argv, argv
# cd.c:6: int main(int argc,char* argv[]) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp97
	movq	%rax, -8(%rbp)	# tmp97, D.3493
	xorl	%eax, %eax	# tmp97
# cd.c:7: if(argc!=2)
	cmpl	$2, -1060(%rbp)	#, argc
	je	.L2	#,
# cd.c:9:     printf("Usage:: cd Directory\n");
	leaq	.LC0(%rip), %rax	#, tmp87
	movq	%rax, %rdi	# tmp87,
	call	puts@PLT	#
.L2:
# cd.c:11:    char *p=argv[1];
	movq	-1072(%rbp), %rax	# argv, tmp88
	movq	8(%rax), %rax	# MEM[(char * *)argv_9(D) + 8B], tmp89
	movq	%rax, -1048(%rbp)	# tmp89, p
# cd.c:12: if(chdir(p)== -1)
	movq	-1048(%rbp), %rax	# p, tmp90
	movq	%rax, %rdi	# tmp90,
	call	chdir@PLT	#
# cd.c:12: if(chdir(p)== -1)
	cmpl	$-1, %eax	#, _1
	jne	.L3	#,
# cd.c:14:     perror("chdir");
	leaq	.LC1(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	perror@PLT	#
# cd.c:15:     exit(EXIT_FAILURE);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L3:
# cd.c:20:    if (getcwd(cwd, sizeof(cwd)) != NULL)
	leaq	-1040(%rbp), %rax	#, tmp92
	movl	$1024, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	getcwd@PLT	#
# cd.c:20:    if (getcwd(cwd, sizeof(cwd)) != NULL)
	testq	%rax, %rax	# _2
	je	.L4	#,
# cd.c:21:        fprintf(stdout, "Current working dir: %s\n", cwd);
	movq	stdout(%rip), %rax	# stdout, stdout.0_3
	leaq	-1040(%rbp), %rdx	#, tmp93
	leaq	.LC2(%rip), %rcx	#, tmp94
	movq	%rcx, %rsi	# tmp94,
	movq	%rax, %rdi	# stdout.0_3,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
	jmp	.L5	#
.L4:
# cd.c:23:        perror("getcwd() error");
	leaq	.LC3(%rip), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	perror@PLT	#
.L5:
# cd.c:24:    return 0;
	movl	$0, %eax	#, _15
# cd.c:25: }
	movq	-8(%rbp), %rdx	# D.3493, tmp98
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp98
	je	.L7	#,
	call	__stack_chk_fail@PLT	#
.L7:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
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
