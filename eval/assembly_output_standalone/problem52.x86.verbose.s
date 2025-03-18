	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"AEIOUaeiou"
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# text, text
# eval/problem52//code.c:6:     const char *vowels = "AEIOUaeiou";
	leaq	.LC0(%rip), %rax	#, tmp88
	movq	%rax, -8(%rbp)	# tmp88, vowels
# eval/problem52//code.c:7:     char *out = text;
	movq	-24(%rbp), %rax	# text, tmp89
	movq	%rax, -16(%rbp)	# tmp89, out
# eval/problem52//code.c:8:     while (*text != '\0') {
	jmp	.L2	#
.L4:
# eval/problem52//code.c:9:         if (strchr(vowels, *text) == NULL) {
	movq	-24(%rbp), %rax	# text, tmp90
	movzbl	(%rax), %eax	# *text_7, _1
# eval/problem52//code.c:9:         if (strchr(vowels, *text) == NULL) {
	movsbl	%al, %edx	# _1, _2
	movq	-8(%rbp), %rax	# vowels, tmp91
	movl	%edx, %esi	# _2,
	movq	%rax, %rdi	# tmp91,
	call	strchr@PLT	#
# eval/problem52//code.c:9:         if (strchr(vowels, *text) == NULL) {
	testq	%rax, %rax	# _3
	jne	.L3	#,
# eval/problem52//code.c:10:             *out++ = *text;
	movq	-16(%rbp), %rax	# out, out.0_4
	leaq	1(%rax), %rdx	#, tmp92
	movq	%rdx, -16(%rbp)	# tmp92, out
# eval/problem52//code.c:10:             *out++ = *text;
	movq	-24(%rbp), %rdx	# text, tmp93
	movzbl	(%rdx), %edx	# *text_7, _5
# eval/problem52//code.c:10:             *out++ = *text;
	movb	%dl, (%rax)	# _5, *out.0_4
.L3:
# eval/problem52//code.c:12:         text++;
	addq	$1, -24(%rbp)	#, text
.L2:
# eval/problem52//code.c:8:     while (*text != '\0') {
	movq	-24(%rbp), %rax	# text, tmp94
	movzbl	(%rax), %eax	# *text_7, _6
# eval/problem52//code.c:8:     while (*text != '\0') {
	testb	%al, %al	# _6
	jne	.L4	#,
# eval/problem52//code.c:14:     *out = '\0';
	movq	-16(%rbp), %rax	# out, tmp95
	movb	$0, (%rax)	#, *out_9
# eval/problem52//code.c:15: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
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
