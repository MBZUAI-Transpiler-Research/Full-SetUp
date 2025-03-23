	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$4048, %rsp	#,
	movl	%edi, -4036(%rbp)	# n, n
# eval/problem56//code.c:3: int func0(int n) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp102
	movq	%rax, -8(%rbp)	# tmp102, D.3188
	xorl	%eax, %eax	# tmp102
# eval/problem56//code.c:4:     int f[1000] = {0};
	leaq	-4016(%rbp), %rdx	#, tmp89
	movl	$0, %eax	#, tmp90
	movl	$500, %ecx	#, tmp91
	movq	%rdx, %rdi	# tmp89, tmp89
	rep stosq
# eval/problem56//code.c:5:     f[0] = 0;
	movl	$0, -4016(%rbp)	#, f[0]
# eval/problem56//code.c:6:     f[1] = 1;
	movl	$1, -4012(%rbp)	#, f[1]
# eval/problem56//code.c:7:     for (int i = 2; i <= n; i++)
	movl	$2, -4020(%rbp)	#, i
# eval/problem56//code.c:7:     for (int i = 2; i <= n; i++)
	jmp	.L2	#
.L3:
# eval/problem56//code.c:8:         f[i] = f[i - 1] + f[i - 2];
	movl	-4020(%rbp), %eax	# i, tmp92
	subl	$1, %eax	#, _1
# eval/problem56//code.c:8:         f[i] = f[i - 1] + f[i - 2];
	cltq
	movl	-4016(%rbp,%rax,4), %edx	# f[_1], _2
# eval/problem56//code.c:8:         f[i] = f[i - 1] + f[i - 2];
	movl	-4020(%rbp), %eax	# i, tmp94
	subl	$2, %eax	#, _3
# eval/problem56//code.c:8:         f[i] = f[i - 1] + f[i - 2];
	cltq
	movl	-4016(%rbp,%rax,4), %eax	# f[_3], _4
# eval/problem56//code.c:8:         f[i] = f[i - 1] + f[i - 2];
	addl	%eax, %edx	# _4, _5
# eval/problem56//code.c:8:         f[i] = f[i - 1] + f[i - 2];
	movl	-4020(%rbp), %eax	# i, tmp97
	cltq
	movl	%edx, -4016(%rbp,%rax,4)	# _5, f[i_6]
# eval/problem56//code.c:7:     for (int i = 2; i <= n; i++)
	addl	$1, -4020(%rbp)	#, i
.L2:
# eval/problem56//code.c:7:     for (int i = 2; i <= n; i++)
	movl	-4020(%rbp), %eax	# i, tmp98
	cmpl	-4036(%rbp), %eax	# n, tmp98
	jle	.L3	#,
# eval/problem56//code.c:9:     return f[n];
	movl	-4036(%rbp), %eax	# n, tmp100
	cltq
	movl	-4016(%rbp,%rax,4), %eax	# f[n_13(D)], _14
# eval/problem56//code.c:10: }
	movq	-8(%rbp), %rdx	# D.3188, tmp103
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp103
	je	.L5	#,
	call	__stack_chk_fail@PLT	#
.L5:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
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
