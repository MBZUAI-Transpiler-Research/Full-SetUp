	.file	"problem149.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"Mercury"
.LC1:
	.string	"Venus"
.LC2:
	.string	"Earth"
.LC3:
	.string	"Mars"
.LC4:
	.string	"Jupiter"
.LC5:
	.string	"Saturn"
.LC6:
	.string	"Uranus"
.LC7:
	.string	"Neptune"
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
	subq	$144, %rsp	#,
	movq	%rdi, -120(%rbp)	# planet1, planet1
	movq	%rsi, -128(%rbp)	# planet2, planet2
	movq	%rdx, -136(%rbp)	# returnSize, returnSize
# problem149.c:5: char** func0(const char* planet1, const char* planet2, int* returnSize) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp138
	movq	%rax, -8(%rbp)	# tmp138, D.4023
	xorl	%eax, %eax	# tmp138
# problem149.c:6:     const char* planets[] = {"Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"};
	leaq	.LC0(%rip), %rax	#, tmp100
	movq	%rax, -80(%rbp)	# tmp100, planets[0]
	leaq	.LC1(%rip), %rax	#, tmp101
	movq	%rax, -72(%rbp)	# tmp101, planets[1]
	leaq	.LC2(%rip), %rax	#, tmp102
	movq	%rax, -64(%rbp)	# tmp102, planets[2]
	leaq	.LC3(%rip), %rax	#, tmp103
	movq	%rax, -56(%rbp)	# tmp103, planets[3]
	leaq	.LC4(%rip), %rax	#, tmp104
	movq	%rax, -48(%rbp)	# tmp104, planets[4]
	leaq	.LC5(%rip), %rax	#, tmp105
	movq	%rax, -40(%rbp)	# tmp105, planets[5]
	leaq	.LC6(%rip), %rax	#, tmp106
	movq	%rax, -32(%rbp)	# tmp106, planets[6]
	leaq	.LC7(%rip), %rax	#, tmp107
	movq	%rax, -24(%rbp)	# tmp107, planets[7]
# problem149.c:7:     int pos1 = -1, pos2 = -1, m;
	movl	$-1, -104(%rbp)	#, pos1
# problem149.c:7:     int pos1 = -1, pos2 = -1, m;
	movl	$-1, -100(%rbp)	#, pos2
# problem149.c:8:     for (m = 0; m < 8; m++) {
	movl	$0, -96(%rbp)	#, m
# problem149.c:8:     for (m = 0; m < 8; m++) {
	jmp	.L2	#
.L5:
# problem149.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	movl	-96(%rbp), %eax	# m, tmp109
	cltq
	movq	-80(%rbp,%rax,8), %rax	# planets[m_23], _1
	movq	-120(%rbp), %rdx	# planet1, tmp110
	movq	%rdx, %rsi	# tmp110,
	movq	%rax, %rdi	# _1,
	call	strcmp@PLT	#
# problem149.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	testl	%eax, %eax	# _2
	jne	.L3	#,
# problem149.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	movl	-96(%rbp), %eax	# m, tmp111
	movl	%eax, -104(%rbp)	# tmp111, pos1
.L3:
# problem149.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	movl	-96(%rbp), %eax	# m, tmp113
	cltq
	movq	-80(%rbp,%rax,8), %rax	# planets[m_23], _3
	movq	-128(%rbp), %rdx	# planet2, tmp114
	movq	%rdx, %rsi	# tmp114,
	movq	%rax, %rdi	# _3,
	call	strcmp@PLT	#
# problem149.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	testl	%eax, %eax	# _4
	jne	.L4	#,
# problem149.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	movl	-96(%rbp), %eax	# m, tmp115
	movl	%eax, -100(%rbp)	# tmp115, pos2
.L4:
# problem149.c:8:     for (m = 0; m < 8; m++) {
	addl	$1, -96(%rbp)	#, m
.L2:
# problem149.c:8:     for (m = 0; m < 8; m++) {
	cmpl	$7, -96(%rbp)	#, m
	jle	.L5	#,
# problem149.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	cmpl	$-1, -104(%rbp)	#, pos1
	je	.L6	#,
# problem149.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	cmpl	$-1, -100(%rbp)	#, pos2
	je	.L6	#,
# problem149.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	movl	-104(%rbp), %eax	# pos1, tmp116
	cmpl	-100(%rbp), %eax	# pos2, tmp116
	jne	.L7	#,
.L6:
# problem149.c:13:         *returnSize = 0;
	movq	-136(%rbp), %rax	# returnSize, tmp117
	movl	$0, (%rax)	#, *returnSize_43(D)
