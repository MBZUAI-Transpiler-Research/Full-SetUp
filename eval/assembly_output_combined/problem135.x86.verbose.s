	.file	"problem135.c"
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
	movq	%rdi, -24(%rbp)	# txt, txt
# problem135.c:6:     int len = strlen(txt);
	movq	-24(%rbp), %rax	# txt, tmp109
	movq	%rax, %rdi	# tmp109,
	call	strlen@PLT	#
# problem135.c:6:     int len = strlen(txt);
	movl	%eax, -4(%rbp)	# _1, len
# problem135.c:7:     if (len == 0) return 0;
	cmpl	$0, -4(%rbp)	#, len
	jne	.L2	#,
# problem135.c:7:     if (len == 0) return 0;
	movl	$0, %eax	#, _26
# problem135.c:7:     if (len == 0) return 0;
	jmp	.L3	#
.L2:
# problem135.c:8:     char last_char = txt[len - 1];
	movl	-4(%rbp), %eax	# len, tmp110
	cltq
	leaq	-1(%rax), %rdx	#, _3
	movq	-24(%rbp), %rax	# txt, tmp111
	addq	%rdx, %rax	# _3, _4
# problem135.c:8:     char last_char = txt[len - 1];
	movzbl	(%rax), %eax	# *_4, tmp112
	movb	%al, -6(%rbp)	# tmp112, last_char
# problem135.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	call	__ctype_b_loc@PLT	#
# problem135.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	movq	(%rax), %rax	# *_5, _6
	movzbl	-6(%rbp), %edx	# last_char, last_char.0_7
	movzbl	%dl, %edx	# last_char.0_7, _8
	addq	%rdx, %rdx	# _9
	addq	%rdx, %rax	# _9, _10
	movzwl	(%rax), %eax	# *_10, _11
	movzwl	%ax, %eax	# _11, _12
	andl	$1024, %eax	#, _13
# problem135.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	testl	%eax, %eax	# _13
	jne	.L4	#,
# problem135.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	movl	$0, %eax	#, _26
# problem135.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	jmp	.L3	#
.L4:
# problem135.c:10:     if (len == 1) return 1;
	cmpl	$1, -4(%rbp)	#, len
	jne	.L5	#,
# problem135.c:10:     if (len == 1) return 1;
	movl	$1, %eax	#, _26
# problem135.c:10:     if (len == 1) return 1;
	jmp	.L3	#
.L5:
# problem135.c:11:     char second_last_char = txt[len - 2];
	movl	-4(%rbp), %eax	# len, tmp113
	cltq
	leaq	-2(%rax), %rdx	#, _15
	movq	-24(%rbp), %rax	# txt, tmp114
	addq	%rdx, %rax	# _15, _16
# problem135.c:11:     char second_last_char = txt[len - 2];
	movzbl	(%rax), %eax	# *_16, tmp115
	movb	%al, -5(%rbp)	# tmp115, second_last_char
# problem135.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	call	__ctype_b_loc@PLT	#
# problem135.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	movq	(%rax), %rax	# *_17, _18
	movzbl	-5(%rbp), %edx	# second_last_char, second_last_char.1_19
	movzbl	%dl, %edx	# second_last_char.1_19, _20
	addq	%rdx, %rdx	# _21
	addq	%rdx, %rax	# _21, _22
	movzwl	(%rax), %eax	# *_22, _23
	movzwl	%ax, %eax	# _23, _24
	andl	$1024, %eax	#, _25
# problem135.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	testl	%eax, %eax	# _25
	je	.L6	#,
# problem135.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	movl	$0, %eax	#, _26
# problem135.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	jmp	.L3	#
.L6:
# problem135.c:13:     return 1;
	movl	$1, %eax	#, _26
.L3:
# problem135.c:14: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"apple"
.LC1:
	.string	"problem135.c"
.LC2:
	.string	"func0(\"apple\") == 0"
.LC3:
	.string	"apple pi e"
.LC4:
	.string	"func0(\"apple pi e\") == 1"
.LC5:
	.string	"eeeee"
.LC6:
	.string	"func0(\"eeeee\") == 0"
.LC7:
	.string	"A"
.LC8:
	.string	"func0(\"A\") == 1"
.LC9:
	.string	"Pumpkin pie "
.LC10:
	.string	"func0(\"Pumpkin pie \") == 0"
.LC11:
	.string	"Pumpkin pie 1"
.LC12:
	.string	"func0(\"Pumpkin pie 1\") == 0"
.LC13:
	.string	""
.LC14:
	.string	"func0(\"\") == 0"
