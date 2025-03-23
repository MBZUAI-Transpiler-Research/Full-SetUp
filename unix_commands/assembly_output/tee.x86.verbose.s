	.file	"tee.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"a+"
.LC1:
	.string	"%s"
.LC2:
	.string	"%s\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
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
# tee.c:2: int main(int argc,char* argv[]){
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp96
	movq	%rax, -8(%rbp)	# tmp96, D.2358
	xorl	%eax, %eax	# tmp96
.L2:
# tee.c:9: fp=fopen(argv[1],"a+");
	movq	-144(%rbp), %rax	# argv, tmp85
	addq	$8, %rax	#, _1
# tee.c:9: fp=fopen(argv[1],"a+");
	movq	(%rax), %rax	# *_1, _2
	leaq	.LC0(%rip), %rdx	#, tmp86
	movq	%rdx, %rsi	# tmp86,
	movq	%rax, %rdi	# _2,
	call	fopen@PLT	#
	movq	%rax, -120(%rbp)	# tmp87, fp
# tee.c:10: scanf("%s",input);
	leaq	-112(%rbp), %rax	#, tmp88
	movq	%rax, %rsi	# tmp88,
	leaq	.LC1(%rip), %rax	#, tmp89
	movq	%rax, %rdi	# tmp89,
	movl	$0, %eax	#,
	call	__isoc99_scanf@PLT	#
# tee.c:11: printf("%s",input);
	leaq	-112(%rbp), %rax	#, tmp90
	movq	%rax, %rsi	# tmp90,
	leaq	.LC1(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	movl	$0, %eax	#,
	call	printf@PLT	#
# tee.c:12: fprintf(fp,"%s\n",input);
	leaq	-112(%rbp), %rdx	#, tmp92
	movq	-120(%rbp), %rax	# fp, tmp93
	leaq	.LC2(%rip), %rcx	#, tmp94
	movq	%rcx, %rsi	# tmp94,
	movq	%rax, %rdi	# tmp93,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
# tee.c:13: fclose(fp);
	movq	-120(%rbp), %rax	# fp, tmp95
	movq	%rax, %rdi	# tmp95,
	call	fclose@PLT	#
# tee.c:9: fp=fopen(argv[1],"a+");
	jmp	.L2	#
	.cfi_endproc
.LFE0:
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
