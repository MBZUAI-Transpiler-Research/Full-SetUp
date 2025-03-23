	.file	"problem141.c"
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
	movq	%rdi, -40(%rbp)	# text, text
	movq	%rsi, -48(%rbp)	# out, out
# problem141.c:5:     int space_len = 0;
	movl	$0, -28(%rbp)	#, space_len
# problem141.c:6:     int j = 0;
	movl	$0, -24(%rbp)	#, j
# problem141.c:7:     for (int i = 0; i < strlen(text); i++) {
	movl	$0, -20(%rbp)	#, i
# problem141.c:7:     for (int i = 0; i < strlen(text); i++) {
	jmp	.L2	#
.L8:
# problem141.c:8:         if (text[i] == ' ') {
	movl	-20(%rbp), %eax	# i, tmp119
	movslq	%eax, %rdx	# tmp119, _1
	movq	-40(%rbp), %rax	# text, tmp120
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
# problem141.c:8:         if (text[i] == ' ') {
	cmpb	$32, %al	#, _3
	jne	.L3	#,
# problem141.c:9:             space_len++;
	addl	$1, -28(%rbp)	#, space_len
	jmp	.L4	#
.L3:
# problem141.c:11:             if (space_len == 1) out[j++] = '_';
	cmpl	$1, -28(%rbp)	#, space_len
	jne	.L5	#,
# problem141.c:11:             if (space_len == 1) out[j++] = '_';
	movl	-24(%rbp), %eax	# j, j.0_4
	leal	1(%rax), %edx	#, tmp121
	movl	%edx, -24(%rbp)	# tmp121, j
	movslq	%eax, %rdx	# j.0_4, _5
# problem141.c:11:             if (space_len == 1) out[j++] = '_';
	movq	-48(%rbp), %rax	# out, tmp122
	addq	%rdx, %rax	# _5, _6
# problem141.c:11:             if (space_len == 1) out[j++] = '_';
	movb	$95, (%rax)	#, *_6
.L5:
# problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	cmpl	$2, -28(%rbp)	#, space_len
	jne	.L6	#,
# problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movl	-24(%rbp), %eax	# j, j.1_7
	leal	1(%rax), %edx	#, tmp123
	movl	%edx, -24(%rbp)	# tmp123, j
	movslq	%eax, %rdx	# j.1_7, _8
# problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movq	-48(%rbp), %rax	# out, tmp124
	addq	%rdx, %rax	# _8, _9
# problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movb	$95, (%rax)	#, *_9
# problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movl	-24(%rbp), %eax	# j, j.2_10
	leal	1(%rax), %edx	#, tmp125
	movl	%edx, -24(%rbp)	# tmp125, j
	movslq	%eax, %rdx	# j.2_10, _11
# problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movq	-48(%rbp), %rax	# out, tmp126
	addq	%rdx, %rax	# _11, _12
# problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movb	$95, (%rax)	#, *_12
.L6:
# problem141.c:13:             if (space_len > 2) out[j++] = '-';
	cmpl	$2, -28(%rbp)	#, space_len
	jle	.L7	#,
# problem141.c:13:             if (space_len > 2) out[j++] = '-';
	movl	-24(%rbp), %eax	# j, j.3_13
	leal	1(%rax), %edx	#, tmp127
	movl	%edx, -24(%rbp)	# tmp127, j
	movslq	%eax, %rdx	# j.3_13, _14
# problem141.c:13:             if (space_len > 2) out[j++] = '-';
	movq	-48(%rbp), %rax	# out, tmp128
	addq	%rdx, %rax	# _14, _15
# problem141.c:13:             if (space_len > 2) out[j++] = '-';
	movb	$45, (%rax)	#, *_15
.L7:
# problem141.c:14:             space_len = 0;
	movl	$0, -28(%rbp)	#, space_len
# problem141.c:15:             out[j++] = text[i];
	movl	-20(%rbp), %eax	# i, tmp129
	movslq	%eax, %rdx	# tmp129, _16
	movq	-40(%rbp), %rax	# text, tmp130
	leaq	(%rdx,%rax), %rcx	#, _17
# problem141.c:15:             out[j++] = text[i];
	movl	-24(%rbp), %eax	# j, j.4_18
	leal	1(%rax), %edx	#, tmp131
	movl	%edx, -24(%rbp)	# tmp131, j
	movslq	%eax, %rdx	# j.4_18, _19
# problem141.c:15:             out[j++] = text[i];
	movq	-48(%rbp), %rax	# out, tmp132
	addq	%rax, %rdx	# tmp132, _20
