	.file	"mkdir.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"--help"
.LC1:
	.string	"\nusage: rm FileTodelete"
.LC2:
	.string	"mkdir"
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
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# argc, argc
	movq	%rsi, -64(%rbp)	# argv, argv
# mkdir.c:12: int main(int argc, char* argv[]){
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp96
	movq	%rax, -8(%rbp)	# tmp96, D.5028
	xorl	%eax, %eax	# tmp96
# mkdir.c:15: if(argc!=2 || argv[1]=="--help")
	cmpl	$2, -52(%rbp)	#, argc
	jne	.L2	#,
# mkdir.c:15: if(argc!=2 || argv[1]=="--help")
	movq	-64(%rbp), %rax	# argv, tmp87
	addq	$8, %rax	#, _1
	movq	(%rax), %rdx	# *_1, _2
# mkdir.c:15: if(argc!=2 || argv[1]=="--help")
	leaq	.LC0(%rip), %rax	#, tmp88
	cmpq	%rax, %rdx	# tmp88, _2
	jne	.L3	#,
.L2:
# mkdir.c:17:     printf("\nusage: rm FileTodelete\n");
	leaq	.LC1(%rip), %rax	#, tmp89
	movq	%rax, %rdi	# tmp89,
	call	puts@PLT	#
.L3:
# mkdir.c:20: char *cmd = "mkdir";
	leaq	.LC2(%rip), %rax	#, tmp90
	movq	%rax, -40(%rbp)	# tmp90, cmd
# mkdir.c:22: args[0] = "mkdir";
	leaq	.LC2(%rip), %rax	#, tmp91
	movq	%rax, -32(%rbp)	# tmp91, args[0]
# mkdir.c:23: args[1] = argv[1];
	movq	-64(%rbp), %rax	# argv, tmp92
	movq	8(%rax), %rax	# MEM[(char * *)argv_6(D) + 8B], _3
	movq	%rax, -24(%rbp)	# _3, args[1]
# mkdir.c:24: args[2] = NULL;
	movq	$0, -16(%rbp)	#, args[2]
# mkdir.c:26: execvp(cmd, argv);
	movq	-64(%rbp), %rdx	# argv, tmp93
	movq	-40(%rbp), %rax	# cmd, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	execvp@PLT	#
	movl	$0, %eax	#, _15
# mkdir.c:27: }
	movq	-8(%rbp), %rdx	# D.5028, tmp97
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
