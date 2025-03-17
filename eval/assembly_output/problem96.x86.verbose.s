	.file	"problem96.c"
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
	movq	%rdi, -40(%rbp)	# dict, dict
	movl	%esi, -44(%rbp)	# size, size
# problem96.c:7:     if (size == 0) return 0;
	cmpl	$0, -44(%rbp)	#, size
	jne	.L2	#,
# problem96.c:7:     if (size == 0) return 0;
	movl	$0, %eax	#, _52
# problem96.c:7:     if (size == 0) return 0;
	jmp	.L3	#
.L2:
# problem96.c:8:     int has_lower = 0, has_upper = 0;
	movl	$0, -24(%rbp)	#, has_lower
# problem96.c:8:     int has_lower = 0, has_upper = 0;
	movl	$0, -20(%rbp)	#, has_upper
# problem96.c:9:     for (int i = 0; i < size; ++i) {
	movl	$0, -16(%rbp)	#, i
# problem96.c:9:     for (int i = 0; i < size; ++i) {
	jmp	.L4	#
.L11:
# problem96.c:10:         char* key = dict[i][0];
	movl	-16(%rbp), %eax	# i, tmp127
	cltq
	salq	$4, %rax	#, _1
	movq	%rax, %rdx	# _1, _2
	movq	-40(%rbp), %rax	# dict, tmp128
	addq	%rdx, %rax	# _2, _3
# problem96.c:10:         char* key = dict[i][0];
	movq	(%rax), %rax	# (*_3)[0], tmp129
	movq	%rax, -8(%rbp)	# tmp129, key
# problem96.c:11:         for (int j = 0; key[j]; ++j) {
	movl	$0, -12(%rbp)	#, j
# problem96.c:11:         for (int j = 0; key[j]; ++j) {
	jmp	.L5	#
.L10:
# problem96.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	call	__ctype_b_loc@PLT	#
# problem96.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	movq	(%rax), %rax	# *_4, _5
	movl	-12(%rbp), %edx	# j, tmp130
	movslq	%edx, %rcx	# tmp130, _6
	movq	-8(%rbp), %rdx	# key, tmp131
	addq	%rcx, %rdx	# _6, _7
	movzbl	(%rdx), %edx	# *_7, _8
	movzbl	%dl, %edx	# _9, _10
	addq	%rdx, %rdx	# _11
	addq	%rdx, %rax	# _11, _12
	movzwl	(%rax), %eax	# *_12, _13
	movzwl	%ax, %eax	# _13, _14
	andl	$1024, %eax	#, _15
# problem96.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	testl	%eax, %eax	# _15
	jne	.L6	#,
# problem96.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	movl	$0, %eax	#, _52
# problem96.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	jmp	.L3	#
.L6:
# problem96.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	call	__ctype_b_loc@PLT	#
# problem96.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	movq	(%rax), %rax	# *_16, _17
	movl	-12(%rbp), %edx	# j, tmp132
	movslq	%edx, %rcx	# tmp132, _18
	movq	-8(%rbp), %rdx	# key, tmp133
	addq	%rcx, %rdx	# _18, _19
	movzbl	(%rdx), %edx	# *_19, _20
	movzbl	%dl, %edx	# _21, _22
	addq	%rdx, %rdx	# _23
	addq	%rdx, %rax	# _23, _24
	movzwl	(%rax), %eax	# *_24, _25
	movzwl	%ax, %eax	# _25, _26
	andl	$256, %eax	#, _27
# problem96.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	testl	%eax, %eax	# _27
	je	.L7	#,
# problem96.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	movl	$1, -20(%rbp)	#, has_upper
.L7:
# problem96.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	call	__ctype_b_loc@PLT	#
# problem96.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	movq	(%rax), %rax	# *_28, _29
	movl	-12(%rbp), %edx	# j, tmp134
	movslq	%edx, %rcx	# tmp134, _30
	movq	-8(%rbp), %rdx	# key, tmp135
	addq	%rcx, %rdx	# _30, _31
	movzbl	(%rdx), %edx	# *_31, _32
	movzbl	%dl, %edx	# _33, _34
	addq	%rdx, %rdx	# _35
	addq	%rdx, %rax	# _35, _36
	movzwl	(%rax), %eax	# *_36, _37
	movzwl	%ax, %eax	# _37, _38
	andl	$512, %eax	#, _39
