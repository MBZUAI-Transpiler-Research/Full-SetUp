	.file	"problem49.c"
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
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# text, text
# problem49.c:6:     int len = strlen(text);
	movq	-24(%rbp), %rax	# text, tmp94
	movq	%rax, %rdi	# tmp94,
	call	strlen@PLT	#
# problem49.c:6:     int len = strlen(text);
	movl	%eax, -4(%rbp)	# _1, len
# problem49.c:7:     for (int i = 0; i < len / 2; i++) {
	movl	$0, -8(%rbp)	#, i
# problem49.c:7:     for (int i = 0; i < len / 2; i++) {
	jmp	.L2	#
.L5:
# problem49.c:8:         if (text[i] != text[len - 1 - i]) {
	movl	-8(%rbp), %eax	# i, tmp95
	movslq	%eax, %rdx	# tmp95, _2
	movq	-24(%rbp), %rax	# text, tmp96
	addq	%rdx, %rax	# _2, _3
	movzbl	(%rax), %edx	# *_3, _4
# problem49.c:8:         if (text[i] != text[len - 1 - i]) {
	movl	-4(%rbp), %eax	# len, tmp97
	subl	$1, %eax	#, _5
# problem49.c:8:         if (text[i] != text[len - 1 - i]) {
	subl	-8(%rbp), %eax	# i, _6
	movslq	%eax, %rcx	# _6, _7
# problem49.c:8:         if (text[i] != text[len - 1 - i]) {
	movq	-24(%rbp), %rax	# text, tmp98
	addq	%rcx, %rax	# _7, _8
	movzbl	(%rax), %eax	# *_8, _9
# problem49.c:8:         if (text[i] != text[len - 1 - i]) {
	cmpb	%al, %dl	# _9, _4
	je	.L3	#,
# problem49.c:9:             return false;
	movl	$0, %eax	#, _12
	jmp	.L4	#
.L3:
# problem49.c:7:     for (int i = 0; i < len / 2; i++) {
	addl	$1, -8(%rbp)	#, i
.L2:
# problem49.c:7:     for (int i = 0; i < len / 2; i++) {
	movl	-4(%rbp), %eax	# len, tmp99
	movl	%eax, %edx	# tmp99, tmp100
	shrl	$31, %edx	#, tmp100
	addl	%edx, %eax	# tmp100, tmp101
	sarl	%eax	# tmp102
# problem49.c:7:     for (int i = 0; i < len / 2; i++) {
	cmpl	%eax, -8(%rbp)	# _10, i
	jl	.L5	#,
# problem49.c:12:     return true;
	movl	$1, %eax	#, _12
.L4:
# problem49.c:13: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"problem49.c"
.LC2:
	.string	"func0(\"\") == true"
.LC3:
	.string	"aba"
.LC4:
	.string	"func0(\"aba\") == true"
.LC5:
	.string	"aaaaa"
.LC6:
	.string	"func0(\"aaaaa\") == true"
.LC7:
	.string	"zbcd"
.LC8:
	.string	"func0(\"zbcd\") == false"
.LC9:
	.string	"xywyx"
.LC10:
	.string	"func0(\"xywyx\") == true"
.LC11:
	.string	"xywyz"
.LC12:
	.string	"func0(\"xywyz\") == false"
.LC13:
	.string	"xywzx"
.LC14:
	.string	"func0(\"xywzx\") == false"
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
# problem49.c:22:     assert(func0("") == true);
	leaq	.LC0(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	func0	#
# problem49.c:22:     assert(func0("") == true);
	testb	%al, %al	# _1
	jne	.L7	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$22, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC2(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L7:
# problem49.c:23:     assert(func0("aba") == true);
	leaq	.LC3(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	func0	#
# problem49.c:23:     assert(func0("aba") == true);
	testb	%al, %al	# _2
	jne	.L8	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp99
	movq	%rax, %rcx	# tmp99,
	movl	$23, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp100
	movq	%rax, %rsi	# tmp100,
	leaq	.LC4(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	__assert_fail@PLT	#
.L8:
# problem49.c:24:     assert(func0("aaaaa") == true);
	leaq	.LC5(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	func0	#
# problem49.c:24:     assert(func0("aaaaa") == true);
	testb	%al, %al	# _3
	jne	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$24, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC6(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	__assert_fail@PLT	#
.L9:
# problem49.c:25:     assert(func0("zbcd") == false);
	leaq	.LC7(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	func0	#
# problem49.c:25:     assert(func0("zbcd") == false);
	xorl	$1, %eax	#, _5
	testb	%al, %al	# _5
	jne	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$25, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC8(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L10:
# problem49.c:26:     assert(func0("xywyx") == true);
	leaq	.LC9(%rip), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	call	func0	#
# problem49.c:26:     assert(func0("xywyx") == true);
	testb	%al, %al	# _6
	jne	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp111
	movq	%rax, %rcx	# tmp111,
	movl	$26, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	leaq	.LC10(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	__assert_fail@PLT	#
.L11:
# problem49.c:27:     assert(func0("xywyz") == false);
	leaq	.LC11(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	func0	#
# problem49.c:27:     assert(func0("xywyz") == false);
	xorl	$1, %eax	#, _8
	testb	%al, %al	# _8
	jne	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp115
	movq	%rax, %rcx	# tmp115,
	movl	$27, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp116
	movq	%rax, %rsi	# tmp116,
	leaq	.LC12(%rip), %rax	#, tmp117
	movq	%rax, %rdi	# tmp117,
	call	__assert_fail@PLT	#
.L12:
# problem49.c:28:     assert(func0("xywzx") == false);
	leaq	.LC13(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	func0	#
# problem49.c:28:     assert(func0("xywzx") == false);
	xorl	$1, %eax	#, _10
	testb	%al, %al	# _10
	jne	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp119
	movq	%rax, %rcx	# tmp119,
	movl	$28, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp120
	movq	%rax, %rsi	# tmp120,
	leaq	.LC14(%rip), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	call	__assert_fail@PLT	#
.L13:
# problem49.c:30:     return 0;
	movl	$0, %eax	#, _26
# problem49.c:31: }
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
