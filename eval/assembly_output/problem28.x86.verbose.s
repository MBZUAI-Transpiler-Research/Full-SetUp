	.file	"problem28.c"
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
	movq	%rdi, -24(%rbp)	# str, str
	movq	%rsi, -32(%rbp)	# out, out
# problem28.c:5:     int length = strlen(str);
	movq	-24(%rbp), %rax	# str, tmp93
	movq	%rax, %rdi	# tmp93,
	call	strlen@PLT	#
# problem28.c:5:     int length = strlen(str);
	movl	%eax, -4(%rbp)	# _1, length
# problem28.c:6:     for (int i = 0; i < length; i++) {
	movl	$0, -8(%rbp)	#, i
# problem28.c:6:     for (int i = 0; i < length; i++) {
	jmp	.L2	#
.L5:
# problem28.c:7:         char w = str[i];
	movl	-8(%rbp), %eax	# i, tmp94
	movslq	%eax, %rdx	# tmp94, _2
	movq	-24(%rbp), %rax	# str, tmp95
	addq	%rdx, %rax	# _2, _3
# problem28.c:7:         char w = str[i];
	movzbl	(%rax), %eax	# *_3, tmp96
	movb	%al, -9(%rbp)	# tmp96, w
# problem28.c:8:         if (w >= 'a' && w <= 'z') {
	cmpb	$96, -9(%rbp)	#, w
	jle	.L3	#,
# problem28.c:8:         if (w >= 'a' && w <= 'z') {
	cmpb	$122, -9(%rbp)	#, w
	jg	.L3	#,
# problem28.c:9:             w -= 32;
	movzbl	-9(%rbp), %eax	# w, w.0_4
	subl	$32, %eax	#, _5
	movb	%al, -9(%rbp)	# _5, w
	jmp	.L4	#
.L3:
# problem28.c:10:         } else if (w >= 'A' && w <= 'Z') {
	cmpb	$64, -9(%rbp)	#, w
	jle	.L4	#,
# problem28.c:10:         } else if (w >= 'A' && w <= 'Z') {
	cmpb	$90, -9(%rbp)	#, w
	jg	.L4	#,
# problem28.c:11:             w += 32;
	movzbl	-9(%rbp), %eax	# w, w.1_6
	addl	$32, %eax	#, _7
	movb	%al, -9(%rbp)	# _7, w
.L4:
# problem28.c:13:         out[i] = w;
	movl	-8(%rbp), %eax	# i, tmp97
	movslq	%eax, %rdx	# tmp97, _8
	movq	-32(%rbp), %rax	# out, tmp98
	addq	%rax, %rdx	# tmp98, _9
# problem28.c:13:         out[i] = w;
	movzbl	-9(%rbp), %eax	# w, tmp99
	movb	%al, (%rdx)	# tmp99, *_9
# problem28.c:6:     for (int i = 0; i < length; i++) {
	addl	$1, -8(%rbp)	#, i
.L2:
# problem28.c:6:     for (int i = 0; i < length; i++) {
	movl	-8(%rbp), %eax	# i, tmp100
	cmpl	-4(%rbp), %eax	# length, tmp100
	jl	.L5	#,
# problem28.c:15:     out[length] = '\0';
	movl	-4(%rbp), %eax	# length, tmp101
	movslq	%eax, %rdx	# tmp101, _10
	movq	-32(%rbp), %rax	# out, tmp102
	addq	%rdx, %rax	# _10, _11
# problem28.c:15:     out[length] = '\0';
	movb	$0, (%rax)	#, *_11
# problem28.c:16: }
	nop	
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
	.string	"problem28.c"
.LC2:
	.string	"strcmp(result, \"\") == 0"
.LC3:
	.string	"Hello!"
.LC4:
	.string	"hELLO!"
.LC5:
	.string	"strcmp(result, \"hELLO!\") == 0"
	.align 8
.LC6:
	.string	"These violent delights have violent ends"
	.align 8
.LC7:
	.string	"tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS"
	.align 8
.LC8:
	.string	"strcmp(result, \"tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS\") == 0"
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
# problem28.c:23: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp108
	movq	%rax, -8(%rbp)	# tmp108, D.3443
	xorl	%eax, %eax	# tmp108
# problem28.c:26:     func0("", result);
	leaq	-112(%rbp), %rax	#, tmp88
	movq	%rax, %rsi	# tmp88,
	leaq	.LC0(%rip), %rax	#, tmp89
	movq	%rax, %rdi	# tmp89,
	call	func0	#
# problem28.c:27:     assert(strcmp(result, "") == 0);
	movzbl	-112(%rbp), %eax	# MEM[(const unsigned char * {ref-all})&result], _6
	movzbl	%al, %eax	# _6, _1
	testl	%eax, %eax	# _1
	je	.L7	#,
# problem28.c:27:     assert(strcmp(result, "") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp90
	movq	%rax, %rcx	# tmp90,
	movl	$27, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp91
	movq	%rax, %rsi	# tmp91,
	leaq	.LC2(%rip), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	__assert_fail@PLT	#
.L7:
# problem28.c:29:     func0("Hello!", result);
	leaq	-112(%rbp), %rax	#, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC3(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	func0	#
# problem28.c:30:     assert(strcmp(result, "hELLO!") == 0);
	leaq	-112(%rbp), %rax	#, tmp95
	leaq	.LC4(%rip), %rdx	#, tmp96
	movq	%rdx, %rsi	# tmp96,
	movq	%rax, %rdi	# tmp95,
	call	strcmp@PLT	#
# problem28.c:30:     assert(strcmp(result, "hELLO!") == 0);
	testl	%eax, %eax	# _2
	je	.L8	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp97
	movq	%rax, %rcx	# tmp97,
	movl	$30, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC5(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	__assert_fail@PLT	#
.L8:
# problem28.c:32:     func0("These violent delights have violent ends", result);
	leaq	-112(%rbp), %rax	#, tmp100
	movq	%rax, %rsi	# tmp100,
	leaq	.LC6(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	func0	#
# problem28.c:33:     assert(strcmp(result, "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS") == 0);
	leaq	-112(%rbp), %rax	#, tmp102
	leaq	.LC7(%rip), %rdx	#, tmp103
	movq	%rdx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp102,
	call	strcmp@PLT	#
# problem28.c:33:     assert(strcmp(result, "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS") == 0);
	testl	%eax, %eax	# _3
	je	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$33, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC8(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L9:
# problem28.c:35:     return 0;
	movl	$0, %eax	#, _12
# problem28.c:36: }
	movq	-8(%rbp), %rdx	# D.3443, tmp109
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp109
	je	.L11	#,
	call	__stack_chk_fail@PLT	#
.L11:
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