# problem149.c:14:         return NULL;
	movl	$0, %eax	#, _25
	jmp	.L13	#
.L7:
# problem149.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	movl	-104(%rbp), %eax	# pos1, tmp118
	cmpl	-100(%rbp), %eax	# pos2, tmp118
	jle	.L9	#,
# problem149.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	movl	-104(%rbp), %eax	# pos1, tmp119
	movl	%eax, -92(%rbp)	# tmp119, temp
# problem149.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	movl	-100(%rbp), %eax	# pos2, tmp120
	movl	%eax, -104(%rbp)	# tmp120, pos1
# problem149.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	movl	-92(%rbp), %eax	# temp, tmp121
	movl	%eax, -100(%rbp)	# tmp121, pos2
.L9:
# problem149.c:17:     *returnSize = pos2 - pos1 - 1;
	movl	-100(%rbp), %eax	# pos2, tmp122
	subl	-104(%rbp), %eax	# pos1, _5
# problem149.c:17:     *returnSize = pos2 - pos1 - 1;
	leal	-1(%rax), %edx	#, _6
# problem149.c:17:     *returnSize = pos2 - pos1 - 1;
	movq	-136(%rbp), %rax	# returnSize, tmp123
	movl	%edx, (%rax)	# _6, *returnSize_43(D)
# problem149.c:18:     if (*returnSize <= 0) {
	movq	-136(%rbp), %rax	# returnSize, tmp124
	movl	(%rax), %eax	# *returnSize_43(D), _7
# problem149.c:18:     if (*returnSize <= 0) {
	testl	%eax, %eax	# _7
	jg	.L10	#,
# problem149.c:19:         *returnSize = 0;
	movq	-136(%rbp), %rax	# returnSize, tmp125
	movl	$0, (%rax)	#, *returnSize_43(D)
# problem149.c:20:         return NULL;
	movl	$0, %eax	#, _25
	jmp	.L13	#
.L10:
# problem149.c:22:     char** out = malloc(*returnSize * sizeof(char*));
	movq	-136(%rbp), %rax	# returnSize, tmp126
	movl	(%rax), %eax	# *returnSize_43(D), _8
	cltq
# problem149.c:22:     char** out = malloc(*returnSize * sizeof(char*));
	salq	$3, %rax	#, _10
	movq	%rax, %rdi	# _10,
	call	malloc@PLT	#
	movq	%rax, -88(%rbp)	# tmp127, out
# problem149.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	movl	-104(%rbp), %eax	# pos1, tmp131
	addl	$1, %eax	#, tmp130
	movl	%eax, -96(%rbp)	# tmp130, m
# problem149.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	jmp	.L11	#
.L12:
# problem149.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	movl	-96(%rbp), %eax	# m, tmp132
	subl	-104(%rbp), %eax	# pos1, _11
	cltq
# problem149.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	salq	$3, %rax	#, _13
	leaq	-8(%rax), %rdx	#, _14
	movq	-88(%rbp), %rax	# out, tmp133
	addq	%rax, %rdx	# tmp133, _15
# problem149.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	movl	-96(%rbp), %eax	# m, tmp135
	cltq
	movq	-80(%rbp,%rax,8), %rax	# planets[m_24], _16
# problem149.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	movq	%rax, (%rdx)	# _16, *_15
# problem149.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	addl	$1, -96(%rbp)	#, m
.L11:
# problem149.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	movl	-96(%rbp), %eax	# m, tmp136
	cmpl	-100(%rbp), %eax	# pos2, tmp136
	jl	.L12	#,
# problem149.c:26:     return out;
	movq	-88(%rbp), %rax	# out, _25
.L13:
# problem149.c:27: }
	movq	-8(%rbp), %rdx	# D.4023, tmp139
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp139
	je	.L14	#,
	call	__stack_chk_fail@PLT	#
.L14:
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
	movl	%edx, -36(%rbp)	# a_size, a_size
	movl	%ecx, -40(%rbp)	# b_size, b_size
# problem149.c:37:     if (a_size != b_size) return 0;
	movl	-36(%rbp), %eax	# a_size, tmp93
	cmpl	-40(%rbp), %eax	# b_size, tmp93
	je	.L16	#,
# problem149.c:37:     if (a_size != b_size) return 0;
	movl	$0, %eax	#, _11
# problem149.c:37:     if (a_size != b_size) return 0;
	jmp	.L17	#
.L16:
# problem149.c:38:     for (int i = 0; i < a_size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem149.c:38:     for (int i = 0; i < a_size; i++) {
	jmp	.L18	#
