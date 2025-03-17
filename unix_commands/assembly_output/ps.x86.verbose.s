	.file	"ps.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"ps"
.LC1:
	.string	"ax"
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
	subq	$48, %rsp	#,
# ps.c:4: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp90
	movq	%rax, -8(%rbp)	# tmp90, D.3795
	xorl	%eax, %eax	# tmp90
# ps.c:5: char *cmd = "ps";
	leaq	.LC0(%rip), %rax	#, tmp84
	movq	%rax, -40(%rbp)	# tmp84, cmd
# ps.c:7: args[0] = "ps";
	leaq	.LC0(%rip), %rax	#, tmp85
	movq	%rax, -32(%rbp)	# tmp85, args[0]
# ps.c:8: args[1] = "ax";
	leaq	.LC1(%rip), %rax	#, tmp86
	movq	%rax, -24(%rbp)	# tmp86, args[1]
# ps.c:9: args[2] = NULL;
	movq	$0, -16(%rbp)	#, args[2]
# ps.c:10: execvp(cmd,args);
	leaq	-32(%rbp), %rdx	#, tmp87
	movq	-40(%rbp), %rax	# cmd, tmp88
	movq	%rdx, %rsi	# tmp87,
	movq	%rax, %rdi	# tmp88,
	call	execvp@PLT	#
	movl	$0, %eax	#, _8
# ps.c:12: }
	movq	-8(%rbp), %rdx	# D.3795, tmp91
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp91
	je	.L3	#,
	call	__stack_chk_fail@PLT	#
.L3:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
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
