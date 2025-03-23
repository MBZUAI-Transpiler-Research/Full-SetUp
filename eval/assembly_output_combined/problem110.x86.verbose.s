	.file	"problem110.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	movq	%rdi, -24(%rbp)	# arr, arr
	movl	%esi, -28(%rbp)	# size, size
# problem110.c:5:     int num = 0;
	movl	$0, -8(%rbp)	#, num
# problem110.c:6:     if (size == 0) return true;
	cmpl	$0, -28(%rbp)	#, size
	jne	.L2	#,
# problem110.c:6:     if (size == 0) return true;
	movl	$1, %eax	#, _20
	jmp	.L3	#
.L2:
# problem110.c:7:     for (int i = 1; i < size; i++)
	movl	$1, -4(%rbp)	#, i
# problem110.c:7:     for (int i = 1; i < size; i++)
	jmp	.L4	#
.L6:
# problem110.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	movl	-4(%rbp), %eax	# i, tmp99
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# arr, tmp100
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem110.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	movl	-4(%rbp), %eax	# i, tmp101
	cltq
	salq	$2, %rax	#, _6
	leaq	-4(%rax), %rcx	#, _7
	movq	-24(%rbp), %rax	# arr, tmp102
	addq	%rcx, %rax	# _7, _8
	movl	(%rax), %eax	# *_8, _9
# problem110.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	cmpl	%eax, %edx	# _9, _4
	jge	.L5	#,
# problem110.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	addl	$1, -8(%rbp)	#, num
.L5:
# problem110.c:7:     for (int i = 1; i < size; i++)
	addl	$1, -4(%rbp)	#, i
.L4:
# problem110.c:7:     for (int i = 1; i < size; i++)
	movl	-4(%rbp), %eax	# i, tmp103
	cmpl	-28(%rbp), %eax	# size, tmp103
	jl	.L6	#,
# problem110.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	movl	-28(%rbp), %eax	# size, tmp104
	cltq
	salq	$2, %rax	#, _11
	leaq	-4(%rax), %rdx	#, _12
	movq	-24(%rbp), %rax	# arr, tmp105
	addq	%rdx, %rax	# _12, _13
	movl	(%rax), %edx	# *_13, _14
# problem110.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	movq	-24(%rbp), %rax	# arr, tmp106
	movl	(%rax), %eax	# *arr_24(D), _15
# problem110.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	cmpl	%eax, %edx	# _15, _14
	jle	.L7	#,
# problem110.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	addl	$1, -8(%rbp)	#, num
.L7:
# problem110.c:10:     if (num < 2) return true;
	cmpl	$1, -8(%rbp)	#, num
	jg	.L8	#,
# problem110.c:10:     if (num < 2) return true;
	movl	$1, %eax	#, _20
	jmp	.L3	#
.L8:
# problem110.c:11:     return false;
	movl	$0, %eax	#, _20
.L3:
# problem110.c:12: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem110.c"
	.align 8
.LC1:
	.string	"func0((int[]){3, 4, 5, 1, 2}, 5) == true"
	.align 8
.LC2:
	.string	"func0((int[]){3, 5, 10, 1, 2}, 5) == true"
	.align 8
.LC3:
	.string	"func0((int[]){4, 3, 1, 2}, 4) == false"
	.align 8
.LC4:
	.string	"func0((int[]){3, 5, 4, 1, 2}, 5) == false"
.LC5:
	.string	"func0((int[]){}, 0) == true"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# problem110.c:19: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp112
	movq	%rax, -8(%rbp)	# tmp112, D.2418
	xorl	%eax, %eax	# tmp112
# problem110.c:20:     assert(func0((int[]){3, 4, 5, 1, 2}, 5) == true);
	movl	$3, -32(%rbp)	#, MEM[(int[5] *)_51][0]
	movl	$4, -28(%rbp)	#, MEM[(int[5] *)_51][1]
	movl	$5, -24(%rbp)	#, MEM[(int[5] *)_51][2]
	movl	$1, -20(%rbp)	#, MEM[(int[5] *)_51][3]
	movl	$2, -16(%rbp)	#, MEM[(int[5] *)_51][4]
	leaq	-32(%rbp), %rax	#, tmp91
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	func0	#
	testb	%al, %al	# _1
	jne	.L10	#,
