	.file	"problem67.c"
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
	movq	%rdi, -24(%rbp)	# s, s
# problem67.c:5:     int sum = 0;
	movl	$0, -8(%rbp)	#, sum
# problem67.c:6:     for (int i = 0; s[i] != '\0'; i++)
	movl	$0, -4(%rbp)	#, i
# problem67.c:6:     for (int i = 0; s[i] != '\0'; i++)
	jmp	.L2	#
.L4:
# problem67.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	movl	-4(%rbp), %eax	# i, tmp97
	movslq	%eax, %rdx	# tmp97, _1
	movq	-24(%rbp), %rax	# s, tmp98
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
# problem67.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	cmpb	$64, %al	#, _3
	jle	.L3	#,
# problem67.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	movl	-4(%rbp), %eax	# i, tmp99
	movslq	%eax, %rdx	# tmp99, _4
	movq	-24(%rbp), %rax	# s, tmp100
	addq	%rdx, %rax	# _4, _5
	movzbl	(%rax), %eax	# *_5, _6
# problem67.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	cmpb	$90, %al	#, _6
	jg	.L3	#,
# problem67.c:8:             sum += s[i];
	movl	-4(%rbp), %eax	# i, tmp101
	movslq	%eax, %rdx	# tmp101, _7
	movq	-24(%rbp), %rax	# s, tmp102
	addq	%rdx, %rax	# _7, _8
	movzbl	(%rax), %eax	# *_8, _9
	movsbl	%al, %eax	# _9, _10
# problem67.c:8:             sum += s[i];
	addl	%eax, -8(%rbp)	# _10, sum
.L3:
# problem67.c:6:     for (int i = 0; s[i] != '\0'; i++)
	addl	$1, -4(%rbp)	#, i
.L2:
# problem67.c:6:     for (int i = 0; s[i] != '\0'; i++)
	movl	-4(%rbp), %eax	# i, tmp103
	movslq	%eax, %rdx	# tmp103, _11
	movq	-24(%rbp), %rax	# s, tmp104
	addq	%rdx, %rax	# _11, _12
	movzbl	(%rax), %eax	# *_12, _13
# problem67.c:6:     for (int i = 0; s[i] != '\0'; i++)
	testb	%al, %al	# _13
	jne	.L4	#,
# problem67.c:9:     return sum;
	movl	-8(%rbp), %eax	# sum, _21
# problem67.c:10: }
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
	.string	"problem67.c"
.LC2:
	.string	"func0(\"\") == 0"
.LC3:
	.string	"abAB"
.LC4:
	.string	"func0(\"abAB\") == 131"
.LC5:
	.string	"abcCd"
.LC6:
	.string	"func0(\"abcCd\") == 67"
.LC7:
	.string	"helloE"
.LC8:
	.string	"func0(\"helloE\") == 69"
.LC9:
	.string	"woArBld"
.LC10:
	.string	"func0(\"woArBld\") == 131"
.LC11:
	.string	"aAaaaXa"
.LC12:
	.string	"func0(\"aAaaaXa\") == 153"
.LC13:
	.string	" How are yOu?"
.LC14:
	.string	"func0(\" How are yOu?\") == 151"
.LC15:
	.string	"You arE Very Smart"
	.align 8
.LC16:
	.string	"func0(\"You arE Very Smart\") == 327"
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
# problem67.c:17:     assert(func0("") == 0);
	leaq	.LC0(%rip), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	func0	#
	testl	%eax, %eax	# _1
	je	.L7	#,
# problem67.c:17:     assert(func0("") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp93
	movq	%rax, %rcx	# tmp93,
	movl	$17, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp94
	movq	%rax, %rsi	# tmp94,
	leaq	.LC2(%rip), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	__assert_fail@PLT	#
.L7:
# problem67.c:18:     assert(func0("abAB") == 131);
	leaq	.LC3(%rip), %rax	#, tmp96
	movq	%rax, %rdi	# tmp96,
	call	func0	#
	cmpl	$131, %eax	#, _2
	je	.L8	#,
# problem67.c:18:     assert(func0("abAB") == 131);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp97
	movq	%rax, %rcx	# tmp97,
	movl	$18, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC4(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	__assert_fail@PLT	#
.L8:
# problem67.c:19:     assert(func0("abcCd") == 67);
	leaq	.LC5(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	func0	#
	cmpl	$67, %eax	#, _3
	je	.L9	#,
# problem67.c:19:     assert(func0("abcCd") == 67);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$19, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC6(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L9:
# problem67.c:20:     assert(func0("helloE") == 69);
	leaq	.LC7(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	func0	#
	cmpl	$69, %eax	#, _4
	je	.L10	#,
# problem67.c:20:     assert(func0("helloE") == 69);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp105
	movq	%rax, %rcx	# tmp105,
	movl	$20, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC8(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	__assert_fail@PLT	#
.L10:
# problem67.c:21:     assert(func0("woArBld") == 131);
	leaq	.LC9(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	func0	#
	cmpl	$131, %eax	#, _5
	je	.L11	#,
# problem67.c:21:     assert(func0("woArBld") == 131);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$21, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC10(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	__assert_fail@PLT	#
.L11:
# problem67.c:22:     assert(func0("aAaaaXa") == 153);
	leaq	.LC11(%rip), %rax	#, tmp112
	movq	%rax, %rdi	# tmp112,
	call	func0	#
	cmpl	$153, %eax	#, _6
	je	.L12	#,
# problem67.c:22:     assert(func0("aAaaaXa") == 153);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$22, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC12(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L12:
# problem67.c:23:     assert(func0(" How are yOu?") == 151);
	leaq	.LC13(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	func0	#
	cmpl	$151, %eax	#, _7
	je	.L13	#,
# problem67.c:23:     assert(func0(" How are yOu?") == 151);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp117
	movq	%rax, %rcx	# tmp117,
	movl	$23, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp118
	movq	%rax, %rsi	# tmp118,
	leaq	.LC14(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	__assert_fail@PLT	#
.L13:
# problem67.c:24:     assert(func0("You arE Very Smart") == 327);
	leaq	.LC15(%rip), %rax	#, tmp120
	movq	%rax, %rdi	# tmp120,
	call	func0	#
	cmpl	$327, %eax	#, _8
	je	.L14	#,
# problem67.c:24:     assert(func0("You arE Very Smart") == 327);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp121
	movq	%rax, %rcx	# tmp121,
	movl	$24, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp122
	movq	%rax, %rsi	# tmp122,
	leaq	.LC16(%rip), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	__assert_fail@PLT	#
.L14:
# problem67.c:26:     return 0;
	movl	$0, %eax	#, _26
# problem67.c:27: }
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
