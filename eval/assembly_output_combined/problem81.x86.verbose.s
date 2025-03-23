	.file	"problem81.c"
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
	movq	%rdi, -40(%rbp)	# s, s
# problem81.c:5:     if (strlen(s) < 3) return false;
	movq	-40(%rbp), %rax	# s, tmp101
	movq	%rax, %rdi	# tmp101,
	call	strlen@PLT	#
# problem81.c:5:     if (strlen(s) < 3) return false;
	cmpq	$2, %rax	#, _1
	ja	.L2	#,
# problem81.c:5:     if (strlen(s) < 3) return false;
	movl	$0, %eax	#, _19
	jmp	.L3	#
.L2:
# problem81.c:6:     for (int i = 2; i < strlen(s); i++)
	movl	$2, -20(%rbp)	#, i
# problem81.c:6:     for (int i = 2; i < strlen(s); i++)
	jmp	.L4	#
.L7:
# problem81.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	movl	-20(%rbp), %eax	# i, tmp102
	movslq	%eax, %rdx	# tmp102, _2
	movq	-40(%rbp), %rax	# s, tmp103
	addq	%rdx, %rax	# _2, _3
	movzbl	(%rax), %edx	# *_3, _4
# problem81.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	movl	-20(%rbp), %eax	# i, tmp104
	cltq
	leaq	-1(%rax), %rcx	#, _6
	movq	-40(%rbp), %rax	# s, tmp105
	addq	%rcx, %rax	# _6, _7
	movzbl	(%rax), %eax	# *_7, _8
# problem81.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	cmpb	%al, %dl	# _8, _4
	je	.L5	#,
# problem81.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	movl	-20(%rbp), %eax	# i, tmp106
	movslq	%eax, %rdx	# tmp106, _9
	movq	-40(%rbp), %rax	# s, tmp107
	addq	%rdx, %rax	# _9, _10
	movzbl	(%rax), %edx	# *_10, _11
# problem81.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	movl	-20(%rbp), %eax	# i, tmp108
	cltq
	leaq	-2(%rax), %rcx	#, _13
	movq	-40(%rbp), %rax	# s, tmp109
	addq	%rcx, %rax	# _13, _14
	movzbl	(%rax), %eax	# *_14, _15
# problem81.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	cmpb	%al, %dl	# _15, _11
	jne	.L6	#,
.L5:
# problem81.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	movl	$0, %eax	#, _19
	jmp	.L3	#
.L6:
# problem81.c:6:     for (int i = 2; i < strlen(s); i++)
	addl	$1, -20(%rbp)	#, i
.L4:
# problem81.c:6:     for (int i = 2; i < strlen(s); i++)
	movl	-20(%rbp), %eax	# i, tmp110
	movslq	%eax, %rbx	# tmp110, _16
# problem81.c:6:     for (int i = 2; i < strlen(s); i++)
	movq	-40(%rbp), %rax	# s, tmp111
	movq	%rax, %rdi	# tmp111,
	call	strlen@PLT	#
# problem81.c:6:     for (int i = 2; i < strlen(s); i++)
	cmpq	%rax, %rbx	# _17, _16
	jb	.L7	#,
# problem81.c:8:     return true;
	movl	$1, %eax	#, _19
.L3:
# problem81.c:9: }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"a"
.LC1:
	.string	"problem81.c"
.LC2:
	.string	"func0(\"a\") == false"
.LC3:
	.string	"aa"
.LC4:
	.string	"func0(\"aa\") == false"
.LC5:
	.string	"abcd"
.LC6:
	.string	"func0(\"abcd\") == true"
.LC7:
	.string	"aabb"
.LC8:
	.string	"func0(\"aabb\") == false"
.LC9:
	.string	"adb"
.LC10:
	.string	"func0(\"adb\") == true"
.LC11:
	.string	"xyy"
.LC12:
	.string	"func0(\"xyy\") == false"
.LC13:
	.string	"iopaxpoi"
.LC14:
	.string	"func0(\"iopaxpoi\") == true"
.LC15:
	.string	"iopaxioi"
