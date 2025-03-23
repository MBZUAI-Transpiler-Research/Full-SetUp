	.file	"problem15.c"
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
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# str, str
	movq	%rsi, -64(%rbp)	# count, count
# problem15.c:6:     int len = strlen(str);
	movq	-56(%rbp), %rax	# str, tmp106
	movq	%rax, %rdi	# tmp106,
	call	strlen@PLT	#
# problem15.c:6:     int len = strlen(str);
	movl	%eax, -44(%rbp)	# _1, len
# problem15.c:7:     char **out = malloc(len * sizeof(char *));
	movl	-44(%rbp), %eax	# len, tmp107
	cltq
	salq	$3, %rax	#, _3
	movq	%rax, %rdi	# _3,
	call	malloc@PLT	#
	movq	%rax, -32(%rbp)	# tmp108, out
# problem15.c:9:     char *current = malloc(len + 1);
	movl	-44(%rbp), %eax	# len, tmp109
	addl	$1, %eax	#, _4
# problem15.c:9:     char *current = malloc(len + 1);
	cltq
	movq	%rax, %rdi	# _5,
	call	malloc@PLT	#
	movq	%rax, -40(%rbp)	# tmp110, current
# problem15.c:10:     current[0] = '\0';
	movq	-40(%rbp), %rax	# current, tmp111
	movb	$0, (%rax)	#, *current_32
# problem15.c:12:     for (int i = 0; i < len; ++i) {
	movl	$0, -48(%rbp)	#, i
# problem15.c:12:     for (int i = 0; i < len; ++i) {
	jmp	.L2	#
.L3:
# problem15.c:13:         size_t current_len = strlen(current);
	movq	-40(%rbp), %rax	# current, tmp112
	movq	%rax, %rdi	# tmp112,
	call	strlen@PLT	#
	movq	%rax, -24(%rbp)	# tmp113, current_len
# problem15.c:14:         current = realloc(current, current_len + 2);
	movq	-24(%rbp), %rax	# current_len, tmp114
	leaq	2(%rax), %rdx	#, _6
	movq	-40(%rbp), %rax	# current, tmp115
	movq	%rdx, %rsi	# _6,
	movq	%rax, %rdi	# tmp115,
	call	realloc@PLT	#
	movq	%rax, -40(%rbp)	# tmp116, current
# problem15.c:15:         current[current_len] = str[i];
	movl	-48(%rbp), %eax	# i, tmp117
	movslq	%eax, %rdx	# tmp117, _7
	movq	-56(%rbp), %rax	# str, tmp118
	addq	%rdx, %rax	# _7, _8
# problem15.c:15:         current[current_len] = str[i];
	movq	-40(%rbp), %rcx	# current, tmp119
	movq	-24(%rbp), %rdx	# current_len, tmp120
	addq	%rcx, %rdx	# tmp119, _9
# problem15.c:15:         current[current_len] = str[i];
	movzbl	(%rax), %eax	# *_8, _10
# problem15.c:15:         current[current_len] = str[i];
	movb	%al, (%rdx)	# _10, *_9
# problem15.c:16:         current[current_len + 1] = '\0';
	movq	-24(%rbp), %rax	# current_len, tmp121
	leaq	1(%rax), %rdx	#, _11
	movq	-40(%rbp), %rax	# current, tmp122
	addq	%rdx, %rax	# _11, _12
# problem15.c:16:         current[current_len + 1] = '\0';
	movb	$0, (%rax)	#, *_12
# problem15.c:18:         out[i] = malloc(strlen(current) + 1);
	movq	-40(%rbp), %rax	# current, tmp123
	movq	%rax, %rdi	# tmp123,
	call	strlen@PLT	#
# problem15.c:18:         out[i] = malloc(strlen(current) + 1);
	addq	$1, %rax	#, _14