# problem110.c:20:     assert(func0((int[]){3, 4, 5, 1, 2}, 5) == true);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp92
	movq	%rax, %rcx	# tmp92,
	movl	$20, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC1(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	__assert_fail@PLT	#
.L10:
# problem110.c:21:     assert(func0((int[]){3, 5, 10, 1, 2}, 5) == true);
	movl	$3, -32(%rbp)	#, MEM[(int[5] *)_51][0]
	movl	$5, -28(%rbp)	#, MEM[(int[5] *)_51][1]
	movl	$10, -24(%rbp)	#, MEM[(int[5] *)_51][2]
	movl	$1, -20(%rbp)	#, MEM[(int[5] *)_51][3]
	movl	$2, -16(%rbp)	#, MEM[(int[5] *)_51][4]
	leaq	-32(%rbp), %rax	#, tmp95
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	func0	#
	testb	%al, %al	# _2
	jne	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp96
	movq	%rax, %rcx	# tmp96,
	movl	$21, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp97
	movq	%rax, %rsi	# tmp97,
	leaq	.LC2(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	__assert_fail@PLT	#
.L11:
# problem110.c:22:     assert(func0((int[]){4, 3, 1, 2}, 4) == false);
	movl	$4, -32(%rbp)	#, MEM[(int[4] *)_51][0]
	movl	$3, -28(%rbp)	#, MEM[(int[4] *)_51][1]
	movl	$1, -24(%rbp)	#, MEM[(int[4] *)_51][2]
	movl	$2, -20(%rbp)	#, MEM[(int[4] *)_51][3]
	leaq	-32(%rbp), %rax	#, tmp99
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp99,
	call	func0	#
	xorl	$1, %eax	#, _4
	testb	%al, %al	# _4
	jne	.L12	#,
# problem110.c:22:     assert(func0((int[]){4, 3, 1, 2}, 4) == false);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$22, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC3(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L12:
# problem110.c:23:     assert(func0((int[]){3, 5, 4, 1, 2}, 5) == false);
	movl	$3, -32(%rbp)	#, MEM[(int[5] *)_51][0]
	movl	$5, -28(%rbp)	#, MEM[(int[5] *)_51][1]
	movl	$4, -24(%rbp)	#, MEM[(int[5] *)_51][2]
	movl	$1, -20(%rbp)	#, MEM[(int[5] *)_51][3]
	movl	$2, -16(%rbp)	#, MEM[(int[5] *)_51][4]
	leaq	-32(%rbp), %rax	#, tmp103
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp103,
	call	func0	#
	xorl	$1, %eax	#, _6
	testb	%al, %al	# _6
	jne	.L13	#,
# problem110.c:23:     assert(func0((int[]){3, 5, 4, 1, 2}, 5) == false);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$23, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC4(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L13:
# problem110.c:24:     assert(func0((int[]){}, 0) == true);
	leaq	-32(%rbp), %rax	#, tmp107
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	func0	#
	testb	%al, %al	# _7
	jne	.L14	#,
# problem110.c:24:     assert(func0((int[]){}, 0) == true);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp108
	movq	%rax, %rcx	# tmp108,
	movl	$24, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp109
	movq	%rax, %rsi	# tmp109,
	leaq	.LC5(%rip), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	call	__assert_fail@PLT	#
.L14:
# problem110.c:26:     return 0;
	movl	$0, %eax	#, _44
# problem110.c:27: }
	movq	-8(%rbp), %rdx	# D.2418, tmp113
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp113
	je	.L16	#,
# problem110.c:27: }
	call	__stack_chk_fail@PLT	#
.L16:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
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
