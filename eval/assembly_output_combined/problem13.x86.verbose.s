	.file	"problem13.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	""
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
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# strings, strings
	movl	%esi, -44(%rbp)	# count, count
# problem13.c:5:     char *out = "";
	leaq	.LC0(%rip), %rax	#, tmp92
	movq	%rax, -8(%rbp)	# tmp92, out
# problem13.c:6:     int longest_length = 0;
	movl	$0, -20(%rbp)	#, longest_length
# problem13.c:7:     for (int i = 0; i < count; i++) {
	movl	$0, -16(%rbp)	#, i
# problem13.c:7:     for (int i = 0; i < count; i++) {
	jmp	.L2	#
.L4:
# problem13.c:8:         int current_length = strlen(strings[i]);
	movl	-16(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-40(%rbp), %rax	# strings, tmp94
	addq	%rdx, %rax	# _2, _3
# problem13.c:8:         int current_length = strlen(strings[i]);
	movq	(%rax), %rax	# *_3, _4
	movq	%rax, %rdi	# _4,
	call	strlen@PLT	#
# problem13.c:8:         int current_length = strlen(strings[i]);
	movl	%eax, -12(%rbp)	# _5, current_length
# problem13.c:9:         if (current_length > longest_length) {
	movl	-12(%rbp), %eax	# current_length, tmp95
	cmpl	-20(%rbp), %eax	# longest_length, tmp95
	jle	.L3	#,
# problem13.c:10:             out = strings[i];
	movl	-16(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,8), %rdx	#, _7
	movq	-40(%rbp), %rax	# strings, tmp97
	addq	%rdx, %rax	# _7, _8
# problem13.c:10:             out = strings[i];
	movq	(%rax), %rax	# *_8, tmp98
	movq	%rax, -8(%rbp)	# tmp98, out
# problem13.c:11:             longest_length = current_length;
	movl	-12(%rbp), %eax	# current_length, tmp99
	movl	%eax, -20(%rbp)	# tmp99, longest_length
.L3:
# problem13.c:7:     for (int i = 0; i < count; i++) {
	addl	$1, -16(%rbp)	#, i
.L2:
# problem13.c:7:     for (int i = 0; i < count; i++) {
	movl	-16(%rbp), %eax	# i, tmp100
	cmpl	-44(%rbp), %eax	# count, tmp100
	jl	.L4	#,
# problem13.c:14:     return out;
	movq	-8(%rbp), %rax	# out, _18
# problem13.c:15: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC1:
	.string	"x"
.LC2:
	.string	"y"
.LC3:
	.string	"z"
.LC4:
	.string	"yyy"
.LC5:
	.string	"zzzz"
.LC6:
	.string	"www"
.LC7:
	.string	"kkkk"
.LC8:
	.string	"abc"
.LC9:
	.string	"problem13.c"
	.align 8
.LC10:
	.string	"strcmp(func0(empty_array, 0), \"\") == 0"
	.align 8
.LC11:
	.string	"strcmp(func0(array1, 3), \"x\") == 0"
	.align 8
.LC12:
	.string	"strcmp(func0(array2, 6), \"zzzz\") == 0"
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
# problem13.c:23: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp116
	movq	%rax, -8(%rbp)	# tmp116, D.3443
	xorl	%eax, %eax	# tmp116
# problem13.c:24:     char *empty_array[] = {""};
	leaq	.LC0(%rip), %rax	#, tmp91
	movq	%rax, -104(%rbp)	# tmp91, empty_array[0]
# problem13.c:25:     char *array1[] = {"x", "y", "z"};
	leaq	.LC1(%rip), %rax	#, tmp92
	movq	%rax, -96(%rbp)	# tmp92, array1[0]
	leaq	.LC2(%rip), %rax	#, tmp93
	movq	%rax, -88(%rbp)	# tmp93, array1[1]
	leaq	.LC3(%rip), %rax	#, tmp94
	movq	%rax, -80(%rbp)	# tmp94, array1[2]
# problem13.c:26:     char *array2[] = {"x", "yyy", "zzzz", "www", "kkkk", "abc"};
	leaq	.LC1(%rip), %rax	#, tmp95
	movq	%rax, -64(%rbp)	# tmp95, array2[0]
	leaq	.LC4(%rip), %rax	#, tmp96
	movq	%rax, -56(%rbp)	# tmp96, array2[1]
	leaq	.LC5(%rip), %rax	#, tmp97
	movq	%rax, -48(%rbp)	# tmp97, array2[2]
	leaq	.LC6(%rip), %rax	#, tmp98
	movq	%rax, -40(%rbp)	# tmp98, array2[3]
	leaq	.LC7(%rip), %rax	#, tmp99
	movq	%rax, -32(%rbp)	# tmp99, array2[4]
	leaq	.LC8(%rip), %rax	#, tmp100
	movq	%rax, -24(%rbp)	# tmp100, array2[5]
# problem13.c:28:     assert(strcmp(func0(empty_array, 0), "") == 0);
	leaq	-104(%rbp), %rax	#, tmp101
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	func0	#
# problem13.c:28:     assert(strcmp(func0(empty_array, 0), "") == 0);
	movzbl	(%rax), %eax	# MEM[(const unsigned char * {ref-all})_1], _19
	movzbl	%al, %eax	# _19, _2
	testl	%eax, %eax	# _2
	je	.L7	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp102
	movq	%rax, %rcx	# tmp102,
	movl	$28, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	leaq	.LC10(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	__assert_fail@PLT	#
.L7:
# problem13.c:29:     assert(strcmp(func0(array1, 3), "x") == 0);
	leaq	-96(%rbp), %rax	#, tmp105
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp105,
	call	func0	#
	movq	%rax, %rdx	#, _3
# problem13.c:29:     assert(strcmp(func0(array1, 3), "x") == 0);
	leaq	.LC1(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	movq	%rdx, %rdi	# _3,
	call	strcmp@PLT	#
# problem13.c:29:     assert(strcmp(func0(array1, 3), "x") == 0);
	testl	%eax, %eax	# _4
	je	.L8	#,
# problem13.c:29:     assert(strcmp(func0(array1, 3), "x") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$29, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC11(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L8:
# problem13.c:30:     assert(strcmp(func0(array2, 6), "zzzz") == 0);
	leaq	-64(%rbp), %rax	#, tmp110
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	func0	#
	movq	%rax, %rdx	#, _5
# problem13.c:30:     assert(strcmp(func0(array2, 6), "zzzz") == 0);
	leaq	.LC5(%rip), %rax	#, tmp111
	movq	%rax, %rsi	# tmp111,
	movq	%rdx, %rdi	# _5,
	call	strcmp@PLT	#
# problem13.c:30:     assert(strcmp(func0(array2, 6), "zzzz") == 0);
	testl	%eax, %eax	# _6
	je	.L9	#,
# problem13.c:30:     assert(strcmp(func0(array2, 6), "zzzz") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp112
	movq	%rax, %rcx	# tmp112,
	movl	$30, %edx	#,
	leaq	.LC9(%rip), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC12(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	__assert_fail@PLT	#
.L9:
# problem13.c:32:     return 0;
	movl	$0, %eax	#, _25
# problem13.c:33: }
	movq	-8(%rbp), %rdx	# D.3443, tmp117
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp117
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
