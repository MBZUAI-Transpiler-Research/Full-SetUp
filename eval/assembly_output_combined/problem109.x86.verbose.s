	.file	"problem109.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
	movq	%rdi, -24(%rbp)	# n, n
	movl	%esi, -28(%rbp)	# size, size
# problem109.c:5:     int num = 0;
	movl	$0, -16(%rbp)	#, num
# problem109.c:6:     for (int i = 0; i < size; i++) {
	movl	$0, -12(%rbp)	#, i
# problem109.c:6:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L7:
# problem109.c:7:         if (n[i] > 0) {
	movl	-12(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# n, tmp94
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %eax	# *_3, _4
# problem109.c:7:         if (n[i] > 0) {
	testl	%eax, %eax	# _4
	jle	.L3	#,
# problem109.c:8:             num += 1;
	addl	$1, -16(%rbp)	#, num
	jmp	.L4	#
.L3:
# problem109.c:10:             int sum = 0;
	movl	$0, -8(%rbp)	#, sum
# problem109.c:11:             int w = abs(n[i]);
	movl	-12(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-24(%rbp), %rax	# n, tmp96
	addq	%rdx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem109.c:11:             int w = abs(n[i]);
	movl	%eax, %edx	# _8, tmp116
	negl	%edx	# tmp116
	cmovns	%edx, %eax	# tmp116,, tmp97
	movl	%eax, -4(%rbp)	# tmp97, w
# problem109.c:12:             while (w >= 10) {
	jmp	.L5	#
.L6:
# problem109.c:13:                 sum += w % 10;
	movl	-4(%rbp), %ecx	# w, tmp98
	movslq	%ecx, %rax	# tmp98, tmp99
	imulq	$1717986919, %rax, %rax	#, tmp99, tmp100
	shrq	$32, %rax	#, tmp101
	movl	%eax, %edx	# tmp101, tmp102
	sarl	$2, %edx	#, tmp102
	movl	%ecx, %eax	# tmp98, tmp103
	sarl	$31, %eax	#, tmp103
	subl	%eax, %edx	# tmp103, _9
	movl	%edx, %eax	# _9, tmp104
	sall	$2, %eax	#, tmp104
	addl	%edx, %eax	# _9, tmp104
	addl	%eax, %eax	# tmp105
	subl	%eax, %ecx	# tmp104, tmp98
	movl	%ecx, %edx	# tmp98, _9
# problem109.c:13:                 sum += w % 10;
	addl	%edx, -8(%rbp)	# _9, sum
# problem109.c:14:                 w = w / 10;
	movl	-4(%rbp), %eax	# w, tmp107
	movslq	%eax, %rdx	# tmp107, tmp108
	imulq	$1717986919, %rdx, %rdx	#, tmp108, tmp109
	shrq	$32, %rdx	#, tmp110
	movl	%edx, %ecx	# tmp110, tmp111
	sarl	$2, %ecx	#, tmp111
	cltd
	movl	%ecx, %eax	# tmp111, tmp111
	subl	%edx, %eax	# tmp112, tmp111
	movl	%eax, -4(%rbp)	# tmp106, w
.L5:
# problem109.c:12:             while (w >= 10) {
	cmpl	$9, -4(%rbp)	#, w
	jg	.L6	#,
# problem109.c:16:             sum -= w;
	movl	-4(%rbp), %eax	# w, tmp113
	subl	%eax, -8(%rbp)	# tmp113, sum
# problem109.c:17:             if (sum > 0) num += 1;
	cmpl	$0, -8(%rbp)	#, sum
	jle	.L4	#,
# problem109.c:17:             if (sum > 0) num += 1;
	addl	$1, -16(%rbp)	#, num
.L4:
# problem109.c:6:     for (int i = 0; i < size; i++) {
	addl	$1, -12(%rbp)	#, i
.L2:
# problem109.c:6:     for (int i = 0; i < size; i++) {
	movl	-12(%rbp), %eax	# i, tmp114
	cmpl	-28(%rbp), %eax	# size, tmp114
	jl	.L7	#,
# problem109.c:20:     return num;
	movl	-16(%rbp), %eax	# num, _18
# problem109.c:21: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem109.c"
.LC1:
	.string	"func0((int[]){}, 0) == 0"
	.align 8
.LC2:
	.string	"func0((int[]){-1, -2, 0}, 3) == 0"
	.align 8
.LC3:
	.string	"func0((int[]){1, 1, 2, -2, 3, 4, 5}, 7) == 6"
	.align 8
.LC4:
	.string	"func0((int[]){1, 6, 9, -6, 0, 1, 5}, 7) == 5"
	.align 8
.LC5:
	.string	"func0((int[]){1, 100, 98, -7, 1, -1}, 6) == 4"
	.align 8
.LC6:
	.string	"func0((int[]){12, 23, 34, -45, -56, 0}, 6) == 5"
.LC7:
	.string	"func0((int[]){-0, 1}, 2) == 1"
.LC8:
	.string	"func0((int[]){1}, 1) == 1"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
# problem109.c:27: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp125
	movq	%rax, -8(%rbp)	# tmp125, D.3791
	xorl	%eax, %eax	# tmp125
# problem109.c:28:     assert(func0((int[]){}, 0) == 0);
	leaq	-48(%rbp), %rax	#, tmp92
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	func0	#
# problem109.c:28:     assert(func0((int[]){}, 0) == 0);
	testl	%eax, %eax	# _1
	je	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp93
	movq	%rax, %rcx	# tmp93,
	movl	$28, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp94
	movq	%rax, %rsi	# tmp94,
	leaq	.LC1(%rip), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	__assert_fail@PLT	#
.L10:
# problem109.c:29:     assert(func0((int[]){-1, -2, 0}, 3) == 0);
	movl	$-1, -48(%rbp)	#, MEM[(int[3] *)_76][0]
	movl	$-2, -44(%rbp)	#, MEM[(int[3] *)_76][1]
	movl	$0, -40(%rbp)	#, MEM[(int[3] *)_76][2]
	leaq	-48(%rbp), %rax	#, tmp96
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	func0	#
# problem109.c:29:     assert(func0((int[]){-1, -2, 0}, 3) == 0);
	testl	%eax, %eax	# _2
	je	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp97
	movq	%rax, %rcx	# tmp97,
	movl	$29, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC2(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	__assert_fail@PLT	#
.L11:
# problem109.c:30:     assert(func0((int[]){1, 1, 2, -2, 3, 4, 5}, 7) == 6);
	movl	$1, -48(%rbp)	#, MEM[(int[7] *)_76][0]
	movl	$1, -44(%rbp)	#, MEM[(int[7] *)_76][1]
	movl	$2, -40(%rbp)	#, MEM[(int[7] *)_76][2]
	movl	$-2, -36(%rbp)	#, MEM[(int[7] *)_76][3]
	movl	$3, -32(%rbp)	#, MEM[(int[7] *)_76][4]
	movl	$4, -28(%rbp)	#, MEM[(int[7] *)_76][5]
	movl	$5, -24(%rbp)	#, MEM[(int[7] *)_76][6]
	leaq	-48(%rbp), %rax	#, tmp100
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp100,
	call	func0	#
# problem109.c:30:     assert(func0((int[]){1, 1, 2, -2, 3, 4, 5}, 7) == 6);
	cmpl	$6, %eax	#, _3
	je	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$30, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC3(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L12:
# problem109.c:31:     assert(func0((int[]){1, 6, 9, -6, 0, 1, 5}, 7) == 5);
	movl	$1, -48(%rbp)	#, MEM[(int[7] *)_76][0]
	movl	$6, -44(%rbp)	#, MEM[(int[7] *)_76][1]
	movl	$9, -40(%rbp)	#, MEM[(int[7] *)_76][2]
	movl	$-6, -36(%rbp)	#, MEM[(int[7] *)_76][3]
	movl	$0, -32(%rbp)	#, MEM[(int[7] *)_76][4]
	movl	$1, -28(%rbp)	#, MEM[(int[7] *)_76][5]
	movl	$5, -24(%rbp)	#, MEM[(int[7] *)_76][6]
	leaq	-48(%rbp), %rax	#, tmp104
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp104,
	call	func0	#
# problem109.c:31:     assert(func0((int[]){1, 6, 9, -6, 0, 1, 5}, 7) == 5);
	cmpl	$5, %eax	#, _4
	je	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp105
	movq	%rax, %rcx	# tmp105,
	movl	$31, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC4(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	__assert_fail@PLT	#
.L13:
# problem109.c:32:     assert(func0((int[]){1, 100, 98, -7, 1, -1}, 6) == 4);
	movl	$1, -48(%rbp)	#, MEM[(int[6] *)_76][0]
	movl	$100, -44(%rbp)	#, MEM[(int[6] *)_76][1]
	movl	$98, -40(%rbp)	#, MEM[(int[6] *)_76][2]
	movl	$-7, -36(%rbp)	#, MEM[(int[6] *)_76][3]
	movl	$1, -32(%rbp)	#, MEM[(int[6] *)_76][4]
	movl	$-1, -28(%rbp)	#, MEM[(int[6] *)_76][5]
	leaq	-48(%rbp), %rax	#, tmp108
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp108,
	call	func0	#
# problem109.c:32:     assert(func0((int[]){1, 100, 98, -7, 1, -1}, 6) == 4);
	cmpl	$4, %eax	#, _5
	je	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$32, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC5(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	__assert_fail@PLT	#
.L14:
# problem109.c:33:     assert(func0((int[]){12, 23, 34, -45, -56, 0}, 6) == 5);
	movl	$12, -48(%rbp)	#, MEM[(int[6] *)_76][0]
	movl	$23, -44(%rbp)	#, MEM[(int[6] *)_76][1]
	movl	$34, -40(%rbp)	#, MEM[(int[6] *)_76][2]
	movl	$-45, -36(%rbp)	#, MEM[(int[6] *)_76][3]
	movl	$-56, -32(%rbp)	#, MEM[(int[6] *)_76][4]
	movl	$0, -28(%rbp)	#, MEM[(int[6] *)_76][5]
	leaq	-48(%rbp), %rax	#, tmp112
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp112,
	call	func0	#
# problem109.c:33:     assert(func0((int[]){12, 23, 34, -45, -56, 0}, 6) == 5);
	cmpl	$5, %eax	#, _6
	je	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$33, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC6(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L15:
# problem109.c:34:     assert(func0((int[]){-0, 1}, 2) == 1);
	movl	$0, -48(%rbp)	#, MEM[(int[2] *)_76][0]
	movl	$1, -44(%rbp)	#, MEM[(int[2] *)_76][1]
	leaq	-48(%rbp), %rax	#, tmp116
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp116,
	call	func0	#
# problem109.c:34:     assert(func0((int[]){-0, 1}, 2) == 1);
	cmpl	$1, %eax	#, _7
	je	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp117
	movq	%rax, %rcx	# tmp117,
	movl	$34, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp118
	movq	%rax, %rsi	# tmp118,
	leaq	.LC7(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	__assert_fail@PLT	#
.L16:
# problem109.c:35:     assert(func0((int[]){1}, 1) == 1);
	movl	$1, -48(%rbp)	#, MEM[(int[1] *)_76][0]
	leaq	-48(%rbp), %rax	#, tmp120
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp120,
	call	func0	#
# problem109.c:35:     assert(func0((int[]){1}, 1) == 1);
	cmpl	$1, %eax	#, _8
	je	.L17	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp121
	movq	%rax, %rcx	# tmp121,
	movl	$35, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp122
	movq	%rax, %rsi	# tmp122,
	leaq	.LC8(%rip), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	__assert_fail@PLT	#
.L17:
# problem109.c:37:     return 0;
	movl	$0, %eax	#, _66
# problem109.c:38: }
	movq	-8(%rbp), %rdx	# D.3791, tmp126
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp126
	je	.L19	#,
	call	__stack_chk_fail@PLT	#
.L19:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
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
