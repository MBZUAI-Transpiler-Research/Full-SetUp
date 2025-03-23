	.file	"problem8.c"
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
	movl	%esi, -28(%rbp)	# size, size
	movq	%rdx, -40(%rbp)	# substring, substring
	movq	%rcx, -48(%rbp)	# out_size, out_size
# problem8.c:6:     char **out = NULL;
	movq	$0, -8(%rbp)	#, out
# problem8.c:7:     int count = 0;
	movl	$0, -16(%rbp)	#, count
# problem8.c:8:     for (int i = 0; i < size; i++) {
	movl	$0, -12(%rbp)	#, i
# problem8.c:8:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L4:
# problem8.c:9:         if (strstr(strings[i], substring) != NULL) {
	movl	-12(%rbp), %eax	# i, tmp99
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-24(%rbp), %rax	# strings, tmp100
	addq	%rdx, %rax	# _2, _3
# problem8.c:9:         if (strstr(strings[i], substring) != NULL) {
	movq	(%rax), %rax	# *_3, _4
	movq	-40(%rbp), %rdx	# substring, tmp101
	movq	%rdx, %rsi	# tmp101,
	movq	%rax, %rdi	# _4,
	call	strstr@PLT	#
# problem8.c:9:         if (strstr(strings[i], substring) != NULL) {
	testq	%rax, %rax	# _5
	je	.L3	#,
# problem8.c:10:             out = (char **)realloc(out, sizeof(char *) * (count + 1));
	movl	-16(%rbp), %eax	# count, tmp102
	addl	$1, %eax	#, _6
	cltq
# problem8.c:10:             out = (char **)realloc(out, sizeof(char *) * (count + 1));
	leaq	0(,%rax,8), %rdx	#, _8
	movq	-8(%rbp), %rax	# out, tmp103
	movq	%rdx, %rsi	# _8,
	movq	%rax, %rdi	# tmp103,
	call	realloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp104, out
# problem8.c:11:             out[count] = strings[i];
	movl	-12(%rbp), %eax	# i, tmp105
	cltq
	leaq	0(,%rax,8), %rdx	#, _10
	movq	-24(%rbp), %rax	# strings, tmp106
	addq	%rdx, %rax	# _10, _11
# problem8.c:11:             out[count] = strings[i];
	movl	-16(%rbp), %edx	# count, tmp107
	movslq	%edx, %rdx	# tmp107, _12
	leaq	0(,%rdx,8), %rcx	#, _13
	movq	-8(%rbp), %rdx	# out, tmp108
	addq	%rcx, %rdx	# _13, _14
# problem8.c:11:             out[count] = strings[i];
	movq	(%rax), %rax	# *_11, _15
# problem8.c:11:             out[count] = strings[i];
	movq	%rax, (%rdx)	# _15, *_14
# problem8.c:12:             count++;
	addl	$1, -16(%rbp)	#, count
.L3:
# problem8.c:8:     for (int i = 0; i < size; i++) {
	addl	$1, -12(%rbp)	#, i
.L2:
# problem8.c:8:     for (int i = 0; i < size; i++) {
	movl	-12(%rbp), %eax	# i, tmp109
	cmpl	-28(%rbp), %eax	# size, tmp109
	jl	.L4	#,
# problem8.c:15:     *out_size = count;
	movq	-48(%rbp), %rax	# out_size, tmp110
	movl	-16(%rbp), %edx	# count, tmp111
	movl	%edx, (%rax)	# tmp111, *out_size_28(D)
# problem8.c:16:     return out;
	movq	-8(%rbp), %rax	# out, _30
# problem8.c:17: }
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
	movq	%rsi, -32(%rbp)	# b, b
	movl	%edx, -36(%rbp)	# size_a, size_a
	movl	%ecx, -40(%rbp)	# size_b, size_b
# problem8.c:27:     if (size_a != size_b) return 0;
	movl	-36(%rbp), %eax	# size_a, tmp93
	cmpl	-40(%rbp), %eax	# size_b, tmp93
	je	.L7	#,
# problem8.c:27:     if (size_a != size_b) return 0;
	movl	$0, %eax	#, _11
	jmp	.L8	#
