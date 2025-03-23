	.file	"problem62.c"
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
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# brackets, brackets
# problem62.c:6:     int level = 0;
	movl	$0, -24(%rbp)	#, level
# problem62.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	movl	$0, -20(%rbp)	#, i
# problem62.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	jmp	.L2	#
.L7:
# problem62.c:8:         if (brackets[i] == '(') level += 1;
	movl	-20(%rbp), %eax	# i, tmp92
	movslq	%eax, %rdx	# tmp92, _1
	movq	-40(%rbp), %rax	# brackets, tmp93
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
# problem62.c:8:         if (brackets[i] == '(') level += 1;
	cmpb	$40, %al	#, _3
	jne	.L3	#,
# problem62.c:8:         if (brackets[i] == '(') level += 1;
	addl	$1, -24(%rbp)	#, level
.L3:
# problem62.c:9:         if (brackets[i] == ')') level -= 1;
	movl	-20(%rbp), %eax	# i, tmp94
	movslq	%eax, %rdx	# tmp94, _4
	movq	-40(%rbp), %rax	# brackets, tmp95
	addq	%rdx, %rax	# _4, _5
	movzbl	(%rax), %eax	# *_5, _6
# problem62.c:9:         if (brackets[i] == ')') level -= 1;
	cmpb	$41, %al	#, _6
	jne	.L4	#,
# problem62.c:9:         if (brackets[i] == ')') level -= 1;
	subl	$1, -24(%rbp)	#, level
.L4:
# problem62.c:10:         if (level < 0) return false;
	cmpl	$0, -24(%rbp)	#, level
	jns	.L5	#,
# problem62.c:10:         if (level < 0) return false;
	movl	$0, %eax	#, _13
	jmp	.L6	#
.L5:
# problem62.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	addl	$1, -20(%rbp)	#, i
.L2:
# problem62.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	movl	-20(%rbp), %eax	# i, tmp96
	movslq	%eax, %rbx	# tmp96, _7
# problem62.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	movq	-40(%rbp), %rax	# brackets, tmp97
	movq	%rax, %rdi	# tmp97,
	call	strlen@PLT	#
# problem62.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	cmpq	%rax, %rbx	# _8, _7
	jb	.L7	#,
# problem62.c:12:     return level == 0;
	cmpl	$0, -24(%rbp)	#, level
	sete	%al	#, _13
.L6:
# problem62.c:13: }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"()"
.LC1:
	.string	"problem62.c"
.LC2:
	.string	"func0(\"()\")"
.LC3:
	.string	"(()())"
.LC4:
	.string	"func0(\"(()())\")"
.LC5:
	.string	"()()(()())()"
.LC6:
	.string	"func0(\"()()(()())()\")"
.LC7:
	.string	"()()((()()())())(()()(()))"
	.align 8
.LC8:
	.string	"func0(\"()()((()()())())(()()(()))\")"
.LC9:
	.string	"((()())))"
.LC10:
	.string	"!func0(\"((()())))\")"
.LC11:
	.string	")(()"
.LC12:
	.string	"!func0(\")(()\")"
.LC13:
	.string	"("
.LC14:
	.string	"!func0(\"(\")"
.LC15:
	.string	"(((("
.LC16:
	.string	"!func0(\"((((\")"
.LC17:
	.string	")"
.LC18:
	.string	"!func0(\")\")"
.LC19:
	.string	"(()"
.LC20:
	.string	"!func0(\"(()\")"
.LC21:
	.string	"()()(()())())(()"
.LC22:
	.string	"!func0(\"()()(()())())(()\")"
.LC23:
	.string	"()()(()())()))()"
