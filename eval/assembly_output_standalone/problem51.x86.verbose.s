	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# s, s
	movl	%esi, -44(%rbp)	# encode, encode
# eval/problem51//code.c:6:     int shift = encode ? 5 : 21;
	cmpl	$0, -44(%rbp)	#, encode
	je	.L2	#,
# eval/problem51//code.c:6:     int shift = encode ? 5 : 21;
	movl	$5, %eax	#, iftmp.0_10
	jmp	.L3	#
.L2:
# eval/problem51//code.c:6:     int shift = encode ? 5 : 21;
	movl	$21, %eax	#, iftmp.0_10
.L3:
# eval/problem51//code.c:6:     int shift = encode ? 5 : 21;
	movl	%eax, -24(%rbp)	# iftmp.0_10, shift
# eval/problem51//code.c:7:     size_t len = strlen(s);
	movq	-40(%rbp), %rax	# s, tmp91
	movq	%rax, %rdi	# tmp91,
	call	strlen@PLT	#
	movq	%rax, -8(%rbp)	# tmp92, len
# eval/problem51//code.c:8:     for (size_t i = 0; i < len; i++) {
	movq	$0, -16(%rbp)	#, i
# eval/problem51//code.c:8:     for (size_t i = 0; i < len; i++) {
	jmp	.L4	#
.L5:
# eval/problem51//code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	movq	-40(%rbp), %rdx	# s, tmp93
	movq	-16(%rbp), %rax	# i, tmp94
	addq	%rdx, %rax	# tmp93, _1
	movzbl	(%rax), %eax	# *_1, _2
	movsbl	%al, %eax	# _2, _3
# eval/problem51//code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	leal	-97(%rax), %edx	#, _4
# eval/problem51//code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	movl	-24(%rbp), %eax	# shift, tmp95
	addl	%eax, %edx	# tmp95, _5
# eval/problem51//code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	movslq	%edx, %rax	# _5, tmp96
	imulq	$1321528399, %rax, %rax	#, tmp96, tmp97
	shrq	$32, %rax	#, tmp98
	sarl	$3, %eax	#, tmp99
	movl	%edx, %ecx	# _5, tmp100
	sarl	$31, %ecx	#, tmp100
	subl	%ecx, %eax	# tmp100, _6
	imull	$26, %eax, %ecx	#, _6, tmp101
	movl	%edx, %eax	# _5, _5
	subl	%ecx, %eax	# tmp101, _5
# eval/problem51//code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	addl	$97, %eax	#, tmp102
	movl	%eax, -20(%rbp)	# tmp102, w
# eval/problem51//code.c:10:         s[i] = (char)w;
	movq	-40(%rbp), %rdx	# s, tmp103
	movq	-16(%rbp), %rax	# i, tmp104
	addq	%rdx, %rax	# tmp103, _7
# eval/problem51//code.c:10:         s[i] = (char)w;
	movl	-20(%rbp), %edx	# w, tmp105
# eval/problem51//code.c:10:         s[i] = (char)w;
	movb	%dl, (%rax)	# _8, *_7
# eval/problem51//code.c:8:     for (size_t i = 0; i < len; i++) {
	addq	$1, -16(%rbp)	#, i
.L4:
# eval/problem51//code.c:8:     for (size_t i = 0; i < len; i++) {
	movq	-16(%rbp), %rax	# i, tmp106
	cmpq	-8(%rbp), %rax	# len, tmp106
	jb	.L5	#,
# eval/problem51//code.c:12: }
	nop	
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
