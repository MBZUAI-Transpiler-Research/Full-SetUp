	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
# code.c:3: int func0(int n) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp109
	movq	%rax, -8(%rbp)	# tmp109, D.3188
	xorl	%eax, %eax	# tmp109
# code.c:5:     f[0] = 0;
	movl	$0, -416(%rbp)	#, f[0]
# code.c:6:     f[1] = 0;
	movl	$0, -412(%rbp)	#, f[1]
# code.c:7:     f[2] = 2;
	movl	$2, -408(%rbp)	#, f[2]
# code.c:8:     f[3] = 0;
	movl	$0, -404(%rbp)	#, f[3]
# code.c:9:     for (int i = 4; i <= n; i++) {
	movl	$4, -420(%rbp)	#, i
# code.c:9:     for (int i = 4; i <= n; i++) {
	jmp	.L2	#
.L3:
# code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	movl	-420(%rbp), %eax	# i, tmp95
	subl	$1, %eax	#, _1
# code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	cltq
	movl	-416(%rbp,%rax,4), %edx	# f[_1], _2
# code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	movl	-420(%rbp), %eax	# i, tmp97
	subl	$2, %eax	#, _3
# code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	cltq
	movl	-416(%rbp,%rax,4), %eax	# f[_3], _4
# code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	addl	%eax, %edx	# _4, _5
# code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	movl	-420(%rbp), %eax	# i, tmp99
	subl	$3, %eax	#, _6
# code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	cltq
	movl	-416(%rbp,%rax,4), %eax	# f[_6], _7
# code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	addl	%eax, %edx	# _7, _8
# code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	movl	-420(%rbp), %eax	# i, tmp101
	subl	$4, %eax	#, _9
# code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	cltq
	movl	-416(%rbp,%rax,4), %eax	# f[_9], _10
# code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	addl	%eax, %edx	# _10, _11
# code.c:10:         f[i] = f[i - 1] + f[i - 2] + f[i - 3] + f[i - 4];
	movl	-420(%rbp), %eax	# i, tmp104
	cltq
	movl	%edx, -416(%rbp,%rax,4)	# _11, f[i_12]
# code.c:9:     for (int i = 4; i <= n; i++) {
	addl	$1, -420(%rbp)	#, i
.L2:
# code.c:9:     for (int i = 4; i <= n; i++) {
	movl	-420(%rbp), %eax	# i, tmp105
	cmpl	-436(%rbp), %eax	# n, tmp105
	jle	.L3	#,
# code.c:12:     return f[n];
	movl	-436(%rbp), %eax	# n, tmp107
	cltq
	movl	-416(%rbp,%rax,4), %eax	# f[n_20(D)], _21
# code.c:13: }
	movq	-8(%rbp), %rdx	# D.3188, tmp110
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp110
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