# problem96.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	testl	%eax, %eax	# _39
	je	.L8	#,
# problem96.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	movl	$1, -24(%rbp)	#, has_lower
.L8:
# problem96.c:15:             if (has_upper + has_lower == 2) return 0;
	movl	-20(%rbp), %edx	# has_upper, tmp136
	movl	-24(%rbp), %eax	# has_lower, tmp137
	addl	%edx, %eax	# tmp136, _40
# problem96.c:15:             if (has_upper + has_lower == 2) return 0;
	cmpl	$2, %eax	#, _40
	jne	.L9	#,
# problem96.c:15:             if (has_upper + has_lower == 2) return 0;
	movl	$0, %eax	#, _52
# problem96.c:15:             if (has_upper + has_lower == 2) return 0;
	jmp	.L3	#
.L9:
# problem96.c:11:         for (int j = 0; key[j]; ++j) {
	addl	$1, -12(%rbp)	#, j
.L5:
# problem96.c:11:         for (int j = 0; key[j]; ++j) {
	movl	-12(%rbp), %eax	# j, tmp138
	movslq	%eax, %rdx	# tmp138, _41
	movq	-8(%rbp), %rax	# key, tmp139
	addq	%rdx, %rax	# _41, _42
	movzbl	(%rax), %eax	# *_42, _43
# problem96.c:11:         for (int j = 0; key[j]; ++j) {
	testb	%al, %al	# _43
	jne	.L10	#,
# problem96.c:9:     for (int i = 0; i < size; ++i) {
	addl	$1, -16(%rbp)	#, i
.L4:
# problem96.c:9:     for (int i = 0; i < size; ++i) {
	movl	-16(%rbp), %eax	# i, tmp140
	cmpl	-44(%rbp), %eax	# size, tmp140
	jl	.L11	#,
# problem96.c:18:     return 1;
	movl	$1, %eax	#, _52
.L3:
# problem96.c:19: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"p"
.LC1:
	.string	"pineapple"
.LC2:
	.string	"b"
.LC3:
	.string	"banana"
.LC4:
	.string	"problem96.c"
.LC5:
	.string	"func0(test1, 2) == 1"
.LC6:
	.string	"A"
.LC7:
	.string	"B"
.LC8:
	.string	"func0(test2, 3) == 0"
.LC9:
	.string	"5"
.LC10:
	.string	"a"
.LC11:
	.string	"apple"
.LC12:
	.string	"func0(test3, 3) == 0"
.LC13:
	.string	"Name"
.LC14:
	.string	"John"
.LC15:
	.string	"Age"
.LC16:
	.string	"36"
.LC17:
	.string	"City"
.LC18:
	.string	"Houston"
.LC19:
	.string	"func0(test4, 3) == 0"
.LC20:
	.string	"STATE"
.LC21:
	.string	"NC"
.LC22:
	.string	"ZIP"
.LC23:
	.string	"12345"
.LC24:
	.string	"func0(test5, 2) == 1"
.LC25:
	.string	"fruit"
.LC26:
	.string	"Orange"
.LC27:
	.string	"taste"
.LC28:
	.string	"Sweet"
.LC29:
	.string	"func0(test6, 2) == 1"
.LC30:
	.string	"func0(NULL, 0) == 0"
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
	subq	$256, %rsp	#,
# problem96.c:26: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp149
	movq	%rax, -8(%rbp)	# tmp149, D.4103
	xorl	%eax, %eax	# tmp149
# problem96.c:27:     char* test1[][2] = {{"p","pineapple"}, {"b","banana"}};
	leaq	.LC0(%rip), %rax	#, tmp91
	movq	%rax, -256(%rbp)	# tmp91, test1[0][0]
	leaq	.LC1(%rip), %rax	#, tmp92
	movq	%rax, -248(%rbp)	# tmp92, test1[0][1]
	leaq	.LC2(%rip), %rax	#, tmp93
	movq	%rax, -240(%rbp)	# tmp93, test1[1][0]
	leaq	.LC3(%rip), %rax	#, tmp94
	movq	%rax, -232(%rbp)	# tmp94, test1[1][1]
