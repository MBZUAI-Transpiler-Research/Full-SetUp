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
	movl	%edi, -20(%rbp)	# n, n
# code.c:4:     int count = 0;
	movl	$0, -12(%rbp)	#, count
# code.c:5:     for (int i = 0; i < n; i++)
	movl	$0, -8(%rbp)	#, i
# code.c:5:     for (int i = 0; i < n; i++)
	jmp	.L2	#
.L8:
# code.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	movl	-8(%rbp), %ecx	# i, tmp87
	movslq	%ecx, %rax	# tmp87, tmp88
	imulq	$780903145, %rax, %rax	#, tmp88, tmp89
	shrq	$32, %rax	#, tmp90
	movl	%eax, %edx	# tmp90, tmp91
	sarl	%edx	# tmp91
	movl	%ecx, %eax	# tmp87, tmp92
	sarl	$31, %eax	#, tmp92
	subl	%eax, %edx	# tmp92, _1
	movl	%edx, %eax	# _1, tmp93
	sall	$2, %eax	#, tmp93
	addl	%edx, %eax	# _1, tmp93
	addl	%eax, %eax	# tmp93
	addl	%edx, %eax	# _1, tmp93
	subl	%eax, %ecx	# tmp93, tmp87
	movl	%ecx, %edx	# tmp87, _1
# code.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	testl	%edx, %edx	# _1
	je	.L3	#,
# code.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	movl	-8(%rbp), %ecx	# i, tmp94
	movslq	%ecx, %rax	# tmp94, tmp95
	imulq	$1321528399, %rax, %rax	#, tmp95, tmp96
	shrq	$32, %rax	#, tmp97
	movl	%eax, %edx	# tmp97, tmp98
	sarl	$2, %edx	#, tmp98
	movl	%ecx, %eax	# tmp94, tmp99
	sarl	$31, %eax	#, tmp99
	subl	%eax, %edx	# tmp99, _2
	movl	%edx, %eax	# _2, tmp100
	addl	%eax, %eax	# tmp100
	addl	%edx, %eax	# _2, tmp100
	sall	$2, %eax	#, tmp100
	addl	%edx, %eax	# _2, tmp100
	subl	%eax, %ecx	# tmp100, tmp94
	movl	%ecx, %edx	# tmp94, _2
# code.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	testl	%edx, %edx	# _2
	jne	.L4	#,
.L3:
# code.c:7:             int q = i;
	movl	-8(%rbp), %eax	# i, tmp101
	movl	%eax, -4(%rbp)	# tmp101, q
# code.c:8:             while (q > 0) {
	jmp	.L5	#
.L7:
# code.c:9:                 if (q % 10 == 7) count += 1;
	movl	-4(%rbp), %ecx	# q, tmp102
	movslq	%ecx, %rax	# tmp102, tmp103
	imulq	$1717986919, %rax, %rax	#, tmp103, tmp104
	shrq	$32, %rax	#, tmp105
	movl	%eax, %edx	# tmp105, tmp106
	sarl	$2, %edx	#, tmp106
	movl	%ecx, %eax	# tmp102, tmp107
	sarl	$31, %eax	#, tmp107
	subl	%eax, %edx	# tmp107, _3
	movl	%edx, %eax	# _3, tmp108
	sall	$2, %eax	#, tmp108
	addl	%edx, %eax	# _3, tmp108
	addl	%eax, %eax	# tmp109
	subl	%eax, %ecx	# tmp108, tmp102
	movl	%ecx, %edx	# tmp102, _3
# code.c:9:                 if (q % 10 == 7) count += 1;
	cmpl	$7, %edx	#, _3
	jne	.L6	#,
# code.c:9:                 if (q % 10 == 7) count += 1;
	addl	$1, -12(%rbp)	#, count
.L6:
# code.c:10:                 q = q / 10;
	movl	-4(%rbp), %eax	# q, tmp111
	movslq	%eax, %rdx	# tmp111, tmp112
	imulq	$1717986919, %rdx, %rdx	#, tmp112, tmp113
	shrq	$32, %rdx	#, tmp114
	movl	%edx, %ecx	# tmp114, tmp115
	sarl	$2, %ecx	#, tmp115
	cltd
	movl	%ecx, %eax	# tmp115, tmp115
	subl	%edx, %eax	# tmp116, tmp115
	movl	%eax, -4(%rbp)	# tmp110, q
.L5:
# code.c:8:             while (q > 0) {
	cmpl	$0, -4(%rbp)	#, q
	jg	.L7	#,
.L4:
# code.c:5:     for (int i = 0; i < n; i++)
	addl	$1, -8(%rbp)	#, i
.L2:
# code.c:5:     for (int i = 0; i < n; i++)
	movl	-8(%rbp), %eax	# i, tmp117
	cmpl	-20(%rbp), %eax	# n, tmp117
	jl	.L8	#,
# code.c:13:     return count;
	movl	-12(%rbp), %eax	# count, _13
# code.c:14: }
	popq	%rbp	#
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
