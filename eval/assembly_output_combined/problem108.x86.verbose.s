	.file	"problem108.c"
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
	movl	%edi, -36(%rbp)	# n, n
# problem108.c:5:     int* counts = (int*)malloc(2 * sizeof(int));
	movl	$8, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp94, counts
# problem108.c:6:     counts[0] = 0;
	movq	-8(%rbp), %rax	# counts, tmp95
	movl	$0, (%rax)	#, *counts_18
# problem108.c:7:     counts[1] = 0;
	movq	-8(%rbp), %rax	# counts, tmp96
	addq	$4, %rax	#, _1
# problem108.c:7:     counts[1] = 0;
	movl	$0, (%rax)	#, *_1
# problem108.c:9:     for (int i = 1; i <= n; i++) {
	movl	$1, -24(%rbp)	#, i
# problem108.c:9:     for (int i = 1; i <= n; i++) {
	jmp	.L2	#
.L7:
# problem108.c:10:         int reversed = 0, original = i;
	movl	$0, -20(%rbp)	#, reversed
# problem108.c:10:         int reversed = 0, original = i;
	movl	-24(%rbp), %eax	# i, tmp97
	movl	%eax, -12(%rbp)	# tmp97, original
# problem108.c:12:         int number = i;
	movl	-24(%rbp), %eax	# i, tmp98
	movl	%eax, -16(%rbp)	# tmp98, number
# problem108.c:13:         while (number != 0) {
	jmp	.L3	#
.L4:
# problem108.c:14:             reversed = reversed * 10 + number % 10;
	movl	-20(%rbp), %edx	# reversed, tmp99
	movl	%edx, %eax	# tmp99, tmp100
	sall	$2, %eax	#, tmp100
	addl	%edx, %eax	# tmp99, tmp100
	addl	%eax, %eax	# tmp101
	movl	%eax, %edi	# tmp100, _2
# problem108.c:14:             reversed = reversed * 10 + number % 10;
	movl	-16(%rbp), %edx	# number, tmp102
	movslq	%edx, %rax	# tmp102, tmp103
	imulq	$1717986919, %rax, %rax	#, tmp103, tmp104
	shrq	$32, %rax	#, tmp105
	sarl	$2, %eax	#, tmp106
	movl	%edx, %esi	# tmp102, tmp107
	sarl	$31, %esi	#, tmp107
	subl	%esi, %eax	# tmp107, tmp106
	movl	%eax, %ecx	# tmp106, _3
	movl	%ecx, %eax	# _3, tmp108
	sall	$2, %eax	#, tmp108
	addl	%ecx, %eax	# _3, tmp108
	addl	%eax, %eax	# tmp109
	movl	%edx, %ecx	# tmp102, tmp102
	subl	%eax, %ecx	# tmp108, tmp102
# problem108.c:14:             reversed = reversed * 10 + number % 10;
	leal	(%rdi,%rcx), %eax	#, tmp110
	movl	%eax, -20(%rbp)	# tmp110, reversed
# problem108.c:15:             number /= 10;
	movl	-16(%rbp), %eax	# number, tmp112
	movslq	%eax, %rdx	# tmp112, tmp113
	imulq	$1717986919, %rdx, %rdx	#, tmp113, tmp114
	shrq	$32, %rdx	#, tmp115
	sarl	$2, %edx	#, tmp116
	sarl	$31, %eax	#, tmp112
	movl	%eax, %ecx	# tmp112, tmp117
	movl	%edx, %eax	# tmp116, tmp116
	subl	%ecx, %eax	# tmp117, tmp116
	movl	%eax, -16(%rbp)	# tmp111, number
.L3:
# problem108.c:13:         while (number != 0) {
	cmpl	$0, -16(%rbp)	#, number
	jne	.L4	#,
# problem108.c:18:         if (original == reversed) {
	movl	-12(%rbp), %eax	# original, tmp118
	cmpl	-20(%rbp), %eax	# reversed, tmp118
	jne	.L5	#,
# problem108.c:19:             if (original % 2 == 0) counts[0]++;
	movl	-12(%rbp), %eax	# original, original.0_4
	andl	$1, %eax	#, _5
