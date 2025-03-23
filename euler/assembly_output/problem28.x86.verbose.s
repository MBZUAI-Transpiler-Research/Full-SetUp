	.file	"problem28.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%d\n"
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
	subq	$16, %rsp	#,
# problem28.c:12:   int sum = 1, i;
	movl	$1, -8(%rbp)	#, sum
# problem28.c:13:   for (i = 3; i <= N; i += 2) {
	movl	$3, -4(%rbp)	#, i
# problem28.c:13:   for (i = 3; i <= N; i += 2) {
	jmp	.L2	#
.L3:
# problem28.c:14:     sum += 2*(2*i*i - 3*i + 3);
	movl	-4(%rbp), %eax	# i, tmp90
	imull	%eax, %eax	# tmp90, _1
	leal	(%rax,%rax), %edx	#, _2
# problem28.c:14:     sum += 2*(2*i*i - 3*i + 3);
	movl	-4(%rbp), %eax	# i, tmp91
	movl	%eax, %esi	# tmp91, tmp92
	leal	0(,%rax,4), %ecx	#, tmp93
	movl	%esi, %eax	# tmp92, tmp92
	subl	%ecx, %eax	# tmp93, tmp92
# problem28.c:14:     sum += 2*(2*i*i - 3*i + 3);
	addl	%edx, %eax	# _2, _4
# problem28.c:14:     sum += 2*(2*i*i - 3*i + 3);
	addl	$3, %eax	#, _5
# problem28.c:14:     sum += 2*(2*i*i - 3*i + 3);
	addl	%eax, %eax	# _6
# problem28.c:14:     sum += 2*(2*i*i - 3*i + 3);
	addl	%eax, -8(%rbp)	# _6, sum
# problem28.c:13:   for (i = 3; i <= N; i += 2) {
	addl	$2, -4(%rbp)	#, i
.L2:
# problem28.c:13:   for (i = 3; i <= N; i += 2) {
	cmpl	$1001, -4(%rbp)	#, i
	jle	.L3	#,
# problem28.c:16:   printf("%d\n", sum);
	movl	-8(%rbp), %eax	# sum, tmp94
	movl	%eax, %esi	# tmp94,
	leaq	.LC0(%rip), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem28.c:17:   return 0;
	movl	$0, %eax	#, _13
# problem28.c:18: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
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
