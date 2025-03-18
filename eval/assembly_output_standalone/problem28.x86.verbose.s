	.file	"code.c"
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
# eval/problem28//code.c:5:     int length = strlen(str);
	movq	-24(%rbp), %rax	# str, tmp93
	movq	%rax, %rdi	# tmp93,
	call	strlen@PLT	#
# eval/problem28//code.c:5:     int length = strlen(str);
	movl	%eax, -4(%rbp)	# _1, length
# eval/problem28//code.c:6:     for (int i = 0; i < length; i++) {
	movl	$0, -8(%rbp)	#, i
# eval/problem28//code.c:6:     for (int i = 0; i < length; i++) {
	jmp	.L2	#
.L5:
# eval/problem28//code.c:7:         char w = str[i];
	movl	-8(%rbp), %eax	# i, tmp94
	movslq	%eax, %rdx	# tmp94, _2
	movq	-24(%rbp), %rax	# str, tmp95
	addq	%rdx, %rax	# _2, _3
# eval/problem28//code.c:7:         char w = str[i];
	movzbl	(%rax), %eax	# *_3, tmp96
	movb	%al, -9(%rbp)	# tmp96, w
# eval/problem28//code.c:8:         if (w >= 'a' && w <= 'z') {
	cmpb	$96, -9(%rbp)	#, w
	jle	.L3	#,
# eval/problem28//code.c:8:         if (w >= 'a' && w <= 'z') {
	cmpb	$122, -9(%rbp)	#, w
	jg	.L3	#,
# eval/problem28//code.c:9:             w -= 32;
	movzbl	-9(%rbp), %eax	# w, w.0_4
	subl	$32, %eax	#, _5
	movb	%al, -9(%rbp)	# _5, w
	jmp	.L4	#
.L3:
# eval/problem28//code.c:10:         } else if (w >= 'A' && w <= 'Z') {
	cmpb	$64, -9(%rbp)	#, w
	jle	.L4	#,
# eval/problem28//code.c:10:         } else if (w >= 'A' && w <= 'Z') {
	cmpb	$90, -9(%rbp)	#, w
	jg	.L4	#,
# eval/problem28//code.c:11:             w += 32;
	movzbl	-9(%rbp), %eax	# w, w.1_6
	addl	$32, %eax	#, _7
	movb	%al, -9(%rbp)	# _7, w
.L4:
# eval/problem28//code.c:13:         out[i] = w;
	movl	-8(%rbp), %eax	# i, tmp97
	movslq	%eax, %rdx	# tmp97, _8
	movq	-32(%rbp), %rax	# out, tmp98
	addq	%rax, %rdx	# tmp98, _9
# eval/problem28//code.c:13:         out[i] = w;
	movzbl	-9(%rbp), %eax	# w, tmp99
	movb	%al, (%rdx)	# tmp99, *_9
# eval/problem28//code.c:6:     for (int i = 0; i < length; i++) {
	addl	$1, -8(%rbp)	#, i
.L2:
# eval/problem28//code.c:6:     for (int i = 0; i < length; i++) {
	movl	-8(%rbp), %eax	# i, tmp100
	cmpl	-4(%rbp), %eax	# length, tmp100
	jl	.L5	#,
# eval/problem28//code.c:15:     out[length] = '\0';
	movl	-4(%rbp), %eax	# length, tmp101
	movslq	%eax, %rdx	# tmp101, _10
	movq	-32(%rbp), %rax	# out, tmp102
	addq	%rdx, %rax	# _10, _11
# eval/problem28//code.c:15:     out[length] = '\0';
	movb	$0, (%rax)	#, *_11
# eval/problem28//code.c:16: }
	nop	
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