.L20:
# problem149.c:39:         if (strcmp(a[i], b[i]) != 0) return 0;
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-32(%rbp), %rax	# b, tmp95
	addq	%rdx, %rax	# _2, _3
# problem149.c:39:         if (strcmp(a[i], b[i]) != 0) return 0;
	movq	(%rax), %rdx	# *_3, _4
# problem149.c:39:         if (strcmp(a[i], b[i]) != 0) return 0;
	movl	-4(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,8), %rcx	#, _6
	movq	-24(%rbp), %rax	# a, tmp97
	addq	%rcx, %rax	# _6, _7
# problem149.c:39:         if (strcmp(a[i], b[i]) != 0) return 0;
	movq	(%rax), %rax	# *_7, _8
	movq	%rdx, %rsi	# _4,
	movq	%rax, %rdi	# _8,
	call	strcmp@PLT	#
# problem149.c:39:         if (strcmp(a[i], b[i]) != 0) return 0;
	testl	%eax, %eax	# _9
	je	.L19	#,
# problem149.c:39:         if (strcmp(a[i], b[i]) != 0) return 0;
	movl	$0, %eax	#, _11
# problem149.c:39:         if (strcmp(a[i], b[i]) != 0) return 0;
	jmp	.L17	#
.L19:
# problem149.c:38:     for (int i = 0; i < a_size; i++) {
	addl	$1, -4(%rbp)	#, i
.L18:
# problem149.c:38:     for (int i = 0; i < a_size; i++) {
	movl	-4(%rbp), %eax	# i, tmp98
	cmpl	-36(%rbp), %eax	# a_size, tmp98
	jl	.L20	#,
# problem149.c:41:     return 1;
	movl	$1, %eax	#, _11
.L17:
# problem149.c:42: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC8:
	.string	"problem149.c"
	.align 8
.LC9:
	.string	"issame(result, test1, size, 2)"
	.align 8
.LC10:
	.string	"issame(result, test2, size, 1)"
	.align 8
.LC11:
	.string	"issame(result, test3, size, 5)"
	.align 8
.LC12:
	.string	"issame(result, test4, size, 5)"
.LC13:
	.string	"size == 0 && result == NULL"
.LC14:
	.string	"Makemake"
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
	subq	$144, %rsp	#,
# problem149.c:44: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp170
	movq	%rax, -8(%rbp)	# tmp170, D.4033
	xorl	%eax, %eax	# tmp170
# problem149.c:48:     const char* test1[] = {"Saturn", "Uranus"};
	leaq	.LC5(%rip), %rax	#, tmp95
	movq	%rax, -112(%rbp)	# tmp95, test1[0]
	leaq	.LC6(%rip), %rax	#, tmp96
	movq	%rax, -104(%rbp)	# tmp96, test1[1]