.L7:
# problem8.c:28:     for (int i = 0; i < size_a; i++) {
	movl	$0, -4(%rbp)	#, i
# problem8.c:28:     for (int i = 0; i < size_a; i++) {
	jmp	.L9	#
.L11:
# problem8.c:29:         if (strcmp(a[i], b[i]) != 0) return 0;
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-32(%rbp), %rax	# b, tmp95
	addq	%rdx, %rax	# _2, _3
# problem8.c:29:         if (strcmp(a[i], b[i]) != 0) return 0;
	movq	(%rax), %rdx	# *_3, _4
# problem8.c:29:         if (strcmp(a[i], b[i]) != 0) return 0;
	movl	-4(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,8), %rcx	#, _6
	movq	-24(%rbp), %rax	# a, tmp97
	addq	%rcx, %rax	# _6, _7
# problem8.c:29:         if (strcmp(a[i], b[i]) != 0) return 0;
	movq	(%rax), %rax	# *_7, _8
	movq	%rdx, %rsi	# _4,
	movq	%rax, %rdi	# _8,
	call	strcmp@PLT	#
# problem8.c:29:         if (strcmp(a[i], b[i]) != 0) return 0;
	testl	%eax, %eax	# _9
	je	.L10	#,
# problem8.c:29:         if (strcmp(a[i], b[i]) != 0) return 0;
	movl	$0, %eax	#, _11
	jmp	.L8	#
.L10:
# problem8.c:28:     for (int i = 0; i < size_a; i++) {
	addl	$1, -4(%rbp)	#, i
.L9:
# problem8.c:28:     for (int i = 0; i < size_a; i++) {
	movl	-4(%rbp), %eax	# i, tmp98
	cmpl	-36(%rbp), %eax	# size_a, tmp98
	jl	.L11	#,
# problem8.c:31:     return 1;
	movl	$1, %eax	#, _11
.L8:
# problem8.c:32: }
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
	.string	"problem8.c"
	.align 8
.LC2:
	.string	"out_size == 0 && result == NULL"
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
	.string	"issame(result, expected1, out_size, 3)"
.LC9:
	.string	"aaaxxy"
.LC10:
	.string	"xx"
	.align 8
.LC11:
	.string	"issame(result, expected2, out_size, 4)"
.LC12:
	.string	"grunt"
.LC13:
	.string	"trumpet"
.LC14:
	.string	"prune"
.LC15:
	.string	"gruesome"
.LC16:
	.string	"run"
	.align 8
.LC17:
	.string	"issame(result, expected3, out_size, 2)"
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
	subq	$240, %rsp	#,
# problem8.c:34: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp153
	movq	%rax, -8(%rbp)	# tmp153, D.3135
	xorl	%eax, %eax	# tmp153
# problem8.c:39:     result = func0(NULL, 0, "john", &out_size);
	leaq	-236(%rbp), %rax	#, tmp91
	movq	%rax, %rcx	# tmp91,
	leaq	.LC0(%rip), %rax	#, tmp92
	movq	%rax, %rdx	# tmp92,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	func0	#
	movq	%rax, -232(%rbp)	# tmp93, result
# problem8.c:40:     assert(out_size == 0 && result == NULL);
	movl	-236(%rbp), %eax	# out_size, out_size.0_1
	testl	%eax, %eax	# out_size.0_1
	jne	.L13	#,
# problem8.c:40:     assert(out_size == 0 && result == NULL);
	cmpq	$0, -232(%rbp)	#, result
	je	.L20	#,
.L13:
# problem8.c:40:     assert(out_size == 0 && result == NULL);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp94
	movq	%rax, %rcx	# tmp94,
	movl	$40, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp95
	movq	%rax, %rsi	# tmp95,
	leaq	.LC2(%rip), %rax	#, tmp96
	movq	%rax, %rdi	# tmp96,
	call	__assert_fail@PLT	#