# problem108.c:19:             if (original % 2 == 0) counts[0]++;
	testl	%eax, %eax	# _5
	jne	.L6	#,
# problem108.c:19:             if (original % 2 == 0) counts[0]++;
	movq	-8(%rbp), %rax	# counts, tmp119
	movl	(%rax), %eax	# *counts_18, _6
# problem108.c:19:             if (original % 2 == 0) counts[0]++;
	leal	1(%rax), %edx	#, _7
	movq	-8(%rbp), %rax	# counts, tmp120
	movl	%edx, (%rax)	# _7, *counts_18
	jmp	.L5	#
.L6:
# problem108.c:20:             else counts[1]++;
	movq	-8(%rbp), %rax	# counts, tmp121
	addq	$4, %rax	#, _8
	movl	(%rax), %edx	# *_8, _9
# problem108.c:20:             else counts[1]++;
	addl	$1, %edx	#, _10
	movl	%edx, (%rax)	# _10, *_8
.L5:
# problem108.c:9:     for (int i = 1; i <= n; i++) {
	addl	$1, -24(%rbp)	#, i
.L2:
# problem108.c:9:     for (int i = 1; i <= n; i++) {
	movl	-24(%rbp), %eax	# i, tmp122
	cmpl	-36(%rbp), %eax	# n, tmp122
	jle	.L7	#,
# problem108.c:24:     return counts;
	movq	-8(%rbp), %rax	# counts, _23
# problem108.c:25: }
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
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	movl	%edx, -36(%rbp)	# size, size
# problem108.c:34:     for (int i = 0; i < size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem108.c:34:     for (int i = 0; i < size; i++) {
	jmp	.L10	#
.L13:
# problem108.c:35:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp92
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp93
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem108.c:35:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-32(%rbp), %rax	# b, tmp95
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem108.c:35:         if (a[i] != b[i]) return 0;
	cmpl	%eax, %edx	# _8, _4
	je	.L11	#,
# problem108.c:35:         if (a[i] != b[i]) return 0;
	movl	$0, %eax	#, _10
	jmp	.L12	#
.L11:
# problem108.c:34:     for (int i = 0; i < size; i++) {
	addl	$1, -4(%rbp)	#, i
.L10:
# problem108.c:34:     for (int i = 0; i < size; i++) {
	movl	-4(%rbp), %eax	# i, tmp96
	cmpl	-36(%rbp), %eax	# size, tmp96
	jl	.L13	#,
# problem108.c:37:     return 1;
	movl	$1, %eax	#, _10
.L12:
# problem108.c:38: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem108.c"
.LC1:
	.string	"issame(result, expected1, 2)"
.LC2:
	.string	"issame(result, expected2, 2)"
.LC3:
	.string	"issame(result, expected3, 2)"
.LC4:
	.string	"issame(result, expected4, 2)"
.LC5:
	.string	"issame(result, expected5, 2)"
.LC6:
	.string	"issame(result, expected6, 2)"
.LC7:
	.string	"issame(result, expected7, 2)"
.LC8:
	.string	"issame(result, expected8, 2)"
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
	subq	$80, %rsp	#,
# problem108.c:40: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp149
	movq	%rax, -8(%rbp)	# tmp149, D.2959
	xorl	%eax, %eax	# tmp149
# problem108.c:43:     result = func0(123);
	movl	$123, %edi	#,
	call	func0	#
	movq	%rax, -80(%rbp)	# tmp92, result
# problem108.c:44:     int expected1[] = {8, 13};
	movl	$8, -72(%rbp)	#, expected1[0]
	movl	$13, -68(%rbp)	#, expected1[1]
# problem108.c:45:     assert(issame(result, expected1, 2));
	leaq	-72(%rbp), %rcx	#, tmp93
	movq	-80(%rbp), %rax	# result, tmp94
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	issame	#
	testl	%eax, %eax	# _1
	jne	.L15	#,
# problem108.c:45:     assert(issame(result, expected1, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$45, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC1(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L15:
# problem108.c:46:     free(result);
	movq	-80(%rbp), %rax	# result, tmp98
	movq	%rax, %rdi	# tmp98,
	call	free@PLT	#