# problem141.c:15:             out[j++] = text[i];
	movzbl	(%rcx), %eax	# *_17, _21
# problem141.c:15:             out[j++] = text[i];
	movb	%al, (%rdx)	# _21, *_20
.L4:
# problem141.c:7:     for (int i = 0; i < strlen(text); i++) {
	addl	$1, -20(%rbp)	#, i
.L2:
# problem141.c:7:     for (int i = 0; i < strlen(text); i++) {
	movl	-20(%rbp), %eax	# i, tmp133
	movslq	%eax, %rbx	# tmp133, _22
# problem141.c:7:     for (int i = 0; i < strlen(text); i++) {
	movq	-40(%rbp), %rax	# text, tmp134
	movq	%rax, %rdi	# tmp134,
	call	strlen@PLT	#
# problem141.c:7:     for (int i = 0; i < strlen(text); i++) {
	cmpq	%rax, %rbx	# _23, _22
	jb	.L8	#,
# problem141.c:18:     if (space_len == 1) out[j++] = '_';
	cmpl	$1, -28(%rbp)	#, space_len
	jne	.L9	#,
# problem141.c:18:     if (space_len == 1) out[j++] = '_';
	movl	-24(%rbp), %eax	# j, j.5_24
	leal	1(%rax), %edx	#, tmp135
	movl	%edx, -24(%rbp)	# tmp135, j
	movslq	%eax, %rdx	# j.5_24, _25
# problem141.c:18:     if (space_len == 1) out[j++] = '_';
	movq	-48(%rbp), %rax	# out, tmp136
	addq	%rdx, %rax	# _25, _26
# problem141.c:18:     if (space_len == 1) out[j++] = '_';
	movb	$95, (%rax)	#, *_26
.L9:
# problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	cmpl	$2, -28(%rbp)	#, space_len
	jne	.L10	#,
# problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movl	-24(%rbp), %eax	# j, j.6_27
	leal	1(%rax), %edx	#, tmp137
	movl	%edx, -24(%rbp)	# tmp137, j
	movslq	%eax, %rdx	# j.6_27, _28
# problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movq	-48(%rbp), %rax	# out, tmp138
	addq	%rdx, %rax	# _28, _29
# problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movb	$95, (%rax)	#, *_29
# problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movl	-24(%rbp), %eax	# j, j.7_30
	leal	1(%rax), %edx	#, tmp139
	movl	%edx, -24(%rbp)	# tmp139, j
	movslq	%eax, %rdx	# j.7_30, _31
# problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movq	-48(%rbp), %rax	# out, tmp140
	addq	%rdx, %rax	# _31, _32
# problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movb	$95, (%rax)	#, *_32
.L10:
# problem141.c:20:     if (space_len > 2) out[j++] = '-';
	cmpl	$2, -28(%rbp)	#, space_len
	jle	.L11	#,
# problem141.c:20:     if (space_len > 2) out[j++] = '-';
	movl	-24(%rbp), %eax	# j, j.8_33
	leal	1(%rax), %edx	#, tmp141
	movl	%edx, -24(%rbp)	# tmp141, j
	movslq	%eax, %rdx	# j.8_33, _34
# problem141.c:20:     if (space_len > 2) out[j++] = '-';
	movq	-48(%rbp), %rax	# out, tmp142
	addq	%rdx, %rax	# _34, _35
# problem141.c:20:     if (space_len > 2) out[j++] = '-';
	movb	$45, (%rax)	#, *_35
.L11:
# problem141.c:21:     out[j] = '\0';
	movl	-24(%rbp), %eax	# j, tmp143
	movslq	%eax, %rdx	# tmp143, _36
	movq	-48(%rbp), %rax	# out, tmp144
	addq	%rdx, %rax	# _36, _37
# problem141.c:21:     out[j] = '\0';
	movb	$0, (%rax)	#, *_37
# problem141.c:22: }
	nop	
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"Example"
.LC1:
	.string	"problem141.c"
	.align 8
.LC2:
	.string	"strcmp(output, \"Example\") == 0"
.LC3:
	.string	"Mudasir Hanif "
.LC4:
	.string	"Mudasir_Hanif_"
	.align 8
.LC5:
	.string	"strcmp(output, \"Mudasir_Hanif_\") == 0"
.LC6:
	.string	"Yellow Yellow  Dirty  Fellow"
.LC7:
	.string	"Yellow_Yellow__Dirty__Fellow"
	.align 8
.LC8:
	.string	"strcmp(output, \"Yellow_Yellow__Dirty__Fellow\") == 0"
.LC9:
	.string	"Exa   mple"