.LC16:
	.string	"func0(\"iopaxioi\") == false"
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
# problem81.c:17:     assert(func0("a") == false);
	leaq	.LC0(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	func0	#
	xorl	$1, %eax	#, _2
	testb	%al, %al	# _2
	jne	.L9	#,
# problem81.c:17:     assert(func0("a") == false);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp98
	movq	%rax, %rcx	# tmp98,
	movl	$17, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	leaq	.LC2(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	__assert_fail@PLT	#
.L9:
# problem81.c:18:     assert(func0("aa") == false);
	leaq	.LC3(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	func0	#
	xorl	$1, %eax	#, _4
	testb	%al, %al	# _4
	jne	.L10	#,
# problem81.c:18:     assert(func0("aa") == false);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp102
	movq	%rax, %rcx	# tmp102,
	movl	$18, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	leaq	.LC4(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	__assert_fail@PLT	#
.L10:
# problem81.c:19:     assert(func0("abcd") == true);
	leaq	.LC5(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	func0	#
	testb	%al, %al	# _5
	jne	.L11	#,
# problem81.c:19:     assert(func0("abcd") == true);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp106
	movq	%rax, %rcx	# tmp106,
	movl	$19, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	leaq	.LC6(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	__assert_fail@PLT	#
.L11:
# problem81.c:20:     assert(func0("aabb") == false);
	leaq	.LC7(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	func0	#
	xorl	$1, %eax	#, _7
	testb	%al, %al	# _7
	jne	.L12	#,
# problem81.c:20:     assert(func0("aabb") == false);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp110
	movq	%rax, %rcx	# tmp110,
	movl	$20, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp111
	movq	%rax, %rsi	# tmp111,
	leaq	.LC8(%rip), %rax	#, tmp112
	movq	%rax, %rdi	# tmp112,
	call	__assert_fail@PLT	#
.L12:
# problem81.c:21:     assert(func0("adb") == true);
	leaq	.LC9(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	func0	#
	testb	%al, %al	# _8
	jne	.L13	#,
# problem81.c:21:     assert(func0("adb") == true);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp114
	movq	%rax, %rcx	# tmp114,
	movl	$21, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp115
	movq	%rax, %rsi	# tmp115,
	leaq	.LC10(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	__assert_fail@PLT	#
.L13:
# problem81.c:22:     assert(func0("xyy") == false);
	leaq	.LC11(%rip), %rax	#, tmp117
	movq	%rax, %rdi	# tmp117,
	call	func0	#
	xorl	$1, %eax	#, _10
	testb	%al, %al	# _10
	jne	.L14	#,
# problem81.c:22:     assert(func0("xyy") == false);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp118
	movq	%rax, %rcx	# tmp118,
	movl	$22, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp119
	movq	%rax, %rsi	# tmp119,
	leaq	.LC12(%rip), %rax	#, tmp120
	movq	%rax, %rdi	# tmp120,
	call	__assert_fail@PLT	#
.L14:
# problem81.c:23:     assert(func0("iopaxpoi") == true);
	leaq	.LC13(%rip), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	call	func0	#
	testb	%al, %al	# _11
	jne	.L15	#,
# problem81.c:23:     assert(func0("iopaxpoi") == true);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp122
	movq	%rax, %rcx	# tmp122,
	movl	$23, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp123
	movq	%rax, %rsi	# tmp123,
	leaq	.LC14(%rip), %rax	#, tmp124
	movq	%rax, %rdi	# tmp124,
	call	__assert_fail@PLT	#
.L15:
# problem81.c:24:     assert(func0("iopaxioi") == false);
	leaq	.LC15(%rip), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	call	func0	#
	xorl	$1, %eax	#, _13
	testb	%al, %al	# _13
	jne	.L16	#,
# problem81.c:24:     assert(func0("iopaxioi") == false);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp126
	movq	%rax, %rcx	# tmp126,
	movl	$24, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp127
	movq	%rax, %rsi	# tmp127,
	leaq	.LC16(%rip), %rax	#, tmp128
	movq	%rax, %rdi	# tmp128,
	call	__assert_fail@PLT	#
.L16:
# problem81.c:26:     return 0;
	movl	$0, %eax	#, _31
# problem81.c:27: }
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
