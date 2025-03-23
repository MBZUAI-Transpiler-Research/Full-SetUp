	.file	"problem75.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
# problem75.c:7:   int i, sum1 = 0, sum2 = 0;
	movl	$0, -8(%rbp)	#, sum1
# problem75.c:7:   int i, sum1 = 0, sum2 = 0;
	movl	$0, -4(%rbp)	#, sum2
# problem75.c:9:   for(i=0; i<n1; i++){
	movl	$0, -12(%rbp)	#, i
# problem75.c:9:   for(i=0; i<n1; i++){
	jmp	.L2	#
.L3:
# problem75.c:10:     sum1 += strlen(arr1[i]);
	movl	-12(%rbp), %eax	# i, tmp100
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-24(%rbp), %rax	# arr1, tmp101
	addq	%rdx, %rax	# _2, _3
# problem75.c:10:     sum1 += strlen(arr1[i]);
	movq	(%rax), %rax	# *_3, _4
	movq	%rax, %rdi	# _4,
	call	strlen@PLT	#
# problem75.c:10:     sum1 += strlen(arr1[i]);
	movl	%eax, %edx	# _5, _6
	movl	-8(%rbp), %eax	# sum1, sum1.0_7
	addl	%edx, %eax	# _6, _8
	movl	%eax, -8(%rbp)	# _8, sum1
# problem75.c:9:   for(i=0; i<n1; i++){
	addl	$1, -12(%rbp)	#, i
.L2:
# problem75.c:9:   for(i=0; i<n1; i++){
	movl	-12(%rbp), %eax	# i, tmp102
	cmpl	-28(%rbp), %eax	# n1, tmp102
	jl	.L3	#,
# problem75.c:13:   for(i=0; i<n2; i++){
	movl	$0, -12(%rbp)	#, i
# problem75.c:13:   for(i=0; i<n2; i++){
	jmp	.L4	#
.L5:
# problem75.c:14:     sum2 += strlen(arr2[i]); 
	movl	-12(%rbp), %eax	# i, tmp103
	cltq
	leaq	0(,%rax,8), %rdx	#, _10
	movq	-40(%rbp), %rax	# arr2, tmp104
	addq	%rdx, %rax	# _10, _11
# problem75.c:14:     sum2 += strlen(arr2[i]); 
	movq	(%rax), %rax	# *_11, _12
	movq	%rax, %rdi	# _12,
	call	strlen@PLT	#
# problem75.c:14:     sum2 += strlen(arr2[i]); 
	movl	%eax, %edx	# _13, _14
	movl	-4(%rbp), %eax	# sum2, sum2.1_15
	addl	%edx, %eax	# _14, _16
	movl	%eax, -4(%rbp)	# _16, sum2
# problem75.c:13:   for(i=0; i<n2; i++){
	addl	$1, -12(%rbp)	#, i
.L4:
# problem75.c:13:   for(i=0; i<n2; i++){
	movl	-12(%rbp), %eax	# i, tmp105
	cmpl	-32(%rbp), %eax	# n2, tmp105
	jl	.L5	#,
# problem75.c:17:   if(sum1 < sum2){
	movl	-8(%rbp), %eax	# sum1, tmp106
	cmpl	-4(%rbp), %eax	# sum2, tmp106
	jge	.L6	#,
# problem75.c:18:     return arr1;
	movq	-24(%rbp), %rax	# arr1, _21
	jmp	.L7	#
.L6:
# problem75.c:20:   else if(sum1 > sum2){
	movl	-8(%rbp), %eax	# sum1, tmp107
	cmpl	-4(%rbp), %eax	# sum2, tmp107
	jle	.L8	#,
# problem75.c:21:     return arr2;
	movq	-40(%rbp), %rax	# arr2, _21
	jmp	.L7	#
.L8:
# problem75.c:24:     return arr1;
	movq	-24(%rbp), %rax	# arr1, _21
.L7:
# problem75.c:27: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
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
# problem75.c:43:   if(n1 != n2) return 0;
	movl	-28(%rbp), %eax	# n1, tmp93
	cmpl	-32(%rbp), %eax	# n2, tmp93
	je	.L10	#,
# problem75.c:43:   if(n1 != n2) return 0;
	movl	$0, %eax	#, _11
	jmp	.L11	#
.L10:
# problem75.c:45:   for(i=0; i<n1; i++){
	movl	$0, -4(%rbp)	#, i
# problem75.c:45:   for(i=0; i<n1; i++){
	jmp	.L12	#
.L14:
# problem75.c:46:     if(strcmp(arr1[i], arr2[i]) != 0) return 0;
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-40(%rbp), %rax	# arr2, tmp95
	addq	%rdx, %rax	# _2, _3
# problem75.c:46:     if(strcmp(arr1[i], arr2[i]) != 0) return 0;
	movq	(%rax), %rdx	# *_3, _4
# problem75.c:46:     if(strcmp(arr1[i], arr2[i]) != 0) return 0;
	movl	-4(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,8), %rcx	#, _6
	movq	-24(%rbp), %rax	# arr1, tmp97
	addq	%rcx, %rax	# _6, _7
# problem75.c:46:     if(strcmp(arr1[i], arr2[i]) != 0) return 0;
	movq	(%rax), %rax	# *_7, _8
	movq	%rdx, %rsi	# _4,
	movq	%rax, %rdi	# _8,
	call	strcmp@PLT	#
# problem75.c:46:     if(strcmp(arr1[i], arr2[i]) != 0) return 0;
	testl	%eax, %eax	# _9
	je	.L13	#,
