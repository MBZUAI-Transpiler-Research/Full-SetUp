	.file	"problem91.c"
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
	movq	%rdi, -24(%rbp)	# lst, lst
	movl	%esi, -28(%rbp)	# size, size
# problem91.c:5:     if (size < 2) return -1;
	cmpl	$1, -28(%rbp)	#, size
	jg	.L2	#,
# problem91.c:5:     if (size < 2) return -1;
	movl	$-1, %eax	#, _24
	jmp	.L3	#
.L2:
# problem91.c:7:     int first = INT_MAX, second = INT_MAX;
	movl	$2147483647, -12(%rbp)	#, first
# problem91.c:7:     int first = INT_MAX, second = INT_MAX;
	movl	$2147483647, -8(%rbp)	#, second
# problem91.c:8:     for (int i = 0; i < size; ++i) {
	movl	$0, -4(%rbp)	#, i
# problem91.c:8:     for (int i = 0; i < size; ++i) {
	jmp	.L4	#
.L7:
# problem91.c:9:         if (lst[i] < first) {
	movl	-4(%rbp), %eax	# i, tmp102
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# lst, tmp103
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %eax	# *_3, _4
# problem91.c:9:         if (lst[i] < first) {
	cmpl	%eax, -12(%rbp)	# _4, first
	jle	.L5	#,
# problem91.c:10:             second = first;
	movl	-12(%rbp), %eax	# first, tmp104
	movl	%eax, -8(%rbp)	# tmp104, second
# problem91.c:11:             first = lst[i];
	movl	-4(%rbp), %eax	# i, tmp105
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-24(%rbp), %rax	# lst, tmp106
	addq	%rdx, %rax	# _6, _7
# problem91.c:11:             first = lst[i];
	movl	(%rax), %eax	# *_7, tmp107
	movl	%eax, -12(%rbp)	# tmp107, first
	jmp	.L6	#
.L5:
# problem91.c:12:         } else if (lst[i] < second && lst[i] != first) {
	movl	-4(%rbp), %eax	# i, tmp108
	cltq
	leaq	0(,%rax,4), %rdx	#, _9
	movq	-24(%rbp), %rax	# lst, tmp109
	addq	%rdx, %rax	# _9, _10
	movl	(%rax), %eax	# *_10, _11
# problem91.c:12:         } else if (lst[i] < second && lst[i] != first) {
	cmpl	%eax, -8(%rbp)	# _11, second
	jle	.L6	#,
# problem91.c:12:         } else if (lst[i] < second && lst[i] != first) {
	movl	-4(%rbp), %eax	# i, tmp110
	cltq
	leaq	0(,%rax,4), %rdx	#, _13
	movq	-24(%rbp), %rax	# lst, tmp111
	addq	%rdx, %rax	# _13, _14
	movl	(%rax), %eax	# *_14, _15
# problem91.c:12:         } else if (lst[i] < second && lst[i] != first) {
	cmpl	%eax, -12(%rbp)	# _15, first
	je	.L6	#,
# problem91.c:13:             second = lst[i];
	movl	-4(%rbp), %eax	# i, tmp112
	cltq
	leaq	0(,%rax,4), %rdx	#, _17
	movq	-24(%rbp), %rax	# lst, tmp113
	addq	%rdx, %rax	# _17, _18
# problem91.c:13:             second = lst[i];
	movl	(%rax), %eax	# *_18, tmp114
	movl	%eax, -8(%rbp)	# tmp114, second
.L6:
# problem91.c:8:     for (int i = 0; i < size; ++i) {
	addl	$1, -4(%rbp)	#, i
.L4:
# problem91.c:8:     for (int i = 0; i < size; ++i) {
	movl	-4(%rbp), %eax	# i, tmp115
	cmpl	-28(%rbp), %eax	# size, tmp115
	jl	.L7	#,
# problem91.c:17:     if (second == INT_MAX) return -1;
	cmpl	$2147483647, -8(%rbp)	#, second
	jne	.L8	#,
# problem91.c:17:     if (second == INT_MAX) return -1;
	movl	$-1, %eax	#, _24
	jmp	.L3	#
.L8:
# problem91.c:18:     return second;
	movl	-8(%rbp), %eax	# second, _24
.L3:
# problem91.c:19: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem91.c"
.LC1:
	.string	"func0(test1, 5) == 2"
.LC2:
	.string	"func0(test2, 5) == 2"
.LC3:
	.string	"func0((int[]){}, 0) == -1"
.LC4:
	.string	"func0(test4, 2) == -1"
.LC5:
	.string	"func0(test5, 5) == 1"
.LC6:
	.string	"func0(test6, 4) == -35"
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
	addq	$-128, %rsp	#,