# problem15.c:18:         out[i] = malloc(strlen(current) + 1);
	movl	-48(%rbp), %edx	# i, tmp124
	movslq	%edx, %rdx	# tmp124, _15
	leaq	0(,%rdx,8), %rcx	#, _16
	movq	-32(%rbp), %rdx	# out, tmp125
	leaq	(%rcx,%rdx), %rbx	#, _17
# problem15.c:18:         out[i] = malloc(strlen(current) + 1);
	movq	%rax, %rdi	# _14,
	call	malloc@PLT	#
# problem15.c:18:         out[i] = malloc(strlen(current) + 1);
	movq	%rax, (%rbx)	# _18, *_17
# problem15.c:19:         strcpy(out[i], current);
	movl	-48(%rbp), %eax	# i, tmp127
	cltq
	leaq	0(,%rax,8), %rdx	#, _20
	movq	-32(%rbp), %rax	# out, tmp128
	addq	%rdx, %rax	# _20, _21
# problem15.c:19:         strcpy(out[i], current);
	movq	(%rax), %rax	# *_21, _22
	movq	-40(%rbp), %rdx	# current, tmp129
	movq	%rdx, %rsi	# tmp129,
	movq	%rax, %rdi	# _22,
	call	strcpy@PLT	#
# problem15.c:12:     for (int i = 0; i < len; ++i) {
	addl	$1, -48(%rbp)	#, i
.L2:
# problem15.c:12:     for (int i = 0; i < len; ++i) {
	movl	-48(%rbp), %eax	# i, tmp130
	cmpl	-44(%rbp), %eax	# len, tmp130
	jl	.L3	#,
# problem15.c:21:     free(current);
	movq	-40(%rbp), %rax	# current, tmp131
	movq	%rax, %rdi	# tmp131,
	call	free@PLT	#
# problem15.c:23:     *count = len;
	movq	-64(%rbp), %rax	# count, tmp132
	movl	-44(%rbp), %edx	# len, tmp133
	movl	%edx, (%rax)	# tmp133, *count_36(D)
# problem15.c:24:     return out;
	movq	-32(%rbp), %rax	# out, _38
# problem15.c:25: }
	movq	-8(%rbp), %rbx	#,
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
	movl	%esi, -28(%rbp)	# a_size, a_size
	movq	%rdx, -40(%rbp)	# b, b
	movl	%ecx, -32(%rbp)	# b_size, b_size
# problem15.c:34:     if (a_size != b_size) return 0;
	movl	-28(%rbp), %eax	# a_size, tmp93
	cmpl	-32(%rbp), %eax	# b_size, tmp93
	je	.L6	#,
# problem15.c:34:     if (a_size != b_size) return 0;
	movl	$0, %eax	#, _11
# problem15.c:34:     if (a_size != b_size) return 0;
	jmp	.L7	#
.L6:
# problem15.c:35:     for (int i = 0; i < a_size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem15.c:35:     for (int i = 0; i < a_size; i++) {
	jmp	.L8	#
.L10:
# problem15.c:36:         if (strcmp(a[i], b[i]) != 0) return 0;
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-40(%rbp), %rax	# b, tmp95
	addq	%rdx, %rax	# _2, _3
# problem15.c:36:         if (strcmp(a[i], b[i]) != 0) return 0;
	movq	(%rax), %rdx	# *_3, _4
# problem15.c:36:         if (strcmp(a[i], b[i]) != 0) return 0;
	movl	-4(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,8), %rcx	#, _6
	movq	-24(%rbp), %rax	# a, tmp97
	addq	%rcx, %rax	# _6, _7
# problem15.c:36:         if (strcmp(a[i], b[i]) != 0) return 0;
	movq	(%rax), %rax	# *_7, _8
	movq	%rdx, %rsi	# _4,
	movq	%rax, %rdi	# _8,
	call	strcmp@PLT	#
# problem15.c:36:         if (strcmp(a[i], b[i]) != 0) return 0;
	testl	%eax, %eax	# _9
	je	.L9	#,
# problem15.c:36:         if (strcmp(a[i], b[i]) != 0) return 0;
	movl	$0, %eax	#, _11
