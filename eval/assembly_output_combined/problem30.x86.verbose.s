	.file	"problem30.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	movq	%rdi, -24(%rbp)	# strings, strings
	movl	%esi, -28(%rbp)	# count, count
	movq	%rdx, -40(%rbp)	# prefix, prefix
	movq	%rcx, -48(%rbp)	# out, out
# problem30.c:6:     int prefix_length = strlen(prefix);
	movq	-40(%rbp), %rax	# prefix, tmp103
	movq	%rax, %rdi	# tmp103,
	call	strlen@PLT	#
# problem30.c:6:     int prefix_length = strlen(prefix);
	movl	%eax, -4(%rbp)	# _1, prefix_length
# problem30.c:7:     *out = (char**)malloc(count * sizeof(char*));
	movl	-28(%rbp), %eax	# count, tmp104
	cltq
	salq	$3, %rax	#, _3
	movq	%rax, %rdi	# _3,
	call	malloc@PLT	#
	movq	%rax, %rdx	# tmp105, _4
# problem30.c:7:     *out = (char**)malloc(count * sizeof(char*));
	movq	-48(%rbp), %rax	# out, tmp106
	movq	%rdx, (%rax)	# _4, *out_30(D)
# problem30.c:8:     int out_count = 0;
	movl	$0, -12(%rbp)	#, out_count
# problem30.c:10:     for (int i = 0; i < count; i++) {
	movl	$0, -8(%rbp)	#, i
# problem30.c:10:     for (int i = 0; i < count; i++) {
	jmp	.L2	#
.L4:
# problem30.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	movl	-4(%rbp), %eax	# prefix_length, tmp107
	movslq	%eax, %rdx	# tmp107, _5
# problem30.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	movl	-8(%rbp), %eax	# i, tmp108
	cltq
	leaq	0(,%rax,8), %rcx	#, _7
	movq	-24(%rbp), %rax	# strings, tmp109
	addq	%rcx, %rax	# _7, _8
# problem30.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	movq	(%rax), %rax	# *_8, _9
	movq	-40(%rbp), %rcx	# prefix, tmp110
	movq	%rcx, %rsi	# tmp110,
	movq	%rax, %rdi	# _9,
	call	strncmp@PLT	#
# problem30.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	testl	%eax, %eax	# _10
	jne	.L3	#,
# problem30.c:12:             (*out)[out_count++] = strings[i];
	movl	-8(%rbp), %eax	# i, tmp111
	cltq
	leaq	0(,%rax,8), %rdx	#, _12
	movq	-24(%rbp), %rax	# strings, tmp112
	leaq	(%rdx,%rax), %rcx	#, _13
# problem30.c:12:             (*out)[out_count++] = strings[i];
	movq	-48(%rbp), %rax	# out, tmp113
	movq	(%rax), %rsi	# *out_30(D), _14
# problem30.c:12:             (*out)[out_count++] = strings[i];
	movl	-12(%rbp), %eax	# out_count, out_count.0_15
	leal	1(%rax), %edx	#, tmp114
	movl	%edx, -12(%rbp)	# tmp114, out_count
	cltq
# problem30.c:12:             (*out)[out_count++] = strings[i];
	salq	$3, %rax	#, _17
	leaq	(%rsi,%rax), %rdx	#, _18
# problem30.c:12:             (*out)[out_count++] = strings[i];
	movq	(%rcx), %rax	# *_13, _19
# problem30.c:12:             (*out)[out_count++] = strings[i];
	movq	%rax, (%rdx)	# _19, *_18
.L3:
# problem30.c:10:     for (int i = 0; i < count; i++) {
	addl	$1, -8(%rbp)	#, i
.L2:
# problem30.c:10:     for (int i = 0; i < count; i++) {
	movl	-8(%rbp), %eax	# i, tmp115
	cmpl	-28(%rbp), %eax	# count, tmp115
	jl	.L4	#,
# problem30.c:16:     return out_count;
	movl	-12(%rbp), %eax	# out_count, _34
# problem30.c:17: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# a, a
	movl	%esi, -28(%rbp)	# a_count, a_count
	movq	%rdx, -40(%rbp)	# b, b
	movl	%ecx, -32(%rbp)	# b_count, b_count
# problem30.c:28:     if (a_count != b_count) return 0;
	movl	-28(%rbp), %eax	# a_count, tmp93
	cmpl	-32(%rbp), %eax	# b_count, tmp93
	je	.L7	#,
# problem30.c:28:     if (a_count != b_count) return 0;
	movl	$0, %eax	#, _11
	jmp	.L8	#
.L7:
# problem30.c:29:     for (int i = 0; i < a_count; i++) {
	movl	$0, -4(%rbp)	#, i
# problem30.c:29:     for (int i = 0; i < a_count; i++) {
	jmp	.L9	#
.L11:
# problem30.c:30:         if (strcmp(a[i], b[i]) != 0) return 0;
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-40(%rbp), %rax	# b, tmp95
	addq	%rdx, %rax	# _2, _3
# problem30.c:30:         if (strcmp(a[i], b[i]) != 0) return 0;
	movq	(%rax), %rdx	# *_3, _4
# problem30.c:30:         if (strcmp(a[i], b[i]) != 0) return 0;
	movl	-4(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,8), %rcx	#, _6
	movq	-24(%rbp), %rax	# a, tmp97
	addq	%rcx, %rax	# _6, _7
# problem30.c:30:         if (strcmp(a[i], b[i]) != 0) return 0;
	movq	(%rax), %rax	# *_7, _8
	movq	%rdx, %rsi	# _4,
	movq	%rax, %rdi	# _8,
	call	strcmp@PLT	#