# problem96.c:28:     assert(func0(test1, 2) == 1);
	leaq	-256(%rbp), %rax	#, tmp95
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	func0	#
# problem96.c:28:     assert(func0(test1, 2) == 1);
	cmpl	$1, %eax	#, _1
	je	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp96
	movq	%rax, %rcx	# tmp96,
	movl	$28, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp97
	movq	%rax, %rsi	# tmp97,
	leaq	.LC5(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	__assert_fail@PLT	#
.L13:
# problem96.c:30:     char* test2[][2] = {{"p","pineapple"}, {"A","banana"}, {"B","banana"}};
	leaq	.LC0(%rip), %rax	#, tmp99
	movq	%rax, -160(%rbp)	# tmp99, test2[0][0]
	leaq	.LC1(%rip), %rax	#, tmp100
	movq	%rax, -152(%rbp)	# tmp100, test2[0][1]
	leaq	.LC6(%rip), %rax	#, tmp101
	movq	%rax, -144(%rbp)	# tmp101, test2[1][0]
	leaq	.LC3(%rip), %rax	#, tmp102
	movq	%rax, -136(%rbp)	# tmp102, test2[1][1]
	leaq	.LC7(%rip), %rax	#, tmp103
	movq	%rax, -128(%rbp)	# tmp103, test2[2][0]
	leaq	.LC3(%rip), %rax	#, tmp104
	movq	%rax, -120(%rbp)	# tmp104, test2[2][1]
# problem96.c:31:     assert(func0(test2, 3) == 0);
	leaq	-160(%rbp), %rax	#, tmp105
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp105,
	call	func0	#
# problem96.c:31:     assert(func0(test2, 3) == 0);
	testl	%eax, %eax	# _2
	je	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp106
	movq	%rax, %rcx	# tmp106,
	movl	$31, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	leaq	.LC8(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	__assert_fail@PLT	#
.L14:
# problem96.c:33:     char* test3[][2] = {{"p","pineapple"}, {"5","banana"}, {"a","apple"}};
	leaq	.LC0(%rip), %rax	#, tmp109
	movq	%rax, -112(%rbp)	# tmp109, test3[0][0]
	leaq	.LC1(%rip), %rax	#, tmp110
	movq	%rax, -104(%rbp)	# tmp110, test3[0][1]
	leaq	.LC9(%rip), %rax	#, tmp111
	movq	%rax, -96(%rbp)	# tmp111, test3[1][0]
	leaq	.LC3(%rip), %rax	#, tmp112
	movq	%rax, -88(%rbp)	# tmp112, test3[1][1]
	leaq	.LC10(%rip), %rax	#, tmp113
	movq	%rax, -80(%rbp)	# tmp113, test3[2][0]
	leaq	.LC11(%rip), %rax	#, tmp114
	movq	%rax, -72(%rbp)	# tmp114, test3[2][1]
# problem96.c:34:     assert(func0(test3, 3) == 0);
	leaq	-112(%rbp), %rax	#, tmp115
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp115,
	call	func0	#
# problem96.c:34:     assert(func0(test3, 3) == 0);
	testl	%eax, %eax	# _3
	je	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp116
	movq	%rax, %rcx	# tmp116,
	movl	$34, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp117
	movq	%rax, %rsi	# tmp117,
	leaq	.LC12(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	__assert_fail@PLT	#
.L15:
# problem96.c:36:     char* test4[][2] = {{"Name","John"}, {"Age","36"}, {"City","Houston"}};
	leaq	.LC13(%rip), %rax	#, tmp119
	movq	%rax, -64(%rbp)	# tmp119, test4[0][0]
	leaq	.LC14(%rip), %rax	#, tmp120
	movq	%rax, -56(%rbp)	# tmp120, test4[0][1]
	leaq	.LC15(%rip), %rax	#, tmp121
	movq	%rax, -48(%rbp)	# tmp121, test4[1][0]
	leaq	.LC16(%rip), %rax	#, tmp122
	movq	%rax, -40(%rbp)	# tmp122, test4[1][1]
	leaq	.LC17(%rip), %rax	#, tmp123
	movq	%rax, -32(%rbp)	# tmp123, test4[2][0]
	leaq	.LC18(%rip), %rax	#, tmp124
	movq	%rax, -24(%rbp)	# tmp124, test4[2][1]
# problem96.c:37:     assert(func0(test4, 3) == 0);
	leaq	-64(%rbp), %rax	#, tmp125
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp125,
	call	func0	#
# problem96.c:37:     assert(func0(test4, 3) == 0);
	testl	%eax, %eax	# _4
	je	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp126
	movq	%rax, %rcx	# tmp126,
	movl	$37, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp127
	movq	%rax, %rsi	# tmp127,
	leaq	.LC19(%rip), %rax	#, tmp128
	movq	%rax, %rdi	# tmp128,
	call	__assert_fail@PLT	#
.L16:
# problem96.c:39:     char* test5[][2] = {{"STATE","NC"}, {"ZIP","12345"}};
	leaq	.LC20(%rip), %rax	#, tmp129
	movq	%rax, -224(%rbp)	# tmp129, test5[0][0]
	leaq	.LC21(%rip), %rax	#, tmp130
	movq	%rax, -216(%rbp)	# tmp130, test5[0][1]
	leaq	.LC22(%rip), %rax	#, tmp131
	movq	%rax, -208(%rbp)	# tmp131, test5[1][0]
	leaq	.LC23(%rip), %rax	#, tmp132
	movq	%rax, -200(%rbp)	# tmp132, test5[1][1]
# problem96.c:40:     assert(func0(test5, 2) == 1);
	leaq	-224(%rbp), %rax	#, tmp133
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp133,
	call	func0	#
# problem96.c:40:     assert(func0(test5, 2) == 1);
	cmpl	$1, %eax	#, _5
	je	.L17	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp134
	movq	%rax, %rcx	# tmp134,
	movl	$40, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp135
	movq	%rax, %rsi	# tmp135,
	leaq	.LC24(%rip), %rax	#, tmp136
	movq	%rax, %rdi	# tmp136,
	call	__assert_fail@PLT	#
.L17:
# problem96.c:42:     char* test6[][2] = {{"fruit","Orange"}, {"taste","Sweet"}};
	leaq	.LC25(%rip), %rax	#, tmp137
	movq	%rax, -192(%rbp)	# tmp137, test6[0][0]
	leaq	.LC26(%rip), %rax	#, tmp138
	movq	%rax, -184(%rbp)	# tmp138, test6[0][1]
	leaq	.LC27(%rip), %rax	#, tmp139
	movq	%rax, -176(%rbp)	# tmp139, test6[1][0]
	leaq	.LC28(%rip), %rax	#, tmp140
	movq	%rax, -168(%rbp)	# tmp140, test6[1][1]
# problem96.c:43:     assert(func0(test6, 2) == 1);
	leaq	-192(%rbp), %rax	#, tmp141
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp141,
	call	func0	#
# problem96.c:43:     assert(func0(test6, 2) == 1);
	cmpl	$1, %eax	#, _6
	je	.L18	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp142
	movq	%rax, %rcx	# tmp142,
	movl	$43, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp143
	movq	%rax, %rsi	# tmp143,
	leaq	.LC29(%rip), %rax	#, tmp144
	movq	%rax, %rdi	# tmp144,
	call	__assert_fail@PLT	#
.L18:
# problem96.c:45:     assert(func0(NULL, 0) == 0);
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	func0	#
# problem96.c:45:     assert(func0(NULL, 0) == 0);
	testl	%eax, %eax	# _7
	je	.L19	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp145
	movq	%rax, %rcx	# tmp145,
	movl	$45, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp146
	movq	%rax, %rsi	# tmp146,
	leaq	.LC30(%rip), %rax	#, tmp147
	movq	%rax, %rdi	# tmp147,
	call	__assert_fail@PLT	#
.L19:
# problem96.c:47:     return 0;
	movl	$0, %eax	#, _53
# problem96.c:48: }
	movq	-8(%rbp), %rdx	# D.4103, tmp150
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp150
	je	.L21	#,
	call	__stack_chk_fail@PLT	#
.L21:
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