# problem15.c:36:         if (strcmp(a[i], b[i]) != 0) return 0;
	jmp	.L7	#
.L9:
# problem15.c:35:     for (int i = 0; i < a_size; i++) {
	addl	$1, -4(%rbp)	#, i
.L8:
# problem15.c:35:     for (int i = 0; i < a_size; i++) {
	movl	-4(%rbp), %eax	# i, tmp98
	cmpl	-28(%rbp), %eax	# a_size, tmp98
	jl	.L10	#,
# problem15.c:38:     return 1;
	movl	$1, %eax	#, _11
.L7:
# problem15.c:39: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.globl	free_prefixes
	.type	free_prefixes, @function
free_prefixes:
.LFB8:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# prefixes, prefixes
	movl	%esi, -28(%rbp)	# count, count
# problem15.c:42:     for (int i = 0; i < count; i++) {
	movl	$0, -4(%rbp)	#, i
# problem15.c:42:     for (int i = 0; i < count; i++) {
	jmp	.L12	#
.L13:
# problem15.c:43:         free(prefixes[i]);
	movl	-4(%rbp), %eax	# i, tmp86
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-24(%rbp), %rax	# prefixes, tmp87
	addq	%rdx, %rax	# _2, _3
# problem15.c:43:         free(prefixes[i]);
	movq	(%rax), %rax	# *_3, _4
	movq	%rax, %rdi	# _4,
	call	free@PLT	#
# problem15.c:42:     for (int i = 0; i < count; i++) {
	addl	$1, -4(%rbp)	#, i
.L12:
# problem15.c:42:     for (int i = 0; i < count; i++) {
	movl	-4(%rbp), %eax	# i, tmp88
	cmpl	-28(%rbp), %eax	# count, tmp88
	jl	.L13	#,
# problem15.c:45:     free(prefixes);
	movq	-24(%rbp), %rax	# prefixes, tmp89
	movq	%rax, %rdi	# tmp89,
	call	free@PLT	#
# problem15.c:46: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	free_prefixes, .-free_prefixes
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"problem15.c"
.LC2:
	.string	"issame(result, 0, NULL, 0)"
.LC3:
	.string	"a"
.LC4:
	.string	"as"
.LC5:
	.string	"asd"
.LC6:
	.string	"asdf"
.LC7:
	.string	"asdfg"
.LC8:
	.string	"asdfgh"
	.align 8
.LC9:
	.string	"issame(result, count, expected1, 6)"
.LC10:
	.string	"W"
.LC11:
	.string	"WW"
.LC12:
	.string	"WWW"
	.align 8
.LC13:
	.string	"issame(result, count, expected2, 3)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB9:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
# problem15.c:48: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp128
	movq	%rax, -8(%rbp)	# tmp128, D.3995
	xorl	%eax, %eax	# tmp128