# problem108.c:48:     result = func0(12);
	movl	$12, %edi	#,
	call	func0	#
	movq	%rax, -80(%rbp)	# tmp99, result
# problem108.c:49:     int expected2[] = {4, 6};
	movl	$4, -64(%rbp)	#, expected2[0]
	movl	$6, -60(%rbp)	#, expected2[1]
# problem108.c:50:     assert(issame(result, expected2, 2));
	leaq	-64(%rbp), %rcx	#, tmp100
	movq	-80(%rbp), %rax	# result, tmp101
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	issame	#
	testl	%eax, %eax	# _2
	jne	.L16	#,
# problem108.c:50:     assert(issame(result, expected2, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp102
	movq	%rax, %rcx	# tmp102,
	movl	$50, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	leaq	.LC2(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	__assert_fail@PLT	#
.L16:
# problem108.c:51:     free(result);
	movq	-80(%rbp), %rax	# result, tmp105
	movq	%rax, %rdi	# tmp105,
	call	free@PLT	#
# problem108.c:53:     result = func0(3);
	movl	$3, %edi	#,
	call	func0	#
	movq	%rax, -80(%rbp)	# tmp106, result
# problem108.c:54:     int expected3[] = {1, 2};
	movl	$1, -56(%rbp)	#, expected3[0]
	movl	$2, -52(%rbp)	#, expected3[1]
# problem108.c:55:     assert(issame(result, expected3, 2));
	leaq	-56(%rbp), %rcx	#, tmp107
	movq	-80(%rbp), %rax	# result, tmp108
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp107,
	movq	%rax, %rdi	# tmp108,
	call	issame	#
	testl	%eax, %eax	# _3
	jne	.L17	#,
# problem108.c:55:     assert(issame(result, expected3, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$55, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC3(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	__assert_fail@PLT	#
.L17:
# problem108.c:56:     free(result);
	movq	-80(%rbp), %rax	# result, tmp112
	movq	%rax, %rdi	# tmp112,
	call	free@PLT	#
# problem108.c:58:     result = func0(63);
	movl	$63, %edi	#,
	call	func0	#
	movq	%rax, -80(%rbp)	# tmp113, result
# problem108.c:59:     int expected4[] = {6, 8};
	movl	$6, -48(%rbp)	#, expected4[0]
	movl	$8, -44(%rbp)	#, expected4[1]
# problem108.c:60:     assert(issame(result, expected4, 2));
	leaq	-48(%rbp), %rcx	#, tmp114
	movq	-80(%rbp), %rax	# result, tmp115
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp114,
	movq	%rax, %rdi	# tmp115,
	call	issame	#
	testl	%eax, %eax	# _4
	jne	.L18	#,
# problem108.c:60:     assert(issame(result, expected4, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp116
	movq	%rax, %rcx	# tmp116,
	movl	$60, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp117
	movq	%rax, %rsi	# tmp117,
	leaq	.LC4(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	__assert_fail@PLT	#
.L18:
# problem108.c:61:     free(result);
	movq	-80(%rbp), %rax	# result, tmp119
	movq	%rax, %rdi	# tmp119,
	call	free@PLT	#
# problem108.c:63:     result = func0(25);
	movl	$25, %edi	#,
	call	func0	#
	movq	%rax, -80(%rbp)	# tmp120, result
# problem108.c:64:     int expected5[] = {5, 6};
	movl	$5, -40(%rbp)	#, expected5[0]
	movl	$6, -36(%rbp)	#, expected5[1]
# problem108.c:65:     assert(issame(result, expected5, 2));
	leaq	-40(%rbp), %rcx	#, tmp121
	movq	-80(%rbp), %rax	# result, tmp122
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp121,
	movq	%rax, %rdi	# tmp122,
	call	issame	#
	testl	%eax, %eax	# _5
	jne	.L19	#,
# problem108.c:65:     assert(issame(result, expected5, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp123
	movq	%rax, %rcx	# tmp123,
	movl	$65, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	leaq	.LC5(%rip), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	call	__assert_fail@PLT	#
.L19:
# problem108.c:66:     free(result);
	movq	-80(%rbp), %rax	# result, tmp126
	movq	%rax, %rdi	# tmp126,
	call	free@PLT	#
# problem108.c:68:     result = func0(19);
	movl	$19, %edi	#,
	call	func0	#
	movq	%rax, -80(%rbp)	# tmp127, result
# problem108.c:69:     int expected6[] = {4, 6};
	movl	$4, -32(%rbp)	#, expected6[0]
	movl	$6, -28(%rbp)	#, expected6[1]
# problem108.c:70:     assert(issame(result, expected6, 2));
	leaq	-32(%rbp), %rcx	#, tmp128
	movq	-80(%rbp), %rax	# result, tmp129
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp128,
	movq	%rax, %rdi	# tmp129,
	call	issame	#
	testl	%eax, %eax	# _6
	jne	.L20	#,
# problem108.c:70:     assert(issame(result, expected6, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp130
	movq	%rax, %rcx	# tmp130,
	movl	$70, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp131
	movq	%rax, %rsi	# tmp131,
	leaq	.LC6(%rip), %rax	#, tmp132
	movq	%rax, %rdi	# tmp132,
	call	__assert_fail@PLT	#
.L20:
# problem108.c:71:     free(result);
	movq	-80(%rbp), %rax	# result, tmp133
	movq	%rax, %rdi	# tmp133,
	call	free@PLT	#
# problem108.c:73:     result = func0(9);
	movl	$9, %edi	#,
	call	func0	#
	movq	%rax, -80(%rbp)	# tmp134, result
# problem108.c:74:     int expected7[] = {4, 5};
	movl	$4, -24(%rbp)	#, expected7[0]
	movl	$5, -20(%rbp)	#, expected7[1]
# problem108.c:75:     assert(issame(result, expected7, 2));
	leaq	-24(%rbp), %rcx	#, tmp135
	movq	-80(%rbp), %rax	# result, tmp136
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp135,
	movq	%rax, %rdi	# tmp136,
	call	issame	#
	testl	%eax, %eax	# _7
	jne	.L21	#,
# problem108.c:75:     assert(issame(result, expected7, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp137
	movq	%rax, %rcx	# tmp137,
	movl	$75, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp138
	movq	%rax, %rsi	# tmp138,
	leaq	.LC7(%rip), %rax	#, tmp139
	movq	%rax, %rdi	# tmp139,
	call	__assert_fail@PLT	#
.L21:
# problem108.c:76:     free(result);
	movq	-80(%rbp), %rax	# result, tmp140
	movq	%rax, %rdi	# tmp140,
	call	free@PLT	#
# problem108.c:78:     result = func0(1);
	movl	$1, %edi	#,
	call	func0	#
	movq	%rax, -80(%rbp)	# tmp141, result
# problem108.c:79:     int expected8[] = {0, 1};
	movl	$0, -16(%rbp)	#, expected8[0]
	movl	$1, -12(%rbp)	#, expected8[1]
# problem108.c:80:     assert(issame(result, expected8, 2));
	leaq	-16(%rbp), %rcx	#, tmp142
	movq	-80(%rbp), %rax	# result, tmp143
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp142,
	movq	%rax, %rdi	# tmp143,
	call	issame	#
	testl	%eax, %eax	# _8
	jne	.L22	#,
# problem108.c:80:     assert(issame(result, expected8, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp144
	movq	%rax, %rcx	# tmp144,
	movl	$80, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp145
	movq	%rax, %rsi	# tmp145,
	leaq	.LC8(%rip), %rax	#, tmp146
	movq	%rax, %rdi	# tmp146,
	call	__assert_fail@PLT	#
.L22:
# problem108.c:81:     free(result);
	movq	-80(%rbp), %rax	# result, tmp147
	movq	%rax, %rdi	# tmp147,
	call	free@PLT	#
# problem108.c:83:     return 0;
	movl	$0, %eax	#, _66
# problem108.c:84: }
	movq	-8(%rbp), %rdx	# D.2959, tmp150
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp150
	je	.L24	#,
	call	__stack_chk_fail@PLT	#
.L24:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
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