# problem91.c:25: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp115
	movq	%rax, -8(%rbp)	# tmp115, D.2422
	xorl	%eax, %eax	# tmp115
# problem91.c:26:     int test1[] = {1, 2, 3, 4, 5};
	movl	$1, -96(%rbp)	#, test1[0]
	movl	$2, -92(%rbp)	#, test1[1]
	movl	$3, -88(%rbp)	#, test1[2]
	movl	$4, -84(%rbp)	#, test1[3]
	movl	$5, -80(%rbp)	#, test1[4]
# problem91.c:27:     assert(func0(test1, 5) == 2);
	leaq	-96(%rbp), %rax	#, tmp90
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp90,
	call	func0	#
	cmpl	$2, %eax	#, _1
	je	.L10	#,
# problem91.c:27:     assert(func0(test1, 5) == 2);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp91
	movq	%rax, %rcx	# tmp91,
	movl	$27, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp92
	movq	%rax, %rsi	# tmp92,
	leaq	.LC1(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	__assert_fail@PLT	#
.L10:
# problem91.c:29:     int test2[] = {5, 1, 4, 3, 2};
	movl	$5, -64(%rbp)	#, test2[0]
	movl	$1, -60(%rbp)	#, test2[1]
	movl	$4, -56(%rbp)	#, test2[2]
	movl	$3, -52(%rbp)	#, test2[3]
	movl	$2, -48(%rbp)	#, test2[4]
# problem91.c:30:     assert(func0(test2, 5) == 2);
	leaq	-64(%rbp), %rax	#, tmp94
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp94,
	call	func0	#
	cmpl	$2, %eax	#, _2
	je	.L11	#,
# problem91.c:30:     assert(func0(test2, 5) == 2);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$30, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC2(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L11:
# problem91.c:32:     assert(func0((int[]){}, 0) == -1);
	leaq	-32(%rbp), %rax	#, tmp98
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp98,
	call	func0	#
	cmpl	$-1, %eax	#, _3
	je	.L12	#,
# problem91.c:32:     assert(func0((int[]){}, 0) == -1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp99
	movq	%rax, %rcx	# tmp99,
	movl	$32, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp100
	movq	%rax, %rsi	# tmp100,
	leaq	.LC3(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	__assert_fail@PLT	#
.L12:
# problem91.c:34:     int test4[] = {1, 1};
	movl	$1, -120(%rbp)	#, test4[0]
	movl	$1, -116(%rbp)	#, test4[1]
# problem91.c:35:     assert(func0(test4, 2) == -1);
	leaq	-120(%rbp), %rax	#, tmp102
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp102,
	call	func0	#
	cmpl	$-1, %eax	#, _4
	je	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$35, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC4(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	__assert_fail@PLT	#
.L13:
# problem91.c:37:     int test5[] = {1, 1, 1, 1, 0};
	movl	$1, -32(%rbp)	#, MEM[(int[5] *)_51][0]
	movl	$1, -28(%rbp)	#, MEM[(int[5] *)_51][1]
	movl	$1, -24(%rbp)	#, MEM[(int[5] *)_51][2]
	movl	$1, -20(%rbp)	#, MEM[(int[5] *)_51][3]
	movl	$0, -16(%rbp)	#, MEM[(int[5] *)_51][4]
# problem91.c:38:     assert(func0(test5, 5) == 1);
	leaq	-32(%rbp), %rax	#, tmp106
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp106,
	call	func0	#
	cmpl	$1, %eax	#, _5
	je	.L14	#,
# problem91.c:38:     assert(func0(test5, 5) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$38, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC5(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L14:
# problem91.c:40:     int test6[] = {-35, 34, 12, -45};
	movl	$-35, -112(%rbp)	#, test6[0]
	movl	$34, -108(%rbp)	#, test6[1]
	movl	$12, -104(%rbp)	#, test6[2]
	movl	$-45, -100(%rbp)	#, test6[3]
# problem91.c:41:     assert(func0(test6, 4) == -35);
	leaq	-112(%rbp), %rax	#, tmp110
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	func0	#
	cmpl	$-35, %eax	#, _6
	je	.L15	#,
# problem91.c:41:     assert(func0(test6, 4) == -35);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp111
	movq	%rax, %rcx	# tmp111,
	movl	$41, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	leaq	.LC6(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	__assert_fail@PLT	#
.L15:
# problem91.c:43:     return 0;
	movl	$0, %eax	#, _43
# problem91.c:44: }
	movq	-8(%rbp), %rdx	# D.2422, tmp116
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp116
	je	.L17	#,
	call	__stack_chk_fail@PLT	#
.L17:
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