.L20:
# problem8.c:43:     char *strings1[] = {"xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"};
	leaq	.LC3(%rip), %rax	#, tmp97
	movq	%rax, -112(%rbp)	# tmp97, strings1[0]
	leaq	.LC4(%rip), %rax	#, tmp98
	movq	%rax, -104(%rbp)	# tmp98, strings1[1]
	leaq	.LC5(%rip), %rax	#, tmp99
	movq	%rax, -96(%rbp)	# tmp99, strings1[2]
	leaq	.LC6(%rip), %rax	#, tmp100
	movq	%rax, -88(%rbp)	# tmp100, strings1[3]
	leaq	.LC7(%rip), %rax	#, tmp101
	movq	%rax, -80(%rbp)	# tmp101, strings1[4]
	leaq	.LC3(%rip), %rax	#, tmp102
	movq	%rax, -72(%rbp)	# tmp102, strings1[5]
# problem8.c:44:     char *expected1[] = {"xxx", "xxxAAA", "xxx"};
	leaq	.LC3(%rip), %rax	#, tmp103
	movq	%rax, -208(%rbp)	# tmp103, expected1[0]
	leaq	.LC7(%rip), %rax	#, tmp104
	movq	%rax, -200(%rbp)	# tmp104, expected1[1]
	leaq	.LC3(%rip), %rax	#, tmp105
	movq	%rax, -192(%rbp)	# tmp105, expected1[2]
# problem8.c:45:     result = func0(strings1, 6, "xxx", &out_size);
	leaq	-236(%rbp), %rdx	#, tmp106
	leaq	-112(%rbp), %rax	#, tmp107
	movq	%rdx, %rcx	# tmp106,
	leaq	.LC3(%rip), %rdx	#, tmp108
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	func0	#
	movq	%rax, -232(%rbp)	# tmp109, result
# problem8.c:46:     assert(issame(result, expected1, out_size, 3));
	movl	-236(%rbp), %edx	# out_size, out_size.1_2
	leaq	-208(%rbp), %rsi	#, tmp110
	movq	-232(%rbp), %rax	# result, tmp111
	movl	$3, %ecx	#,
	movq	%rax, %rdi	# tmp111,
	call	issame	#
	testl	%eax, %eax	# _3
	jne	.L15	#,
