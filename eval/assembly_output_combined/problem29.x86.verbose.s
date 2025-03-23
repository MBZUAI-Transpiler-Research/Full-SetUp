	.file	"problem29.c"
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
	movq	%rdi, -40(%rbp)	# strings, strings
	movl	%esi, -44(%rbp)	# count, count
# problem29.c:6:     int length = 0;
	movl	$0, -20(%rbp)	#, length
# problem29.c:7:     for (int i = 0; i < count; i++) {
	movl	$0, -16(%rbp)	#, i
# problem29.c:7:     for (int i = 0; i < count; i++) {
	jmp	.L2	#
.L3:
# problem29.c:8:         length += strlen(strings[i]);
	movl	-16(%rbp), %eax	# i, tmp98
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-40(%rbp), %rax	# strings, tmp99
	addq	%rdx, %rax	# _2, _3
# problem29.c:8:         length += strlen(strings[i]);
	movq	(%rax), %rax	# *_3, _4
	movq	%rax, %rdi	# _4,
	call	strlen@PLT	#
# problem29.c:8:         length += strlen(strings[i]);
	movl	%eax, %edx	# _5, _6
	movl	-20(%rbp), %eax	# length, length.0_7
	addl	%edx, %eax	# _6, _8
	movl	%eax, -20(%rbp)	# _8, length
# problem29.c:7:     for (int i = 0; i < count; i++) {
	addl	$1, -16(%rbp)	#, i
.L2:
# problem29.c:7:     for (int i = 0; i < count; i++) {
	movl	-16(%rbp), %eax	# i, tmp100
	cmpl	-44(%rbp), %eax	# count, tmp100
	jl	.L3	#,
# problem29.c:11:     char* out = (char*)malloc(length + 1);
	movl	-20(%rbp), %eax	# length, tmp101
	addl	$1, %eax	#, _9
# problem29.c:11:     char* out = (char*)malloc(length + 1);
	cltq
	movq	%rax, %rdi	# _10,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp102, out
# problem29.c:12:     if (!out) {
	cmpq	$0, -8(%rbp)	#, out
	jne	.L4	#,
# problem29.c:13:         return NULL; 
	movl	$0, %eax	#, _18
	jmp	.L5	#
.L4:
# problem29.c:16:     out[0] = '\0';
	movq	-8(%rbp), %rax	# out, tmp103
	movb	$0, (%rax)	#, *out_26
# problem29.c:18:     for (int i = 0; i < count; i++) {
	movl	$0, -12(%rbp)	#, i
# problem29.c:18:     for (int i = 0; i < count; i++) {
	jmp	.L6	#
.L7:
# problem29.c:19:         strcat(out, strings[i]);
	movl	-12(%rbp), %eax	# i, tmp104
	cltq
	leaq	0(,%rax,8), %rdx	#, _12
	movq	-40(%rbp), %rax	# strings, tmp105
	addq	%rdx, %rax	# _12, _13
# problem29.c:19:         strcat(out, strings[i]);
	movq	(%rax), %rdx	# *_13, _14
	movq	-8(%rbp), %rax	# out, tmp106
	movq	%rdx, %rsi	# _14,
	movq	%rax, %rdi	# tmp106,
	call	strcat@PLT	#
# problem29.c:18:     for (int i = 0; i < count; i++) {
	addl	$1, -12(%rbp)	#, i
.L6:
# problem29.c:18:     for (int i = 0; i < count; i++) {
	movl	-12(%rbp), %eax	# i, tmp107
	cmpl	-44(%rbp), %eax	# count, tmp107
	jl	.L7	#,
# problem29.c:22:     return out;
	movq	-8(%rbp), %rax	# out, _18
.L5:
# problem29.c:23: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem29.c"
.LC1:
	.string	"strcmp(result, \"\") == 0"
.LC2:
	.string	"x"
.LC3:
	.string	"y"
.LC4:
	.string	"z"
.LC5:
	.string	"xyz"
.LC6:
	.string	"strcmp(result, \"xyz\") == 0"
.LC7:
	.string	"w"
.LC8:
	.string	"k"
.LC9:
	.string	"xyzwk"
.LC10:
	.string	"strcmp(result, \"xyzwk\") == 0"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
# problem29.c:31: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp120
	movq	%rax, -8(%rbp)	# tmp120, D.3973
	xorl	%eax, %eax	# tmp120
# problem29.c:34:     result = func0(empty_strings, 0);
	leaq	-88(%rbp), %rax	#, tmp88
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp88,
	call	func0	#
	movq	%rax, -96(%rbp)	# tmp89, result
