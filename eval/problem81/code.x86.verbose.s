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
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# s, s
# code.c:5:     if (strlen(s) < 3) return false;
	movq	-40(%rbp), %rax	# s, tmp101
	movq	%rax, %rdi	# tmp101,
	call	strlen@PLT	#
# code.c:5:     if (strlen(s) < 3) return false;
	cmpq	$2, %rax	#, _1
	ja	.L2	#,
# code.c:5:     if (strlen(s) < 3) return false;
	movl	$0, %eax	#, _19
# code.c:5:     if (strlen(s) < 3) return false;
	jmp	.L3	#
.L2:
# code.c:6:     for (int i = 2; i < strlen(s); i++)
	movl	$2, -20(%rbp)	#, i
# code.c:6:     for (int i = 2; i < strlen(s); i++)
	jmp	.L4	#
.L7:
# code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	movl	-20(%rbp), %eax	# i, tmp102
	movslq	%eax, %rdx	# tmp102, _2
	movq	-40(%rbp), %rax	# s, tmp103
	addq	%rdx, %rax	# _2, _3
	movzbl	(%rax), %edx	# *_3, _4
# code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	movl	-20(%rbp), %eax	# i, tmp104
	cltq
	leaq	-1(%rax), %rcx	#, _6
	movq	-40(%rbp), %rax	# s, tmp105
	addq	%rcx, %rax	# _6, _7
	movzbl	(%rax), %eax	# *_7, _8
# code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	cmpb	%al, %dl	# _8, _4
	je	.L5	#,
# code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	movl	-20(%rbp), %eax	# i, tmp106
	movslq	%eax, %rdx	# tmp106, _9
	movq	-40(%rbp), %rax	# s, tmp107
	addq	%rdx, %rax	# _9, _10
	movzbl	(%rax), %edx	# *_10, _11
# code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	movl	-20(%rbp), %eax	# i, tmp108
	cltq
	leaq	-2(%rax), %rcx	#, _13
	movq	-40(%rbp), %rax	# s, tmp109
	addq	%rcx, %rax	# _13, _14
	movzbl	(%rax), %eax	# *_14, _15
# code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	cmpb	%al, %dl	# _15, _11
	jne	.L6	#,
.L5:
# code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	movl	$0, %eax	#, _19
# code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	jmp	.L3	#
.L6:
# code.c:6:     for (int i = 2; i < strlen(s); i++)
	addl	$1, -20(%rbp)	#, i
.L4:
# code.c:6:     for (int i = 2; i < strlen(s); i++)
	movl	-20(%rbp), %eax	# i, tmp110
	movslq	%eax, %rbx	# tmp110, _16
# code.c:6:     for (int i = 2; i < strlen(s); i++)
	movq	-40(%rbp), %rax	# s, tmp111
	movq	%rax, %rdi	# tmp111,
	call	strlen@PLT	#
# code.c:6:     for (int i = 2; i < strlen(s); i++)
	cmpq	%rax, %rbx	# _17, _16
	jb	.L7	#,
# code.c:8:     return true;
	movl	$1, %eax	#, _19
.L3:
# code.c:9: }
	movq	-8(%rbp), %rbx	#,
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
