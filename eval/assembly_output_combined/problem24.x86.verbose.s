	.file	"problem24.c"
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
	movq	%rdi, -24(%rbp)	# str, str
# problem24.c:4:     int length = 0;
	movl	$0, -4(%rbp)	#, length
# problem24.c:5:     while (str[length] != '\0') {
	jmp	.L2	#
.L3:
# problem24.c:6:         length++;
	addl	$1, -4(%rbp)	#, length
.L2:
# problem24.c:5:     while (str[length] != '\0') {
	movl	-4(%rbp), %eax	# length, tmp87
	movslq	%eax, %rdx	# tmp87, _1
	movq	-24(%rbp), %rax	# str, tmp88
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
# problem24.c:5:     while (str[length] != '\0') {
	testb	%al, %al	# _3
	jne	.L3	#,
# problem24.c:8:     return length;
	movl	-4(%rbp), %eax	# length, _8
# problem24.c:9: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"problem24.c"
.LC2:
	.string	"func0(\"\") == 0"
.LC3:
	.string	"x"
.LC4:
	.string	"func0(\"x\") == 1"
.LC5:
	.string	"asdasnakj"
.LC6:
	.string	"func0(\"asdasnakj\") == 9"
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
# problem24.c:16:     assert(func0("") == 0);
	leaq	.LC0(%rip), %rax	#, tmp87
	movq	%rax, %rdi	# tmp87,
	call	func0	#
# problem24.c:16:     assert(func0("") == 0);
	testl	%eax, %eax	# _1
	je	.L6	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp88
	movq	%rax, %rcx	# tmp88,
	movl	$16, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp89
	movq	%rax, %rsi	# tmp89,
	leaq	.LC2(%rip), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	call	__assert_fail@PLT	#
.L6:
# problem24.c:17:     assert(func0("x") == 1);
	leaq	.LC3(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	func0	#
# problem24.c:17:     assert(func0("x") == 1);
	cmpl	$1, %eax	#, _2
	je	.L7	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp92
	movq	%rax, %rcx	# tmp92,
	movl	$17, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC4(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	__assert_fail@PLT	#
.L7:
# problem24.c:18:     assert(func0("asdasnakj") == 9);
	leaq	.LC5(%rip), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	func0	#
# problem24.c:18:     assert(func0("asdasnakj") == 9);
	cmpl	$9, %eax	#, _3
	je	.L8	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp96
	movq	%rax, %rcx	# tmp96,
	movl	$18, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp97
	movq	%rax, %rsi	# tmp97,
	leaq	.LC6(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	__assert_fail@PLT	#
.L8:
# problem24.c:20:     return 0;
	movl	$0, %eax	#, _11
# problem24.c:21: }
	popq	%rbp	#
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
