	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# arr1, arr1
	movl	%esi, -28(%rbp)	# n1, n1
	movq	%rdx, -40(%rbp)	# arr2, arr2
	movl	%ecx, -32(%rbp)	# n2, n2
# code.c:7:   int i, sum1 = 0, sum2 = 0;
	movl	$0, -8(%rbp)	#, sum1
# code.c:7:   int i, sum1 = 0, sum2 = 0;
	movl	$0, -4(%rbp)	#, sum2
# code.c:9:   for(i=0; i<n1; i++){
	movl	$0, -12(%rbp)	#, i
# code.c:9:   for(i=0; i<n1; i++){
	jmp	.L2	#
.L3:
# code.c:10:     sum1 += strlen(arr1[i]);
	movl	-12(%rbp), %eax	# i, tmp100
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-24(%rbp), %rax	# arr1, tmp101
	addq	%rdx, %rax	# _2, _3
# code.c:10:     sum1 += strlen(arr1[i]);
	movq	(%rax), %rax	# *_3, _4
	movq	%rax, %rdi	# _4,
	call	strlen@PLT	#
# code.c:10:     sum1 += strlen(arr1[i]);
	movl	%eax, %edx	# _5, _6
	movl	-8(%rbp), %eax	# sum1, sum1.0_7
	addl	%edx, %eax	# _6, _8
	movl	%eax, -8(%rbp)	# _8, sum1
# code.c:9:   for(i=0; i<n1; i++){
	addl	$1, -12(%rbp)	#, i
.L2:
# code.c:9:   for(i=0; i<n1; i++){
	movl	-12(%rbp), %eax	# i, tmp102
	cmpl	-28(%rbp), %eax	# n1, tmp102
	jl	.L3	#,
# code.c:13:   for(i=0; i<n2; i++){
	movl	$0, -12(%rbp)	#, i
# code.c:13:   for(i=0; i<n2; i++){
	jmp	.L4	#
.L5:
# code.c:14:     sum2 += strlen(arr2[i]); 
	movl	-12(%rbp), %eax	# i, tmp103
	cltq
	leaq	0(,%rax,8), %rdx	#, _10
	movq	-40(%rbp), %rax	# arr2, tmp104
	addq	%rdx, %rax	# _10, _11
# code.c:14:     sum2 += strlen(arr2[i]); 
	movq	(%rax), %rax	# *_11, _12
	movq	%rax, %rdi	# _12,
	call	strlen@PLT	#
# code.c:14:     sum2 += strlen(arr2[i]); 
	movl	%eax, %edx	# _13, _14
	movl	-4(%rbp), %eax	# sum2, sum2.1_15
	addl	%edx, %eax	# _14, _16
	movl	%eax, -4(%rbp)	# _16, sum2
# code.c:13:   for(i=0; i<n2; i++){
	addl	$1, -12(%rbp)	#, i
.L4:
# code.c:13:   for(i=0; i<n2; i++){
	movl	-12(%rbp), %eax	# i, tmp105
	cmpl	-32(%rbp), %eax	# n2, tmp105
	jl	.L5	#,
# code.c:17:   if(sum1 < sum2){
	movl	-8(%rbp), %eax	# sum1, tmp106
	cmpl	-4(%rbp), %eax	# sum2, tmp106
	jge	.L6	#,
# code.c:18:     return arr1;
	movq	-24(%rbp), %rax	# arr1, _21
	jmp	.L7	#
.L6:
# code.c:20:   else if(sum1 > sum2){
	movl	-8(%rbp), %eax	# sum1, tmp107
	cmpl	-4(%rbp), %eax	# sum2, tmp107
	jle	.L8	#,
# code.c:21:     return arr2;
	movq	-40(%rbp), %rax	# arr2, _21
	jmp	.L7	#
.L8:
# code.c:24:     return arr1;
	movq	-24(%rbp), %rax	# arr1, _21
.L7:
# code.c:27: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
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