# problem15.c:52:     result = func0("", &count);
	leaq	-108(%rbp), %rax	#, tmp92
	movq	%rax, %rsi	# tmp92,
	leaq	.LC0(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	func0	#
	movq	%rax, -104(%rbp)	# tmp94, result
# problem15.c:53:     assert(issame(result, 0, NULL, 0));
	movq	-104(%rbp), %rax	# result, tmp95
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	issame	#
# problem15.c:53:     assert(issame(result, 0, NULL, 0));
	testl	%eax, %eax	# _1
	jne	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp96
	movq	%rax, %rcx	# tmp96,
	movl	$53, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp97
	movq	%rax, %rsi	# tmp97,
	leaq	.LC2(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	__assert_fail@PLT	#
.L15:
# problem15.c:54:     free_prefixes(result, count);
	movl	-108(%rbp), %edx	# count, count.0_2
	movq	-104(%rbp), %rax	# result, tmp99
	movl	%edx, %esi	# count.0_2,
	movq	%rax, %rdi	# tmp99,
	call	free_prefixes	#
# problem15.c:56:     char *expected1[] = {"a", "as", "asd", "asdf", "asdfg", "asdfgh"};
	leaq	.LC3(%rip), %rax	#, tmp100
	movq	%rax, -64(%rbp)	# tmp100, expected1[0]
	leaq	.LC4(%rip), %rax	#, tmp101
	movq	%rax, -56(%rbp)	# tmp101, expected1[1]
	leaq	.LC5(%rip), %rax	#, tmp102
	movq	%rax, -48(%rbp)	# tmp102, expected1[2]
	leaq	.LC6(%rip), %rax	#, tmp103
	movq	%rax, -40(%rbp)	# tmp103, expected1[3]
	leaq	.LC7(%rip), %rax	#, tmp104
	movq	%rax, -32(%rbp)	# tmp104, expected1[4]
	leaq	.LC8(%rip), %rax	#, tmp105
	movq	%rax, -24(%rbp)	# tmp105, expected1[5]
# problem15.c:57:     result = func0("asdfgh", &count);
	leaq	-108(%rbp), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC8(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	func0	#
	movq	%rax, -104(%rbp)	# tmp108, result
# problem15.c:58:     assert(issame(result, count, expected1, 6));
	movl	-108(%rbp), %esi	# count, count.1_3
	leaq	-64(%rbp), %rdx	#, tmp109
	movq	-104(%rbp), %rax	# result, tmp110
	movl	$6, %ecx	#,
	movq	%rax, %rdi	# tmp110,
	call	issame	#
# problem15.c:58:     assert(issame(result, count, expected1, 6));
	testl	%eax, %eax	# _4
	jne	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp111
	movq	%rax, %rcx	# tmp111,
	movl	$58, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	leaq	.LC9(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	__assert_fail@PLT	#
.L16:
# problem15.c:59:     free_prefixes(result, count);
	movl	-108(%rbp), %edx	# count, count.2_5
	movq	-104(%rbp), %rax	# result, tmp114
	movl	%edx, %esi	# count.2_5,
	movq	%rax, %rdi	# tmp114,
	call	free_prefixes	#
# problem15.c:61:     char *expected2[] = {"W", "WW", "WWW"};
	leaq	.LC10(%rip), %rax	#, tmp115
	movq	%rax, -96(%rbp)	# tmp115, expected2[0]
	leaq	.LC11(%rip), %rax	#, tmp116
	movq	%rax, -88(%rbp)	# tmp116, expected2[1]
	leaq	.LC12(%rip), %rax	#, tmp117
	movq	%rax, -80(%rbp)	# tmp117, expected2[2]
# problem15.c:62:     result = func0("WWW", &count);
	leaq	-108(%rbp), %rax	#, tmp118
	movq	%rax, %rsi	# tmp118,
	leaq	.LC12(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	func0	#
	movq	%rax, -104(%rbp)	# tmp120, result
# problem15.c:63:     assert(issame(result, count, expected2, 3));
	movl	-108(%rbp), %esi	# count, count.3_6
	leaq	-96(%rbp), %rdx	#, tmp121
	movq	-104(%rbp), %rax	# result, tmp122
	movl	$3, %ecx	#,
	movq	%rax, %rdi	# tmp122,
	call	issame	#
# problem15.c:63:     assert(issame(result, count, expected2, 3));
	testl	%eax, %eax	# _7
	jne	.L17	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp123
	movq	%rax, %rcx	# tmp123,
	movl	$63, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	leaq	.LC13(%rip), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	call	__assert_fail@PLT	#
.L17:
# problem15.c:64:     free_prefixes(result, count);
	movl	-108(%rbp), %edx	# count, count.4_8
	movq	-104(%rbp), %rax	# result, tmp126
	movl	%edx, %esi	# count.4_8,
	movq	%rax, %rdi	# tmp126,
	call	free_prefixes	#
# problem15.c:66:     return 0;
	movl	$0, %eax	#, _34
# problem15.c:67: }
	movq	-8(%rbp), %rdx	# D.3995, tmp129
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp129
	je	.L19	#,
	call	__stack_chk_fail@PLT	#
.L19:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
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
