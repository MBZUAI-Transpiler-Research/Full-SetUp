	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
# code.c:6:     int len = strlen(txt);
	movq	-24(%rbp), %rax	# txt, tmp109
	movq	%rax, %rdi	# tmp109,
	call	strlen@PLT	#
# code.c:6:     int len = strlen(txt);
	movl	%eax, -4(%rbp)	# _1, len
# code.c:7:     if (len == 0) return 0;
	cmpl	$0, -4(%rbp)	#, len
	jne	.L2	#,
# code.c:7:     if (len == 0) return 0;
	movl	$0, %eax	#, _26
# code.c:7:     if (len == 0) return 0;
	jmp	.L3	#
.L2:
# code.c:8:     char last_char = txt[len - 1];
	movl	-4(%rbp), %eax	# len, tmp110
	cltq
	leaq	-1(%rax), %rdx	#, _3
	movq	-24(%rbp), %rax	# txt, tmp111
	addq	%rdx, %rax	# _3, _4
# code.c:8:     char last_char = txt[len - 1];
	movzbl	(%rax), %eax	# *_4, tmp112
	movb	%al, -6(%rbp)	# tmp112, last_char
# code.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	call	__ctype_b_loc@PLT	#
# code.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	movq	(%rax), %rax	# *_5, _6
	movzbl	-6(%rbp), %edx	# last_char, last_char.0_7
	movzbl	%dl, %edx	# last_char.0_7, _8
	addq	%rdx, %rdx	# _9
	addq	%rdx, %rax	# _9, _10
	movzwl	(%rax), %eax	# *_10, _11
	movzwl	%ax, %eax	# _11, _12
	andl	$1024, %eax	#, _13
# code.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	testl	%eax, %eax	# _13
	jne	.L4	#,
# code.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	movl	$0, %eax	#, _26
# code.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	jmp	.L3	#
.L4:
# code.c:10:     if (len == 1) return 1;
	cmpl	$1, -4(%rbp)	#, len
	jne	.L5	#,
# code.c:10:     if (len == 1) return 1;
	movl	$1, %eax	#, _26
# code.c:10:     if (len == 1) return 1;
	jmp	.L3	#
.L5:
# code.c:11:     char second_last_char = txt[len - 2];
	movl	-4(%rbp), %eax	# len, tmp113
	cltq
	leaq	-2(%rax), %rdx	#, _15
	movq	-24(%rbp), %rax	# txt, tmp114
	addq	%rdx, %rax	# _15, _16
# code.c:11:     char second_last_char = txt[len - 2];
	movzbl	(%rax), %eax	# *_16, tmp115
	movb	%al, -5(%rbp)	# tmp115, second_last_char
# code.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	call	__ctype_b_loc@PLT	#
# code.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	movq	(%rax), %rax	# *_17, _18
	movzbl	-5(%rbp), %edx	# second_last_char, second_last_char.1_19
	movzbl	%dl, %edx	# second_last_char.1_19, _20
	addq	%rdx, %rdx	# _21
	addq	%rdx, %rax	# _21, _22
	movzwl	(%rax), %eax	# *_22, _23
	movzwl	%ax, %eax	# _23, _24
	andl	$1024, %eax	#, _25
# code.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	testl	%eax, %eax	# _25
	je	.L6	#,
# code.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	movl	$0, %eax	#, _26
# code.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	jmp	.L3	#
.L6:
# code.c:13:     return 1;
	movl	$1, %eax	#, _26
.L3:
# code.c:14: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
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
