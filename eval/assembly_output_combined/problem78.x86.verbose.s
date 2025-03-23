	.file	"problem78.c"
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
	movl	%edi, -20(%rbp)	# a, a
# problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	movl	$0, -4(%rbp)	#, i
# problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	jmp	.L2	#
.L5:
# problem78.c:7:         if (i * i * i == abs(a)) return 1;
	movl	-4(%rbp), %eax	# i, tmp90
	imull	%eax, %eax	# tmp90, _1
# problem78.c:7:         if (i * i * i == abs(a)) return 1;
	imull	-4(%rbp), %eax	# i, _1
	movl	%eax, %edx	# _1, _2
# problem78.c:7:         if (i * i * i == abs(a)) return 1;
	movl	-20(%rbp), %eax	# a, tmp95
	movl	%eax, %ecx	# tmp95, tmp96
	negl	%ecx	# tmp96
	cmovns	%ecx, %eax	# tmp96,, _3
# problem78.c:7:         if (i * i * i == abs(a)) return 1;
	cmpl	%eax, %edx	# _3, _2
	jne	.L3	#,
# problem78.c:7:         if (i * i * i == abs(a)) return 1;
	movl	$1, %eax	#, _8
	jmp	.L4	#
.L3:
# problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	addl	$1, -4(%rbp)	#, i
.L2:
# problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	movl	-4(%rbp), %eax	# i, tmp91
	imull	%eax, %eax	# tmp91, _4
# problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	imull	-4(%rbp), %eax	# i, _4
	movl	%eax, %edx	# _4, _5
# problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	movl	-20(%rbp), %eax	# a, tmp93
	movl	%eax, %ecx	# tmp93, tmp94
	negl	%ecx	# tmp94
	cmovns	%ecx, %eax	# tmp94,, _6
# problem78.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	cmpl	%eax, %edx	# _6, _5
	jle	.L5	#,
# problem78.c:8:     return 0;
	movl	$0, %eax	#, _8
.L4:
# problem78.c:9: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem78.c"
.LC1:
	.string	"func0(1) == 1"
.LC2:
	.string	"func0(2) == 0"
.LC3:
	.string	"func0(-1) == 1"
.LC4:
	.string	"func0(64) == 1"
.LC5:
	.string	"func0(180) == 0"
.LC6:
	.string	"func0(1000) == 1"
.LC7:
	.string	"func0(0) == 1"
.LC8:
	.string	"func0(1729) == 0"
.LC9:
	.string	"All tests passed."
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
# problem78.c:17:     assert(func0(1) == 1);
	movl	$1, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _1
	je	.L7	#,
# problem78.c:17:     assert(func0(1) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp92
	movq	%rax, %rcx	# tmp92,
	movl	$17, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC1(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	__assert_fail@PLT	#
.L7:
# problem78.c:18:     assert(func0(2) == 0);
	movl	$2, %edi	#,
	call	func0	#
	testl	%eax, %eax	# _2
	je	.L8	#,
# problem78.c:18:     assert(func0(2) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$18, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC2(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L8:
# problem78.c:19:     assert(func0(-1) == 1);
	movl	$-1, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _3
	je	.L9	#,
# problem78.c:19:     assert(func0(-1) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp98
	movq	%rax, %rcx	# tmp98,
	movl	$19, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	leaq	.LC3(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	__assert_fail@PLT	#
.L9:
# problem78.c:20:     assert(func0(64) == 1);
	movl	$64, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _4
	je	.L10	#,
# problem78.c:20:     assert(func0(64) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$20, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC4(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L10:
# problem78.c:21:     assert(func0(180) == 0);
	movl	$180, %edi	#,
	call	func0	#
	testl	%eax, %eax	# _5
	je	.L11	#,
# problem78.c:21:     assert(func0(180) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$21, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC5(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L11:
# problem78.c:22:     assert(func0(1000) == 1);
	movl	$1000, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _6
	je	.L12	#,
# problem78.c:22:     assert(func0(1000) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$22, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC6(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L12:
# problem78.c:23:     assert(func0(0) == 1);
	movl	$0, %edi	#,
	call	func0	#
	cmpl	$1, %eax	#, _7
	je	.L13	#,
# problem78.c:23:     assert(func0(0) == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp110
	movq	%rax, %rcx	# tmp110,
	movl	$23, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp111
	movq	%rax, %rsi	# tmp111,
	leaq	.LC7(%rip), %rax	#, tmp112
	movq	%rax, %rdi	# tmp112,
	call	__assert_fail@PLT	#
.L13:
# problem78.c:24:     assert(func0(1729) == 0);
	movl	$1729, %edi	#,
	call	func0	#
	testl	%eax, %eax	# _8
	je	.L14	#,
# problem78.c:24:     assert(func0(1729) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$24, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC8(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L14:
# problem78.c:26:     printf("All tests passed.\n");
	leaq	.LC9(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	puts@PLT	#
# problem78.c:27:     return 0;
	movl	$0, %eax	#, _27
# problem78.c:28: }
	popq	%rbp	#
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