.LC24:
	.string	"!func0(\"()()(()())()))()\")"
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
# problem62.c:21:     assert(func0("()"));
	leaq	.LC0(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	func0	#
	testb	%al, %al	# _1
	jne	.L9	#,
# problem62.c:21:     assert(func0("()"));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp105
	movq	%rax, %rcx	# tmp105,
	movl	$21, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC2(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	__assert_fail@PLT	#
.L9:
# problem62.c:22:     assert(func0("(()())"));
	leaq	.LC3(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	func0	#
	testb	%al, %al	# _2
	jne	.L10	#,
# problem62.c:22:     assert(func0("(()())"));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$22, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC4(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	__assert_fail@PLT	#
.L10:
# problem62.c:23:     assert(func0("()()(()())()"));
	leaq	.LC5(%rip), %rax	#, tmp112
	movq	%rax, %rdi	# tmp112,
	call	func0	#
	testb	%al, %al	# _3
	jne	.L11	#,
# problem62.c:23:     assert(func0("()()(()())()"));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$23, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC6(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L11:
# problem62.c:24:     assert(func0("()()((()()())())(()()(()))"));
	leaq	.LC7(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	func0	#
	testb	%al, %al	# _4
	jne	.L12	#,
# problem62.c:24:     assert(func0("()()((()()())())(()()(()))"));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp117
	movq	%rax, %rcx	# tmp117,
	movl	$24, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp118
	movq	%rax, %rsi	# tmp118,
	leaq	.LC8(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	__assert_fail@PLT	#
.L12:
# problem62.c:25:     assert(!func0("((()())))"));
	leaq	.LC9(%rip), %rax	#, tmp120
	movq	%rax, %rdi	# tmp120,
	call	func0	#
	xorl	$1, %eax	#, _6
	testb	%al, %al	# _6
	jne	.L13	#,
# problem62.c:25:     assert(!func0("((()())))"));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp121
	movq	%rax, %rcx	# tmp121,
	movl	$25, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp122
	movq	%rax, %rsi	# tmp122,
	leaq	.LC10(%rip), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	__assert_fail@PLT	#
.L13:
# problem62.c:26:     assert(!func0(")(()"));
	leaq	.LC11(%rip), %rax	#, tmp124
	movq	%rax, %rdi	# tmp124,
	call	func0	#
	xorl	$1, %eax	#, _8
	testb	%al, %al	# _8
	jne	.L14	#,
# problem62.c:26:     assert(!func0(")(()"));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp125
	movq	%rax, %rcx	# tmp125,
	movl	$26, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp126
	movq	%rax, %rsi	# tmp126,
	leaq	.LC12(%rip), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	call	__assert_fail@PLT	#
.L14:
# problem62.c:27:     assert(!func0("("));
	leaq	.LC13(%rip), %rax	#, tmp128
	movq	%rax, %rdi	# tmp128,
	call	func0	#
	xorl	$1, %eax	#, _10
	testb	%al, %al	# _10
	jne	.L15	#,
# problem62.c:27:     assert(!func0("("));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp129
	movq	%rax, %rcx	# tmp129,
	movl	$27, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp130
	movq	%rax, %rsi	# tmp130,
	leaq	.LC14(%rip), %rax	#, tmp131
	movq	%rax, %rdi	# tmp131,
	call	__assert_fail@PLT	#
.L15:
# problem62.c:28:     assert(!func0("(((("));
	leaq	.LC15(%rip), %rax	#, tmp132
	movq	%rax, %rdi	# tmp132,
	call	func0	#
	xorl	$1, %eax	#, _12
	testb	%al, %al	# _12
	jne	.L16	#,
# problem62.c:28:     assert(!func0("(((("));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp133
	movq	%rax, %rcx	# tmp133,
	movl	$28, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp134
	movq	%rax, %rsi	# tmp134,
	leaq	.LC16(%rip), %rax	#, tmp135
	movq	%rax, %rdi	# tmp135,
	call	__assert_fail@PLT	#
.L16:
# problem62.c:29:     assert(!func0(")"));
	leaq	.LC17(%rip), %rax	#, tmp136
	movq	%rax, %rdi	# tmp136,
	call	func0	#
	xorl	$1, %eax	#, _14
	testb	%al, %al	# _14
	jne	.L17	#,
# problem62.c:29:     assert(!func0(")"));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp137
	movq	%rax, %rcx	# tmp137,
	movl	$29, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp138
	movq	%rax, %rsi	# tmp138,
	leaq	.LC18(%rip), %rax	#, tmp139
	movq	%rax, %rdi	# tmp139,
	call	__assert_fail@PLT	#
.L17:
# problem62.c:30:     assert(!func0("(()"));
	leaq	.LC19(%rip), %rax	#, tmp140
	movq	%rax, %rdi	# tmp140,
	call	func0	#
	xorl	$1, %eax	#, _16
	testb	%al, %al	# _16
	jne	.L18	#,
# problem62.c:30:     assert(!func0("(()"));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp141
	movq	%rax, %rcx	# tmp141,
	movl	$30, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp142
	movq	%rax, %rsi	# tmp142,
	leaq	.LC20(%rip), %rax	#, tmp143
	movq	%rax, %rdi	# tmp143,
	call	__assert_fail@PLT	#
.L18:
# problem62.c:31:     assert(!func0("()()(()())())(()"));
	leaq	.LC21(%rip), %rax	#, tmp144
	movq	%rax, %rdi	# tmp144,
	call	func0	#
	xorl	$1, %eax	#, _18
	testb	%al, %al	# _18
	jne	.L19	#,
# problem62.c:31:     assert(!func0("()()(()())())(()"));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp145
	movq	%rax, %rcx	# tmp145,
	movl	$31, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp146
	movq	%rax, %rsi	# tmp146,
	leaq	.LC22(%rip), %rax	#, tmp147
	movq	%rax, %rdi	# tmp147,
	call	__assert_fail@PLT	#
.L19:
# problem62.c:32:     assert(!func0("()()(()())()))()"));
	leaq	.LC23(%rip), %rax	#, tmp148
	movq	%rax, %rdi	# tmp148,
	call	func0	#
	xorl	$1, %eax	#, _20
	testb	%al, %al	# _20
	jne	.L20	#,
# problem62.c:32:     assert(!func0("()()(()())()))()"));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp149
	movq	%rax, %rcx	# tmp149,
	movl	$32, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp150
	movq	%rax, %rsi	# tmp150,
	leaq	.LC24(%rip), %rax	#, tmp151
	movq	%rax, %rdi	# tmp151,
	call	__assert_fail@PLT	#
.L20:
# problem62.c:34:     return 0;
	movl	$0, %eax	#, _46
# problem62.c:35: }
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
