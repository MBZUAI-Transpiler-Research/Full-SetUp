	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
# code.c:5: char** func0(const char* planet1, const char* planet2, int* returnSize) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp138
	movq	%rax, -8(%rbp)	# tmp138, D.3947
	xorl	%eax, %eax	# tmp138
# code.c:6:     const char* planets[] = {"Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"};
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
# code.c:7:     int pos1 = -1, pos2 = -1, m;
	movl	$-1, -104(%rbp)	#, pos1
# code.c:7:     int pos1 = -1, pos2 = -1, m;
	movl	$-1, -100(%rbp)	#, pos2
# code.c:8:     for (m = 0; m < 8; m++) {
	movl	$0, -96(%rbp)	#, m
# code.c:8:     for (m = 0; m < 8; m++) {
	jmp	.L2	#
.L5:
# code.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	movl	-96(%rbp), %eax	# m, tmp109
	cltq
	movq	-80(%rbp,%rax,8), %rax	# planets[m_23], _1
	movq	-120(%rbp), %rdx	# planet1, tmp110
	movq	%rdx, %rsi	# tmp110,
	movq	%rax, %rdi	# _1,
	call	strcmp@PLT	#
# code.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	testl	%eax, %eax	# _2
	jne	.L3	#,
# code.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	movl	-96(%rbp), %eax	# m, tmp111
	movl	%eax, -104(%rbp)	# tmp111, pos1
.L3:
# code.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	movl	-96(%rbp), %eax	# m, tmp113
	cltq
	movq	-80(%rbp,%rax,8), %rax	# planets[m_23], _3
	movq	-128(%rbp), %rdx	# planet2, tmp114
	movq	%rdx, %rsi	# tmp114,
	movq	%rax, %rdi	# _3,
	call	strcmp@PLT	#
# code.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	testl	%eax, %eax	# _4
	jne	.L4	#,
# code.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	movl	-96(%rbp), %eax	# m, tmp115
	movl	%eax, -100(%rbp)	# tmp115, pos2
.L4:
# code.c:8:     for (m = 0; m < 8; m++) {
	addl	$1, -96(%rbp)	#, m
.L2:
# code.c:8:     for (m = 0; m < 8; m++) {
	cmpl	$7, -96(%rbp)	#, m
	jle	.L5	#,
# code.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	cmpl	$-1, -104(%rbp)	#, pos1
	je	.L6	#,
# code.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	cmpl	$-1, -100(%rbp)	#, pos2
	je	.L6	#,
# code.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	movl	-104(%rbp), %eax	# pos1, tmp116
	cmpl	-100(%rbp), %eax	# pos2, tmp116
	jne	.L7	#,
.L6:
# code.c:13:         *returnSize = 0;
	movq	-136(%rbp), %rax	# returnSize, tmp117
	movl	$0, (%rax)	#, *returnSize_43(D)
# code.c:14:         return NULL;
	movl	$0, %eax	#, _25
	jmp	.L13	#
.L7:
# code.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	movl	-104(%rbp), %eax	# pos1, tmp118
	cmpl	-100(%rbp), %eax	# pos2, tmp118
	jle	.L9	#,
# code.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	movl	-104(%rbp), %eax	# pos1, tmp119
	movl	%eax, -92(%rbp)	# tmp119, temp
# code.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	movl	-100(%rbp), %eax	# pos2, tmp120
	movl	%eax, -104(%rbp)	# tmp120, pos1
# code.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	movl	-92(%rbp), %eax	# temp, tmp121
	movl	%eax, -100(%rbp)	# tmp121, pos2
.L9:
# code.c:17:     *returnSize = pos2 - pos1 - 1;
	movl	-100(%rbp), %eax	# pos2, tmp122
	subl	-104(%rbp), %eax	# pos1, _5
# code.c:17:     *returnSize = pos2 - pos1 - 1;
	leal	-1(%rax), %edx	#, _6
# code.c:17:     *returnSize = pos2 - pos1 - 1;
	movq	-136(%rbp), %rax	# returnSize, tmp123
	movl	%edx, (%rax)	# _6, *returnSize_43(D)
# code.c:18:     if (*returnSize <= 0) {
	movq	-136(%rbp), %rax	# returnSize, tmp124
	movl	(%rax), %eax	# *returnSize_43(D), _7
# code.c:18:     if (*returnSize <= 0) {
	testl	%eax, %eax	# _7
	jg	.L10	#,
# code.c:19:         *returnSize = 0;
	movq	-136(%rbp), %rax	# returnSize, tmp125
	movl	$0, (%rax)	#, *returnSize_43(D)
# code.c:20:         return NULL;
	movl	$0, %eax	#, _25
	jmp	.L13	#
.L10:
# code.c:22:     char** out = malloc(*returnSize * sizeof(char*));
	movq	-136(%rbp), %rax	# returnSize, tmp126
	movl	(%rax), %eax	# *returnSize_43(D), _8
	cltq
# code.c:22:     char** out = malloc(*returnSize * sizeof(char*));
	salq	$3, %rax	#, _10
	movq	%rax, %rdi	# _10,
	call	malloc@PLT	#
	movq	%rax, -88(%rbp)	# tmp127, out
# code.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	movl	-104(%rbp), %eax	# pos1, tmp131
	addl	$1, %eax	#, tmp130
	movl	%eax, -96(%rbp)	# tmp130, m
# code.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	jmp	.L11	#
.L12:
# code.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	movl	-96(%rbp), %eax	# m, tmp132
	subl	-104(%rbp), %eax	# pos1, _11
	cltq
# code.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	salq	$3, %rax	#, _13
	leaq	-8(%rax), %rdx	#, _14
	movq	-88(%rbp), %rax	# out, tmp133
	addq	%rax, %rdx	# tmp133, _15
# code.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	movl	-96(%rbp), %eax	# m, tmp135
	cltq
	movq	-80(%rbp,%rax,8), %rax	# planets[m_24], _16
# code.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	movq	%rax, (%rdx)	# _16, *_15
# code.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	addl	$1, -96(%rbp)	#, m
.L11:
# code.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	movl	-96(%rbp), %eax	# m, tmp136
	cmpl	-100(%rbp), %eax	# pos2, tmp136
	jl	.L12	#,
# code.c:26:     return out;
	movq	-88(%rbp), %rax	# out, _25
.L13:
# code.c:27: }
	movq	-8(%rbp), %rdx	# D.3947, tmp139
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