# problem30.c:30:         if (strcmp(a[i], b[i]) != 0) return 0;
	testl	%eax, %eax	# _9
	je	.L10	#,
# problem30.c:30:         if (strcmp(a[i], b[i]) != 0) return 0;
	movl	$0, %eax	#, _11
	jmp	.L8	#
.L10:
# problem30.c:29:     for (int i = 0; i < a_count; i++) {
	addl	$1, -4(%rbp)	#, i
.L9:
# problem30.c:29:     for (int i = 0; i < a_count; i++) {
	movl	-4(%rbp), %eax	# i, tmp98
	cmpl	-28(%rbp), %eax	# a_count, tmp98
	jl	.L11	#,
# problem30.c:32:     return 1;
	movl	$1, %eax	#, _11
.L8:
# problem30.c:33: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"john"
.LC1:
	.string	"problem30.c"
	.align 8
.LC2:
	.string	"issame(result, count, (char*[]){}, 0)"
.LC3:
	.string	"xxx"
.LC4:
	.string	"asd"
.LC5:
	.string	"xxy"
.LC6:
	.string	"john doe"
.LC7:
	.string	"xxxAAA"
	.align 8
.LC8:
	.string	"issame(result, count, expected, 3)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
# problem30.c:35: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp118
	movq	%rax, -8(%rbp)	# tmp118, D.3128
	xorl	%eax, %eax	# tmp118
# problem30.c:39:     count = func0((char*[]){}, 0, "john", &result);
	leaq	-112(%rbp), %rdx	#, tmp90
	leaq	-104(%rbp), %rax	#, tmp91
	movq	%rdx, %rcx	# tmp90,
	leaq	.LC0(%rip), %rdx	#, tmp92
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	func0	#
	movl	%eax, -116(%rbp)	# tmp93, count
# problem30.c:40:     assert(issame(result, count, (char*[]){}, 0));
	movq	-112(%rbp), %rax	# result, result.1_1
	leaq	-64(%rbp), %rdx	#, tmp94
	movl	-116(%rbp), %esi	# count, tmp95
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# result.1_1,
	call	issame	#
	testl	%eax, %eax	# _2
	jne	.L13	#,
# problem30.c:40:     assert(issame(result, count, (char*[]){}, 0));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp96
	movq	%rax, %rcx	# tmp96,
	movl	$40, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp97
	movq	%rax, %rsi	# tmp97,
	leaq	.LC2(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	__assert_fail@PLT	#
.L13:
# problem30.c:41:     free(result);
	movq	-112(%rbp), %rax	# result, result.2_3
	movq	%rax, %rdi	# result.2_3,
	call	free@PLT	#
# problem30.c:43:     char* strings[] = {"xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"};
	leaq	.LC3(%rip), %rax	#, tmp99
	movq	%rax, -64(%rbp)	# tmp99, MEM[(char *[6] *)_37][0]
	leaq	.LC4(%rip), %rax	#, tmp100
	movq	%rax, -56(%rbp)	# tmp100, MEM[(char *[6] *)_37][1]
	leaq	.LC5(%rip), %rax	#, tmp101
	movq	%rax, -48(%rbp)	# tmp101, MEM[(char *[6] *)_37][2]
	leaq	.LC6(%rip), %rax	#, tmp102
	movq	%rax, -40(%rbp)	# tmp102, MEM[(char *[6] *)_37][3]
	leaq	.LC7(%rip), %rax	#, tmp103
	movq	%rax, -32(%rbp)	# tmp103, MEM[(char *[6] *)_37][4]
	leaq	.LC3(%rip), %rax	#, tmp104
	movq	%rax, -24(%rbp)	# tmp104, MEM[(char *[6] *)_37][5]
# problem30.c:44:     char* expected[] = {"xxx", "xxxAAA", "xxx"};
	leaq	.LC3(%rip), %rax	#, tmp105
	movq	%rax, -96(%rbp)	# tmp105, expected[0]
	leaq	.LC7(%rip), %rax	#, tmp106
	movq	%rax, -88(%rbp)	# tmp106, expected[1]
	leaq	.LC3(%rip), %rax	#, tmp107
	movq	%rax, -80(%rbp)	# tmp107, expected[2]
# problem30.c:45:     count = func0(strings, 6, "xxx", &result);
	leaq	-112(%rbp), %rdx	#, tmp108
	leaq	-64(%rbp), %rax	#, tmp109
	movq	%rdx, %rcx	# tmp108,
	leaq	.LC3(%rip), %rdx	#, tmp110
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp109,
	call	func0	#
	movl	%eax, -116(%rbp)	# tmp111, count
# problem30.c:46:     assert(issame(result, count, expected, 3));
	movq	-112(%rbp), %rax	# result, result.3_4
	leaq	-96(%rbp), %rdx	#, tmp112
	movl	-116(%rbp), %esi	# count, tmp113
	movl	$3, %ecx	#,
	movq	%rax, %rdi	# result.3_4,
	call	issame	#
	testl	%eax, %eax	# _5
	jne	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp114
	movq	%rax, %rcx	# tmp114,
	movl	$46, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp115
	movq	%rax, %rsi	# tmp115,
	leaq	.LC8(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	__assert_fail@PLT	#
.L14:
# problem30.c:47:     free(result);
	movq	-112(%rbp), %rax	# result, result.4_6
	movq	%rax, %rdi	# result.4_6,
	call	free@PLT	#
# problem30.c:49:     return 0;
	movl	$0, %eax	#, _30
# problem30.c:50: }
	movq	-8(%rbp), %rdx	# D.3128, tmp119
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp119
	je	.L16	#,
	call	__stack_chk_fail@PLT	#
.L16:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
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
