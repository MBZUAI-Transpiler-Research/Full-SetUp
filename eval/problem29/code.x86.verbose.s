	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
	movq	%rdi, -40(%rbp)	# strings, strings
	movl	%esi, -44(%rbp)	# count, count
# code.c:6:     int length = 0;
	movl	$0, -20(%rbp)	#, length
# code.c:7:     for (int i = 0; i < count; i++) {
	movl	$0, -16(%rbp)	#, i
# code.c:7:     for (int i = 0; i < count; i++) {
	jmp	.L2	#
.L3:
# code.c:8:         length += strlen(strings[i]);
	movl	-16(%rbp), %eax	# i, tmp98
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-40(%rbp), %rax	# strings, tmp99
	addq	%rdx, %rax	# _2, _3
# code.c:8:         length += strlen(strings[i]);
	movq	(%rax), %rax	# *_3, _4
	movq	%rax, %rdi	# _4,
	call	strlen@PLT	#
# code.c:8:         length += strlen(strings[i]);
	movl	%eax, %edx	# _5, _6
	movl	-20(%rbp), %eax	# length, length.0_7
	addl	%edx, %eax	# _6, _8
	movl	%eax, -20(%rbp)	# _8, length
# code.c:7:     for (int i = 0; i < count; i++) {
	addl	$1, -16(%rbp)	#, i
.L2:
# code.c:7:     for (int i = 0; i < count; i++) {
	movl	-16(%rbp), %eax	# i, tmp100
	cmpl	-44(%rbp), %eax	# count, tmp100
	jl	.L3	#,
# code.c:11:     char* out = (char*)malloc(length + 1);
	movl	-20(%rbp), %eax	# length, tmp101
	addl	$1, %eax	#, _9
# code.c:11:     char* out = (char*)malloc(length + 1);
	cltq
	movq	%rax, %rdi	# _10,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp102, out
# code.c:12:     if (!out) {
	cmpq	$0, -8(%rbp)	#, out
	jne	.L4	#,
# code.c:13:         return NULL; 
	movl	$0, %eax	#, _18
	jmp	.L5	#
.L4:
# code.c:16:     out[0] = '\0';
	movq	-8(%rbp), %rax	# out, tmp103
	movb	$0, (%rax)	#, *out_26
# code.c:18:     for (int i = 0; i < count; i++) {
	movl	$0, -12(%rbp)	#, i
# code.c:18:     for (int i = 0; i < count; i++) {
	jmp	.L6	#
.L7:
# code.c:19:         strcat(out, strings[i]);
	movl	-12(%rbp), %eax	# i, tmp104
	cltq
	leaq	0(,%rax,8), %rdx	#, _12
	movq	-40(%rbp), %rax	# strings, tmp105
	addq	%rdx, %rax	# _12, _13
# code.c:19:         strcat(out, strings[i]);
	movq	(%rax), %rdx	# *_13, _14
	movq	-8(%rbp), %rax	# out, tmp106
	movq	%rdx, %rsi	# _14,
	movq	%rax, %rdi	# tmp106,
	call	strcat@PLT	#
# code.c:18:     for (int i = 0; i < count; i++) {
	addl	$1, -12(%rbp)	#, i
.L6:
# code.c:18:     for (int i = 0; i < count; i++) {
	movl	-12(%rbp), %eax	# i, tmp107
	cmpl	-44(%rbp), %eax	# count, tmp107
	jl	.L7	#,
# code.c:22:     return out;
	movq	-8(%rbp), %rax	# out, _18
.L5:
# code.c:23: }
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