# problem29.c:35:     assert(strcmp(result, "") == 0);
	movq	-96(%rbp), %rax	# result, tmp90
	movzbl	(%rax), %eax	# MEM[(const unsigned char * {ref-all})result_6], _7
	movzbl	%al, %eax	# _7, _1
	testl	%eax, %eax	# _1
	je	.L9	#,
# problem29.c:35:     assert(strcmp(result, "") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp91
	movq	%rax, %rcx	# tmp91,
	movl	$35, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp92
	movq	%rax, %rsi	# tmp92,
	leaq	.LC1(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	__assert_fail@PLT	#
.L9:
# problem29.c:36:     free(result);
	movq	-96(%rbp), %rax	# result, tmp94
	movq	%rax, %rdi	# tmp94,
	call	free@PLT	#
# problem29.c:38:     char* strings1[] = {"x", "y", "z"};
	leaq	.LC2(%rip), %rax	#, tmp95
	movq	%rax, -80(%rbp)	# tmp95, strings1[0]
	leaq	.LC3(%rip), %rax	#, tmp96
	movq	%rax, -72(%rbp)	# tmp96, strings1[1]
	leaq	.LC4(%rip), %rax	#, tmp97
	movq	%rax, -64(%rbp)	# tmp97, strings1[2]
# problem29.c:39:     result = func0(strings1, 3);
	leaq	-80(%rbp), %rax	#, tmp98
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp98,
	call	func0	#
	movq	%rax, -96(%rbp)	# tmp99, result
# problem29.c:40:     assert(strcmp(result, "xyz") == 0);
	movq	-96(%rbp), %rax	# result, tmp100
	leaq	.LC5(%rip), %rdx	#, tmp101
	movq	%rdx, %rsi	# tmp101,
	movq	%rax, %rdi	# tmp100,
	call	strcmp@PLT	#
# problem29.c:40:     assert(strcmp(result, "xyz") == 0);
	testl	%eax, %eax	# _2
	je	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp102
	movq	%rax, %rcx	# tmp102,
	movl	$40, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	leaq	.LC6(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	__assert_fail@PLT	#
.L10:
# problem29.c:41:     free(result);
	movq	-96(%rbp), %rax	# result, tmp105
	movq	%rax, %rdi	# tmp105,
	call	free@PLT	#
# problem29.c:43:     char* strings2[] = {"x", "y", "z", "w", "k"};
	leaq	.LC2(%rip), %rax	#, tmp106
	movq	%rax, -48(%rbp)	# tmp106, strings2[0]
	leaq	.LC3(%rip), %rax	#, tmp107
	movq	%rax, -40(%rbp)	# tmp107, strings2[1]
	leaq	.LC4(%rip), %rax	#, tmp108
	movq	%rax, -32(%rbp)	# tmp108, strings2[2]
	leaq	.LC7(%rip), %rax	#, tmp109
	movq	%rax, -24(%rbp)	# tmp109, strings2[3]
	leaq	.LC8(%rip), %rax	#, tmp110
	movq	%rax, -16(%rbp)	# tmp110, strings2[4]
# problem29.c:44:     result = func0(strings2, 5);
	leaq	-48(%rbp), %rax	#, tmp111
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	func0	#
	movq	%rax, -96(%rbp)	# tmp112, result
# problem29.c:45:     assert(strcmp(result, "xyzwk") == 0);
	movq	-96(%rbp), %rax	# result, tmp113
	leaq	.LC9(%rip), %rdx	#, tmp114
	movq	%rdx, %rsi	# tmp114,
	movq	%rax, %rdi	# tmp113,
	call	strcmp@PLT	#
# problem29.c:45:     assert(strcmp(result, "xyzwk") == 0);
	testl	%eax, %eax	# _3
	je	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp115
	movq	%rax, %rcx	# tmp115,
	movl	$45, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp116
	movq	%rax, %rsi	# tmp116,
	leaq	.LC10(%rip), %rax	#, tmp117
	movq	%rax, %rdi	# tmp117,
	call	__assert_fail@PLT	#
.L11:
# problem29.c:46:     free(result);
	movq	-96(%rbp), %rax	# result, tmp118
	movq	%rax, %rdi	# tmp118,
	call	free@PLT	#
# problem29.c:48:     return 0;
	movl	$0, %eax	#, _26
# problem29.c:49: }
	movq	-8(%rbp), %rdx	# D.3973, tmp121
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp121
	je	.L13	#,
	call	__stack_chk_fail@PLT	#
.L13:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
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