# problem149.c:49:     result = func0("Jupiter", "Neptune", &size);
	leaq	-132(%rbp), %rax	#, tmp97
	movq	%rax, %rdx	# tmp97,
	leaq	.LC7(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC4(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	func0	#
	movq	%rax, -128(%rbp)	# tmp100, result
# problem149.c:50:     assert(issame(result, test1, size, 2));
	movl	-132(%rbp), %edx	# size, size.0_1
	leaq	-112(%rbp), %rsi	#, tmp101
	movq	-128(%rbp), %rax	# result, tmp102
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp102,
	call	issame	#
# problem149.c:50:     assert(issame(result, test1, size, 2));
	testl	%eax, %eax	# _2
	jne	.L22	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$50, %edx	#,
	leaq	.LC8(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC9(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	__assert_fail@PLT	#
.L22:
# problem149.c:51:     free(result);
	movq	-128(%rbp), %rax	# result, tmp106
	movq	%rax, %rdi	# tmp106,
	call	free@PLT	#
# problem149.c:53:     const char* test2[] = {"Venus"};
	leaq	.LC1(%rip), %rax	#, tmp107
	movq	%rax, -120(%rbp)	# tmp107, test2[0]
# problem149.c:54:     result = func0("Earth", "Mercury", &size);
	leaq	-132(%rbp), %rax	#, tmp108
	movq	%rax, %rdx	# tmp108,
	leaq	.LC0(%rip), %rax	#, tmp109
	movq	%rax, %rsi	# tmp109,
	leaq	.LC2(%rip), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	call	func0	#
	movq	%rax, -128(%rbp)	# tmp111, result
# problem149.c:55:     assert(issame(result, test2, size, 1));
	movl	-132(%rbp), %edx	# size, size.1_3
	leaq	-120(%rbp), %rsi	#, tmp112
	movq	-128(%rbp), %rax	# result, tmp113
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp113,
	call	issame	#
# problem149.c:55:     assert(issame(result, test2, size, 1));
	testl	%eax, %eax	# _4
	jne	.L23	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp114
	movq	%rax, %rcx	# tmp114,
	movl	$55, %edx	#,
	leaq	.LC8(%rip), %rax	#, tmp115
	movq	%rax, %rsi	# tmp115,
	leaq	.LC10(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	__assert_fail@PLT	#
.L23:
# problem149.c:56:     free(result);
	movq	-128(%rbp), %rax	# result, tmp117
	movq	%rax, %rdi	# tmp117,
	call	free@PLT	#
# problem149.c:58:     const char* test3[] = {"Venus", "Earth", "Mars", "Jupiter", "Saturn"};
	leaq	.LC1(%rip), %rax	#, tmp118
	movq	%rax, -96(%rbp)	# tmp118, test3[0]
	leaq	.LC2(%rip), %rax	#, tmp119
	movq	%rax, -88(%rbp)	# tmp119, test3[1]
	leaq	.LC3(%rip), %rax	#, tmp120
	movq	%rax, -80(%rbp)	# tmp120, test3[2]
	leaq	.LC4(%rip), %rax	#, tmp121
	movq	%rax, -72(%rbp)	# tmp121, test3[3]
	leaq	.LC5(%rip), %rax	#, tmp122
	movq	%rax, -64(%rbp)	# tmp122, test3[4]
# problem149.c:59:     result = func0("Mercury", "Uranus", &size);
	leaq	-132(%rbp), %rax	#, tmp123
	movq	%rax, %rdx	# tmp123,
	leaq	.LC6(%rip), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	leaq	.LC0(%rip), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	call	func0	#
	movq	%rax, -128(%rbp)	# tmp126, result
# problem149.c:60:     assert(issame(result, test3, size, 5));
	movl	-132(%rbp), %edx	# size, size.2_5
	leaq	-96(%rbp), %rsi	#, tmp127
	movq	-128(%rbp), %rax	# result, tmp128
	movl	$5, %ecx	#,
	movq	%rax, %rdi	# tmp128,
	call	issame	#
# problem149.c:60:     assert(issame(result, test3, size, 5));
	testl	%eax, %eax	# _6
	jne	.L24	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp129
	movq	%rax, %rcx	# tmp129,
	movl	$60, %edx	#,
	leaq	.LC8(%rip), %rax	#, tmp130
	movq	%rax, %rsi	# tmp130,
	leaq	.LC11(%rip), %rax	#, tmp131
	movq	%rax, %rdi	# tmp131,
	call	__assert_fail@PLT	#
.L24:
# problem149.c:61:     free(result);
	movq	-128(%rbp), %rax	# result, tmp132
	movq	%rax, %rdi	# tmp132,
	call	free@PLT	#
# problem149.c:63:     const char* test4[] = {"Earth", "Mars", "Jupiter", "Saturn", "Uranus"};
	leaq	.LC2(%rip), %rax	#, tmp133
	movq	%rax, -48(%rbp)	# tmp133, test4[0]
	leaq	.LC3(%rip), %rax	#, tmp134
	movq	%rax, -40(%rbp)	# tmp134, test4[1]
	leaq	.LC4(%rip), %rax	#, tmp135
	movq	%rax, -32(%rbp)	# tmp135, test4[2]
	leaq	.LC5(%rip), %rax	#, tmp136
	movq	%rax, -24(%rbp)	# tmp136, test4[3]
	leaq	.LC6(%rip), %rax	#, tmp137
	movq	%rax, -16(%rbp)	# tmp137, test4[4]
# problem149.c:64:     result = func0("Neptune", "Venus", &size);
	leaq	-132(%rbp), %rax	#, tmp138
	movq	%rax, %rdx	# tmp138,
	leaq	.LC1(%rip), %rax	#, tmp139
	movq	%rax, %rsi	# tmp139,
	leaq	.LC7(%rip), %rax	#, tmp140
	movq	%rax, %rdi	# tmp140,
	call	func0	#
	movq	%rax, -128(%rbp)	# tmp141, result
# problem149.c:65:     assert(issame(result, test4, size, 5));
	movl	-132(%rbp), %edx	# size, size.3_7
	leaq	-48(%rbp), %rsi	#, tmp142
	movq	-128(%rbp), %rax	# result, tmp143
	movl	$5, %ecx	#,
	movq	%rax, %rdi	# tmp143,
	call	issame	#
# problem149.c:65:     assert(issame(result, test4, size, 5));
	testl	%eax, %eax	# _8
	jne	.L25	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp144
	movq	%rax, %rcx	# tmp144,
	movl	$65, %edx	#,
	leaq	.LC8(%rip), %rax	#, tmp145
	movq	%rax, %rsi	# tmp145,
	leaq	.LC12(%rip), %rax	#, tmp146
	movq	%rax, %rdi	# tmp146,
	call	__assert_fail@PLT	#
.L25:
# problem149.c:66:     free(result);
	movq	-128(%rbp), %rax	# result, tmp147
	movq	%rax, %rdi	# tmp147,
	call	free@PLT	#
# problem149.c:68:     result = func0("Earth", "Earth", &size);
	leaq	-132(%rbp), %rax	#, tmp148
	movq	%rax, %rdx	# tmp148,
	leaq	.LC2(%rip), %rax	#, tmp149
	movq	%rax, %rsi	# tmp149,
	leaq	.LC2(%rip), %rax	#, tmp150
	movq	%rax, %rdi	# tmp150,
	call	func0	#
	movq	%rax, -128(%rbp)	# tmp151, result
# problem149.c:69:     assert(size == 0 && result == NULL);
	movl	-132(%rbp), %eax	# size, size.4_9
	testl	%eax, %eax	# size.4_9
	jne	.L26	#,
# problem149.c:69:     assert(size == 0 && result == NULL);
	cmpq	$0, -128(%rbp)	#, result
	je	.L34	#,
.L26:
# problem149.c:69:     assert(size == 0 && result == NULL);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp152
	movq	%rax, %rcx	# tmp152,
	movl	$69, %edx	#,
	leaq	.LC8(%rip), %rax	#, tmp153
	movq	%rax, %rsi	# tmp153,
	leaq	.LC13(%rip), %rax	#, tmp154
	movq	%rax, %rdi	# tmp154,
	call	__assert_fail@PLT	#
.L34:
# problem149.c:71:     result = func0("Mars", "Earth", &size);
	leaq	-132(%rbp), %rax	#, tmp155
	movq	%rax, %rdx	# tmp155,
	leaq	.LC2(%rip), %rax	#, tmp156
	movq	%rax, %rsi	# tmp156,
	leaq	.LC3(%rip), %rax	#, tmp157
	movq	%rax, %rdi	# tmp157,
	call	func0	#
	movq	%rax, -128(%rbp)	# tmp158, result
# problem149.c:72:     assert(size == 0 && result == NULL);
	movl	-132(%rbp), %eax	# size, size.5_10
	testl	%eax, %eax	# size.5_10
	jne	.L28	#,
# problem149.c:72:     assert(size == 0 && result == NULL);
	cmpq	$0, -128(%rbp)	#, result
	je	.L35	#,
.L28:
# problem149.c:72:     assert(size == 0 && result == NULL);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp159
	movq	%rax, %rcx	# tmp159,
	movl	$72, %edx	#,
	leaq	.LC8(%rip), %rax	#, tmp160
	movq	%rax, %rsi	# tmp160,
	leaq	.LC13(%rip), %rax	#, tmp161
	movq	%rax, %rdi	# tmp161,
	call	__assert_fail@PLT	#
.L35:
# problem149.c:74:     result = func0("Jupiter", "Makemake", &size);
	leaq	-132(%rbp), %rax	#, tmp162
	movq	%rax, %rdx	# tmp162,
	leaq	.LC14(%rip), %rax	#, tmp163
	movq	%rax, %rsi	# tmp163,
	leaq	.LC4(%rip), %rax	#, tmp164
	movq	%rax, %rdi	# tmp164,
	call	func0	#
	movq	%rax, -128(%rbp)	# tmp165, result
# problem149.c:75:     assert(size == 0 && result == NULL);
	movl	-132(%rbp), %eax	# size, size.6_11
	testl	%eax, %eax	# size.6_11
	jne	.L30	#,
# problem149.c:75:     assert(size == 0 && result == NULL);
	cmpq	$0, -128(%rbp)	#, result
	je	.L36	#,
.L30:
# problem149.c:75:     assert(size == 0 && result == NULL);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp166
	movq	%rax, %rcx	# tmp166,
	movl	$75, %edx	#,
	leaq	.LC8(%rip), %rax	#, tmp167
	movq	%rax, %rsi	# tmp167,
	leaq	.LC13(%rip), %rax	#, tmp168
	movq	%rax, %rdi	# tmp168,
	call	__assert_fail@PLT	#
.L36:
# problem149.c:77:     return 0;
	movl	$0, %eax	#, _52
# problem149.c:78: }
	movq	-8(%rbp), %rdx	# D.4033, tmp171
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp171
	je	.L33	#,
	call	__stack_chk_fail@PLT	#
.L33:
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