.LC15:
	.string	"eeeee e "
.LC16:
	.string	"func0(\"eeeee e \") == 0"
.LC17:
	.string	"apple pie"
.LC18:
	.string	"func0(\"apple pie\") == 0"
.LC19:
	.string	"apple pi e "
.LC20:
	.string	"func0(\"apple pi e \") == 0"
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
# problem135.c:21:     assert(func0("apple") == 0);
	leaq	.LC0(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	func0	#
# problem135.c:21:     assert(func0("apple") == 0);
	testl	%eax, %eax	# _1
	je	.L8	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$21, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC2(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L8:
# problem135.c:22:     assert(func0("apple pi e") == 1);
	leaq	.LC3(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	func0	#
# problem135.c:22:     assert(func0("apple pi e") == 1);
	cmpl	$1, %eax	#, _2
	je	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp99
	movq	%rax, %rcx	# tmp99,
	movl	$22, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp100
	movq	%rax, %rsi	# tmp100,
	leaq	.LC4(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	__assert_fail@PLT	#
.L9:
# problem135.c:23:     assert(func0("eeeee") == 0);
	leaq	.LC5(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	func0	#
# problem135.c:23:     assert(func0("eeeee") == 0);
	testl	%eax, %eax	# _3
	je	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$23, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC6(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	__assert_fail@PLT	#
.L10:
# problem135.c:24:     assert(func0("A") == 1);
	leaq	.LC7(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	func0	#
# problem135.c:24:     assert(func0("A") == 1);
	cmpl	$1, %eax	#, _4
	je	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$24, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC8(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L11:
# problem135.c:25:     assert(func0("Pumpkin pie ") == 0);
	leaq	.LC9(%rip), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	call	func0	#
# problem135.c:25:     assert(func0("Pumpkin pie ") == 0);
	testl	%eax, %eax	# _5
	je	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp111
	movq	%rax, %rcx	# tmp111,
	movl	$25, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	leaq	.LC10(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	__assert_fail@PLT	#
.L12:
# problem135.c:26:     assert(func0("Pumpkin pie 1") == 0);
	leaq	.LC11(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	func0	#
# problem135.c:26:     assert(func0("Pumpkin pie 1") == 0);
	testl	%eax, %eax	# _6
	je	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp115
	movq	%rax, %rcx	# tmp115,
	movl	$26, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp116
	movq	%rax, %rsi	# tmp116,
	leaq	.LC12(%rip), %rax	#, tmp117
	movq	%rax, %rdi	# tmp117,
	call	__assert_fail@PLT	#
.L13:
# problem135.c:27:     assert(func0("") == 0);
	leaq	.LC13(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	func0	#
# problem135.c:27:     assert(func0("") == 0);
	testl	%eax, %eax	# _7
	je	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp119
	movq	%rax, %rcx	# tmp119,
	movl	$27, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp120
	movq	%rax, %rsi	# tmp120,
	leaq	.LC14(%rip), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	call	__assert_fail@PLT	#
.L14:
# problem135.c:28:     assert(func0("eeeee e ") == 0);
	leaq	.LC15(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	call	func0	#
# problem135.c:28:     assert(func0("eeeee e ") == 0);
	testl	%eax, %eax	# _8
	je	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp123
	movq	%rax, %rcx	# tmp123,
	movl	$28, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	leaq	.LC16(%rip), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	call	__assert_fail@PLT	#
.L15:
# problem135.c:29:     assert(func0("apple pie") == 0);
	leaq	.LC17(%rip), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	call	func0	#
# problem135.c:29:     assert(func0("apple pie") == 0);
	testl	%eax, %eax	# _9
	je	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp127
	movq	%rax, %rcx	# tmp127,
	movl	$29, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp128
	movq	%rax, %rsi	# tmp128,
	leaq	.LC18(%rip), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	call	__assert_fail@PLT	#
.L16:
# problem135.c:30:     assert(func0("apple pi e ") == 0);
	leaq	.LC19(%rip), %rax	#, tmp130
	movq	%rax, %rdi	# tmp130,
	call	func0	#
# problem135.c:30:     assert(func0("apple pi e ") == 0);
	testl	%eax, %eax	# _10
	je	.L17	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp131
	movq	%rax, %rcx	# tmp131,
	movl	$30, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp132
	movq	%rax, %rsi	# tmp132,
	leaq	.LC20(%rip), %rax	#, tmp133
	movq	%rax, %rdi	# tmp133,
	call	__assert_fail@PLT	#
.L17:
# problem135.c:32:     return 0;
	movl	$0, %eax	#, _32
# problem135.c:33: }
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