.LC10:
	.string	"Exa-mple"
	.align 8
.LC11:
	.string	"strcmp(output, \"Exa-mple\") == 0"
.LC12:
	.string	"   Exa 1 2 2 mple"
.LC13:
	.string	"-Exa_1_2_2_mple"
	.align 8
.LC14:
	.string	"strcmp(output, \"-Exa_1_2_2_mple\") == 0"
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
	subq	$112, %rsp	#,
# problem141.c:29: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp125
	movq	%rax, -8(%rbp)	# tmp125, D.2598
	xorl	%eax, %eax	# tmp125
# problem141.c:32:     func0("Example", output);
	leaq	-112(%rbp), %rax	#, tmp89
	movq	%rax, %rsi	# tmp89,
	leaq	.LC0(%rip), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	call	func0	#
# problem141.c:33:     assert(strcmp(output, "Example") == 0);
	leaq	-112(%rbp), %rax	#, tmp91
	leaq	.LC0(%rip), %rdx	#, tmp92
	movq	%rdx, %rsi	# tmp92,
	movq	%rax, %rdi	# tmp91,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _1
	je	.L13	#,
# problem141.c:33:     assert(strcmp(output, "Example") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp93
	movq	%rax, %rcx	# tmp93,
	movl	$33, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp94
	movq	%rax, %rsi	# tmp94,
	leaq	.LC2(%rip), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	__assert_fail@PLT	#
.L13:
# problem141.c:35:     func0("Mudasir Hanif ", output);
	leaq	-112(%rbp), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC3(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	func0	#
# problem141.c:36:     assert(strcmp(output, "Mudasir_Hanif_") == 0);
	leaq	-112(%rbp), %rax	#, tmp98
	leaq	.LC4(%rip), %rdx	#, tmp99
	movq	%rdx, %rsi	# tmp99,
	movq	%rax, %rdi	# tmp98,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _2
	je	.L14	#,
# problem141.c:36:     assert(strcmp(output, "Mudasir_Hanif_") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$36, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC5(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L14:
# problem141.c:38:     func0("Yellow Yellow  Dirty  Fellow", output);
	leaq	-112(%rbp), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	leaq	.LC6(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	func0	#
# problem141.c:39:     assert(strcmp(output, "Yellow_Yellow__Dirty__Fellow") == 0);
	leaq	-112(%rbp), %rax	#, tmp105
	leaq	.LC7(%rip), %rdx	#, tmp106
	movq	%rdx, %rsi	# tmp106,
	movq	%rax, %rdi	# tmp105,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _3
	je	.L15	#,
# problem141.c:39:     assert(strcmp(output, "Yellow_Yellow__Dirty__Fellow") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$39, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC8(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L15:
# problem141.c:41:     func0("Exa   mple", output);
	leaq	-112(%rbp), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC9(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	func0	#
# problem141.c:42:     assert(strcmp(output, "Exa-mple") == 0);
	leaq	-112(%rbp), %rax	#, tmp112
	leaq	.LC10(%rip), %rdx	#, tmp113
	movq	%rdx, %rsi	# tmp113,
	movq	%rax, %rdi	# tmp112,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _4
	je	.L16	#,
# problem141.c:42:     assert(strcmp(output, "Exa-mple") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp114
	movq	%rax, %rcx	# tmp114,
	movl	$42, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp115
	movq	%rax, %rsi	# tmp115,
	leaq	.LC11(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	__assert_fail@PLT	#
.L16:
# problem141.c:44:     func0("   Exa 1 2 2 mple", output);
	leaq	-112(%rbp), %rax	#, tmp117
	movq	%rax, %rsi	# tmp117,
	leaq	.LC12(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	func0	#
# problem141.c:45:     assert(strcmp(output, "-Exa_1_2_2_mple") == 0);
	leaq	-112(%rbp), %rax	#, tmp119
	leaq	.LC13(%rip), %rdx	#, tmp120
	movq	%rdx, %rsi	# tmp120,
	movq	%rax, %rdi	# tmp119,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _5
	je	.L17	#,
# problem141.c:45:     assert(strcmp(output, "-Exa_1_2_2_mple") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp121
	movq	%rax, %rcx	# tmp121,
	movl	$45, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp122
	movq	%rax, %rsi	# tmp122,
	leaq	.LC14(%rip), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	__assert_fail@PLT	#
.L17:
# problem141.c:47:     return 0;
	movl	$0, %eax	#, _17
# problem141.c:48: }
	movq	-8(%rbp), %rdx	# D.2598, tmp126
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp126
	je	.L19	#,
	call	__stack_chk_fail@PLT	#
.L19:
	leave	
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