# problem75.c:46:     if(strcmp(arr1[i], arr2[i]) != 0) return 0;
	movl	$0, %eax	#, _11
	jmp	.L11	#
.L13:
# problem75.c:45:   for(i=0; i<n1; i++){
	addl	$1, -4(%rbp)	#, i
.L12:
# problem75.c:45:   for(i=0; i<n1; i++){
	movl	-4(%rbp), %eax	# i, tmp98
	cmpl	-28(%rbp), %eax	# n1, tmp98
	jl	.L14	#,
# problem75.c:49:   return 1;
	movl	$1, %eax	#, _11
.L11:
# problem75.c:51: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"hi"
.LC1:
	.string	"admin"
.LC2:
	.string	"project"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
# problem75.c:59: int main(){
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp119
	movq	%rax, -8(%rbp)	# tmp119, D.3113
	xorl	%eax, %eax	# tmp119
# problem75.c:63:   int n1 = 0, n2 = 0;
	movl	$0, -120(%rbp)	#, n1
# problem75.c:63:   int n1 = 0, n2 = 0;
	movl	$0, -116(%rbp)	#, n2
# problem75.c:64:   issame(func0(arr1, n1, arr2, n2), n1, arr2, n2);
	movl	-116(%rbp), %ecx	# n2, tmp87
	leaq	-104(%rbp), %rdx	#, tmp88
	movl	-120(%rbp), %esi	# n1, tmp89
	leaq	-112(%rbp), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	call	func0	#
	movq	%rax, %rdi	#, _1
	movl	-116(%rbp), %ecx	# n2, tmp91
	leaq	-104(%rbp), %rdx	#, tmp92
	movl	-120(%rbp), %eax	# n1, tmp93
	movl	%eax, %esi	# tmp93,
	call	issame	#
# problem75.c:66:   char* arr3[] = {"hi", "admin"};
	leaq	.LC0(%rip), %rax	#, tmp94
	movq	%rax, -96(%rbp)	# tmp94, arr3[0]
	leaq	.LC1(%rip), %rax	#, tmp95
	movq	%rax, -88(%rbp)	# tmp95, arr3[1]
# problem75.c:67:   char* arr4[] = {"hi", "hi"};
	leaq	.LC0(%rip), %rax	#, tmp96
	movq	%rax, -80(%rbp)	# tmp96, arr4[0]
	leaq	.LC0(%rip), %rax	#, tmp97
	movq	%rax, -72(%rbp)	# tmp97, arr4[1]
# problem75.c:68:   n1 = 2; n2 = 2;
	movl	$2, -120(%rbp)	#, n1
# problem75.c:68:   n1 = 2; n2 = 2;
	movl	$2, -116(%rbp)	#, n2
# problem75.c:69:   issame(func0(arr3, n1, arr4, n2), n1, arr4, n2);
	movl	-116(%rbp), %ecx	# n2, tmp98
	leaq	-80(%rbp), %rdx	#, tmp99
	movl	-120(%rbp), %esi	# n1, tmp100
	leaq	-96(%rbp), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	func0	#
	movq	%rax, %rdi	#, _2
	movl	-116(%rbp), %ecx	# n2, tmp102
	leaq	-80(%rbp), %rdx	#, tmp103
	movl	-120(%rbp), %eax	# n1, tmp104
	movl	%eax, %esi	# tmp104,
	call	issame	#
# problem75.c:71:   char* arr5[] = {"hi", "admin"};
	leaq	.LC0(%rip), %rax	#, tmp105
	movq	%rax, -64(%rbp)	# tmp105, arr5[0]
	leaq	.LC1(%rip), %rax	#, tmp106
	movq	%rax, -56(%rbp)	# tmp106, arr5[1]
# problem75.c:72:   char* arr6[] = {"hi", "hi", "admin", "project"};
	leaq	.LC0(%rip), %rax	#, tmp107
	movq	%rax, -48(%rbp)	# tmp107, arr6[0]
	leaq	.LC0(%rip), %rax	#, tmp108
	movq	%rax, -40(%rbp)	# tmp108, arr6[1]
	leaq	.LC1(%rip), %rax	#, tmp109
	movq	%rax, -32(%rbp)	# tmp109, arr6[2]
	leaq	.LC2(%rip), %rax	#, tmp110
	movq	%rax, -24(%rbp)	# tmp110, arr6[3]
# problem75.c:73:   n1 = 2; n2 = 4;
	movl	$2, -120(%rbp)	#, n1
# problem75.c:73:   n1 = 2; n2 = 4;
	movl	$4, -116(%rbp)	#, n2
# problem75.c:74:   issame(func0(arr5, n1, arr6, n2), n1, arr5, n1);
	movl	-116(%rbp), %ecx	# n2, tmp111
	leaq	-48(%rbp), %rdx	#, tmp112
	movl	-120(%rbp), %esi	# n1, tmp113
	leaq	-64(%rbp), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	func0	#
	movq	%rax, %rdi	#, _3
	movl	-120(%rbp), %ecx	# n1, tmp115
	leaq	-64(%rbp), %rdx	#, tmp116
	movl	-120(%rbp), %eax	# n1, tmp117
	movl	%eax, %esi	# tmp117,
	call	issame	#
# problem75.c:78:   return 0;
	movl	$0, %eax	#, _29
# problem75.c:79: }
	movq	-8(%rbp), %rdx	# D.3113, tmp120
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp120
	je	.L17	#,
	call	__stack_chk_fail@PLT	#
.L17:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
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