# problem8.c:46:     assert(issame(result, expected1, out_size, 3));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp112
	movq	%rax, %rcx	# tmp112,
	movl	$46, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC8(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	__assert_fail@PLT	#
.L15:
# problem8.c:47:     free(result);
	movq	-232(%rbp), %rax	# result, tmp115
	movq	%rax, %rdi	# tmp115,
	call	free@PLT	#
# problem8.c:50:     char *strings2[] = {"xxx", "asd", "aaaxxy", "john doe", "xxxAAA", "xxx"};
	leaq	.LC3(%rip), %rax	#, tmp116
	movq	%rax, -64(%rbp)	# tmp116, strings2[0]
	leaq	.LC4(%rip), %rax	#, tmp117
	movq	%rax, -56(%rbp)	# tmp117, strings2[1]
	leaq	.LC9(%rip), %rax	#, tmp118
	movq	%rax, -48(%rbp)	# tmp118, strings2[2]
	leaq	.LC6(%rip), %rax	#, tmp119
	movq	%rax, -40(%rbp)	# tmp119, strings2[3]
	leaq	.LC7(%rip), %rax	#, tmp120
	movq	%rax, -32(%rbp)	# tmp120, strings2[4]
	leaq	.LC3(%rip), %rax	#, tmp121
	movq	%rax, -24(%rbp)	# tmp121, strings2[5]
# problem8.c:51:     char *expected2[] = {"xxx", "aaaxxy", "xxxAAA", "xxx"};
	leaq	.LC3(%rip), %rax	#, tmp122
	movq	%rax, -176(%rbp)	# tmp122, expected2[0]
	leaq	.LC9(%rip), %rax	#, tmp123
	movq	%rax, -168(%rbp)	# tmp123, expected2[1]
	leaq	.LC7(%rip), %rax	#, tmp124
	movq	%rax, -160(%rbp)	# tmp124, expected2[2]
	leaq	.LC3(%rip), %rax	#, tmp125
	movq	%rax, -152(%rbp)	# tmp125, expected2[3]
# problem8.c:52:     result = func0(strings2, 6, "xx", &out_size);
	leaq	-236(%rbp), %rdx	#, tmp126
	leaq	-64(%rbp), %rax	#, tmp127
	movq	%rdx, %rcx	# tmp126,
	leaq	.LC10(%rip), %rdx	#, tmp128
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp127,
	call	func0	#
	movq	%rax, -232(%rbp)	# tmp129, result
# problem8.c:53:     assert(issame(result, expected2, out_size, 4));
	movl	-236(%rbp), %edx	# out_size, out_size.2_4
	leaq	-176(%rbp), %rsi	#, tmp130
	movq	-232(%rbp), %rax	# result, tmp131
	movl	$4, %ecx	#,
	movq	%rax, %rdi	# tmp131,
	call	issame	#
	testl	%eax, %eax	# _5
	jne	.L16	#,
# problem8.c:53:     assert(issame(result, expected2, out_size, 4));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp132
	movq	%rax, %rcx	# tmp132,
	movl	$53, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp133
	movq	%rax, %rsi	# tmp133,
	leaq	.LC11(%rip), %rax	#, tmp134
	movq	%rax, %rdi	# tmp134,
	call	__assert_fail@PLT	#
.L16:
# problem8.c:54:     free(result);
	movq	-232(%rbp), %rax	# result, tmp135
	movq	%rax, %rdi	# tmp135,
	call	free@PLT	#
# problem8.c:57:     char *strings3[] = {"grunt", "trumpet", "prune", "gruesome"};
	leaq	.LC12(%rip), %rax	#, tmp136
	movq	%rax, -144(%rbp)	# tmp136, strings3[0]
	leaq	.LC13(%rip), %rax	#, tmp137
	movq	%rax, -136(%rbp)	# tmp137, strings3[1]
	leaq	.LC14(%rip), %rax	#, tmp138
	movq	%rax, -128(%rbp)	# tmp138, strings3[2]
	leaq	.LC15(%rip), %rax	#, tmp139
	movq	%rax, -120(%rbp)	# tmp139, strings3[3]
# problem8.c:58:     char *expected3[] = {"grunt", "prune"};
	leaq	.LC12(%rip), %rax	#, tmp140
	movq	%rax, -224(%rbp)	# tmp140, expected3[0]
	leaq	.LC14(%rip), %rax	#, tmp141
	movq	%rax, -216(%rbp)	# tmp141, expected3[1]
# problem8.c:59:     result = func0(strings3, 4, "run", &out_size);
	leaq	-236(%rbp), %rdx	#, tmp142
	leaq	-144(%rbp), %rax	#, tmp143
	movq	%rdx, %rcx	# tmp142,
	leaq	.LC16(%rip), %rdx	#, tmp144
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp143,
	call	func0	#
	movq	%rax, -232(%rbp)	# tmp145, result
# problem8.c:60:     assert(issame(result, expected3, out_size, 2));
	movl	-236(%rbp), %edx	# out_size, out_size.3_6
	leaq	-224(%rbp), %rsi	#, tmp146
	movq	-232(%rbp), %rax	# result, tmp147
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp147,
	call	issame	#
	testl	%eax, %eax	# _7
	jne	.L17	#,
# problem8.c:60:     assert(issame(result, expected3, out_size, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp148
	movq	%rax, %rcx	# tmp148,
	movl	$60, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp149
	movq	%rax, %rsi	# tmp149,
	leaq	.LC17(%rip), %rax	#, tmp150
	movq	%rax, %rdi	# tmp150,
	call	__assert_fail@PLT	#
.L17:
# problem8.c:61:     free(result);
	movq	-232(%rbp), %rax	# result, tmp151
	movq	%rax, %rdi	# tmp151,
	call	free@PLT	#
# problem8.c:63:     return 0;
	movl	$0, %eax	#, _51
# problem8.c:64: }
	movq	-8(%rbp), %rdx	# D.3135, tmp154
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp154
	je	.L19	#,
	call	__stack_chk_fail@PLT	#
.L19:
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
