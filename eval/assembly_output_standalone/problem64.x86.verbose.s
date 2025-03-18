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
	subq	$448, %rsp	#,
	movl	%edi, -436(%rbp)	# n, n
# eval/problem64//code.c:3: int func0(int n) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp107
	movq	%rax, -8(%rbp)	# tmp107, D.3188
	xorl	%eax, %eax	# tmp107
# eval/problem64//code.c:4:     int ff[100] = {0};
	leaq	-416(%rbp), %rdx	#, tmp92
	movl	$0, %eax	#, tmp93
	movl	$50, %ecx	#, tmp94
	movq	%rdx, %rdi	# tmp92, tmp92
	rep stosq
# eval/problem64//code.c:5:     ff[1] = 0;
	movl	$0, -412(%rbp)	#, ff[1]
# eval/problem64//code.c:6:     ff[2] = 1;
	movl	$1, -408(%rbp)	#, ff[2]
# eval/problem64//code.c:7:     for (int i = 3; i <= n; ++i) {
	movl	$3, -420(%rbp)	#, i
# eval/problem64//code.c:7:     for (int i = 3; i <= n; ++i) {
	jmp	.L2	#
.L3:
# eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	movl	-420(%rbp), %eax	# i, tmp95
	subl	$1, %eax	#, _1
# eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	cltq
	movl	-416(%rbp,%rax,4), %edx	# ff[_1], _2
# eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	movl	-420(%rbp), %eax	# i, tmp97
	subl	$2, %eax	#, _3
# eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	cltq
	movl	-416(%rbp,%rax,4), %eax	# ff[_3], _4
# eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	addl	%eax, %edx	# _4, _5
# eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	movl	-420(%rbp), %eax	# i, tmp99
	subl	$3, %eax	#, _6
# eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	cltq
	movl	-416(%rbp,%rax,4), %eax	# ff[_6], _7
# eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	addl	%eax, %edx	# _7, _8
# eval/problem64//code.c:8:         ff[i] = ff[i - 1] + ff[i - 2] + ff[i - 3];
	movl	-420(%rbp), %eax	# i, tmp102
	cltq
	movl	%edx, -416(%rbp,%rax,4)	# _8, ff[i_9]
# eval/problem64//code.c:7:     for (int i = 3; i <= n; ++i) {
	addl	$1, -420(%rbp)	#, i
.L2:
# eval/problem64//code.c:7:     for (int i = 3; i <= n; ++i) {
	movl	-420(%rbp), %eax	# i, tmp103
	cmpl	-436(%rbp), %eax	# n, tmp103
	jle	.L3	#,
# eval/problem64//code.c:10:     return ff[n];
	movl	-436(%rbp), %eax	# n, tmp105
	cltq
	movl	-416(%rbp,%rax,4), %eax	# ff[n_16(D)], _17
# eval/problem64//code.c:11: }
	movq	-8(%rbp), %rdx	# D.3188, tmp108
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp108
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
